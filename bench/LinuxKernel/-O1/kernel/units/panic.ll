; ModuleID = 'kernel/panic.c'
source_filename = "kernel/panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_panic_timeout: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad panic_timeout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_panic_notifier_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad panic_notifier_list ; .previous"
module asm ".section\09\22.initcall7.init..kmod_panic__343_110_kernel_panic_sysctls_init\22, \22a\22\09\09"
module asm "__initcall__kmod_panic__343_110_kernel_panic_sysctls_init7:\09\09\09"
module asm ".long\09__initstub__kmod_panic__343_110_kernel_panic_sysctls_init7 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init..kmod_panic__345_129_kernel_panic_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_panic__345_129_kernel_panic_sysfs_init7:\09\09\09"
module asm ".long\09__initstub__kmod_panic__345_129_kernel_panic_sysfs_init7 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_panic_blink: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad panic_blink ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nmi_panic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad nmi_panic ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_panic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad panic ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_test_taint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad test_taint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_add_taint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad add_taint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___warn_printk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __warn_printk ; .previous"
module asm ".section\09\22.initcall6.init..kmod_panic__355_755_register_warn_debugfs\22, \22a\22\09\09"
module asm "__initcall__kmod_panic__355_755_register_warn_debugfs6:\09\09\09"
module asm ".long\09__initstub__kmod_panic__355_755_register_warn_debugfs6 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___stack_chk_fail: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __stack_chk_fail ; .previous"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.taint_flag = type { i8, i8, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.18 }
%union.anon.18 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.smp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.context_tracking = type { %struct.atomic_t, i64, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.warn_args = type { ptr, [1 x %struct.__va_list_tag] }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@panic_on_oops = hidden global i32 0, align 4, !dbg !0
@panic_on_taint_nousertaint = hidden global i8 0, align 1, !dbg !5203
@panic_timeout = hidden global i32 0, align 4, !dbg !5205
@__UNIQUE_ID___addressable_panic_timeout341 = internal global ptr @panic_timeout, section ".discard.addressable", align 8, !dbg !5207
@panic_notifier_list = hidden global %struct.atomic_notifier_head zeroinitializer, align 8, !dbg !5209
@__UNIQUE_ID___addressable_panic_notifier_list342 = internal global ptr @panic_notifier_list, section ".discard.addressable", align 8, !dbg !5226
@__UNIQUE_ID___addressable___initstub__kmod_panic__343_110_kernel_panic_sysctls_init7344 = internal global ptr @__initstub__kmod_panic__343_110_kernel_panic_sysctls_init7, section ".discard.addressable", align 8, !dbg !5228
@__UNIQUE_ID___addressable___initstub__kmod_panic__345_129_kernel_panic_sysfs_init7346 = internal global ptr @__initstub__kmod_panic__345_129_kernel_panic_sysfs_init7, section ".discard.addressable", align 8, !dbg !5230
@panic_blink = hidden global ptr null, align 8, !dbg !5428
@__UNIQUE_ID___addressable_panic_blink347 = internal global ptr @panic_blink, section ".discard.addressable", align 8, !dbg !5232
@crash_smp_send_stop.cpus_stopped = internal global i32 0, align 4, !dbg !5234
@panic_cpu = hidden global %struct.atomic_t { i32 -1 }, align 4, !dbg !5237
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5239
@__UNIQUE_ID___addressable_nmi_panic348 = internal global ptr @nmi_panic, section ".discard.addressable", align 8, !dbg !5242
@panic_on_warn = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !5420
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: panic_on_warn set ...\0A\00", align 1, !dbg !5244
@warn_limit = internal global i32 0, section ".data..read_mostly", align 4, !dbg !5424
@warn_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !5467
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: system warned too often (kernel.warn_limit is %d)\00", align 1, !dbg !5249
@panic.buf = internal global [1024 x i8] zeroinitializer, align 16, !dbg !5254
@crash_kexec_post_notifiers = hidden global i8 0, align 1, !dbg !5418
@.str.3 = private unnamed_addr constant [34 x i8] c"\010Kernel panic - not syncing: %s\0A\00", align 1, !dbg !5300
@oops_in_progress = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"\010Rebooting in %d seconds..\0A\00", align 1, !dbg !5305
@panic_reboot_mode = external dso_local global i32, align 4
@reboot_mode = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"\010---[ end Kernel panic - not syncing: %s ]---\0A\00", align 1, !dbg !5310
@suppress_printk = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_panic350 = internal global ptr @panic, section ".discard.addressable", align 8, !dbg !5315
@taint_flags = hidden constant [19 x %struct.taint_flag] [%struct.taint_flag { i8 80, i8 71, i8 1 }, %struct.taint_flag { i8 70, i8 32, i8 1 }, %struct.taint_flag { i8 83, i8 32, i8 0 }, %struct.taint_flag { i8 82, i8 32, i8 0 }, %struct.taint_flag { i8 77, i8 32, i8 0 }, %struct.taint_flag { i8 66, i8 32, i8 0 }, %struct.taint_flag { i8 85, i8 32, i8 0 }, %struct.taint_flag { i8 68, i8 32, i8 0 }, %struct.taint_flag { i8 65, i8 32, i8 0 }, %struct.taint_flag { i8 87, i8 32, i8 0 }, %struct.taint_flag { i8 67, i8 32, i8 1 }, %struct.taint_flag { i8 73, i8 32, i8 0 }, %struct.taint_flag { i8 79, i8 32, i8 1 }, %struct.taint_flag { i8 69, i8 32, i8 1 }, %struct.taint_flag { i8 76, i8 32, i8 0 }, %struct.taint_flag { i8 75, i8 32, i8 1 }, %struct.taint_flag { i8 88, i8 32, i8 1 }, %struct.taint_flag { i8 84, i8 32, i8 1 }, %struct.taint_flag { i8 78, i8 32, i8 1 }], align 16, !dbg !5317
@print_tainted.buf = internal global [29 x i8] zeroinitializer, align 16, !dbg !5326
@tainted_mask = internal global i64 0, align 8, !dbg !5469
@.str.6 = private unnamed_addr constant [10 x i8] c"Tainted: \00", align 1, !dbg !5341
@.str.7 = private unnamed_addr constant [12 x i8] c"Not tainted\00", align 1, !dbg !5346
@__UNIQUE_ID___addressable_test_taint352 = internal global ptr @test_taint, section ".discard.addressable", align 8, !dbg !5349
@.str.8 = private unnamed_addr constant [48 x i8] c"\014Disabling lock debugging due to kernel taint\0A\00", align 1, !dbg !5351
@panic_on_taint = hidden global i64 0, align 8, !dbg !5422
@.str.9 = private unnamed_addr constant [23 x i8] c"panic_on_taint set ...\00", align 1, !dbg !5353
@__UNIQUE_ID___addressable_add_taint353 = internal global ptr @add_taint, section ".discard.addressable", align 8, !dbg !5358
@pause_on_oops_flag = internal global i32 0, align 4, !dbg !5416
@sysctl_oops_all_cpu_backtrace = internal global i32 0, section ".data..read_mostly", align 4, !dbg !5412
@.str.10 = private unnamed_addr constant [41 x i8] c"\014WARNING: CPU: %d PID: %d at %s:%d %pS\0A\00", align 1, !dbg !5360
@.str.11 = private unnamed_addr constant [35 x i8] c"\014WARNING: CPU: %d PID: %d at %pS\0A\00", align 1, !dbg !5365
@.str.12 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !5370
@.str.13 = private unnamed_addr constant [40 x i8] c"\014------------[ cut here ]------------\0A\00", align 1, !dbg !5373
@__UNIQUE_ID___addressable___warn_printk354 = internal global ptr @__warn_printk, section ".discard.addressable", align 8, !dbg !5378
@__UNIQUE_ID___addressable___initstub__kmod_panic__355_755_register_warn_debugfs6356 = internal global ptr @__initstub__kmod_panic__355_755_register_warn_debugfs6, section ".discard.addressable", align 8, !dbg !5380
@.str.14 = private unnamed_addr constant [51 x i8] c"stack-protector: Kernel stack is corrupted in: %pB\00", align 1, !dbg !5382
@__UNIQUE_ID___addressable___stack_chk_fail357 = internal global ptr @__stack_chk_fail, section ".discard.addressable", align 8, !dbg !5387
@__param_str_panic = internal constant [6 x i8] c"panic\00", align 1, !dbg !5538
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_panic = internal constant %struct.kernel_param { ptr @__param_str_panic, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @panic_timeout } }, section "__param", align 8, !dbg !5389
@__param_str_panic_print = internal constant [12 x i8] c"panic_print\00", align 1, !dbg !5541
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@panic_print = hidden global i64 0, align 8, !dbg !5426
@__param_panic_print = internal constant %struct.kernel_param { ptr @__param_str_panic_print, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @panic_print } }, section "__param", align 8, !dbg !5391
@__param_str_pause_on_oops = internal constant [14 x i8] c"pause_on_oops\00", align 1, !dbg !5544
@pause_on_oops = internal global i32 0, align 4, !dbg !5414
@__param_pause_on_oops = internal constant %struct.kernel_param { ptr @__param_str_pause_on_oops, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @pause_on_oops } }, section "__param", align 8, !dbg !5393
@__param_str_panic_on_warn = internal constant [14 x i8] c"panic_on_warn\00", align 1, !dbg !5549
@__param_panic_on_warn = internal constant %struct.kernel_param { ptr @__param_str_panic_on_warn, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @panic_on_warn } }, section "__param", align 8, !dbg !5395
@__param_str_crash_kexec_post_notifiers = internal constant [27 x i8] c"crash_kexec_post_notifiers\00", align 16, !dbg !5551
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_crash_kexec_post_notifiers = internal constant %struct.kernel_param { ptr @__param_str_crash_kexec_post_notifiers, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.18 { ptr @crash_kexec_post_notifiers } }, section "__param", align 8, !dbg !5397
@__setup_str_oops_setup = internal constant [5 x i8] c"oops\00", section ".init.rodata", align 1, !dbg !5554
@__setup_oops_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_oops_setup, ptr @oops_setup, i32 1 }, section ".init.setup", align 8, !dbg !5399
@__setup_str_panic_on_taint_setup = internal constant [15 x i8] c"panic_on_taint\00", section ".init.rodata", align 1, !dbg !5561
@__setup_panic_on_taint_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_panic_on_taint_setup, ptr @panic_on_taint_setup, i32 1 }, section ".init.setup", align 8, !dbg !5410
@kern_panic_table = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr @sysctl_oops_all_cpu_backtrace, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 4) }, %struct.ctl_table { ptr @.str.17, ptr @warn_limit, i32 4, i16 420, i32 0, ptr @proc_douintvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !5445
@.str.15 = private unnamed_addr constant [17 x i8] c"kern_panic_table\00", align 1, !dbg !5433
@.str.16 = private unnamed_addr constant [23 x i8] c"oops_all_cpu_backtrace\00", align 1, !dbg !5438
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"warn_limit\00", align 1, !dbg !5440
@kernel_kobj = external dso_local global ptr, align 8
@warn_count_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @warn_count_show, ptr null }, align 8, !dbg !5450
@.str.18 = private unnamed_addr constant [11 x i8] c"warn_count\00", align 1, !dbg !5448
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !5464
@smp_ops = external dso_local global %struct.smp_ops, align 8
@debug_locks = external dso_local global i32, section ".data..read_mostly", align 4
@do_oops_enter_exit.spin_counter = internal global i32 0, align 4, !dbg !5471
@pause_on_oops_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5481
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"\014---[ end trace %016llx ]---\0A\00", align 1, !dbg !5483
@__tracepoint_error_report_end = external dso_local global %struct.tracepoint, align 8
@.str.21 = private unnamed_addr constant [36 x i8] c"include/trace/events/error_report.h\00", align 1, !dbg !5488
@trace_error_report_end.__UNIQUE_ID___addressable___SCK__tp_func_error_report_end335 = internal global ptr @__SCK__tp_func_error_report_end, section ".discard.addressable", align 8, !dbg !5493
@__SCK__tp_func_error_report_end = external dso_local global %struct.static_call_key, align 8
@trace_error_report_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace336 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5522
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@context_tracking = external dso_local global %struct.context_tracking, section ".data..percpu", align 8
@warn_rcu_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace332 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5524
@.str.22 = private unnamed_addr constant [16 x i8] c"clear_warn_once\00", align 1, !dbg !5532
@clear_warn_once_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @clear_warn_once_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5534
@.str.23 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !5536
@__start_once = external dso_local global [0 x i8], align 1
@__end_once = external dso_local global [0 x i8], align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"panic\00", align 1, !dbg !5559
@.str.25 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !5566
@.str.26 = private unnamed_addr constant [12 x i8] c"nousertaint\00", align 1, !dbg !5569
@.str.27 = private unnamed_addr constant [53 x i8] c"\016panic_on_taint: bitmask=0x%lx nousertaint_mode=%s\0A\00", align 1, !dbg !5571
@.str.28 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !5576
@.str.29 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !5579
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID___addressable_panic_timeout341, ptr @__UNIQUE_ID___addressable_panic_notifier_list342, ptr @__UNIQUE_ID___addressable___initstub__kmod_panic__343_110_kernel_panic_sysctls_init7344, ptr @__UNIQUE_ID___addressable___initstub__kmod_panic__345_129_kernel_panic_sysfs_init7346, ptr @__UNIQUE_ID___addressable_panic_blink347, ptr @__UNIQUE_ID___addressable_nmi_panic348, ptr @__UNIQUE_ID___addressable_panic350, ptr @__UNIQUE_ID___addressable_test_taint352, ptr @__UNIQUE_ID___addressable_add_taint353, ptr @__UNIQUE_ID___addressable___warn_printk354, ptr @__UNIQUE_ID___addressable___initstub__kmod_panic__355_755_register_warn_debugfs6356, ptr @__UNIQUE_ID___addressable___stack_chk_fail357, ptr @__param_panic, ptr @__param_panic_print, ptr @__param_pause_on_oops, ptr @__param_panic_on_warn, ptr @__param_crash_kexec_post_notifiers, ptr @__setup_oops_setup, ptr @__setup_panic_on_taint_setup, ptr @trace_error_report_end.__UNIQUE_ID___addressable___SCK__tp_func_error_report_end335, ptr @trace_error_report_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace336, ptr @warn_rcu_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace332], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_panic__343_110_kernel_panic_sysctls_init7() #0 section ".init.text" align 16 !dbg !5594 {
entry:
  %call = call i32 @kernel_panic_sysctls_init() #18, !dbg !5595
  ret i32 %call, !dbg !5595
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kernel_panic_sysctls_init() #0 section ".init.text" align 16 !dbg !5596 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str.12, ptr noundef @kern_panic_table, ptr noundef @.str.15, i64 noundef 3) #19, !dbg !5597
  ret i32 0, !dbg !5598
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_panic__345_129_kernel_panic_sysfs_init7() #0 section ".init.text" align 16 !dbg !5599 {
entry:
  %call = call i32 @kernel_panic_sysfs_init() #18, !dbg !5600
  ret i32 %call, !dbg !5600
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kernel_panic_sysfs_init() #0 section ".init.text" align 16 !dbg !5601 {
entry:
  %0 = load ptr, ptr @kernel_kobj, align 8, !dbg !5602
  %call = call i32 @sysfs_add_file_to_group(ptr noundef %0, ptr noundef @warn_count_attr, ptr noundef null) #19, !dbg !5603
  ret i32 0, !dbg !5604
}

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define weak hidden void @panic_smp_self_stop() #1 align 16 !dbg !5605 {
entry:
  br label %while.body, !dbg !5606

while.body:                                       ; preds = %entry, %while.body
  call void @cpu_relax() #19, !dbg !5607
  br label %while.body, !dbg !5606, !llvm.loop !5608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !5611 {
entry:
  call void @rep_nop() #19, !dbg !5613
  ret void, !dbg !5614
}

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define weak hidden void @nmi_panic_self_stop(ptr noundef %regs) #1 align 16 !dbg !5615 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  call void @panic_smp_self_stop() #20, !dbg !5621
  unreachable, !dbg !5621
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @crash_smp_send_stop() #4 align 16 !dbg !5236 {
entry:
  %0 = load i32, ptr @crash_smp_send_stop.cpus_stopped, align 4, !dbg !5622
  %tobool = icmp ne i32 %0, 0, !dbg !5622
  br i1 %tobool, label %if.then, label %if.end, !dbg !5624

if.then:                                          ; preds = %entry
  br label %return, !dbg !5625

if.end:                                           ; preds = %entry
  call void @smp_send_stop() #19, !dbg !5626
  store i32 1, ptr @crash_smp_send_stop.cpus_stopped, align 4, !dbg !5627
  br label %return, !dbg !5628

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @smp_send_stop() #5 align 16 !dbg !5629 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_ops, ptr @smp_ops, i32 0, i32 3), align 8, !dbg !5631
  call void %0(i32 noundef 0) #19, !dbg !5632
  ret void, !dbg !5633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nmi_panic(ptr noundef %regs, ptr noundef %msg) #4 align 16 !dbg !5634 {
entry:
  %regs.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %old_cpu = alloca i32, align 4
  %cpu = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5638, metadata !DIExpression()), !dbg !5648
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !5639, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_cpu) #21, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %old_cpu, metadata !5640, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #21, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5641, metadata !DIExpression()), !dbg !5652
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #21, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5642, metadata !DIExpression()), !dbg !5653
  br label %do.body, !dbg !5653

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5644, metadata !DIExpression()), !dbg !5654
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5654
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !5653
  br label %do.cond, !dbg !5654

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5654

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5646, metadata !DIExpression()), !dbg !5655
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !5655, !srcloc !5656
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5655
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5655
  %conv = zext i32 %2 to i64, !dbg !5655
  %conv1 = trunc i64 %conv to i32, !dbg !5655
  store i32 %conv1, ptr %tmp, align 4, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !5653
  %3 = load i32, ptr %tmp, align 4, !dbg !5655
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5653
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5653
  store i32 %4, ptr %tmp2, align 4, !dbg !5653
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #21, !dbg !5657
  %5 = load i32, ptr %tmp2, align 4, !dbg !5653
  store i32 %5, ptr %cpu, align 4, !dbg !5658
  %6 = load i32, ptr %cpu, align 4, !dbg !5659
  %call = call i32 @atomic_cmpxchg(ptr noundef @panic_cpu, i32 noundef -1, i32 noundef %6) #19, !dbg !5660
  store i32 %call, ptr %old_cpu, align 4, !dbg !5661
  %7 = load i32, ptr %old_cpu, align 4, !dbg !5662
  %cmp = icmp eq i32 %7, -1, !dbg !5664
  br i1 %cmp, label %if.then, label %if.else, !dbg !5665

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %msg.addr, align 8, !dbg !5666
  call void (ptr, ...) @panic(ptr noundef @.str, ptr noundef %8) #22, !dbg !5667
  unreachable, !dbg !5667

if.else:                                          ; preds = %do.end
  %9 = load i32, ptr %old_cpu, align 4, !dbg !5668
  %10 = load i32, ptr %cpu, align 4, !dbg !5670
  %cmp4 = icmp ne i32 %9, %10, !dbg !5671
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !5672

if.then6:                                         ; preds = %if.else
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !5673
  call void @nmi_panic_self_stop(ptr noundef %11) #20, !dbg !5674
  unreachable, !dbg !5674

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #21, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_cpu) #21, !dbg !5675
  ret void, !dbg !5675
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !5676 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5681, metadata !DIExpression()), !dbg !5684
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5682, metadata !DIExpression()), !dbg !5685
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5683, metadata !DIExpression()), !dbg !5686
  br label %do.body, !dbg !5687

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5688

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5690
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !5691
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5692
  %2 = load i32, ptr %old.addr, align 4, !dbg !5693
  %3 = load i32, ptr %new.addr, align 4, !dbg !5694
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #19, !dbg !5695
  ret i32 %call, !dbg !5696
}

; Function Attrs: cold fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid optsize sspstrong
define hidden void @panic(ptr noundef %fmt, ...) #7 align 16 !dbg !5256 {
entry:
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i64, align 8
  %i_next = alloca i64, align 8
  %len = alloca i64, align 8
  %state = alloca i32, align 4
  %old_cpu = alloca i32, align 4
  %this_cpu = alloca i32, align 4
  %_crash_kexec_post_notifiers = alloca i8, align 1
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %__ms = alloca i64, align 8
  %tmp83 = alloca i32, align 4
  %__ms97 = alloca i64, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5260, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #21, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5261, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #21, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5272, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_next) #21, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %i_next, metadata !5273, metadata !DIExpression()), !dbg !5702
  store i64 0, ptr %i_next, align 8, !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #21, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5274, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #21, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5275, metadata !DIExpression()), !dbg !5705
  store i32 0, ptr %state, align 4, !dbg !5705
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_cpu) #21, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %old_cpu, metadata !5276, metadata !DIExpression()), !dbg !5707
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #21, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !5277, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 1, ptr %_crash_kexec_post_notifiers) #21, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %_crash_kexec_post_notifiers, metadata !5278, metadata !DIExpression()), !dbg !5710
  %0 = load i8, ptr @crash_kexec_post_notifiers, align 1, !dbg !5711, !range !5712, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !5711
  %frombool = zext i1 %tobool to i8, !dbg !5710
  store i8 %frombool, ptr %_crash_kexec_post_notifiers, align 1, !dbg !5710
  %1 = load i32, ptr @panic_on_warn, align 4, !dbg !5713
  %tobool1 = icmp ne i32 %1, 0, !dbg !5713
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5715

if.then:                                          ; preds = %entry
  store i32 0, ptr @panic_on_warn, align 4, !dbg !5716
  br label %if.end, !dbg !5718

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5719

do.body:                                          ; preds = %if.end
  call void @arch_local_irq_disable() #19, !dbg !5720
  br label %do.cond, !dbg !5720

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5720

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !5722

do.body2:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #19, !dbg !5723
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !5723, !srcloc !5725
  br label %do.cond3, !dbg !5723

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5723

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #21, !dbg !5726
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5279, metadata !DIExpression()), !dbg !5726
  br label %do.body5, !dbg !5726

do.body5:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5281, metadata !DIExpression()), !dbg !5727
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5727
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !5727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !5726
  br label %do.cond6, !dbg !5727

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5727

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5283, metadata !DIExpression()), !dbg !5728
  %3 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !5728, !srcloc !5729
  store i32 %3, ptr %pfo_val__, align 4, !dbg !5728
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !5728
  %conv = zext i32 %4 to i64, !dbg !5728
  %conv8 = trunc i64 %conv to i32, !dbg !5728
  store i32 %conv8, ptr %tmp, align 4, !dbg !5728
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !5726
  %5 = load i32, ptr %tmp, align 4, !dbg !5728
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !5726
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !5726
  store i32 %6, ptr %tmp9, align 4, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #21, !dbg !5730
  %7 = load i32, ptr %tmp9, align 4, !dbg !5726
  store i32 %7, ptr %this_cpu, align 4, !dbg !5731
  %8 = load i32, ptr %this_cpu, align 4, !dbg !5732
  %call = call i32 @atomic_cmpxchg(ptr noundef @panic_cpu, i32 noundef -1, i32 noundef %8) #19, !dbg !5733
  store i32 %call, ptr %old_cpu, align 4, !dbg !5734
  %9 = load i32, ptr %old_cpu, align 4, !dbg !5735
  %cmp = icmp ne i32 %9, -1, !dbg !5737
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !5738

land.lhs.true:                                    ; preds = %do.end7
  %10 = load i32, ptr %old_cpu, align 4, !dbg !5739
  %11 = load i32, ptr %this_cpu, align 4, !dbg !5740
  %cmp11 = icmp ne i32 %10, %11, !dbg !5741
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5742

if.then13:                                        ; preds = %land.lhs.true
  call void @panic_smp_self_stop() #20, !dbg !5743
  unreachable, !dbg !5743

if.end14:                                         ; preds = %land.lhs.true, %do.end7
  call void @console_verbose() #19, !dbg !5744
  call void @bust_spinlocks(i32 noundef 1) #19, !dbg !5745
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5746
  call void @llvm.va_start(ptr %arraydecay), !dbg !5746
  %12 = load ptr, ptr %fmt.addr, align 8, !dbg !5747
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5748
  %call16 = call i32 @vscnprintf(ptr noundef @panic.buf, i64 noundef 1024, ptr noundef %12, ptr noundef %arraydecay15) #19, !dbg !5749
  %conv17 = sext i32 %call16 to i64, !dbg !5749
  store i64 %conv17, ptr %len, align 8, !dbg !5750
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5751
  call void @llvm.va_end(ptr %arraydecay18), !dbg !5751
  %13 = load i64, ptr %len, align 8, !dbg !5752
  %tobool19 = icmp ne i64 %13, 0, !dbg !5752
  br i1 %tobool19, label %land.lhs.true20, label %if.end27, !dbg !5754

land.lhs.true20:                                  ; preds = %if.end14
  %14 = load i64, ptr %len, align 8, !dbg !5755
  %sub = sub i64 %14, 1, !dbg !5756
  %arrayidx = getelementptr [1024 x i8], ptr @panic.buf, i64 0, i64 %sub, !dbg !5757
  %15 = load i8, ptr %arrayidx, align 1, !dbg !5757
  %conv21 = zext i8 %15 to i32, !dbg !5757
  %cmp22 = icmp eq i32 %conv21, 10, !dbg !5758
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !5759

if.then24:                                        ; preds = %land.lhs.true20
  %16 = load i64, ptr %len, align 8, !dbg !5760
  %sub25 = sub i64 %16, 1, !dbg !5761
  %arrayidx26 = getelementptr [1024 x i8], ptr @panic.buf, i64 0, i64 %sub25, !dbg !5762
  store i8 0, ptr %arrayidx26, align 1, !dbg !5763
  br label %if.end27, !dbg !5762

if.end27:                                         ; preds = %if.then24, %land.lhs.true20, %if.end14
  br label %do.body28, !dbg !5764

do.body28:                                        ; preds = %if.end27
  br label %do.cond29, !dbg !5766

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5766

do.end30:                                         ; preds = %do.cond29
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef @panic.buf) #18, !dbg !5764
  store i32 %call32, ptr %tmp31, align 4, !dbg !5766
  %17 = load i32, ptr %tmp31, align 4, !dbg !5764
  %call33 = call i32 @test_taint(i32 noundef 7) #19, !dbg !5768
  %tobool34 = icmp ne i32 %call33, 0, !dbg !5768
  br i1 %tobool34, label %if.end39, label %land.lhs.true35, !dbg !5770

land.lhs.true35:                                  ; preds = %do.end30
  %18 = load i32, ptr @oops_in_progress, align 4, !dbg !5771
  %cmp36 = icmp sle i32 %18, 1, !dbg !5772
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5773

if.then38:                                        ; preds = %land.lhs.true35
  call void @dump_stack() #18, !dbg !5774
  br label %if.end39, !dbg !5774

if.end39:                                         ; preds = %if.then38, %land.lhs.true35, %do.end30
  call void @kgdb_panic(ptr noundef @panic.buf) #19, !dbg !5775
  %19 = load i8, ptr %_crash_kexec_post_notifiers, align 1, !dbg !5776, !range !5712, !noundef !626
  %tobool40 = trunc i8 %19 to i1, !dbg !5776
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !5778

if.then41:                                        ; preds = %if.end39
  call void @__crash_kexec(ptr noundef null) #19, !dbg !5779
  br label %if.end42, !dbg !5779

if.end42:                                         ; preds = %if.then41, %if.end39
  %20 = load i8, ptr %_crash_kexec_post_notifiers, align 1, !dbg !5780, !range !5712, !noundef !626
  %tobool43 = trunc i8 %20 to i1, !dbg !5780
  call void @panic_other_cpus_shutdown(i1 noundef zeroext %tobool43) #19, !dbg !5781
  %call44 = call i32 @atomic_notifier_call_chain(ptr noundef @panic_notifier_list, i64 noundef 0, ptr noundef @panic.buf) #19, !dbg !5782
  call void @panic_print_sys_info(i1 noundef zeroext false) #19, !dbg !5783
  call void @kmsg_dump(i32 noundef 1) #19, !dbg !5784
  %21 = load i8, ptr %_crash_kexec_post_notifiers, align 1, !dbg !5785, !range !5712, !noundef !626
  %tobool45 = trunc i8 %21 to i1, !dbg !5785
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5787

if.then46:                                        ; preds = %if.end42
  call void @__crash_kexec(ptr noundef null) #19, !dbg !5788
  br label %if.end47, !dbg !5788

if.end47:                                         ; preds = %if.then46, %if.end42
  call void @console_unblank() #19, !dbg !5789
  %call48 = call i32 @debug_locks_off() #19, !dbg !5790
  call void @console_flush_on_panic(i32 noundef 0) #19, !dbg !5791
  call void @panic_print_sys_info(i1 noundef zeroext true) #19, !dbg !5792
  %22 = load ptr, ptr @panic_blink, align 8, !dbg !5793
  %tobool49 = icmp ne ptr %22, null, !dbg !5793
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !5795

if.then50:                                        ; preds = %if.end47
  store ptr @no_blink, ptr @panic_blink, align 8, !dbg !5796
  br label %if.end51, !dbg !5797

if.end51:                                         ; preds = %if.then50, %if.end47
  %23 = load i32, ptr @panic_timeout, align 4, !dbg !5798
  %cmp52 = icmp sgt i32 %23, 0, !dbg !5799
  br i1 %cmp52, label %if.then54, label %if.end71, !dbg !5800

if.then54:                                        ; preds = %if.end51
  br label %do.body55, !dbg !5801

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !5803

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5803

do.end57:                                         ; preds = %do.cond56
  %24 = load i32, ptr @panic_timeout, align 4, !dbg !5801
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %24) #18, !dbg !5801
  store i32 %call59, ptr %tmp58, align 4, !dbg !5803
  %25 = load i32, ptr %tmp58, align 4, !dbg !5801
  store i64 0, ptr %i, align 8, !dbg !5805
  br label %for.cond, !dbg !5806

for.cond:                                         ; preds = %for.inc, %do.end57
  %26 = load i64, ptr %i, align 8, !dbg !5807
  %27 = load i32, ptr @panic_timeout, align 4, !dbg !5808
  %mul = mul i32 %27, 1000, !dbg !5809
  %conv60 = sext i32 %mul to i64, !dbg !5808
  %cmp61 = icmp slt i64 %26, %conv60, !dbg !5810
  br i1 %cmp61, label %for.body, label %for.end, !dbg !5811

for.body:                                         ; preds = %for.cond
  call void @touch_nmi_watchdog() #19, !dbg !5812
  %28 = load i64, ptr %i, align 8, !dbg !5813
  %29 = load i64, ptr %i_next, align 8, !dbg !5815
  %cmp63 = icmp sge i64 %28, %29, !dbg !5816
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !5817

if.then65:                                        ; preds = %for.body
  %30 = load ptr, ptr @panic_blink, align 8, !dbg !5818
  %31 = load i32, ptr %state, align 4, !dbg !5820
  %xor = xor i32 %31, 1, !dbg !5820
  store i32 %xor, ptr %state, align 4, !dbg !5820
  %call66 = call i64 %30(i32 noundef %xor) #19, !dbg !5818
  %32 = load i64, ptr %i, align 8, !dbg !5821
  %add = add i64 %32, %call66, !dbg !5821
  store i64 %add, ptr %i, align 8, !dbg !5821
  %33 = load i64, ptr %i, align 8, !dbg !5822
  %add67 = add i64 %33, 200, !dbg !5823
  store i64 %add67, ptr %i_next, align 8, !dbg !5824
  br label %if.end68, !dbg !5825

if.end68:                                         ; preds = %if.then65, %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #21, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !5285, metadata !DIExpression()), !dbg !5826
  store i64 100, ptr %__ms, align 8, !dbg !5826
  br label %while.cond, !dbg !5826

while.cond:                                       ; preds = %while.body, %if.end68
  %34 = load i64, ptr %__ms, align 8, !dbg !5826
  %dec = add i64 %34, -1, !dbg !5826
  store i64 %dec, ptr %__ms, align 8, !dbg !5826
  %tobool69 = icmp ne i64 %34, 0, !dbg !5826
  br i1 %tobool69, label %while.body, label %while.end, !dbg !5826

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 noundef 4295000) #19, !dbg !5827
  br label %while.cond, !dbg !5826, !llvm.loop !5832

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #21, !dbg !5834
  br label %for.inc, !dbg !5835

for.inc:                                          ; preds = %while.end
  %35 = load i64, ptr %i, align 8, !dbg !5836
  %add70 = add i64 %35, 100, !dbg !5836
  store i64 %add70, ptr %i, align 8, !dbg !5836
  br label %for.cond, !dbg !5837, !llvm.loop !5838

for.end:                                          ; preds = %for.cond
  br label %if.end71, !dbg !5840

if.end71:                                         ; preds = %for.end, %if.end51
  %36 = load i32, ptr @panic_timeout, align 4, !dbg !5841
  %cmp72 = icmp ne i32 %36, 0, !dbg !5843
  br i1 %cmp72, label %if.then74, label %if.end79, !dbg !5844

if.then74:                                        ; preds = %if.end71
  %37 = load i32, ptr @panic_reboot_mode, align 4, !dbg !5845
  %cmp75 = icmp ne i32 %37, -1, !dbg !5848
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !5849

if.then77:                                        ; preds = %if.then74
  %38 = load i32, ptr @panic_reboot_mode, align 4, !dbg !5850
  store i32 %38, ptr @reboot_mode, align 4, !dbg !5851
  br label %if.end78, !dbg !5852

if.end78:                                         ; preds = %if.then77, %if.then74
  call void @emergency_restart() #19, !dbg !5853
  br label %if.end79, !dbg !5854

if.end79:                                         ; preds = %if.end78, %if.end71
  br label %do.body80, !dbg !5855

do.body80:                                        ; preds = %if.end79
  br label %do.cond81, !dbg !5857

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5857

do.end82:                                         ; preds = %do.cond81
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef @panic.buf) #18, !dbg !5855
  store i32 %call84, ptr %tmp83, align 4, !dbg !5857
  %39 = load i32, ptr %tmp83, align 4, !dbg !5855
  store i32 1, ptr @suppress_printk, align 4, !dbg !5859
  call void @console_flush_on_panic(i32 noundef 0) #19, !dbg !5860
  br label %do.body85, !dbg !5861

do.body85:                                        ; preds = %do.end82
  call void @arch_local_irq_enable() #19, !dbg !5862
  br label %do.cond86, !dbg !5862

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !5862

do.end87:                                         ; preds = %do.cond86
  store i64 0, ptr %i, align 8, !dbg !5864
  br label %for.cond88, !dbg !5865

for.cond88:                                       ; preds = %for.inc103, %do.end87
  call void @touch_softlockup_watchdog() #19, !dbg !5866
  %40 = load i64, ptr %i, align 8, !dbg !5867
  %41 = load i64, ptr %i_next, align 8, !dbg !5869
  %cmp89 = icmp sge i64 %40, %41, !dbg !5870
  br i1 %cmp89, label %if.then91, label %if.end96, !dbg !5871

if.then91:                                        ; preds = %for.cond88
  %42 = load ptr, ptr @panic_blink, align 8, !dbg !5872
  %43 = load i32, ptr %state, align 4, !dbg !5874
  %xor92 = xor i32 %43, 1, !dbg !5874
  store i32 %xor92, ptr %state, align 4, !dbg !5874
  %call93 = call i64 %42(i32 noundef %xor92) #19, !dbg !5872
  %44 = load i64, ptr %i, align 8, !dbg !5875
  %add94 = add i64 %44, %call93, !dbg !5875
  store i64 %add94, ptr %i, align 8, !dbg !5875
  %45 = load i64, ptr %i, align 8, !dbg !5876
  %add95 = add i64 %45, 200, !dbg !5877
  store i64 %add95, ptr %i_next, align 8, !dbg !5878
  br label %if.end96, !dbg !5879

if.end96:                                         ; preds = %if.then91, %for.cond88
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms97) #21, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %__ms97, metadata !5292, metadata !DIExpression()), !dbg !5880
  store i64 100, ptr %__ms97, align 8, !dbg !5880
  br label %while.cond98, !dbg !5880

while.cond98:                                     ; preds = %while.body101, %if.end96
  %46 = load i64, ptr %__ms97, align 8, !dbg !5880
  %dec99 = add i64 %46, -1, !dbg !5880
  store i64 %dec99, ptr %__ms97, align 8, !dbg !5880
  %tobool100 = icmp ne i64 %46, 0, !dbg !5880
  br i1 %tobool100, label %while.body101, label %while.end102, !dbg !5880

while.body101:                                    ; preds = %while.cond98
  call void @__const_udelay(i64 noundef 4295000) #19, !dbg !5881
  br label %while.cond98, !dbg !5880, !llvm.loop !5886

while.end102:                                     ; preds = %while.cond98
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms97) #21, !dbg !5887
  br label %for.inc103, !dbg !5888

for.inc103:                                       ; preds = %while.end102
  %47 = load i64, ptr %i, align 8, !dbg !5889
  %add104 = add i64 %47, 100, !dbg !5889
  store i64 %add104, ptr %i, align 8, !dbg !5889
  br label %for.cond88, !dbg !5890, !llvm.loop !5891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @check_panic_on_warn(ptr noundef %origin) #4 align 16 !dbg !5894 {
entry:
  %origin.addr = alloca ptr, align 8
  %limit = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !5898, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #21, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !5899, metadata !DIExpression()), !dbg !5902
  %0 = load i32, ptr @panic_on_warn, align 4, !dbg !5903
  %tobool = icmp ne i32 %0, 0, !dbg !5903
  br i1 %tobool, label %if.then, label %if.end, !dbg !5905

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %origin.addr, align 8, !dbg !5906
  call void (ptr, ...) @panic(ptr noundef @.str.1, ptr noundef %1) #22, !dbg !5907
  unreachable, !dbg !5907

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5908

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5910

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5910

do.end:                                           ; preds = %do.cond
  %2 = load volatile i32, ptr @warn_limit, align 4, !dbg !5908
  store i32 %2, ptr %tmp, align 4, !dbg !5910
  %3 = load i32, ptr %tmp, align 4, !dbg !5908
  store i32 %3, ptr %limit, align 4, !dbg !5912
  %call = call i32 @atomic_inc_return(ptr noundef @warn_count) #19, !dbg !5913
  %4 = load i32, ptr %limit, align 4, !dbg !5915
  %cmp = icmp uge i32 %call, %4, !dbg !5916
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !5917

land.lhs.true:                                    ; preds = %do.end
  %5 = load i32, ptr %limit, align 4, !dbg !5918
  %tobool1 = icmp ne i32 %5, 0, !dbg !5918
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5919

if.then2:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %origin.addr, align 8, !dbg !5920
  %7 = load i32, ptr %limit, align 4, !dbg !5921
  call void (ptr, ...) @panic(ptr noundef @.str.2, ptr noundef %6, i32 noundef %7) #22, !dbg !5922
  unreachable, !dbg !5922

if.end3:                                          ; preds = %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #21, !dbg !5923
  ret void, !dbg !5923
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #2 align 16 !dbg !5924 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  br label %do.body, !dbg !5930

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5931

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5933
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !5934
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5935
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #19, !dbg !5936
  ret i32 %call, !dbg !5937
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #2 align 16 !dbg !5938 {
entry:
  call void @native_irq_disable() #19, !dbg !5940
  ret void, !dbg !5941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !5942 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5945, metadata !DIExpression()), !dbg !5952
  br label %do.body, !dbg !5953

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #21, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5946, metadata !DIExpression()), !dbg !5954
  %0 = load i32, ptr %val.addr, align 4, !dbg !5954
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5954
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5954

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5954
  %cmp = icmp eq i32 %2, 1, !dbg !5954
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5954

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5954
  %cmp1 = icmp eq i32 %3, -1, !dbg !5954
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5954

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5954
  br label %cond.end, !dbg !5954

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5954
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5954
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5955
  %cmp2 = icmp eq i32 %5, 1, !dbg !5955
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5954

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !5956, !srcloc !5958
  br label %if.end8, !dbg !5955

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5959
  %cmp3 = icmp eq i32 %6, -1, !dbg !5959
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5955

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !5960, !srcloc !5962
  br label %if.end, !dbg !5959

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5959

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #21, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5948, metadata !DIExpression()), !dbg !5963
  %7 = load i32, ptr %val.addr, align 4, !dbg !5963
  %conv = sext i32 %7 to i64, !dbg !5963
  %and = and i64 %conv, 4294967295, !dbg !5963
  %conv7 = trunc i64 %and to i32, !dbg !5963
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5963
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5963
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !5963, !srcloc !5964
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #21, !dbg !5959
  br label %do.cond, !dbg !5963

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5963

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #21, !dbg !5953
  br label %do.end10, !dbg !5954

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local void @console_verbose() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5968 dso_local void @bust_spinlocks(i32 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5969 dso_local i32 @vscnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5974 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @test_taint(i32 noundef %flag) #4 align 16 !dbg !5977 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5983
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5983
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5983

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr @tainted_mask to i64), i64 0) to i32, !dbg !5983
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5983
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !5983

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @tainted_mask to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !5983

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr @tainted_mask, align 8, !dbg !5983
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !5983
  br i1 %4, label %cond.true, label %cond.false, !dbg !5983

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %flag.addr, align 4, !dbg !5983
  %conv4 = zext i32 %5 to i64, !dbg !5983
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef @tainted_mask) #19, !dbg !5983
  %conv5 = zext i1 %call to i32, !dbg !5983
  br label %cond.end, !dbg !5983

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %flag.addr, align 4, !dbg !5983
  %conv6 = zext i32 %6 to i64, !dbg !5983
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef @tainted_mask) #19, !dbg !5983
  %conv8 = zext i1 %call7 to i32, !dbg !5983
  br label %cond.end, !dbg !5983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !5983
  ret i32 %cond, !dbg !5984
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5985 dso_local void @dump_stack() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kgdb_panic(ptr noundef %msg) #5 align 16 !dbg !5986 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  ret void, !dbg !5991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local void @__crash_kexec(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panic_other_cpus_shutdown(i1 noundef zeroext %crash_kexec) #4 align 16 !dbg !5994 {
entry:
  %crash_kexec.addr = alloca i8, align 1
  %frombool = zext i1 %crash_kexec to i8
  store i8 %frombool, ptr %crash_kexec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %crash_kexec.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  %0 = load i64, ptr @panic_print, align 8, !dbg !5998
  %and = and i64 %0, 64, !dbg !6000
  %tobool = icmp ne i64 %and, 0, !dbg !6000
  br i1 %tobool, label %if.then, label %if.end, !dbg !6001

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @trigger_all_cpu_backtrace() #19, !dbg !6002
  br label %if.end, !dbg !6002

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %crash_kexec.addr, align 1, !dbg !6003, !range !5712, !noundef !626
  %tobool1 = trunc i8 %1 to i1, !dbg !6003
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !6005

if.then2:                                         ; preds = %if.end
  call void @smp_send_stop() #19, !dbg !6006
  br label %if.end3, !dbg !6006

if.else:                                          ; preds = %if.end
  call void @crash_smp_send_stop() #19, !dbg !6007
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  ret void, !dbg !6008
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6009 dso_local i32 @atomic_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panic_print_sys_info(i1 noundef zeroext %console_flush) #4 align 16 !dbg !6013 {
entry:
  %console_flush.addr = alloca i8, align 1
  %frombool = zext i1 %console_flush to i8
  store i8 %frombool, ptr %console_flush.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %console_flush.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load i8, ptr %console_flush.addr, align 1, !dbg !6017, !range !5712, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !6017
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6019

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @panic_print, align 8, !dbg !6020
  %and = and i64 %1, 32, !dbg !6023
  %tobool1 = icmp ne i64 %and, 0, !dbg !6023
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6024

if.then2:                                         ; preds = %if.then
  call void @console_flush_on_panic(i32 noundef 1) #19, !dbg !6025
  br label %if.end, !dbg !6025

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end23, !dbg !6026

if.end3:                                          ; preds = %entry
  %2 = load i64, ptr @panic_print, align 8, !dbg !6027
  %and4 = and i64 %2, 1, !dbg !6029
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6029
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6030

if.then6:                                         ; preds = %if.end3
  call void @show_state() #19, !dbg !6031
  br label %if.end7, !dbg !6031

if.end7:                                          ; preds = %if.then6, %if.end3
  %3 = load i64, ptr @panic_print, align 8, !dbg !6032
  %and8 = and i64 %3, 2, !dbg !6034
  %tobool9 = icmp ne i64 %and8, 0, !dbg !6034
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6035

if.then10:                                        ; preds = %if.end7
  call void @show_mem() #19, !dbg !6036
  br label %if.end11, !dbg !6036

if.end11:                                         ; preds = %if.then10, %if.end7
  %4 = load i64, ptr @panic_print, align 8, !dbg !6037
  %and12 = and i64 %4, 4, !dbg !6039
  %tobool13 = icmp ne i64 %and12, 0, !dbg !6039
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6040

if.then14:                                        ; preds = %if.end11
  call void @sysrq_timer_list_show() #19, !dbg !6041
  br label %if.end15, !dbg !6041

if.end15:                                         ; preds = %if.then14, %if.end11
  %5 = load i64, ptr @panic_print, align 8, !dbg !6042
  %and16 = and i64 %5, 8, !dbg !6044
  %tobool17 = icmp ne i64 %and16, 0, !dbg !6044
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6045

if.then18:                                        ; preds = %if.end15
  call void @debug_show_all_locks() #19, !dbg !6046
  br label %if.end19, !dbg !6046

if.end19:                                         ; preds = %if.then18, %if.end15
  %6 = load i64, ptr @panic_print, align 8, !dbg !6047
  %and20 = and i64 %6, 16, !dbg !6049
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6049
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6050

if.then22:                                        ; preds = %if.end19
  call void @ftrace_dump(i32 noundef 1) #19, !dbg !6051
  br label %if.end23, !dbg !6051

if.end23:                                         ; preds = %if.end, %if.then22, %if.end19
  ret void, !dbg !6052
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6053 dso_local void @kmsg_dump(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6056 dso_local void @console_unblank() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local i32 @debug_locks_off() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local void @console_flush_on_panic(i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @no_blink(i32 noundef %state) #4 align 16 !dbg !6062 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  ret i64 0, !dbg !6066
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_nmi_watchdog() #5 align 16 !dbg !6067 {
entry:
  call void @arch_touch_nmi_watchdog() #19, !dbg !6069
  call void @touch_softlockup_watchdog() #19, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local void @__const_udelay(i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6076 dso_local void @emergency_restart() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #2 align 16 !dbg !6077 {
entry:
  call void @native_irq_enable() #19, !dbg !6078
  ret void, !dbg !6079
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #5 align 16 !dbg !6080 {
entry:
  ret void, !dbg !6081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @print_tainted() #4 align 16 !dbg !5328 {
entry:
  %s = alloca ptr, align 8
  %i = alloca i32, align 4
  %t = alloca ptr, align 8
  br label %do.body, !dbg !6082

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6083

do.end:                                           ; preds = %do.body
  %0 = load i64, ptr @tainted_mask, align 8, !dbg !6085
  %tobool = icmp ne i64 %0, 0, !dbg !6085
  br i1 %tobool, label %if.then, label %if.else, !dbg !6086

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #21, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5332, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5335, metadata !DIExpression()), !dbg !6090
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @print_tainted.buf, ptr noundef @.str.6) #19, !dbg !6091
  %idx.ext = sext i32 %call to i64, !dbg !6092
  %add.ptr = getelementptr i8, ptr @print_tainted.buf, i64 %idx.ext, !dbg !6092
  store ptr %add.ptr, ptr %s, align 8, !dbg !6093
  store i32 0, ptr %i, align 4, !dbg !6094
  br label %for.cond, !dbg !6095

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !6096
  %cmp = icmp slt i32 %1, 19, !dbg !6097
  br i1 %cmp, label %for.body, label %for.end, !dbg !6098

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #21, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5336, metadata !DIExpression()), !dbg !6100
  %2 = load i32, ptr %i, align 4, !dbg !6101
  %idxprom = sext i32 %2 to i64, !dbg !6102
  %arrayidx = getelementptr [19 x %struct.taint_flag], ptr @taint_flags, i64 0, i64 %idxprom, !dbg !6102
  store ptr %arrayidx, ptr %t, align 8, !dbg !6100
  %3 = load i32, ptr %i, align 4, !dbg !6103
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6103
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6103

land.lhs.true:                                    ; preds = %for.body
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr @tainted_mask to i64), i64 0) to i32, !dbg !6103
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6103
  br i1 %5, label %land.lhs.true1, label %cond.false, !dbg !6103

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @tainted_mask to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !6103

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %6 = load i64, ptr @tainted_mask, align 8, !dbg !6103
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6103
  br i1 %7, label %cond.true, label %cond.false, !dbg !6103

cond.true:                                        ; preds = %land.lhs.true3
  %8 = load i32, ptr %i, align 4, !dbg !6103
  %conv4 = sext i32 %8 to i64, !dbg !6103
  %call5 = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef @tainted_mask) #19, !dbg !6103
  br i1 %call5, label %cond.true10, label %cond.false12, !dbg !6103

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %for.body
  %9 = load i32, ptr %i, align 4, !dbg !6103
  %conv7 = sext i32 %9 to i64, !dbg !6103
  %call8 = call zeroext i1 @_test_bit(i64 noundef %conv7, ptr noundef @tainted_mask) #19, !dbg !6103
  br i1 %call8, label %cond.true10, label %cond.false12, !dbg !6103

cond.true10:                                      ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %t, align 8, !dbg !6104
  %c_true = getelementptr inbounds %struct.taint_flag, ptr %10, i32 0, i32 0, !dbg !6105
  %11 = load i8, ptr %c_true, align 1, !dbg !6105
  %conv11 = zext i8 %11 to i32, !dbg !6104
  br label %cond.end, !dbg !6103

cond.false12:                                     ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %t, align 8, !dbg !6106
  %c_false = getelementptr inbounds %struct.taint_flag, ptr %12, i32 0, i32 1, !dbg !6107
  %13 = load i8, ptr %c_false, align 1, !dbg !6107
  %conv13 = zext i8 %13 to i32, !dbg !6106
  br label %cond.end, !dbg !6103

cond.end:                                         ; preds = %cond.false12, %cond.true10
  %cond = phi i32 [ %conv11, %cond.true10 ], [ %conv13, %cond.false12 ], !dbg !6103
  %conv14 = trunc i32 %cond to i8, !dbg !6103
  %14 = load ptr, ptr %s, align 8, !dbg !6108
  %incdec.ptr = getelementptr i8, ptr %14, i32 1, !dbg !6108
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !6108
  store i8 %conv14, ptr %14, align 1, !dbg !6109
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #21, !dbg !6110
  br label %for.inc, !dbg !6111

for.inc:                                          ; preds = %cond.end
  %15 = load i32, ptr %i, align 4, !dbg !6112
  %inc = add i32 %15, 1, !dbg !6112
  store i32 %inc, ptr %i, align 4, !dbg !6112
  br label %for.cond, !dbg !6113, !llvm.loop !6114

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %s, align 8, !dbg !6116
  store i8 0, ptr %16, align 1, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !6118
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #21, !dbg !6118
  br label %if.end, !dbg !6119

if.else:                                          ; preds = %do.end
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @print_tainted.buf, i64 noundef 29, ptr noundef @.str.7) #19, !dbg !6120
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret ptr @print_tainted.buf, !dbg !6121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6122 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6125 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6133, metadata !DIExpression()), !dbg !6138
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6134, metadata !DIExpression()), !dbg !6139
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #21, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6135, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6142
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6143
  %div = udiv i64 %1, 64, !dbg !6143
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6144
  store ptr %add.ptr, ptr %p, align 8, !dbg !6141
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #21, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6136, metadata !DIExpression()), !dbg !6146
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6147
  %rem = urem i64 %2, 64, !dbg !6147
  %shl = shl i64 1, %rem, !dbg !6147
  store i64 %shl, ptr %mask, align 8, !dbg !6146
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6137, metadata !DIExpression()), !dbg !6149
  %3 = load ptr, ptr %p, align 8, !dbg !6150
  %4 = load i64, ptr %3, align 8, !dbg !6151
  store i64 %4, ptr %val, align 8, !dbg !6149
  %5 = load i64, ptr %val, align 8, !dbg !6152
  %6 = load i64, ptr %mask, align 8, !dbg !6153
  %and = and i64 %5, %6, !dbg !6154
  %tobool = icmp ne i64 %and, 0, !dbg !6155
  %lnot = xor i1 %tobool, true, !dbg !6155
  %lnot1 = xor i1 %lnot, true, !dbg !6156
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #21, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #21, !dbg !6157
  ret i1 %lnot1, !dbg !6158
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6159 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6162, metadata !DIExpression()), !dbg !6164
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6166
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6167
  %div = udiv i64 %1, 64, !dbg !6167
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6168
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6169
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6170
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6171
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6172
  ret i1 %call, !dbg !6173
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6174 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @get_taint() #4 align 16 !dbg !6177 {
entry:
  %0 = load i64, ptr @tainted_mask, align 8, !dbg !6180
  ret i64 %0, !dbg !6181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @add_taint(i32 noundef %flag, i32 noundef %lockdep_ok) #4 align 16 !dbg !6182 {
entry:
  %flag.addr = alloca i32, align 4
  %lockdep_ok.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  store i32 %lockdep_ok, ptr %lockdep_ok.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lockdep_ok.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  %0 = load i32, ptr %lockdep_ok.addr, align 4, !dbg !6190
  %cmp = icmp eq i32 %0, 1, !dbg !6192
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6193

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__debug_locks_off() #19, !dbg !6194
  %tobool = icmp ne i32 %call, 0, !dbg !6194
  br i1 %tobool, label %if.then, label %if.end, !dbg !6195

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !6196

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6198

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #18, !dbg !6196
  store i32 %call1, ptr %tmp, align 4, !dbg !6198
  %1 = load i32, ptr %tmp, align 4, !dbg !6196
  br label %if.end, !dbg !6200

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %2 = load i32, ptr %flag.addr, align 4, !dbg !6201
  %conv = zext i32 %2 to i64, !dbg !6201
  call void @set_bit(i64 noundef %conv, ptr noundef @tainted_mask) #19, !dbg !6202
  %3 = load i64, ptr @tainted_mask, align 8, !dbg !6203
  %4 = load i64, ptr @panic_on_taint, align 8, !dbg !6205
  %and = and i64 %3, %4, !dbg !6206
  %tobool2 = icmp ne i64 %and, 0, !dbg !6206
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6207

if.then3:                                         ; preds = %if.end
  store i64 0, ptr @panic_on_taint, align 8, !dbg !6208
  call void (ptr, ...) @panic(ptr noundef @.str.9) #22, !dbg !6210
  unreachable, !dbg !6210

if.end4:                                          ; preds = %if.end
  ret void, !dbg !6211
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__debug_locks_off() #2 align 16 !dbg !6212 {
entry:
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #21, !dbg !6218
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6214, metadata !DIExpression()), !dbg !6218
  store ptr @debug_locks, ptr %__ai_ptr, align 8, !dbg !6218
  br label %do.body, !dbg !6218

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6219

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6219

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %__ai_ptr, align 8, !dbg !6218
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !6218
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6216, metadata !DIExpression()), !dbg !6221
  store i32 0, ptr %__ret, align 4, !dbg !6221
  %1 = load i32, ptr %__ret, align 4, !dbg !6221
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !6221
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 %1, ptr elementtype(i32) %2) #21, !dbg !6221, !srcloc !6222
  store i32 %3, ptr %__ret, align 4, !dbg !6221
  %4 = load i32, ptr %__ret, align 4, !dbg !6221
  store i32 %4, ptr %tmp1, align 4, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !6218
  %5 = load i32, ptr %tmp1, align 4, !dbg !6221
  store i32 %5, ptr %tmp, align 4, !dbg !6218
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #21, !dbg !6223
  %6 = load i32, ptr %tmp, align 4, !dbg !6218
  ret i32 %6, !dbg !6224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6225 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6231, metadata !DIExpression()), !dbg !6233
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6232, metadata !DIExpression()), !dbg !6234
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6235
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6236
  %div = sdiv i64 %1, 64, !dbg !6236
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6237
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6238
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6239
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6240
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6241
  ret void, !dbg !6242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @oops_may_print() #4 align 16 !dbg !6243 {
entry:
  %0 = load i32, ptr @pause_on_oops_flag, align 4, !dbg !6244
  %cmp = icmp eq i32 %0, 0, !dbg !6245
  ret i1 %cmp, !dbg !6246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @oops_enter() #4 align 16 !dbg !6247 {
entry:
  call void @tracing_off() #19, !dbg !6248
  %call = call i32 @debug_locks_off() #19, !dbg !6249
  call void @do_oops_enter_exit() #19, !dbg !6250
  %0 = load i32, ptr @sysctl_oops_all_cpu_backtrace, align 4, !dbg !6251
  %tobool = icmp ne i32 %0, 0, !dbg !6251
  br i1 %tobool, label %if.then, label %if.end, !dbg !6253

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @trigger_all_cpu_backtrace() #19, !dbg !6254
  br label %if.end, !dbg !6254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6256 dso_local void @tracing_off() #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_oops_enter_exit() #4 align 16 !dbg !5473 {
entry:
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5475, metadata !DIExpression()), !dbg !6258
  %0 = load i32, ptr @pause_on_oops, align 4, !dbg !6259
  %tobool = icmp ne i32 %0, 0, !dbg !6259
  br i1 %tobool, label %if.end, label %if.then, !dbg !6261

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6262

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6263

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6264

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5476, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5480, metadata !DIExpression()), !dbg !6265
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6265
  %conv = zext i1 %cmp to i32, !dbg !6265
  store i32 1, ptr %tmp, align 4, !dbg !6265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !6266
  %1 = load i32, ptr %tmp, align 4, !dbg !6265
  %call = call ptr @spinlock_check(ptr noundef @pause_on_oops_lock) #19, !dbg !6266
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !6266
  store i64 %call2, ptr %flags, align 8, !dbg !6266
  br label %do.cond, !dbg !6266

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6266

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6264

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6264

do.end4:                                          ; preds = %do.cond3
  %2 = load i32, ptr @pause_on_oops_flag, align 4, !dbg !6267
  %cmp5 = icmp eq i32 %2, 0, !dbg !6269
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !6270

if.then7:                                         ; preds = %do.end4
  store i32 1, ptr @pause_on_oops_flag, align 4, !dbg !6271
  br label %if.end17, !dbg !6273

if.else:                                          ; preds = %do.end4
  %3 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4, !dbg !6274
  %tobool8 = icmp ne i32 %3, 0, !dbg !6274
  br i1 %tobool8, label %if.else14, label %if.then9, !dbg !6277

if.then9:                                         ; preds = %if.else
  %4 = load i32, ptr @pause_on_oops, align 4, !dbg !6278
  store i32 %4, ptr @do_oops_enter_exit.spin_counter, align 4, !dbg !6280
  br label %do.body10, !dbg !6281

do.body10:                                        ; preds = %do.cond11, %if.then9
  call void @spin_unlock(ptr noundef @pause_on_oops_lock) #19, !dbg !6282
  call void @spin_msec(i32 noundef 1000) #19, !dbg !6284
  call void @spin_lock(ptr noundef @pause_on_oops_lock) #19, !dbg !6285
  br label %do.cond11, !dbg !6286

do.cond11:                                        ; preds = %do.body10
  %5 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4, !dbg !6287
  %dec = add i32 %5, -1, !dbg !6287
  store i32 %dec, ptr @do_oops_enter_exit.spin_counter, align 4, !dbg !6287
  %tobool12 = icmp ne i32 %dec, 0, !dbg !6286
  br i1 %tobool12, label %do.body10, label %do.end13, !dbg !6286, !llvm.loop !6288

do.end13:                                         ; preds = %do.cond11
  store i32 0, ptr @pause_on_oops_flag, align 4, !dbg !6290
  br label %if.end16, !dbg !6291

if.else14:                                        ; preds = %if.else
  br label %while.cond, !dbg !6292

while.cond:                                       ; preds = %while.body, %if.else14
  %6 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4, !dbg !6294
  %tobool15 = icmp ne i32 %6, 0, !dbg !6292
  br i1 %tobool15, label %while.body, label %while.end, !dbg !6292

while.body:                                       ; preds = %while.cond
  call void @spin_unlock(ptr noundef @pause_on_oops_lock) #19, !dbg !6295
  call void @spin_msec(i32 noundef 1) #19, !dbg !6297
  call void @spin_lock(ptr noundef @pause_on_oops_lock) #19, !dbg !6298
  br label %while.cond, !dbg !6292, !llvm.loop !6299

while.end:                                        ; preds = %while.cond
  br label %if.end16

if.end16:                                         ; preds = %while.end, %do.end13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  %7 = load i64, ptr %flags, align 8, !dbg !6301
  call void @spin_unlock_irqrestore(ptr noundef @pause_on_oops_lock, i64 noundef %7) #19, !dbg !6302
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6303
  br label %cleanup, !dbg !6303

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !6303
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6303

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trigger_all_cpu_backtrace() #5 align 16 !dbg !6304 {
entry:
  call void @arch_trigger_cpumask_backtrace(ptr noundef @__cpu_online_mask, i32 noundef -1) #19, !dbg !6305
  ret i1 true, !dbg !6306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @oops_exit() #4 align 16 !dbg !6307 {
entry:
  call void @do_oops_enter_exit() #19, !dbg !6308
  call void @print_oops_end_marker() #19, !dbg !6309
  call void @kmsg_dump(i32 noundef 2) #19, !dbg !6310
  ret void, !dbg !6311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @print_oops_end_marker() #4 align 16 !dbg !6312 {
entry:
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !6313

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6315

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, i64 noundef 0) #18, !dbg !6313
  store i32 %call, ptr %tmp, align 4, !dbg !6315
  %0 = load i32, ptr %tmp, align 4, !dbg !6313
  ret void, !dbg !6317
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__warn(ptr noundef %file, i32 noundef %line, ptr noundef %caller, i32 noundef %taint, ptr noundef %regs, ptr noundef %args) #4 align 16 !dbg !6318 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %caller.addr = alloca ptr, align 8
  %taint.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %pscr_ret__11 = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %pfo_val__16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6327, metadata !DIExpression()), !dbg !6348
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6328, metadata !DIExpression()), !dbg !6349
  store ptr %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6329, metadata !DIExpression()), !dbg !6350
  store i32 %taint, ptr %taint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %taint.addr, metadata !6330, metadata !DIExpression()), !dbg !6351
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6331, metadata !DIExpression()), !dbg !6352
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !6332, metadata !DIExpression()), !dbg !6353
  call void @disable_trace_on_warning() #19, !dbg !6354
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6355
  %tobool = icmp ne ptr %0, null, !dbg !6355
  br i1 %tobool, label %if.then, label %if.else, !dbg !6356

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6357

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6358

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #21, !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6333, metadata !DIExpression()), !dbg !6360
  br label %do.body1, !dbg !6360

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6361
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6337, metadata !DIExpression()), !dbg !6361
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6361
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6360
  br label %do.cond, !dbg !6361

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !6361

do.end2:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6339, metadata !DIExpression()), !dbg !6362
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !6362, !srcloc !6363
  store i32 %2, ptr %pfo_val__, align 4, !dbg !6362
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !6362
  %conv = zext i32 %3 to i64, !dbg !6362
  %conv4 = trunc i64 %conv to i32, !dbg !6362
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6362
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !6360
  %4 = load i32, ptr %tmp3, align 4, !dbg !6362
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !6360
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !6360
  store i32 %5, ptr %tmp5, align 4, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #21, !dbg !6357
  %6 = load i32, ptr %tmp5, align 4, !dbg !6360
  %call = call ptr @get_current() #19, !dbg !6357
  %pid = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 62, !dbg !6357
  %7 = load i32, ptr %pid, align 8, !dbg !6357
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6357
  %9 = load i32, ptr %line.addr, align 4, !dbg !6357
  %10 = load ptr, ptr %caller.addr, align 8, !dbg !6357
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10) #18, !dbg !6357
  store i32 %call6, ptr %tmp, align 4, !dbg !6358
  %11 = load i32, ptr %tmp, align 4, !dbg !6357
  br label %if.end, !dbg !6364

if.else:                                          ; preds = %entry
  br label %do.body7, !dbg !6365

do.body7:                                         ; preds = %if.else
  br label %do.end9, !dbg !6366

do.end9:                                          ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__11) #21, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__11, metadata !6341, metadata !DIExpression()), !dbg !6368
  br label %do.body12, !dbg !6368

do.body12:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #21, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !6344, metadata !DIExpression()), !dbg !6369
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !6369
  %12 = load ptr, ptr %__vpp_verify13, align 8, !dbg !6369
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #21, !dbg !6368
  br label %do.cond14, !dbg !6369

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !6369

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__16) #21, !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %pfo_val__16, metadata !6346, metadata !DIExpression()), !dbg !6370
  %13 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !6370, !srcloc !6371
  store i32 %13, ptr %pfo_val__16, align 4, !dbg !6370
  %14 = load i32, ptr %pfo_val__16, align 4, !dbg !6370
  %conv18 = zext i32 %14 to i64, !dbg !6370
  %conv19 = trunc i64 %conv18 to i32, !dbg !6370
  store i32 %conv19, ptr %tmp17, align 4, !dbg !6370
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__16) #21, !dbg !6368
  %15 = load i32, ptr %tmp17, align 4, !dbg !6370
  store i32 %15, ptr %pscr_ret__11, align 4, !dbg !6368
  %16 = load i32, ptr %pscr_ret__11, align 4, !dbg !6368
  store i32 %16, ptr %tmp20, align 4, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__11) #21, !dbg !6365
  %17 = load i32, ptr %tmp20, align 4, !dbg !6368
  %call21 = call ptr @get_current() #19, !dbg !6365
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %call21, i32 0, i32 62, !dbg !6365
  %18 = load i32, ptr %pid22, align 8, !dbg !6365
  %19 = load ptr, ptr %caller.addr, align 8, !dbg !6365
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %17, i32 noundef %18, ptr noundef %19) #18, !dbg !6365
  store i32 %call23, ptr %tmp10, align 4, !dbg !6366
  %20 = load i32, ptr %tmp10, align 4, !dbg !6365
  br label %if.end

if.end:                                           ; preds = %do.end15, %do.end2
  %21 = load ptr, ptr %args.addr, align 8, !dbg !6372
  %tobool24 = icmp ne ptr %21, null, !dbg !6372
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !6374

if.then25:                                        ; preds = %if.end
  %22 = load ptr, ptr %args.addr, align 8, !dbg !6375
  %fmt = getelementptr inbounds %struct.warn_args, ptr %22, i32 0, i32 0, !dbg !6376
  %23 = load ptr, ptr %fmt, align 8, !dbg !6376
  %24 = load ptr, ptr %args.addr, align 8, !dbg !6377
  %args26 = getelementptr inbounds %struct.warn_args, ptr %24, i32 0, i32 1, !dbg !6378
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args26, i64 0, i64 0, !dbg !6377
  %call27 = call i32 @vprintk(ptr noundef %23, ptr noundef %arraydecay) #19, !dbg !6379
  br label %if.end28, !dbg !6379

if.end28:                                         ; preds = %if.then25, %if.end
  call void @print_modules() #19, !dbg !6380
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !6381
  %tobool29 = icmp ne ptr %25, null, !dbg !6381
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6383

if.then30:                                        ; preds = %if.end28
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !6384
  call void @show_regs(ptr noundef %26) #19, !dbg !6385
  br label %if.end31, !dbg !6385

if.end31:                                         ; preds = %if.then30, %if.end28
  call void @check_panic_on_warn(ptr noundef @.str.12) #19, !dbg !6386
  %27 = load ptr, ptr %regs.addr, align 8, !dbg !6387
  %tobool32 = icmp ne ptr %27, null, !dbg !6387
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !6389

if.then33:                                        ; preds = %if.end31
  call void @dump_stack() #18, !dbg !6390
  br label %if.end34, !dbg !6390

if.end34:                                         ; preds = %if.then33, %if.end31
  %call35 = call ptr @get_current() #19, !dbg !6391
  call void @print_irqtrace_events(ptr noundef %call35) #19, !dbg !6392
  call void @print_oops_end_marker() #19, !dbg !6393
  %28 = load ptr, ptr %caller.addr, align 8, !dbg !6394
  %29 = ptrtoint ptr %28 to i64, !dbg !6395
  call void @trace_error_report_end(i32 noundef 2, i64 noundef %29) #19, !dbg !6396
  %30 = load i32, ptr %taint.addr, align 4, !dbg !6397
  call void @add_taint(i32 noundef %30, i32 noundef 0) #19, !dbg !6398
  ret void, !dbg !6399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6400 dso_local void @disable_trace_on_warning() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !6402 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6407, metadata !DIExpression()), !dbg !6413
  br label %do.body, !dbg !6413

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6409, metadata !DIExpression()), !dbg !6414
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6414
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6413
  br label %do.cond, !dbg !6414

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6414

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #21, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6411, metadata !DIExpression()), !dbg !6415
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #23, !dbg !6415, !srcloc !6416
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6415
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6415
  %3 = inttoptr i64 %2 to ptr, !dbg !6415
  store ptr %3, ptr %tmp, align 8, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #21, !dbg !6413
  %4 = load ptr, ptr %tmp, align 8, !dbg !6415
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6413
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6413
  store ptr %5, ptr %tmp1, align 8, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6417
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6413
  ret ptr %6, !dbg !6418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6419 dso_local i32 @vprintk(ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6422 dso_local void @print_modules() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6423 dso_local void @show_regs(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @print_irqtrace_events(ptr noundef %curr) #5 align 16 !dbg !6425 {
entry:
  %curr.addr = alloca ptr, align 8
  store ptr %curr, ptr %curr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curr.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  ret void, !dbg !6432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_error_report_end(i32 noundef %error_detector, i64 noundef %id) #5 align 16 !dbg !5495 {
entry:
  %error_detector.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
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
  %__UNIQUE_ID_rcu333 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %error_detector, ptr %error_detector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error_detector.addr, metadata !5499, metadata !DIExpression()), !dbg !6433
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5500, metadata !DIExpression()), !dbg !6433
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 1)) #19, !dbg !6434
  br i1 %call, label %if.then, label %if.end68, !dbg !6433

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6434

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #21, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5501, metadata !DIExpression()), !dbg !6435
  store i32 0, ptr %__idx, align 4, !dbg !6435
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #21, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5504, metadata !DIExpression()), !dbg !6436
  br label %do.body1, !dbg !6436

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5507, metadata !DIExpression()), !dbg !6437
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6437
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6436
  br label %do.cond, !dbg !6437

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6437

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5509, metadata !DIExpression()), !dbg !6438
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !6438, !srcloc !6439
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6438
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6438
  %conv = zext i32 %2 to i64, !dbg !6438
  %conv2 = trunc i64 %conv to i32, !dbg !6438
  store i32 %conv2, ptr %tmp, align 4, !dbg !6438
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !6436
  %3 = load i32, ptr %tmp, align 4, !dbg !6438
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6436
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6436
  store i32 %4, ptr %tmp3, align 4, !dbg !6436
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #21, !dbg !6440
  %5 = load i32, ptr %tmp3, align 4, !dbg !6436
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #19, !dbg !6440
  br i1 %call4, label %if.end, label %if.then5, !dbg !6435

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6440

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5511, metadata !DIExpression()), !dbg !6441
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6441
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6442
  %tobool = icmp ne i32 %6, 0, !dbg !6442
  %lnot = xor i1 %tobool, true, !dbg !6442
  %lnot6 = xor i1 %lnot, true, !dbg !6442
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6442
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6442
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6442
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6442
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6441

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6442

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5514, metadata !DIExpression()), !dbg !6443
  store i32 2307, ptr %__flags, align 4, !dbg !6443
  br label %do.body11, !dbg !6443

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6444

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6444

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6443

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6446
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.21, i32 71, i32 %7, i64 12) #21, !dbg !6446, !srcloc !6448
  br label %do.cond15, !dbg !6446

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6446

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6443

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6449

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6449

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !6442
  br label %do.cond20, !dbg !6443

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6443

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6443

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6441
  %tobool24 = icmp ne i32 %8, 0, !dbg !6441
  %lnot25 = xor i1 %tobool24, true, !dbg !6441
  %lnot27 = xor i1 %lnot25, true, !dbg !6441
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6441
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6441
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6441
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6451
  %9 = load i64, ptr %tmp23, align 8, !dbg !6441
  %tobool31 = icmp ne i64 %9, 0, !dbg !6451
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6435

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6451

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6435

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #19, !dbg !6452
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6452, !srcloc !6454
  br label %do.cond35, !dbg !6452

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6452

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6435

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #21, !dbg !6455
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5517, metadata !DIExpression()), !dbg !6455
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #21, !dbg !6455
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5519, metadata !DIExpression()), !dbg !6455
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu333) #21, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu333, metadata !5520, metadata !DIExpression()), !dbg !6456
  br label %do.body38, !dbg !6457

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6459

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6459

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 8), align 8, !dbg !6457
  store ptr %10, ptr %tmp41, align 8, !dbg !6459
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6457
  store ptr %11, ptr %__UNIQUE_ID_rcu333, align 8, !dbg !6456
  %12 = load ptr, ptr %__UNIQUE_ID_rcu333, align 8, !dbg !6456
  store ptr %12, ptr %tmp42, align 8, !dbg !6456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu333) #21, !dbg !6455
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6456
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6455
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6461
  %tobool43 = icmp ne ptr %14, null, !dbg !6461
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6455

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6463
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6463
  %16 = load ptr, ptr %data, align 8, !dbg !6463
  store ptr %16, ptr %__data, align 8, !dbg !6463
  store ptr @__SCT__tp_func_error_report_end, ptr %tmp45, align 8, !dbg !6465
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6465
  %18 = load ptr, ptr %__data, align 8, !dbg !6463
  %19 = load i32, ptr %error_detector.addr, align 4, !dbg !6463
  %20 = load i64, ptr %id.addr, align 8, !dbg !6463
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i64 noundef %20) #19, !dbg !6463
  br label %if.end47, !dbg !6463

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #21, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #21, !dbg !6435
  br label %do.cond48, !dbg !6455

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6455

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6435

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6467, !srcloc !6469
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !6470
  %lnot52 = xor i1 %call51, true, !dbg !6470
  %lnot54 = xor i1 %lnot52, true, !dbg !6470
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6470
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6470
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6470
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6470
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6467

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6470

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5584), !dbg !6472
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #21, !dbg !6472, !srcloc !6474
  call void @llvm.write_register.i64(metadata !5584, i64 %22), !dbg !6472
  br label %do.cond61, !dbg !6472

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6472

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6472

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6467

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6467

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6434
  br label %cleanup, !dbg !6434

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #21, !dbg !6434
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6435

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6435

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6433

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__warn_printk(ptr noundef %fmt, ...) #4 align 16 !dbg !6475 {
entry:
  %fmt.addr = alloca ptr, align 8
  %rcu = alloca i8, align 1
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6477, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 1, ptr %rcu) #21, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %rcu, metadata !6478, metadata !DIExpression()), !dbg !6482
  %call = call zeroext i1 @warn_rcu_enter() #19, !dbg !6483
  %frombool = zext i1 %call to i8, !dbg !6482
  store i8 %frombool, ptr %rcu, align 1, !dbg !6482
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #21, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %args, metadata !6479, metadata !DIExpression()), !dbg !6485
  br label %do.body, !dbg !6486

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6488

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6488

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #18, !dbg !6486
  store i32 %call1, ptr %tmp, align 4, !dbg !6488
  %0 = load i32, ptr %tmp, align 4, !dbg !6486
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6490
  call void @llvm.va_start(ptr %arraydecay), !dbg !6490
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !6491
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6492
  %call3 = call i32 @vprintk(ptr noundef %1, ptr noundef %arraydecay2) #19, !dbg !6493
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6494
  call void @llvm.va_end(ptr %arraydecay4), !dbg !6494
  %2 = load i8, ptr %rcu, align 1, !dbg !6495, !range !5712, !noundef !626
  %tobool = trunc i8 %2 to i1, !dbg !6495
  call void @warn_rcu_exit(i1 noundef zeroext %tobool) #19, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #21, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 1, ptr %rcu) #21, !dbg !6497
  ret void, !dbg !6497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @warn_rcu_enter() #2 align 16 !dbg !6498 {
entry:
  %ret = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #21, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6500, metadata !DIExpression()), !dbg !6502
  store i8 0, ptr %ret, align 1, !dbg !6502
  br label %do.body, !dbg !6503

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #19, !dbg !6504
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6504, !srcloc !6506
  br label %do.cond, !dbg !6504

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6504

do.end:                                           ; preds = %do.cond
  %call = call zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #19, !dbg !6507
  br i1 %call, label %if.then, label %if.end, !dbg !6509

if.then:                                          ; preds = %do.end
  store i8 1, ptr %ret, align 1, !dbg !6510
  %call1 = call i64 @ct_state_inc(i32 noundef 4) #19, !dbg !6512
  br label %if.end, !dbg !6513

if.end:                                           ; preds = %if.then, %do.end
  %0 = load i8, ptr %ret, align 1, !dbg !6514, !range !5712, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #21, !dbg !6515
  ret i1 %tobool, !dbg !6516
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_rcu_exit(i1 noundef zeroext %rcu) #2 align 16 !dbg !5526 {
entry:
  %rcu.addr = alloca i8, align 1
  %frombool = zext i1 %rcu to i8
  store i8 %frombool, ptr %rcu.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !5531, metadata !DIExpression()), !dbg !6517
  %0 = load i8, ptr %rcu.addr, align 1, !dbg !6518, !range !5712, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !6518
  br i1 %tobool, label %if.then, label %if.end, !dbg !6520

if.then:                                          ; preds = %entry
  %call = call i64 @ct_state_inc(i32 noundef 4) #19, !dbg !6521
  br label %if.end, !dbg !6521

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !6522

do.body:                                          ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6523, !srcloc !6525
  %call1 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !6526
  %lnot = xor i1 %call1, true, !dbg !6526
  %lnot2 = xor i1 %lnot, true, !dbg !6526
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6526
  %conv = sext i32 %lnot.ext to i64, !dbg !6526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6526
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6526
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6523

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !6526

do.body5:                                         ; preds = %if.then4
  %1 = call i64 @llvm.read_register.i64(metadata !5584), !dbg !6528
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #21, !dbg !6528, !srcloc !6530
  call void @llvm.write_register.i64(metadata !5584, i64 %2), !dbg !6528
  br label %do.end, !dbg !6528

do.end:                                           ; preds = %do.body5
  br label %if.end6, !dbg !6528

if.end6:                                          ; preds = %do.end, %do.body
  br label %do.end7, !dbg !6523

do.end7:                                          ; preds = %if.end6
  ret void, !dbg !6531
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_panic__355_755_register_warn_debugfs6() #0 section ".init.text" align 16 !dbg !6532 {
entry:
  %call = call i32 @register_warn_debugfs() #18, !dbg !6533
  ret i32 %call, !dbg !6533
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @register_warn_debugfs() #0 section ".init.text" align 16 !dbg !6534 {
entry:
  %call = call ptr @debugfs_create_file_unsafe(ptr noundef @.str.22, i16 noundef zeroext 128, ptr noundef null, ptr noundef null, ptr noundef @clear_warn_once_fops) #19, !dbg !6535
  ret i32 0, !dbg !6536
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__stack_chk_fail() #12 section ".noinstr.text" align 16 !dbg !6537 {
entry:
  br label %do.body, !dbg !6538

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6539

do.end:                                           ; preds = %do.body
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !6541
  call void (ptr, ...) @panic(ptr noundef @.str.14, ptr noundef %0) #22, !dbg !6542
  unreachable, !dbg !6542
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @oops_setup(ptr noundef %s) #0 section ".init.text" align 16 !dbg !6543 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6547
  %tobool = icmp ne ptr %0, null, !dbg !6547
  br i1 %tobool, label %if.end, label %if.then, !dbg !6549

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6550
  br label %return, !dbg !6550

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !6551
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.24) #19, !dbg !6553
  %tobool1 = icmp ne i32 %call, 0, !dbg !6553
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6554

if.then2:                                         ; preds = %if.end
  store i32 1, ptr @panic_on_oops, align 4, !dbg !6555
  br label %if.end3, !dbg !6556

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6557
  br label %return, !dbg !6557

return:                                           ; preds = %if.end3, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6558
  ret i32 %2, !dbg !6558
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @panic_on_taint_setup(ptr noundef %s) #0 section ".init.text" align 16 !dbg !6559 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %taint_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6561, metadata !DIExpression()), !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %taint_str) #21, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %taint_str, metadata !6562, metadata !DIExpression()), !dbg !6565
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6566
  %tobool = icmp ne ptr %0, null, !dbg !6566
  br i1 %tobool, label %if.end, label %if.then, !dbg !6568

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6569

if.end:                                           ; preds = %entry
  %call = call ptr @strsep(ptr noundef %s.addr, ptr noundef @.str.25) #19, !dbg !6570
  store ptr %call, ptr %taint_str, align 8, !dbg !6571
  %1 = load ptr, ptr %taint_str, align 8, !dbg !6572
  %call1 = call i32 @kstrtoul(ptr noundef %1, i32 noundef 16, ptr noundef @panic_on_taint) #19, !dbg !6574
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6574
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6575

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6576

if.end4:                                          ; preds = %if.end
  %2 = load i64, ptr @panic_on_taint, align 8, !dbg !6577
  %and = and i64 %2, 524287, !dbg !6577
  store i64 %and, ptr @panic_on_taint, align 8, !dbg !6577
  %3 = load i64, ptr @panic_on_taint, align 8, !dbg !6578
  %tobool5 = icmp ne i64 %3, 0, !dbg !6578
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6580

if.then6:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !6581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6581

if.end7:                                          ; preds = %if.end4
  %4 = load ptr, ptr %s.addr, align 8, !dbg !6582
  %tobool8 = icmp ne ptr %4, null, !dbg !6582
  br i1 %tobool8, label %land.lhs.true, label %if.end12, !dbg !6584

land.lhs.true:                                    ; preds = %if.end7
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6585
  %call9 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.26) #19, !dbg !6586
  %tobool10 = icmp ne i32 %call9, 0, !dbg !6586
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6587

if.then11:                                        ; preds = %land.lhs.true
  store i8 1, ptr @panic_on_taint_nousertaint, align 1, !dbg !6588
  br label %if.end12, !dbg !6589

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end7
  br label %do.body, !dbg !6590

do.body:                                          ; preds = %if.end12
  br label %do.cond, !dbg !6592

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6592

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr @panic_on_taint, align 8, !dbg !6590
  %7 = load i8, ptr @panic_on_taint_nousertaint, align 1, !dbg !6590, !range !5712, !noundef !626
  %tobool13 = trunc i8 %7 to i1, !dbg !6590
  %call14 = call ptr @str_enabled_disabled(i1 noundef zeroext %tobool13) #19, !dbg !6590
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27, i64 noundef %6, ptr noundef %call14) #18, !dbg !6590
  store i32 %call15, ptr %tmp, align 4, !dbg !6592
  %8 = load i32, ptr %tmp, align 4, !dbg !6590
  store i32 0, ptr %retval, align 4, !dbg !6594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6594

cleanup:                                          ; preds = %do.end, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %taint_str) #21, !dbg !6595
  %9 = load i32, ptr %retval, align 4, !dbg !6595
  ret i32 %9, !dbg !6595
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6596 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6599 dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @warn_count_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %page) #4 align 16 !dbg !6604 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6606, metadata !DIExpression()), !dbg !6609
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6607, metadata !DIExpression()), !dbg !6610
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6608, metadata !DIExpression()), !dbg !6611
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6612
  %call = call i32 @atomic_read(ptr noundef @warn_count) #19, !dbg !6613
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.19, i32 noundef %call) #19, !dbg !6614
  %conv = sext i32 %call1 to i64, !dbg !6614
  ret i64 %conv, !dbg !6615
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6616 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !6617 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6625
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #19, !dbg !6626
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6627
  %call = call i32 @raw_atomic_read(ptr noundef %1) #19, !dbg !6628
  ret i32 %call, !dbg !6629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6630 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6642
  %1 = load i64, ptr %size.addr, align 8, !dbg !6643
  %conv = trunc i64 %1 to i32, !dbg !6643
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !6644
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6645
  %3 = load i64, ptr %size.addr, align 8, !dbg !6645
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !6645
  ret void, !dbg !6646
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !6647 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6652
  %call = call i32 @arch_atomic_read(ptr noundef %0) #19, !dbg !6653
  ret i32 %call, !dbg !6654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6655 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  ret i1 true, !dbg !6664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6665 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6670, metadata !DIExpression()), !dbg !6673
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6671, metadata !DIExpression()), !dbg !6674
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6672, metadata !DIExpression()), !dbg !6675
  ret void, !dbg !6676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !6677 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6680, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6682
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6682
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6682
  ret i32 %1, !dbg !6683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !6684 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6685, !srcloc !6686
  ret void, !dbg !6687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6688 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6690, metadata !DIExpression()), !dbg !6692
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6694
  %1 = load i64, ptr %size.addr, align 8, !dbg !6695
  %conv = trunc i64 %1 to i32, !dbg !6695
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6696
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6697
  %3 = load i64, ptr %size.addr, align 8, !dbg !6697
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !6697
  ret void, !dbg !6698
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !6699 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6701, metadata !DIExpression()), !dbg !6704
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6702, metadata !DIExpression()), !dbg !6705
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6703, metadata !DIExpression()), !dbg !6706
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6707
  %1 = load i32, ptr %old.addr, align 4, !dbg !6708
  %2 = load i32, ptr %new.addr, align 4, !dbg !6709
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #19, !dbg !6710
  ret i32 %call, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6712 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6714, metadata !DIExpression()), !dbg !6716
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6715, metadata !DIExpression()), !dbg !6717
  ret i1 true, !dbg !6718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !6719 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6721, metadata !DIExpression()), !dbg !6729
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6722, metadata !DIExpression()), !dbg !6730
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6723, metadata !DIExpression()), !dbg !6731
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6724, metadata !DIExpression()), !dbg !6732
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #21, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6726, metadata !DIExpression()), !dbg !6732
  %0 = load i32, ptr %old.addr, align 4, !dbg !6732
  store i32 %0, ptr %__old, align 4, !dbg !6732
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #21, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6727, metadata !DIExpression()), !dbg !6732
  %1 = load i32, ptr %new.addr, align 4, !dbg !6732
  store i32 %1, ptr %__new, align 4, !dbg !6732
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #21, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6728, metadata !DIExpression()), !dbg !6732
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6732
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6732
  store ptr %counter, ptr %__ptr, align 8, !dbg !6732
  %3 = load ptr, ptr %__ptr, align 8, !dbg !6732
  %4 = load i32, ptr %__new, align 4, !dbg !6732
  %5 = load i32, ptr %__old, align 4, !dbg !6732
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #21, !dbg !6732, !srcloc !6733
  store i32 %6, ptr %__ret, align 4, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #21, !dbg !6732
  %7 = load i32, ptr %__ret, align 4, !dbg !6732
  store i32 %7, ptr %tmp, align 4, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #21, !dbg !6734
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #21, !dbg !6734
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !6734
  %8 = load i32, ptr %tmp, align 4, !dbg !6732
  ret i32 %8, !dbg !6735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #2 align 16 !dbg !6736 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6740
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #19, !dbg !6741
  ret i32 %call, !dbg !6742
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6743 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6747, metadata !DIExpression()), !dbg !6749
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  %0 = load i32, ptr %i.addr, align 4, !dbg !6751
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6752
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #19, !dbg !6753
  ret i32 %call, !dbg !6754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !6755 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6757, metadata !DIExpression()), !dbg !6761
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6758, metadata !DIExpression()), !dbg !6762
  %0 = load i32, ptr %i.addr, align 4, !dbg !6763
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6759, metadata !DIExpression()), !dbg !6764
  %1 = load i32, ptr %i.addr, align 4, !dbg !6764
  store i32 %1, ptr %__ret, align 4, !dbg !6764
  %2 = load i32, ptr %__ret, align 4, !dbg !6764
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6764
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6764
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #21, !dbg !6764, !srcloc !6765
  store i32 %4, ptr %__ret, align 4, !dbg !6764
  %5 = load i32, ptr %__ret, align 4, !dbg !6764
  store i32 %5, ptr %tmp, align 4, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !6766
  %6 = load i32, ptr %tmp, align 4, !dbg !6764
  %add = add i32 %0, %6, !dbg !6767
  ret i32 %add, !dbg !6768
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #2 align 16 !dbg !6769 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6770, !srcloc !6771
  ret void, !dbg !6772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_state() #5 align 16 !dbg !6773 {
entry:
  call void @show_state_filter(i32 noundef 0) #19, !dbg !6774
  ret void, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_mem() #5 align 16 !dbg !6776 {
entry:
  call void @__show_mem(i32 noundef 0, ptr noundef null, i32 noundef 3) #19, !dbg !6777
  ret void, !dbg !6778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6779 dso_local void @sysrq_timer_list_show() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_show_all_locks() #5 align 16 !dbg !6780 {
entry:
  ret void, !dbg !6781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6782 dso_local void @ftrace_dump(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6785 dso_local void @show_state_filter(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6788 dso_local void @__show_mem(i32 noundef, ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_touch_nmi_watchdog() #5 align 16 !dbg !6792 {
entry:
  ret void, !dbg !6793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #2 align 16 !dbg !6794 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !6795, !srcloc !6796
  ret void, !dbg !6797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6798 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6801, metadata !DIExpression()), !dbg !6803
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6802, metadata !DIExpression()), !dbg !6804
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6805
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6806
  br i1 %1, label %cond.true, label %cond.false, !dbg !6806

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6807
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6808
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6809
  %conv = zext i1 %call to i32, !dbg !6809
  br label %cond.end, !dbg !6806

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6810
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6811
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !6812
  %conv2 = zext i1 %call1 to i32, !dbg !6812
  br label %cond.end, !dbg !6806

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6806
  %tobool = icmp ne i32 %cond, 0, !dbg !6806
  ret i1 %tobool, !dbg !6813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6814 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6818, metadata !DIExpression()), !dbg !6820
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6819, metadata !DIExpression()), !dbg !6821
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6822
  %and = and i64 %0, 63, !dbg !6823
  %shl = shl i64 1, %and, !dbg !6824
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6825
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6826
  %shr = ashr i64 %2, 6, !dbg !6827
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6825
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6825
  %and1 = and i64 %shl, %3, !dbg !6828
  %cmp = icmp ne i64 %and1, 0, !dbg !6829
  ret i1 %cmp, !dbg !6830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6831 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6833, metadata !DIExpression()), !dbg !6836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6834, metadata !DIExpression()), !dbg !6837
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !6838
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6835, metadata !DIExpression()), !dbg !6839
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6840
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6841
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !6842, !srcloc !6843
  %3 = icmp ult i8 %2, 2, !dbg !6842
  call void @llvm.assume(i1 %3), !dbg !6842
  store i8 %2, ptr %oldbit, align 1, !dbg !6842
  %4 = load i8, ptr %oldbit, align 1, !dbg !6844, !range !5712, !noundef !626
  %tobool = trunc i8 %4 to i1, !dbg !6844
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !6845
  ret i1 %tobool, !dbg !6846
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6847 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6849, metadata !DIExpression()), !dbg !6851
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6850, metadata !DIExpression()), !dbg !6852
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6853
  %1 = load i64, ptr %size.addr, align 8, !dbg !6854
  %conv = trunc i64 %1 to i32, !dbg !6854
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6855
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6856
  %3 = load i64, ptr %size.addr, align 8, !dbg !6856
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !6856
  ret void, !dbg !6857
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !6858 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6860, metadata !DIExpression()), !dbg !6862
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6861, metadata !DIExpression()), !dbg !6863
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6864
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6866
  br i1 %1, label %if.then, label %if.else, !dbg !6867

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6868
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6868
  %shr = ashr i64 %3, 3, !dbg !6868
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6868
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6870
  %and = and i64 %4, 7, !dbg !6870
  %sh_prom = trunc i64 %and to i32, !dbg !6870
  %shl = shl i32 1, %sh_prom, !dbg !6870
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #21, !dbg !6871, !srcloc !6872
  br label %if.end, !dbg !6873

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6874
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6876
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #21, !dbg !6877, !srcloc !6878
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6879
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6880 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #2 align 16 !dbg !6885 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6890, metadata !DIExpression()), !dbg !6891
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6892
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6893
  ret ptr %1, !dbg !6894
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !6895 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6899, metadata !DIExpression()), !dbg !6900
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6901
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6901
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !6901
  ret void, !dbg !6902
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_msec(i32 noundef %msecs) #4 align 16 !dbg !6903 {
entry:
  %msecs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %msecs, ptr %msecs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msecs.addr, metadata !6905, metadata !DIExpression()), !dbg !6907
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !6908
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6906, metadata !DIExpression()), !dbg !6909
  store i32 0, ptr %i, align 4, !dbg !6910
  br label %for.cond, !dbg !6912

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6913
  %1 = load i32, ptr %msecs.addr, align 4, !dbg !6915
  %cmp = icmp slt i32 %0, %1, !dbg !6916
  br i1 %cmp, label %for.body, label %for.end, !dbg !6917

for.body:                                         ; preds = %for.cond
  call void @touch_nmi_watchdog() #19, !dbg !6918
  call void @__const_udelay(i64 noundef 4295000) #19, !dbg !6920
  br label %for.inc, !dbg !6925

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !6926
  %inc = add i32 %2, 1, !dbg !6926
  store i32 %inc, ptr %i, align 4, !dbg !6926
  br label %for.cond, !dbg !6927, !llvm.loop !6928

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !6930
  ret void, !dbg !6930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !6931 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6933, metadata !DIExpression()), !dbg !6934
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6935
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6935
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !6935
  ret void, !dbg !6936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #2 align 16 !dbg !6937 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6941, metadata !DIExpression()), !dbg !6947
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6942, metadata !DIExpression()), !dbg !6948
  br label %do.body, !dbg !6949

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6943, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !6950
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6946, metadata !DIExpression()), !dbg !6950
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6950
  %conv = zext i1 %cmp to i32, !dbg !6950
  store i32 1, ptr %tmp, align 4, !dbg !6950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !6951
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !6951
  %0 = load i32, ptr %tmp, align 4, !dbg !6950
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6951
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6951
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6951
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #19, !dbg !6951
  br label %do.end, !dbg !6951

do.end:                                           ; preds = %do.body
  ret void, !dbg !6952
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6953 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6956 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6957 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6960 dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !6964 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6980, metadata !DIExpression()), !dbg !6981
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6982
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #19, !dbg !6983
  ret i1 %call, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #5 align 16 !dbg !6985 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6989, metadata !DIExpression()), !dbg !6990
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6991
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #19, !dbg !6992
  ret i1 %call, !dbg !6993
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_error_report_end(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !6994 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #21, !dbg !6998
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6996, metadata !DIExpression()), !dbg !6998
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !6998, !srcloc !6999
  %1 = icmp ult i8 %0, 2, !dbg !6998
  call void @llvm.assume(i1 %1), !dbg !6998
  store i8 %0, ptr %c, align 1, !dbg !6998
  %2 = load i8, ptr %c, align 1, !dbg !6998, !range !5712, !noundef !626
  %tobool = trunc i8 %2 to i1, !dbg !6998
  %frombool = zext i1 %tobool to i8, !dbg !6998
  store i8 %frombool, ptr %tmp, align 1, !dbg !6998
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #21, !dbg !7000
  %3 = load i8, ptr %tmp, align 1, !dbg !6998, !range !5712, !noundef !626
  %tobool1 = trunc i8 %3 to i1, !dbg !6998
  ret i1 %tobool1, !dbg !7001
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !7002 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7007, metadata !DIExpression()), !dbg !7010
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7008, metadata !DIExpression()), !dbg !7011
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7012
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7013, !range !5712, !noundef !626
  %tobool = trunc i8 %1 to i1, !dbg !7013
  %conv = zext i1 %tobool to i32, !dbg !7013
  %or = or i32 2, %conv, !dbg !7014
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #21
          to label %asm.fallthrough [label %l_yes], !dbg !7015, !srcloc !7016

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7017
  br label %return, !dbg !7017

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7009), !dbg !7018
  store i1 true, ptr %retval, align 1, !dbg !7019
  br label %return, !dbg !7019

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7020
  ret i1 %2, !dbg !7020
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #2 align 16 !dbg !7021 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7025, metadata !DIExpression()), !dbg !7027
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !7026, metadata !DIExpression()), !dbg !7028
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7029
  %call = call i32 @cpumask_check(i32 noundef %0) #19, !dbg !7029
  %conv = zext i32 %call to i64, !dbg !7029
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !7029
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7029
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7029
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #19, !dbg !7029
  ret i1 %call1, !dbg !7030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #2 align 16 !dbg !7031 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7035, metadata !DIExpression()), !dbg !7036
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7037
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #19, !dbg !7038
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7039
  ret i32 %1, !dbg !7040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #2 align 16 !dbg !7041 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7045, metadata !DIExpression()), !dbg !7047
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7046, metadata !DIExpression()), !dbg !7048
  ret void, !dbg !7049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #2 align 16 !dbg !7050 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !7057

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !7058
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7052, metadata !DIExpression()), !dbg !7058
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7058
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7058
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !7057
  br label %do.end, !dbg !7058

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #21, !dbg !7059
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7055, metadata !DIExpression()), !dbg !7059
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #24, !dbg !7059, !srcloc !7060
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !7059
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !7059
  %3 = inttoptr i64 %2 to ptr, !dbg !7059
  store ptr %3, ptr %tmp1, align 8, !dbg !7059
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #21, !dbg !7057
  %4 = load ptr, ptr %tmp1, align 8, !dbg !7059
  store ptr %4, ptr %tmp, align 8, !dbg !7058
  %5 = load ptr, ptr %tmp, align 8, !dbg !7057
  %call = call i32 @raw_atomic_read(ptr noundef %5) #19, !dbg !7061
  %and = and i32 %call, 4, !dbg !7062
  %tobool = icmp ne i32 %and, 0, !dbg !7063
  %lnot = xor i1 %tobool, true, !dbg !7063
  ret i1 %lnot, !dbg !7064
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ct_state_inc(i32 noundef %incby) #2 align 16 !dbg !7065 {
entry:
  %incby.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %incby, ptr %incby.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %incby.addr, metadata !7069, metadata !DIExpression()), !dbg !7075
  %0 = load i32, ptr %incby.addr, align 4, !dbg !7076
  br label %do.body, !dbg !7077

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !7078
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7070, metadata !DIExpression()), !dbg !7078
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7078
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !7078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !7077
  br label %do.end, !dbg !7078

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #21, !dbg !7079
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7073, metadata !DIExpression()), !dbg !7079
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #24, !dbg !7079, !srcloc !7080
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !7079
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !7079
  %4 = inttoptr i64 %3 to ptr, !dbg !7079
  store ptr %4, ptr %tmp1, align 8, !dbg !7079
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #21, !dbg !7077
  %5 = load ptr, ptr %tmp1, align 8, !dbg !7079
  store ptr %5, ptr %tmp, align 8, !dbg !7078
  %6 = load ptr, ptr %tmp, align 8, !dbg !7077
  %call = call i32 @raw_atomic_add_return(i32 noundef %0, ptr noundef %6) #19, !dbg !7081
  %conv = sext i32 %call to i64, !dbg !7081
  ret i64 %conv, !dbg !7082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7083 dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @debugfs_attr_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @debugfs_attr_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clear_warn_once_fops_open(ptr noundef %inode, ptr noundef %file) #4 align 16 !dbg !7087 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7089, metadata !DIExpression()), !dbg !7091
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7090, metadata !DIExpression()), !dbg !7091
  call void (ptr, ...) @__simple_attr_check_format(ptr noundef @.str.23, i64 noundef 0) #19, !dbg !7091
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7091
  %1 = load ptr, ptr %file.addr, align 8, !dbg !7091
  %call = call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef @clear_warn_once_set, ptr noundef @.str.23) #19, !dbg !7091
  ret i32 %call, !dbg !7091
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__simple_attr_check_format(ptr noundef %fmt, ...) #5 align 16 !dbg !7092 {
entry:
  %fmt.addr = alloca ptr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !7094, metadata !DIExpression()), !dbg !7095
  ret void, !dbg !7096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7097 dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clear_warn_once_set(ptr noundef %data, i64 noundef %val) #4 align 16 !dbg !7106 {
entry:
  %data.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7108, metadata !DIExpression()), !dbg !7110
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7109, metadata !DIExpression()), !dbg !7111
  call void @generic_bug_clear_once() #19, !dbg !7112
  call void @llvm.memset.p0.i64(ptr align 1 @__start_once, i8 0, i64 sub (i64 ptrtoint (ptr @__end_once to i64), i64 ptrtoint (ptr @__start_once to i64)), i1 false), !dbg !7113
  ret i32 0, !dbg !7114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7115 dso_local void @generic_bug_clear_once() #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7117 dso_local i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7121 dso_local ptr @strsep(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !7125 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7130, metadata !DIExpression()), !dbg !7133
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !7131, metadata !DIExpression()), !dbg !7134
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7132, metadata !DIExpression()), !dbg !7135
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7136
  %1 = load i32, ptr %base.addr, align 4, !dbg !7138
  %2 = load ptr, ptr %res.addr, align 8, !dbg !7139
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #19, !dbg !7140
  ret i32 %call, !dbg !7141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @str_enabled_disabled(i1 noundef zeroext %v) #5 align 16 !dbg !7142 {
entry:
  %v.addr = alloca i8, align 1
  %frombool = zext i1 %v to i8
  store i8 %frombool, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7146, metadata !DIExpression()), !dbg !7147
  %0 = load i8, ptr %v.addr, align 1, !dbg !7148, !range !5712, !noundef !626
  %tobool = trunc i8 %0 to i1, !dbg !7148
  %1 = zext i1 %tobool to i64, !dbg !7148
  %cond = select i1 %tobool, ptr @.str.28, ptr @.str.29, !dbg !7148
  ret ptr %cond, !dbg !7149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7150 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #8

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone }
attributes #20 = { noredzone noreturn }
attributes #21 = { nounwind }
attributes #22 = { cold noredzone noreturn }
attributes #23 = { nounwind memory(none) }
attributes #24 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5584}
!llvm.module.flags = !{!5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592}
!llvm.ident = !{!5593}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "panic_on_oops", scope: !2, file: !3, line: 54, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.panic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/panic\22 -D KBUILD_BASENAME=\22panic\22 -D KBUILD_MODNAME=\22panic\22 -D __KBUILD_MODNAME=kmod_panic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/panic.ll kernel/panic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !5202, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/panic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "994546480b5270cc237f6dde977a4539")
!4 = !{!5, !11, !20, !25, !35, !40, !46, !53, !58, !63, !69, !75, !82, !90, !97, !103, !112, !117, !122, !128, !144, !152, !159, !167, !173, !180, !275, !281}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmsg_dump_reason", file: !12, line: 23, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/kmsg_dump.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "441b652fd4306080a5d5a729362e75f6")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "KMSG_DUMP_UNDEF", value: 0)
!15 = !DIEnumerator(name: "KMSG_DUMP_PANIC", value: 1)
!16 = !DIEnumerator(name: "KMSG_DUMP_OOPS", value: 2)
!17 = !DIEnumerator(name: "KMSG_DUMP_EMERG", value: 3)
!18 = !DIEnumerator(name: "KMSG_DUMP_SHUTDOWN", value: 4)
!19 = !DIEnumerator(name: "KMSG_DUMP_MAX", value: 5)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_flush_mode", file: !21, line: 338, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "CONSOLE_FLUSH_PENDING", value: 0)
!24 = !DIEnumerator(name: "CONSOLE_REPLAY_ALL", value: 1)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reboot_mode", file: !26, line: 17, baseType: !27, size: 32, elements: !28)
!26 = !DIFile(filename: "./include/linux/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7764077571b3c42d5acdba437f8cc057")
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "REBOOT_UNDEFINED", value: -1)
!30 = !DIEnumerator(name: "REBOOT_COLD", value: 0)
!31 = !DIEnumerator(name: "REBOOT_WARM", value: 1)
!32 = !DIEnumerator(name: "REBOOT_HARD", value: 2)
!33 = !DIEnumerator(name: "REBOOT_SOFT", value: 3)
!34 = !DIEnumerator(name: "REBOOT_GPIO", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !36, line: 87, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!39 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "error_detector", file: !41, line: 18, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/trace/events/error_report.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e463921a9b2cd4345fdd20c14a72bfe7")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "ERROR_DETECTOR_KFENCE", value: 0)
!44 = !DIEnumerator(name: "ERROR_DETECTOR_KASAN", value: 1)
!45 = !DIEnumerator(name: "ERROR_DETECTOR_WARN", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !47, line: 312, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!50 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!51 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!52 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !54, line: 2052, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!57 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !59, line: 65, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!62 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !64, line: 16, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "TT_NONE", value: 0)
!67 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!68 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !70, line: 45, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!73 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!74 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !76, line: 487, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!79 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!80 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!81 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !83, line: 620, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!86 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!87 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!88 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!89 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !83, line: 597, baseType: !27, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!93 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!94 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!95 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!96 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !98, line: 26, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!102 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !76, line: 547, baseType: !7, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111}
!105 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!106 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!107 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!108 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!109 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!110 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!111 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !76, line: 564, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!115 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!116 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !76, line: 577, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!120 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !76, line: 503, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!125 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!126 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!127 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !129, line: 1325, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!131 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!132 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!133 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!134 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!135 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!136 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!137 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!138 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!139 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!140 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!141 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!142 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!143 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !145, line: 68, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!146 = !{!147, !148, !149, !150, !151}
!147 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !153, line: 51, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!156 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!157 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!158 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !160, line: 9, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!161 = !{!162, !163, !164, !165, !166}
!162 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!163 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!164 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!165 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!166 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !168, line: 54, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "USRQUOTA", value: 0)
!171 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!172 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !174, line: 15, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!177 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!178 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!179 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !182, file: !181, line: 147, baseType: !7, size: 32, elements: !272)
!181 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !181, line: 135, size: 512, elements: !183)
!183 = !{!184, !188, !190, !191, !195, !196, !212, !270, !271}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !182, file: !181, line: 136, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !181, line: 137, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !182, file: !181, line: 138, baseType: !27, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !182, file: !181, line: 139, baseType: !192, size: 16, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 24, baseType: !194)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !181, line: 150, baseType: !180, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !182, file: !181, line: 151, baseType: !197, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !181, line: 64, baseType: !199)
!199 = !DISubroutineType(types: !200)
!200 = !{!27, !201, !27, !189, !202, !208}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 61, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !205, line: 72, baseType: !206)
!205 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !205, line: 16, baseType: !207)
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 52, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !205, line: 88, baseType: !211)
!211 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !182, file: !181, line: 152, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !181, line: 117, size: 256, elements: !215)
!215 = !{!216, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !214, file: !181, line: 118, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 174, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 172, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !218, file: !193, line: 173, baseType: !27, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !214, file: !181, line: 119, baseType: !222, size: 192, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !223, line: 41, baseType: !224)
!223 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !223, line: 37, size: 192, elements: !225)
!225 = !{!226, !264}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !223, line: 38, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !228, line: 29, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !228, line: 17, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 18, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 18, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !232, file: !228, line: 19, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 14, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !235, file: !236, line: 15, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !240, line: 44, baseType: !241)
!240 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !240, line: 14, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 15, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 15, size: 32, elements: !245)
!245 = !{!246, !247, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !244, file: !240, line: 16, baseType: !217, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !240, line: 24, baseType: !248, size: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !240, line: 24, size: 16, elements: !249)
!249 = !{!250, !256}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !248, file: !240, line: 25, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !252, line: 17, baseType: !253)
!252 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !254, line: 21, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!255 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !248, file: !240, line: 26, baseType: !251, size: 8, offset: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !240, line: 28, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !240, line: 28, size: 32, elements: !259)
!259 = !{!260, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !258, file: !240, line: 29, baseType: !261, size: 16)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !252, line: 19, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !254, line: 24, baseType: !194)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !258, file: !240, line: 30, baseType: !261, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !224, file: !223, line: 39, baseType: !265, size: 128, offset: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 190, size: 128, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !193, line: 191, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !193, line: 191, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !182, file: !181, line: 153, baseType: !189, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !182, file: !181, line: 154, baseType: !189, size: 64, offset: 448)
!272 = !{!273, !274}
!273 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!274 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftrace_dump_mode", file: !276, line: 259, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!277 = !{!278, !279, !280}
!278 = !DIEnumerator(name: "DUMP_NONE", value: 0)
!279 = !DIEnumerator(name: "DUMP_ALL", value: 1)
!280 = !DIEnumerator(name: "DUMP_ORIG", value: 2)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctx_state", file: !282, line: 12, baseType: !27, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/context_tracking_state.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc08221f6a28a16bba05a935cbde34cf")
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIEnumerator(name: "CONTEXT_DISABLED", value: -1)
!285 = !DIEnumerator(name: "CONTEXT_KERNEL", value: 0)
!286 = !DIEnumerator(name: "CONTEXT_IDLE", value: 1)
!287 = !DIEnumerator(name: "CONTEXT_USER", value: 2)
!288 = !DIEnumerator(name: "CONTEXT_GUEST", value: 3)
!289 = !DIEnumerator(name: "CONTEXT_MAX", value: 4)
!290 = !{!189, !291, !27, !207, !292, !295, !296, !298, !5179, !5182, !495, !5164, !5184, !5186, !5188, !5190, !849, !5191, !5194, !7, !5200, !5201}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !193, line: 42, baseType: !207)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !47, line: 402, size: 9216, align: 512, elements: !300)
!300 = !{!301, !302, !303, !307, !4851, !4877, !4878, !4879, !4880, !4884, !4887, !4888, !4889, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4956, !4960, !4978, !4995, !4996, !4997, !4998, !5007, !5030, !5031, !5034, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5048, !5049, !5135, !5143, !5144, !5145, !5146, !5150, !5151, !5160, !5161, !5162, !5163, !5165, !5166, !5167, !5174, !5175, !5176, !5178}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !47, line: 403, baseType: !46, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !299, file: !47, line: 406, baseType: !265, size: 128, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !47, line: 409, baseType: !304, size: 448, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 448, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 56)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !299, file: !47, line: 417, baseType: !308, size: 768, offset: 640)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !47, line: 45, size: 768, elements: !309)
!309 = !{!310, !4845, !4846, !4847, !4850}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !308, file: !47, line: 46, baseType: !311, size: 512)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !312, line: 64, size: 512, elements: !313)
!312 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!313 = !{!314, !315, !316, !318, !365, !4747, !4839, !4840, !4841, !4842, !4843, !4844}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 65, baseType: !185, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !311, file: !312, line: 66, baseType: !265, size: 128, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !311, file: !312, line: 67, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !311, file: !312, line: 68, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !312, line: 168, size: 768, elements: !321)
!321 = !{!322, !323, !324, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !320, file: !312, line: 169, baseType: !265, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !320, file: !312, line: 170, baseType: !227, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !320, file: !312, line: 171, baseType: !311, size: 512, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !320, file: !312, line: 172, baseType: !326, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !312, line: 133, size: 192, elements: !329)
!329 = !{!330, !337, !342}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !328, file: !312, line: 134, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!27, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !312, line: 135, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!185, !335}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !328, file: !312, line: 136, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!27, !335, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !312, line: 125, size: 20736, elements: !349)
!349 = !{!350, !355, !359, !360, !364}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !348, file: !312, line: 126, baseType: !351, size: 192)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 192, elements: !353)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!353 = !{!354}
!354 = !DISubrange(count: 3)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !348, file: !312, line: 127, baseType: !356, size: 4096, offset: 192)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 4096, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !348, file: !312, line: 128, baseType: !27, size: 32, offset: 4288)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !348, file: !312, line: 129, baseType: !361, size: 16384, offset: 4320)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 16384, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 2048)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !348, file: !312, line: 130, baseType: !27, size: 32, offset: 20704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !311, file: !312, line: 69, baseType: !366, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !312, line: 116, size: 384, elements: !369)
!369 = !{!370, !374, !397, !4735, !4739, !4743}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !368, file: !312, line: 117, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !317}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !368, file: !312, line: 118, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !378, line: 254, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!379 = !{!380, !393}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !377, file: !378, line: 255, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !317, !388, !352}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 66, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !205, line: 73, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !205, line: 15, baseType: !387)
!387 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !378, line: 30, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !378, line: 31, baseType: !185, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !389, file: !378, line: 32, baseType: !192, size: 16, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !377, file: !378, line: 256, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!384, !317, !388, !185, !203}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !368, file: !312, line: 119, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !378, line: 84, size: 320, elements: !402)
!402 = !{!403, !404, !408, !4731, !4733}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !378, line: 85, baseType: !185, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !401, file: !378, line: 86, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!192, !317, !388, !27}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !401, file: !378, line: 88, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!192, !317, !412, !27}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !378, line: 175, size: 512, elements: !414)
!414 = !{!415, !416, !417, !418, !4722, !4726, !4727}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !413, file: !378, line: 176, baseType: !389, size: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !413, file: !378, line: 177, baseType: !203, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !413, file: !378, line: 178, baseType: !189, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !413, file: !378, line: 179, baseType: !419, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !54, line: 472, size: 1536, align: 64, elements: !424)
!424 = !{!425, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4716, !4717, !4718, !4719, !4720, !4721}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !423, file: !54, line: 473, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !54, line: 641, size: 4800, elements: !428)
!428 = !{!429, !430, !431, !439, !440, !447, !448, !451, !452, !4497, !4498, !4499, !4500, !4501, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4541, !4544, !4545, !4546, !4553, !4554, !4555, !4556}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !427, file: !54, line: 642, baseType: !192, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !427, file: !54, line: 643, baseType: !194, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !427, file: !54, line: 644, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !433, line: 23, baseType: !434)
!433 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 21, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !433, line: 22, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 37, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !205, line: 49, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !427, file: !54, line: 645, baseType: !265, size: 128, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !427, file: !54, line: 646, baseType: !441, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !433, line: 28, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 26, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !442, file: !433, line: 27, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 38, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !205, line: 50, baseType: !7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !427, file: !54, line: 647, baseType: !7, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !427, file: !54, line: 650, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !54, line: 607, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !427, file: !54, line: 651, baseType: !449, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !427, file: !54, line: 654, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !54, line: 1966, size: 2048, align: 512, elements: !456)
!456 = !{!457, !4331, !4341, !4345, !4349, !4353, !4357, !4361, !4365, !4369, !4373, !4374, !4378, !4382, !4419, !4448, !4452, !4458, !4462, !4466, !4470, !4474, !4478, !4484, !4488}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !455, file: !54, line: 1967, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !426, !461, !7}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !463, line: 82, size: 1536, elements: !464)
!463 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!464 = !{!465, !466, !476, !484, !485, !505, !506, !510, !523, !4314, !4315, !4316, !4317, !4323, !4324, !4325}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !462, file: !463, line: 84, baseType: !7, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !462, file: !463, line: 85, baseType: !467, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !468, line: 275, baseType: !469)
!468 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !468, line: 275, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !469, file: !468, line: 275, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !468, line: 69, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !468, line: 64, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !473, file: !468, line: 65, baseType: !7, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !462, file: !463, line: 86, baseType: !477, size: 128, offset: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !478, line: 38, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !478, line: 39, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !477, file: !478, line: 39, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !462, file: !463, line: 87, baseType: !461, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !462, file: !463, line: 88, baseType: !486, size: 128, offset: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !463, line: 49, size: 128, elements: !487)
!487 = !{!488, !502}
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !463, line: 50, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !463, line: 50, size: 64, elements: !490)
!490 = !{!491, !498}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !463, line: 51, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !463, line: 51, size: 64, elements: !493)
!493 = !{!494, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !492, file: !463, line: 52, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !252, line: 21, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !254, line: 27, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !492, file: !463, line: 52, baseType: !495, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !489, file: !463, line: 54, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !252, line: 23, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !254, line: 31, baseType: !501)
!501 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !463, line: 56, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !462, file: !463, line: 89, baseType: !426, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !462, file: !463, line: 91, baseType: !507, size: 256, offset: 448)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !462, file: !463, line: 94, baseType: !511, size: 64, offset: 704)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !512, line: 25, size: 64, elements: !513)
!512 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !512, line: 26, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !512, line: 26, size: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !515, file: !512, line: 28, baseType: !500, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !512, line: 30, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !512, line: 30, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !519, file: !512, line: 31, baseType: !227, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !519, file: !512, line: 32, baseType: !27, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !462, file: !463, line: 95, baseType: !524, size: 64, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !463, line: 128, size: 1024, align: 512, elements: !527)
!527 = !{!528, !532, !533, !540, !546, !550, !554, !558, !559, !563, !567, !4304, !4308}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !526, file: !463, line: 129, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!27, !461, !7}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !526, file: !463, line: 130, baseType: !529, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !526, file: !463, line: 131, baseType: !534, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!27, !537, !539}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !526, file: !463, line: 132, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!27, !537, !7, !185, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !526, file: !463, line: 134, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!27, !537}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !526, file: !463, line: 135, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!27, !461}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !526, file: !463, line: 136, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !461}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !526, file: !463, line: 137, baseType: !555, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !526, file: !463, line: 138, baseType: !560, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !461, !426}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !526, file: !463, line: 139, baseType: !564, size: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!352, !461, !352, !27}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !526, file: !463, line: 140, baseType: !568, size: 64, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !4303}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !573, line: 70, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!574 = !{!575, !576, !4299, !4300}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !572, file: !573, line: 71, baseType: !461, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !572, file: !573, line: 72, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !54, line: 1190, size: 10752, elements: !579)
!579 = !{!580, !581, !584, !585, !586, !587, !635, !4001, !4041, !4126, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4143, !4147, !4148, !4151, !4154, !4157, !4160, !4161, !4162, !4203, !4230, !4231, !4232, !4233, !4234, !4235, !4238, !4240, !4247, !4248, !4249, !4250, !4251, !4266, !4267, !4268, !4269, !4270, !4273, !4274, !4275, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !578, file: !54, line: 1191, baseType: !265, size: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !578, file: !54, line: 1192, baseType: !582, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 21, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 18, baseType: !495)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !578, file: !54, line: 1193, baseType: !255, size: 8, offset: 160)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !578, file: !54, line: 1194, baseType: !207, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !578, file: !54, line: 1195, baseType: !209, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !578, file: !54, line: 1196, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !54, line: 2366, size: 576, elements: !590)
!590 = !{!591, !592, !593, !599, !603, !607, !611, !612, !613, !623, !627, !628, !629, !631, !632, !633, !634}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !54, line: 2367, baseType: !185, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !589, file: !54, line: 2368, baseType: !27, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !589, file: !54, line: 2376, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!27, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !573, line: 21, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !589, file: !54, line: 2377, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !54, line: 75, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !589, file: !54, line: 2378, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!461, !588, !27, !185, !189}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !589, file: !54, line: 2380, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !577}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !54, line: 2381, baseType: !298, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !54, line: 2382, baseType: !588, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !589, file: !54, line: 2383, baseType: !614, size: 64, offset: 512)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 194, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !614, file: !193, line: 195, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 198, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !193, line: 199, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !618, file: !193, line: 199, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !589, file: !54, line: 2385, baseType: !624, offset: 576)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !625, line: 206, elements: !626)
!625 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!626 = !{}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !589, file: !54, line: 2386, baseType: !624, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !589, file: !54, line: 2387, baseType: !624, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !589, file: !54, line: 2388, baseType: !630, offset: 576)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, elements: !353)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !589, file: !54, line: 2390, baseType: !624, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !589, file: !54, line: 2391, baseType: !624, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !589, file: !54, line: 2392, baseType: !624, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !589, file: !54, line: 2393, baseType: !624, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !578, file: !54, line: 1197, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !54, line: 2057, size: 1664, elements: !639)
!639 = !{!640, !644, !648, !649, !653, !659, !663, !664, !665, !669, !673, !677, !678, !679, !685, !689, !690, !3926, !3927, !3928, !3929, !3933, !3937, !3984, !3999, !4000}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !638, file: !54, line: 2058, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!426, !577}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !638, file: !54, line: 2059, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !426}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !638, file: !54, line: 2060, baseType: !645, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !638, file: !54, line: 2062, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !426, !27}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !638, file: !54, line: 2063, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!27, !426, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !54, line: 309, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !638, file: !54, line: 2064, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!27, !426}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !638, file: !54, line: 2065, baseType: !645, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !638, file: !54, line: 2066, baseType: !608, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !638, file: !54, line: 2067, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!27, !577, !27}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !638, file: !54, line: 2068, baseType: !670, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!27, !577, !53}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !638, file: !54, line: 2069, baseType: !674, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!27, !577}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !638, file: !54, line: 2070, baseType: !670, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !638, file: !54, line: 2071, baseType: !674, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !638, file: !54, line: 2072, baseType: !680, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!27, !461, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !54, line: 62, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !638, file: !54, line: 2073, baseType: !686, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!27, !577, !291, !352}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !638, file: !54, line: 2074, baseType: !608, size: 64, offset: 960)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !638, file: !54, line: 2076, baseType: !691, size: 64, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!27, !694, !461}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !696, line: 17, size: 960, elements: !697)
!696 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !726, !747, !748, !3925}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !695, file: !696, line: 18, baseType: !352, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !695, file: !696, line: 19, baseType: !203, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !695, file: !696, line: 20, baseType: !203, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !696, line: 21, baseType: !203, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !695, file: !696, line: 22, baseType: !203, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !695, file: !696, line: 23, baseType: !209, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !695, file: !696, line: 24, baseType: !209, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !696, line: 25, baseType: !706, size: 256, offset: 448)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !707, line: 66, size: 256, elements: !708)
!707 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!708 = !{!709, !718, !720, !725}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !706, file: !707, line: 67, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !711, line: 13, baseType: !712)
!711 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 181, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 179, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !713, file: !193, line: 180, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !252, line: 22, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !254, line: 30, baseType: !211)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !707, line: 68, baseType: !719, size: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 23, baseType: !235)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !706, file: !707, line: 70, baseType: !721, size: 32, offset: 96)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !722, line: 15, size: 32, elements: !723)
!722 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !721, file: !722, line: 20, baseType: !217, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !706, file: !707, line: 72, baseType: !265, size: 128, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !695, file: !696, line: 26, baseType: !727, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !696, line: 32, size: 256, elements: !730)
!730 = !{!731, !735, !739, !743}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !729, file: !696, line: 33, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!189, !694, !208}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !729, file: !696, line: 34, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !694, !189}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !696, line: 35, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!189, !694, !189, !208}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !729, file: !696, line: 36, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!27, !694, !189}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !695, file: !696, line: 27, baseType: !27, size: 32, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !695, file: !696, line: 28, baseType: !749, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !54, line: 994, size: 1856, align: 64, elements: !752)
!752 = !{!753, !772, !773, !775, !776, !777, !778, !779, !3897, !3898, !3907, !3913, !3914, !3915, !3916, !3917, !3918, !3920, !3921, !3924}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !54, line: 995, baseType: !754, size: 128)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !54, line: 995, size: 128, elements: !755)
!755 = !{!756, !762, !771}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !754, file: !54, line: 996, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !758, line: 60, size: 64, elements: !759)
!758 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !758, line: 61, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !754, file: !54, line: 997, baseType: !763, size: 128, align: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 232, size: 128, align: 64, elements: !764)
!764 = !{!765, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !763, file: !193, line: 233, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !763, file: !193, line: 234, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !754, file: !54, line: 998, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !751, file: !54, line: 1005, baseType: !227, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !751, file: !54, line: 1006, baseType: !774, size: 32, offset: 160)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 156, baseType: !7)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !751, file: !54, line: 1007, baseType: !710, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !751, file: !54, line: 1008, baseType: !706, size: 256, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !751, file: !54, line: 1009, baseType: !209, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !751, file: !54, line: 1010, baseType: !7, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !751, file: !54, line: 1011, baseType: !780, size: 256, offset: 640)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !54, line: 948, size: 256, elements: !781)
!781 = !{!782, !803, !3893, !3894, !3895, !3896}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !780, file: !54, line: 949, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !784, line: 34, baseType: !785)
!784 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 25, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !785, file: !784, line: 26, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !789, line: 27, baseType: !790)
!789 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !789, line: 13, size: 64, elements: !791)
!791 = !{!792, !802}
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !789, line: 14, baseType: !793, size: 32)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !789, line: 14, size: 32, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !793, file: !789, line: 15, baseType: !217, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !789, line: 16, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !793, file: !789, line: 16, size: 32, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !797, file: !789, line: 18, baseType: !251, size: 8)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !797, file: !789, line: 19, baseType: !801, size: 24, offset: 8)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 24, elements: !353)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !790, file: !789, line: 26, baseType: !239, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !780, file: !54, line: 950, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !160, line: 59, size: 768, elements: !806)
!806 = !{!807, !813, !814, !815, !819, !820, !821, !822}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !805, file: !160, line: 61, baseType: !808, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !809, line: 113, baseType: !810)
!809 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !809, line: 111, size: 32, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !810, file: !809, line: 112, baseType: !217, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !805, file: !160, line: 62, baseType: !7, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !160, line: 63, baseType: !227, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !805, file: !160, line: 65, baseType: !816, size: 256, offset: 128)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 256, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 4)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !805, file: !160, line: 66, baseType: !614, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !805, file: !160, line: 68, baseType: !222, size: 192, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !805, file: !160, line: 69, baseType: !763, size: 128, align: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !805, file: !160, line: 70, baseType: !823, offset: 768)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, elements: !1333)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !160, line: 54, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !824, file: !160, line: 55, baseType: !27, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !824, file: !160, line: 56, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !830, line: 26, size: 1152, elements: !831)
!830 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!831 = !{!832, !846, !847, !848, !3869, !3873, !3874, !3875, !3878, !3879, !3880, !3881, !3892}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !829, file: !830, line: 27, baseType: !833, size: 192)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !834, line: 19, size: 192, elements: !835)
!834 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!835 = !{!836, !844, !845}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !833, file: !834, line: 20, baseType: !837, size: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !838, line: 296, size: 128, elements: !839)
!838 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!839 = !{!840, !841, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !837, file: !838, line: 297, baseType: !227, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !837, file: !838, line: 299, baseType: !842, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 154, baseType: !7)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !837, file: !838, line: 300, baseType: !189, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !833, file: !834, line: 21, baseType: !7, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !833, file: !834, line: 22, baseType: !7, size: 32, offset: 160)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !830, line: 28, baseType: !763, size: 128, align: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !829, file: !830, line: 29, baseType: !7, size: 32, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !829, file: !830, line: 30, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !851, line: 746, size: 58368, elements: !852)
!851 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!852 = !{!853, !861, !862, !863, !864, !865, !866, !867, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !940, !951, !1046, !1050, !1053, !1084, !1085, !1086, !1087, !1098, !1100, !1101, !1102, !1103, !1104, !1105, !1116, !1117, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1134, !1135, !1142, !1143, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1414, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1429, !1430, !1431, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1473, !1479, !1663, !1664, !1665, !1666, !1670, !1673, !1680, !1685, !1688, !1691, !1694, !1720, !3261, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3301, !3302, !3303, !3312, !3320, !3321, !3322, !3323, !3324, !3329, !3330, !3331, !3334, !3335, !3338, !3341, !3344, !3352, !3355, !3356, !3442, !3443, !3444, !3445, !3446, !3452, !3453, !3454, !3455, !3458, !3459, !3462, !3476, !3477, !3480, !3481, !3482, !3485, !3486, !3487, !3488, !3489, !3490, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3522, !3523, !3529, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3541, !3613, !3615, !3616, !3617, !3618, !3619, !3620, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !850, file: !851, line: 752, baseType: !854, size: 192)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !855, line: 56, size: 192, elements: !856)
!855 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!856 = !{!857, !858, !859, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !855, line: 57, baseType: !207, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !854, file: !855, line: 58, baseType: !207, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !854, file: !855, line: 59, baseType: !495, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !854, file: !855, line: 61, baseType: !495, size: 32, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !850, file: !851, line: 754, baseType: !7, size: 32, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !850, file: !851, line: 767, baseType: !189, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !850, file: !851, line: 768, baseType: !808, size: 32, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !851, line: 770, baseType: !7, size: 32, offset: 352)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !850, file: !851, line: 771, baseType: !7, size: 32, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !850, file: !851, line: 774, baseType: !27, size: 32, offset: 416)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !850, file: !851, line: 775, baseType: !868, size: 128, offset: 448)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !869, line: 58, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!870 = !{!871, !872, !877, !878}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !868, file: !869, line: 59, baseType: !757, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !869, line: 60, baseType: !873, size: 32, offset: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !869, line: 60, size: 32, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !873, file: !869, line: 61, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !873, file: !869, line: 62, baseType: !217, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !868, file: !869, line: 65, baseType: !261, size: 16, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !868, file: !869, line: 65, baseType: !261, size: 16, offset: 112)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !850, file: !851, line: 776, baseType: !7, size: 32, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !850, file: !851, line: 777, baseType: !207, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !850, file: !851, line: 778, baseType: !849, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !850, file: !851, line: 787, baseType: !27, size: 32, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !850, file: !851, line: 788, baseType: !27, size: 32, offset: 800)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !850, file: !851, line: 790, baseType: !27, size: 32, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !850, file: !851, line: 792, baseType: !27, size: 32, offset: 864)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !850, file: !851, line: 793, baseType: !27, size: 32, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !850, file: !851, line: 794, baseType: !27, size: 32, offset: 928)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !850, file: !851, line: 795, baseType: !7, size: 32, offset: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !850, file: !851, line: 797, baseType: !890, size: 2048, offset: 1024)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !851, line: 551, size: 2048, elements: !891)
!891 = !{!892, !897, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !919, !922, !923, !924}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !890, file: !851, line: 553, baseType: !893, size: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !851, line: 411, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !893, file: !851, line: 412, baseType: !207, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !893, file: !851, line: 413, baseType: !495, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !890, file: !851, line: 554, baseType: !898, size: 192, align: 64, offset: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !899, line: 5, size: 192, align: 64, elements: !900)
!899 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!900 = !{!901, !902, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !898, file: !899, line: 6, baseType: !207, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !898, file: !899, line: 7, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !898, file: !899, line: 8, baseType: !903, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !890, file: !851, line: 555, baseType: !499, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !890, file: !851, line: 556, baseType: !499, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !890, file: !851, line: 558, baseType: !265, size: 128, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !890, file: !851, line: 559, baseType: !7, size: 32, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !890, file: !851, line: 561, baseType: !499, size: 64, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !890, file: !851, line: 562, baseType: !499, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !890, file: !851, line: 563, baseType: !499, size: 64, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !890, file: !851, line: 564, baseType: !499, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !890, file: !851, line: 565, baseType: !716, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !890, file: !851, line: 566, baseType: !499, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !890, file: !851, line: 568, baseType: !499, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !890, file: !851, line: 571, baseType: !27, size: 32, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !890, file: !851, line: 572, baseType: !918, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !890, file: !851, line: 574, baseType: !920, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !851, line: 49, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !890, file: !851, line: 576, baseType: !920, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !890, file: !851, line: 578, baseType: !207, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !890, file: !851, line: 588, baseType: !925, size: 512, align: 512, offset: 1536)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !851, line: 497, size: 512, align: 512, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !935}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !925, file: !851, line: 498, baseType: !499, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !925, file: !851, line: 499, baseType: !499, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !925, file: !851, line: 500, baseType: !499, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !925, file: !851, line: 501, baseType: !495, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !925, file: !851, line: 502, baseType: !495, size: 32, offset: 224)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !925, file: !851, line: 503, baseType: !207, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !925, file: !851, line: 504, baseType: !207, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !925, file: !851, line: 505, baseType: !207, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !925, file: !851, line: 506, baseType: !936, size: 64, align: 64, offset: 448)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !851, line: 445, size: 64, align: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !936, file: !851, line: 446, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !936, file: !851, line: 447, baseType: !7, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !850, file: !851, line: 798, baseType: !941, size: 384, offset: 3072)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !851, line: 592, size: 384, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !941, file: !851, line: 593, baseType: !265, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !941, file: !851, line: 594, baseType: !207, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !941, file: !851, line: 595, baseType: !207, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !941, file: !851, line: 596, baseType: !7, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !941, file: !851, line: 597, baseType: !194, size: 16, offset: 288)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !941, file: !851, line: 598, baseType: !194, size: 16, offset: 304)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !941, file: !851, line: 600, baseType: !950, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !850, file: !851, line: 799, baseType: !952, size: 1792, offset: 3456)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !851, line: 610, size: 1792, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !1043, !1044}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !952, file: !851, line: 611, baseType: !898, size: 192, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !952, file: !851, line: 618, baseType: !499, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !952, file: !851, line: 619, baseType: !499, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !952, file: !851, line: 620, baseType: !499, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !952, file: !851, line: 621, baseType: !499, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !952, file: !851, line: 622, baseType: !499, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !952, file: !851, line: 629, baseType: !716, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !952, file: !851, line: 630, baseType: !499, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !851, line: 631, baseType: !7, size: 32, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !952, file: !851, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !952, file: !851, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !952, file: !851, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !952, file: !851, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !952, file: !851, line: 662, baseType: !968, size: 512, offset: 704)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !59, line: 118, size: 512, elements: !969)
!969 = !{!970, !978, !979, !984, !1039, !1040, !1041, !1042}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !968, file: !59, line: 119, baseType: !971, size: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !972, line: 9, size: 256, elements: !973)
!972 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !971, file: !972, line: 10, baseType: !898, size: 192, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !971, file: !972, line: 11, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !977, line: 29, baseType: !716)
!977 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !968, file: !59, line: 120, baseType: !976, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !968, file: !59, line: 121, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!58, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !968, file: !59, line: 122, baseType: !985, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !59, line: 159, size: 512, align: 512, elements: !987)
!987 = !{!988, !1013, !1014, !1017, !1022, !1023, !1034, !1038}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !986, file: !59, line: 160, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !59, line: 215, size: 4608, align: 512, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !990, file: !59, line: 216, baseType: !719, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !990, file: !59, line: 217, baseType: !7, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !990, file: !59, line: 218, baseType: !7, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !990, file: !59, line: 219, baseType: !7, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !990, file: !59, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !990, file: !59, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !990, file: !59, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !990, file: !59, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !990, file: !59, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !990, file: !59, line: 226, baseType: !7, size: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !990, file: !59, line: 227, baseType: !194, size: 16, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !990, file: !59, line: 228, baseType: !194, size: 16, offset: 208)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !990, file: !59, line: 229, baseType: !7, size: 32, offset: 224)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !990, file: !59, line: 235, baseType: !976, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !990, file: !59, line: 236, baseType: !983, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !990, file: !59, line: 237, baseType: !976, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !990, file: !59, line: 238, baseType: !983, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !990, file: !59, line: 239, baseType: !1010, size: 4096, align: 512, offset: 512)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 4096, align: 512, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 8)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !986, file: !59, line: 161, baseType: !7, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !986, file: !59, line: 162, baseType: !1015, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 32, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !205, line: 96, baseType: !27)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !986, file: !59, line: 163, baseType: !1018, size: 32, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !468, line: 274, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !468, line: 274, size: 32, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1019, file: !468, line: 274, baseType: !472, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !986, file: !59, line: 164, baseType: !983, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !986, file: !59, line: 165, baseType: !1024, size: 128, offset: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !972, line: 14, size: 128, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1024, file: !972, line: 15, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !899, line: 26, size: 128, elements: !1028)
!1028 = !{!1029, !1033}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1027, file: !899, line: 27, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !899, line: 12, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1030, file: !899, line: 13, baseType: !903, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1027, file: !899, line: 28, baseType: !903, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !986, file: !59, line: 166, baseType: !1035, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!976}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !986, file: !59, line: 167, baseType: !976, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !968, file: !59, line: 123, baseType: !251, size: 8, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !968, file: !59, line: 124, baseType: !251, size: 8, offset: 456)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !968, file: !59, line: 125, baseType: !251, size: 8, offset: 464)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !968, file: !59, line: 126, baseType: !251, size: 8, offset: 472)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !952, file: !851, line: 671, baseType: !968, size: 512, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !952, file: !851, line: 679, baseType: !1045, size: 64, offset: 1728)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !850, file: !851, line: 800, baseType: !1047, size: 64, offset: 5248)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !851, line: 800, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !850, file: !851, line: 809, baseType: !1051, size: 64, offset: 5312)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !851, line: 70, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !850, file: !851, line: 825, baseType: !1054, size: 2048, align: 512, offset: 5632)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !851, line: 509, size: 2048, align: 512, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1054, file: !851, line: 511, baseType: !499, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1054, file: !851, line: 512, baseType: !499, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1054, file: !851, line: 513, baseType: !499, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1054, file: !851, line: 514, baseType: !499, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1054, file: !851, line: 515, baseType: !499, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1054, file: !851, line: 516, baseType: !499, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1054, file: !851, line: 518, baseType: !499, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1054, file: !851, line: 519, baseType: !499, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1054, file: !851, line: 520, baseType: !716, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1054, file: !851, line: 522, baseType: !499, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1054, file: !851, line: 523, baseType: !499, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1054, file: !851, line: 524, baseType: !716, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1054, file: !851, line: 526, baseType: !716, size: 64, offset: 768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1054, file: !851, line: 527, baseType: !499, size: 64, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1054, file: !851, line: 529, baseType: !499, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1054, file: !851, line: 530, baseType: !499, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1054, file: !851, line: 531, baseType: !499, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1054, file: !851, line: 532, baseType: !499, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1054, file: !851, line: 533, baseType: !499, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1054, file: !851, line: 535, baseType: !499, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1054, file: !851, line: 536, baseType: !499, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1054, file: !851, line: 537, baseType: !499, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1054, file: !851, line: 538, baseType: !499, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1054, file: !851, line: 539, baseType: !499, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1054, file: !851, line: 540, baseType: !499, size: 64, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1054, file: !851, line: 541, baseType: !499, size: 64, offset: 1600)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1054, file: !851, line: 542, baseType: !499, size: 64, offset: 1664)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1054, file: !851, line: 543, baseType: !499, size: 64, offset: 1728)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !850, file: !851, line: 833, baseType: !7, size: 32, offset: 7680)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !850, file: !851, line: 836, baseType: !7, size: 32, offset: 7712)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !850, file: !851, line: 837, baseType: !27, size: 32, offset: 7744)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !850, file: !851, line: 838, baseType: !1088, size: 64, offset: 7808)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1091, line: 19, baseType: !1092)
!1091 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1091, line: 19, size: 64, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1092, file: !1091, line: 19, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 1)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !850, file: !851, line: 839, baseType: !1099, size: 64, offset: 7872)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !850, file: !851, line: 840, baseType: !1090, size: 64, offset: 7936)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !850, file: !851, line: 841, baseType: !189, size: 64, offset: 8000)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !850, file: !851, line: 843, baseType: !194, size: 16, offset: 8064)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !850, file: !851, line: 845, baseType: !194, size: 16, offset: 8080)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !850, file: !851, line: 848, baseType: !27, size: 32, offset: 8096)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !850, file: !851, line: 849, baseType: !1106, size: 32, offset: 8128)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !851, line: 718, size: 32, elements: !1107)
!1107 = !{!1108, !1115}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1106, file: !851, line: 724, baseType: !1109, size: 32)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !851, line: 719, size: 32, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1109, file: !851, line: 720, baseType: !251, size: 8)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1109, file: !851, line: 721, baseType: !251, size: 8, offset: 8)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1109, file: !851, line: 722, baseType: !251, size: 8, offset: 16)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1109, file: !851, line: 723, baseType: !251, size: 8, offset: 24)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1106, file: !851, line: 725, baseType: !495, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !850, file: !851, line: 850, baseType: !265, size: 128, offset: 8192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !850, file: !851, line: 851, baseType: !1118, size: 64, offset: 8320)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !851, line: 60, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !850, file: !851, line: 855, baseType: !207, size: 64, offset: 8384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !850, file: !851, line: 856, baseType: !251, size: 8, offset: 8448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !850, file: !851, line: 857, baseType: !251, size: 8, offset: 8456)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !850, file: !851, line: 858, baseType: !27, size: 32, offset: 8480)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !850, file: !851, line: 859, baseType: !265, size: 128, offset: 8512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !850, file: !851, line: 860, baseType: !27, size: 32, offset: 8640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !850, file: !851, line: 861, baseType: !265, size: 128, offset: 8704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !850, file: !851, line: 873, baseType: !1128, size: 256, offset: 8832)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !851, line: 376, size: 256, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1128, file: !851, line: 381, baseType: !207, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1128, file: !851, line: 384, baseType: !501, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1128, file: !851, line: 389, baseType: !501, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1128, file: !851, line: 392, baseType: !501, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !850, file: !851, line: 875, baseType: !265, size: 128, offset: 9088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !850, file: !851, line: 877, baseType: !1136, size: 320, offset: 9216)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1137, line: 86, size: 320, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1136, file: !1137, line: 87, baseType: !27, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1136, file: !1137, line: 88, baseType: !265, size: 128, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1136, file: !1137, line: 89, baseType: !265, size: 128, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !850, file: !851, line: 878, baseType: !898, size: 192, align: 64, offset: 9536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !850, file: !851, line: 881, baseType: !1144, size: 64, offset: 9728)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !129, line: 733, size: 10240, elements: !1146)
!1146 = !{!1147, !1331}
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !129, line: 734, baseType: !1148, size: 10240)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !129, line: 734, size: 10240, elements: !1149)
!1149 = !{!1150, !1154, !1167, !1172, !1173, !1174, !1175, !1176, !1177, !1186, !1187, !1188, !1194, !1195, !1196, !1197, !1198, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1235, !1247, !1250, !1298, !1299, !1300, !1303, !1306, !1307, !1310, !1311, !1312, !1318, !1319}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !129, line: 739, baseType: !1151, size: 512, align: 512)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1148, file: !129, line: 739, size: 512, align: 512, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1151, file: !129, line: 747, baseType: !217, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1148, file: !129, line: 750, baseType: !1155, size: 128, offset: 512)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1156, line: 218, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1157 = !{!1158, !1165, !1166}
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !1156, line: 219, baseType: !1159, size: 32)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !1156, line: 219, size: 32, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1159, file: !1156, line: 220, baseType: !227, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1159, file: !1156, line: 221, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1156, line: 197, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 197, elements: !626)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1155, file: !1156, line: 223, baseType: !7, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1155, file: !1156, line: 224, baseType: !189, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1148, file: !129, line: 752, baseType: !1168, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!207, !1171, !207, !207, !207, !207}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1148, file: !129, line: 756, baseType: !207, size: 64, offset: 704)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1148, file: !129, line: 757, baseType: !207, size: 64, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1148, file: !129, line: 760, baseType: !207, size: 64, offset: 832)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1148, file: !129, line: 761, baseType: !207, size: 64, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1148, file: !129, line: 763, baseType: !207, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1148, file: !129, line: 764, baseType: !1178, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1180, line: 299, baseType: !1181)
!1180 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 299, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1181, file: !1180, line: 299, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1185, line: 18, baseType: !207)
!1185 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1148, file: !129, line: 773, baseType: !217, size: 32, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1148, file: !129, line: 785, baseType: !217, size: 32, offset: 1120)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1148, file: !129, line: 795, baseType: !1189, size: 64, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !129, line: 726, size: 128, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1190, file: !129, line: 727, baseType: !499, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1190, file: !129, line: 728, baseType: !27, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1148, file: !129, line: 801, baseType: !207, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1148, file: !129, line: 804, baseType: !710, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1148, file: !129, line: 806, baseType: !27, size: 32, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1148, file: !129, line: 808, baseType: !227, size: 32, offset: 1376)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1148, file: !129, line: 823, baseType: !1199, size: 320, offset: 1408)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1200, line: 48, size: 320, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1201 = !{!1202, !1203, !1204, !1205, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1199, file: !1200, line: 49, baseType: !710, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1199, file: !1200, line: 55, baseType: !710, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1199, file: !1200, line: 57, baseType: !721, size: 32, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1199, file: !1200, line: 59, baseType: !719, size: 32, offset: 160)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1199, file: !1200, line: 60, baseType: !265, size: 128, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1148, file: !129, line: 825, baseType: !265, size: 128, offset: 1728)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1148, file: !129, line: 845, baseType: !27, size: 32, offset: 1856)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1148, file: !129, line: 849, baseType: !207, size: 64, offset: 1920)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1148, file: !129, line: 850, baseType: !207, size: 64, offset: 1984)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1148, file: !129, line: 852, baseType: !207, size: 64, offset: 2048)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1148, file: !129, line: 853, baseType: !207, size: 64, offset: 2112)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1148, file: !129, line: 854, baseType: !712, size: 64, offset: 2176)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1148, file: !129, line: 855, baseType: !207, size: 64, offset: 2240)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1148, file: !129, line: 856, baseType: !207, size: 64, offset: 2304)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1148, file: !129, line: 857, baseType: !207, size: 64, offset: 2368)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1148, file: !129, line: 858, baseType: !207, size: 64, offset: 2432)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1148, file: !129, line: 865, baseType: !472, size: 32, offset: 2496)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1148, file: !129, line: 867, baseType: !227, size: 32, offset: 2528)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1148, file: !129, line: 869, baseType: !207, size: 64, offset: 2560)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1148, file: !129, line: 869, baseType: !207, size: 64, offset: 2624)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1148, file: !129, line: 869, baseType: !207, size: 64, offset: 2688)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1148, file: !129, line: 869, baseType: !207, size: 64, offset: 2752)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1148, file: !129, line: 870, baseType: !207, size: 64, offset: 2816)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1148, file: !129, line: 870, baseType: !207, size: 64, offset: 2880)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1148, file: !129, line: 870, baseType: !207, size: 64, offset: 2944)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1148, file: !129, line: 871, baseType: !207, size: 64, offset: 3008)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1148, file: !129, line: 871, baseType: !207, size: 64, offset: 3072)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1148, file: !129, line: 871, baseType: !207, size: 64, offset: 3136)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1148, file: !129, line: 871, baseType: !207, size: 64, offset: 3200)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1148, file: !129, line: 873, baseType: !1232, size: 3328, offset: 3264)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 3328, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 52)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1148, file: !129, line: 875, baseType: !1236, size: 1280, offset: 6592)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 1280, elements: !817)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1238, line: 22, size: 320, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1239 = !{!1240, !1241, !1242, !1243}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !1238, line: 23, baseType: !719, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1237, file: !1238, line: 24, baseType: !716, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1237, file: !1238, line: 26, baseType: !265, size: 128, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1237, file: !1238, line: 28, baseType: !1244, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !252, line: 20, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !254, line: 26, baseType: !27)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1148, file: !129, line: 877, baseType: !1248, size: 64, offset: 7872)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !129, line: 877, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1148, file: !129, line: 880, baseType: !1251, size: 1088, offset: 7936)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1252, line: 72, baseType: !1253)
!1252 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1252, line: 23, size: 1088, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1262, !1263, !1264, !1265, !1292, !1293, !1294}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1253, file: !1252, line: 28, baseType: !499, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1253, file: !1252, line: 38, baseType: !712, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1253, file: !1252, line: 40, baseType: !207, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1253, file: !1252, line: 43, baseType: !1199, size: 320, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1253, file: !1252, line: 44, baseType: !1260, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1252, line: 44, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1252, line: 48, baseType: !207, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1253, file: !1252, line: 59, baseType: !706, size: 256, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1253, file: !1252, line: 60, baseType: !189, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1253, file: !1252, line: 61, baseType: !1266, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1269, line: 13, size: 1216, elements: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1268, file: !1269, line: 14, baseType: !189, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1268, file: !1269, line: 15, baseType: !207, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1268, file: !1269, line: 17, baseType: !207, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1268, file: !1269, line: 17, baseType: !207, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1268, file: !1269, line: 18, baseType: !207, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1268, file: !1269, line: 18, baseType: !207, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1268, file: !1269, line: 19, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1268, file: !1269, line: 21, baseType: !387, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1268, file: !1269, line: 23, baseType: !387, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1268, file: !1269, line: 24, baseType: !387, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1268, file: !1269, line: 25, baseType: !387, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1268, file: !1269, line: 26, baseType: !387, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1268, file: !1269, line: 27, baseType: !387, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1268, file: !1269, line: 28, baseType: !387, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1268, file: !1269, line: 29, baseType: !387, size: 64, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1268, file: !1269, line: 30, baseType: !387, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1268, file: !1269, line: 31, baseType: !387, size: 64, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1268, file: !1269, line: 32, baseType: !387, size: 64, offset: 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1268, file: !1269, line: 33, baseType: !387, size: 64, offset: 1152)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1253, file: !1252, line: 63, baseType: !217, size: 32, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1253, file: !1252, line: 69, baseType: !261, size: 16, offset: 1056)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1253, file: !1252, line: 70, baseType: !1295, size: 16, offset: 1072)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !252, line: 18, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !254, line: 23, baseType: !1297)
!1297 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !129, line: 882, baseType: !207, size: 64, offset: 9024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1148, file: !129, line: 885, baseType: !227, size: 32, offset: 9088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1148, file: !129, line: 886, baseType: !1301, size: 64, offset: 9152)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !129, line: 732, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1148, file: !129, line: 901, baseType: !1304, size: 64, offset: 9216)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !433, line: 18, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1148, file: !129, line: 904, baseType: !1171, size: 64, offset: 9280)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1148, file: !129, line: 906, baseType: !1308, size: 64, offset: 9344)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !129, line: 906, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1148, file: !129, line: 930, baseType: !217, size: 32, offset: 9408)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1148, file: !129, line: 933, baseType: !217, size: 32, offset: 9440)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1148, file: !129, line: 935, baseType: !1313, size: 64, offset: 9472)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !153, line: 103, size: 64, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1313, file: !153, line: 104, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !153, line: 101, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1148, file: !129, line: 940, baseType: !710, size: 64, offset: 9536)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1148, file: !129, line: 942, baseType: !1320, size: 256, offset: 9600)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 98, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 99, baseType: !710, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 100, baseType: !265, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 101, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1145, file: !129, line: 986, baseType: !1332, offset: 10240)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: -1)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !850, file: !851, line: 882, baseType: !1144, size: 64, offset: 9792)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !850, file: !851, line: 884, baseType: !27, size: 32, offset: 9856)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !850, file: !851, line: 885, baseType: !27, size: 32, offset: 9888)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !850, file: !851, line: 886, baseType: !27, size: 32, offset: 9920)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !850, file: !851, line: 888, baseType: !27, size: 32, offset: 9952)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !850, file: !851, line: 890, baseType: !207, size: 64, offset: 9984)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !850, file: !851, line: 893, baseType: !7, size: 32, offset: 10048)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !850, file: !851, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !850, file: !851, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !850, file: !851, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !850, file: !851, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !850, file: !851, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !850, file: !851, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !850, file: !851, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !850, file: !851, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !850, file: !851, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !850, file: !851, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !850, file: !851, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !850, file: !851, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !850, file: !851, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !850, file: !851, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !850, file: !851, line: 969, baseType: !207, size: 64, offset: 10176)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !850, file: !851, line: 971, baseType: !1358, size: 448, offset: 10240)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !64, line: 25, size: 448, elements: !1359)
!1359 = !{!1360, !1361, !1366}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1358, file: !64, line: 26, baseType: !207, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1358, file: !64, line: 27, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!387, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !64, line: 28, baseType: !1367, size: 320, offset: 128)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1358, file: !64, line: 28, size: 320, elements: !1368)
!1368 = !{!1369, !1379, !1404}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1367, file: !64, line: 37, baseType: !1370, size: 320)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !64, line: 30, size: 320, elements: !1371)
!1371 = !{!1372, !1374, !1375, !1376, !1377, !1378}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1370, file: !64, line: 31, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1370, file: !64, line: 32, baseType: !495, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !64, line: 33, baseType: !495, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1370, file: !64, line: 34, baseType: !495, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1370, file: !64, line: 35, baseType: !499, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1370, file: !64, line: 36, baseType: !1373, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1367, file: !64, line: 47, baseType: !1380, size: 192)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !64, line: 39, size: 192, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1403}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1380, file: !64, line: 40, baseType: !1015, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1380, file: !64, line: 41, baseType: !63, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !64, line: 42, baseType: !1385, size: 64, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !64, line: 42, size: 64, elements: !1386)
!1386 = !{!1387, !1395}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1385, file: !64, line: 43, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1390, line: 7, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1391 = !{!1392, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1389, file: !1390, line: 8, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !205, line: 93, baseType: !211)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1389, file: !1390, line: 9, baseType: !211, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1385, file: !64, line: 44, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1398, line: 7, size: 64, elements: !1399)
!1398 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1399 = !{!1400, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1397, file: !1398, line: 8, baseType: !1401, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1398, line: 5, baseType: !1245)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1397, file: !1398, line: 9, baseType: !1245, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1380, file: !64, line: 46, baseType: !499, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1367, file: !64, line: 55, baseType: !1405, size: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !64, line: 49, size: 256, elements: !1406)
!1406 = !{!1407, !1410, !1411, !1412, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1405, file: !64, line: 50, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !64, line: 14, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1405, file: !64, line: 51, baseType: !27, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1405, file: !64, line: 52, baseType: !27, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1405, file: !64, line: 53, baseType: !207, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1405, file: !64, line: 54, baseType: !207, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !850, file: !851, line: 973, baseType: !1415, size: 32, offset: 10688)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 27, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !205, line: 28, baseType: !27)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !850, file: !851, line: 974, baseType: !1415, size: 32, offset: 10720)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !850, file: !851, line: 978, baseType: !207, size: 64, offset: 10752)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !850, file: !851, line: 987, baseType: !849, size: 64, offset: 10816)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !850, file: !851, line: 990, baseType: !849, size: 64, offset: 10880)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !850, file: !851, line: 995, baseType: !265, size: 128, offset: 10944)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !850, file: !851, line: 996, baseType: !265, size: 128, offset: 11072)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !850, file: !851, line: 997, baseType: !849, size: 64, offset: 11200)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !850, file: !851, line: 1005, baseType: !265, size: 128, offset: 11264)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !850, file: !851, line: 1006, baseType: !265, size: 128, offset: 11392)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !850, file: !851, line: 1009, baseType: !804, size: 64, offset: 11520)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !850, file: !851, line: 1010, baseType: !1428, size: 512, offset: 11584)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 512, elements: !817)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !850, file: !851, line: 1011, baseType: !265, size: 128, offset: 12096)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !850, file: !851, line: 1012, baseType: !265, size: 128, offset: 12224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !850, file: !851, line: 1014, baseType: !1432, size: 64, offset: 12352)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1434, line: 26, size: 256, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1433, file: !1434, line: 27, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1433, file: !1434, line: 28, baseType: !1438, size: 192, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1439, line: 43, size: 192, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1439, line: 44, baseType: !719, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1438, file: !1439, line: 45, baseType: !265, size: 128, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !850, file: !851, line: 1017, baseType: !291, size: 64, offset: 12416)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !850, file: !851, line: 1020, baseType: !291, size: 64, offset: 12480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !850, file: !851, line: 1023, baseType: !189, size: 64, offset: 12544)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !850, file: !851, line: 1025, baseType: !499, size: 64, offset: 12608)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !850, file: !851, line: 1026, baseType: !499, size: 64, offset: 12672)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !850, file: !851, line: 1031, baseType: !499, size: 64, offset: 12736)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !850, file: !851, line: 1032, baseType: !1450, size: 192, offset: 12800)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !851, line: 324, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1450, file: !851, line: 326, baseType: !499, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1450, file: !851, line: 327, baseType: !499, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !851, line: 328, baseType: !719, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !850, file: !851, line: 1041, baseType: !207, size: 64, offset: 12992)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !850, file: !851, line: 1042, baseType: !207, size: 64, offset: 13056)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !850, file: !851, line: 1045, baseType: !499, size: 64, offset: 13120)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !850, file: !851, line: 1048, baseType: !499, size: 64, offset: 13184)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !850, file: !851, line: 1051, baseType: !207, size: 64, offset: 13248)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !850, file: !851, line: 1052, baseType: !207, size: 64, offset: 13312)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !850, file: !851, line: 1055, baseType: !1462, size: 640, offset: 13376)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1463, line: 132, size: 640, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1464 = !{!1465, !1471, !1472}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1462, file: !1463, line: 133, baseType: !1466, size: 576)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1467, size: 576, elements: !353)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1463, line: 117, size: 192, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1467, file: !1463, line: 118, baseType: !499, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1467, file: !1463, line: 119, baseType: !1024, size: 128, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1462, file: !1463, line: 134, baseType: !7, size: 32, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1462, file: !1463, line: 135, baseType: !7, size: 32, offset: 608)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !850, file: !851, line: 1058, baseType: !1474, size: 448, offset: 14016)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1463, line: 144, size: 448, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1474, file: !1463, line: 145, baseType: !763, size: 128, align: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1474, file: !1463, line: 146, baseType: !706, size: 256, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1474, file: !1463, line: 147, baseType: !7, size: 32, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !850, file: !851, line: 1064, baseType: !1480, size: 64, offset: 14464)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1483, line: 110, size: 1472, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1501, !1502, !1503, !1504, !1505, !1506, !1618, !1619, !1620, !1621, !1622, !1645, !1646, !1650, !1658}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1482, file: !1483, line: 111, baseType: !710, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1482, file: !1483, line: 112, baseType: !432, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1482, file: !1483, line: 113, baseType: !441, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1482, file: !1483, line: 114, baseType: !432, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1482, file: !1483, line: 115, baseType: !441, size: 32, offset: 160)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1482, file: !1483, line: 116, baseType: !432, size: 32, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1482, file: !1483, line: 117, baseType: !441, size: 32, offset: 224)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1482, file: !1483, line: 118, baseType: !432, size: 32, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1482, file: !1483, line: 119, baseType: !441, size: 32, offset: 288)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1482, file: !1483, line: 120, baseType: !7, size: 32, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1482, file: !1483, line: 121, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1497, line: 24, baseType: !1498)
!1497 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 24, size: 64, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1498, file: !1497, line: 24, baseType: !499, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1482, file: !1483, line: 122, baseType: !1496, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1482, file: !1483, line: 123, baseType: !1496, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1482, file: !1483, line: 124, baseType: !1496, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1482, file: !1483, line: 125, baseType: !1496, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1482, file: !1483, line: 127, baseType: !255, size: 8, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1482, file: !1483, line: 129, baseType: !1507, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1509, line: 195, size: 1728, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1510 = !{!1511, !1512, !1515, !1520, !1521, !1524, !1525, !1532, !1533, !1534, !1535, !1538, !1539, !1540, !1541, !1542, !1582, !1603}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1508, file: !1509, line: 196, baseType: !808, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1508, file: !1509, line: 197, baseType: !1513, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1509, line: 28, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 104, baseType: !1245)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1509, line: 198, baseType: !1516, size: 192, offset: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !1509, line: 198, size: 192, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1516, file: !1509, line: 199, baseType: !265, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1516, file: !1509, line: 200, baseType: !898, size: 192, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1508, file: !1509, line: 205, baseType: !1199, size: 320, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1508, file: !1509, line: 206, baseType: !1522, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1509, line: 206, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1508, file: !1509, line: 207, baseType: !189, size: 64, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1509, line: 208, baseType: !1526, size: 64, offset: 704)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !1509, line: 208, size: 64, elements: !1527)
!1527 = !{!1528, !1531}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1526, file: !1509, line: 209, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1530, line: 8, baseType: !717)
!1530 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1526, file: !1509, line: 210, baseType: !1529, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1508, file: !1509, line: 212, baseType: !1529, size: 64, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1508, file: !1509, line: 213, baseType: !432, size: 32, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1508, file: !1509, line: 214, baseType: !441, size: 32, offset: 864)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1508, file: !1509, line: 215, baseType: !1536, size: 32, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1509, line: 31, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 110, baseType: !495)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1508, file: !1509, line: 216, baseType: !194, size: 16, offset: 928)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1508, file: !1509, line: 217, baseType: !194, size: 16, offset: 944)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1508, file: !1509, line: 221, baseType: !1297, size: 16, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1508, file: !1509, line: 228, baseType: !207, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1509, line: 245, baseType: !1543, size: 320, offset: 1088)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !1509, line: 245, size: 320, elements: !1544)
!1544 = !{!1545, !1574}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1543, file: !1509, line: 246, baseType: !1546, size: 320)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1509, line: 114, size: 320, elements: !1547)
!1547 = !{!1548, !1549, !1561, !1564, !1573}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1546, file: !1509, line: 116, baseType: !207, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1509, line: 117, baseType: !1550, size: 64, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1509, line: 117, size: 64, elements: !1551)
!1551 = !{!1552, !1560}
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1509, line: 118, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !1509, line: 118, size: 64, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1553, file: !1509, line: 120, baseType: !261, size: 16)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1553, file: !1509, line: 121, baseType: !1557, size: 48, offset: 16)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 48, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 6)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1550, file: !1509, line: 127, baseType: !207, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1546, file: !1509, line: 129, baseType: !1562, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1509, line: 102, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1546, file: !1509, line: 130, baseType: !1565, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1509, line: 108, size: 192, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1566, file: !1509, line: 109, baseType: !763, size: 128, align: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1566, file: !1509, line: 110, baseType: !808, size: 32, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1566, file: !1509, line: 111, baseType: !1571, size: 8, offset: 160)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 35, baseType: !1572)
!1572 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1546, file: !1509, line: 131, baseType: !185, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1509, line: 247, baseType: !1575, size: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !1509, line: 247, size: 320, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1575, file: !1509, line: 248, baseType: !207, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1575, file: !1509, line: 249, baseType: !207, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1575, file: !1509, line: 250, baseType: !1562, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1575, file: !1509, line: 251, baseType: !1565, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1575, file: !1509, line: 252, baseType: !352, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1509, line: 260, baseType: !1583, size: 256, offset: 1408)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !1509, line: 260, size: 256, elements: !1584)
!1584 = !{!1585, !1591}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1583, file: !1509, line: 261, baseType: !1586, size: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1509, line: 134, size: 256, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1586, file: !1509, line: 135, baseType: !189, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1586, file: !1509, line: 136, baseType: !1590, size: 256)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !817)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !1509, line: 262, baseType: !1592, size: 256)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1583, file: !1509, line: 262, size: 256, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1592, file: !1509, line: 264, baseType: !265, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1592, file: !1509, line: 265, baseType: !1596, size: 128, offset: 128)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1597, line: 22, size: 128, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1598 = !{!1599, !1602}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1596, file: !1597, line: 23, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1597, line: 23, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1596, file: !1597, line: 24, baseType: !207, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1508, file: !1509, line: 280, baseType: !1604, size: 64, offset: 1664)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1509, line: 176, size: 192, elements: !1606)
!1606 = !{!1607, !1616, !1617}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1605, file: !1509, line: 177, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1509, line: 171, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!27, !1507, !1612, !1614, !1507}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1605, file: !1509, line: 178, baseType: !1507, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1605, file: !1509, line: 179, baseType: !1562, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1482, file: !1483, line: 130, baseType: !1507, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1482, file: !1483, line: 131, baseType: !1507, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1482, file: !1483, line: 132, baseType: !1507, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1482, file: !1483, line: 135, baseType: !189, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1482, file: !1483, line: 137, baseType: !1623, size: 64, offset: 1088)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1625, line: 14, size: 1088, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1624, file: !1625, line: 15, baseType: !808, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1624, file: !1625, line: 17, baseType: !1237, size: 320, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1624, file: !1625, line: 19, baseType: !207, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1624, file: !1625, line: 20, baseType: !710, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1624, file: !1625, line: 23, baseType: !618, size: 128, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1625, line: 24, baseType: !432, size: 32, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1624, file: !1625, line: 29, baseType: !710, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1624, file: !1625, line: 36, baseType: !1635, size: 320, offset: 768)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1636, line: 15, size: 320, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1635, file: !1636, line: 16, baseType: !719, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1635, file: !1636, line: 18, baseType: !27, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1635, file: !1636, line: 19, baseType: !27, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1635, file: !1636, line: 20, baseType: !27, size: 32, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1635, file: !1636, line: 21, baseType: !27, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1635, file: !1636, line: 22, baseType: !207, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1636, line: 23, baseType: !207, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1482, file: !1483, line: 138, baseType: !1304, size: 64, offset: 1152)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1482, file: !1483, line: 139, baseType: !1647, size: 64, offset: 1216)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1649, line: 16, flags: DIFlagFwdDecl)
!1649 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1482, file: !1483, line: 140, baseType: !1651, size: 64, offset: 1280)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1483, line: 25, size: 64, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1652, file: !1483, line: 26, baseType: !217, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1652, file: !1483, line: 27, baseType: !27, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1652, file: !1483, line: 28, baseType: !1657, offset: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, elements: !1333)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1483, line: 142, baseType: !1659, size: 128, offset: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !1483, line: 142, size: 128, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1659, file: !1483, line: 143, baseType: !27, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1659, file: !1483, line: 144, baseType: !763, size: 128, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !850, file: !851, line: 1067, baseType: !1480, size: 64, offset: 14528)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !850, file: !851, line: 1070, baseType: !1480, size: 64, offset: 14592)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !850, file: !851, line: 1074, baseType: !1507, size: 64, offset: 14656)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !850, file: !851, line: 1084, baseType: !1667, size: 128, offset: 14720)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 16)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !850, file: !851, line: 1086, baseType: !1671, size: 64, offset: 14848)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !851, line: 55, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !850, file: !851, line: 1089, baseType: !1674, size: 64, offset: 14912)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1675, line: 12, size: 64, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1674, file: !1675, line: 13, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1675, line: 8, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !850, file: !851, line: 1090, baseType: !1681, size: 128, offset: 14976)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1682, line: 13, size: 128, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1683 = !{!1684}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1681, file: !1682, line: 14, baseType: !265, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !850, file: !851, line: 1097, baseType: !1686, size: 64, offset: 15104)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !851, line: 50, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !850, file: !851, line: 1100, baseType: !1689, size: 64, offset: 15168)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !851, line: 1100, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !850, file: !851, line: 1103, baseType: !1692, size: 64, offset: 15232)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !851, line: 53, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !850, file: !851, line: 1107, baseType: !1695, size: 64, offset: 15296)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1697, line: 31, size: 576, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1698 = !{!1699, !1700, !1703, !1706, !1709, !1710, !1713, !1716, !1717}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1696, file: !1697, line: 32, baseType: !808, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1696, file: !1697, line: 33, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1697, line: 9, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1696, file: !1697, line: 34, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1697, line: 10, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1696, file: !1697, line: 35, baseType: !1707, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1697, line: 8, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1696, file: !1697, line: 36, baseType: !828, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1696, file: !1697, line: 37, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1509, line: 34, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1696, file: !1697, line: 38, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1697, line: 38, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1696, file: !1697, line: 39, baseType: !1714, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1696, file: !1697, line: 40, baseType: !1718, size: 64, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1697, line: 12, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !850, file: !851, line: 1110, baseType: !1721, size: 64, offset: 15360)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1723, line: 93, size: 8768, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1774, !1783, !1784, !1786, !1787, !1788, !3192, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3230, !3231, !3238, !3248, !3251, !3252, !3255, !3256, !3257, !3258, !3259, !3260}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1722, file: !1723, line: 94, baseType: !808, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1722, file: !1723, line: 95, baseType: !217, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1722, file: !1723, line: 96, baseType: !27, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1722, file: !1723, line: 97, baseType: !27, size: 32, offset: 96)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1722, file: !1723, line: 98, baseType: !265, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1722, file: !1723, line: 100, baseType: !222, size: 192, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1722, file: !1723, line: 103, baseType: !849, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1722, file: !1723, line: 106, baseType: !1733, size: 192, offset: 512)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1649, line: 32, size: 192, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1649, line: 33, baseType: !265, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1733, file: !1649, line: 34, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1738, line: 25, baseType: !1739)
!1738 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1738, line: 23, size: 64, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1739, file: !1738, line: 24, baseType: !1095, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1722, file: !1723, line: 109, baseType: !614, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1722, file: !1723, line: 112, baseType: !27, size: 32, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1722, file: !1723, line: 114, baseType: !27, size: 32, offset: 800)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1722, file: !1723, line: 115, baseType: !849, size: 64, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1722, file: !1723, line: 118, baseType: !27, size: 32, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !1723, line: 119, baseType: !7, size: 32, offset: 928)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1722, file: !1723, line: 121, baseType: !1749, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1723, line: 80, size: 448, elements: !1751)
!1751 = !{!1752, !1753, !1759}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1750, file: !1723, line: 81, baseType: !217, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1750, file: !1723, line: 82, baseType: !1754, size: 128, offset: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1723, line: 75, size: 128, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1754, file: !1723, line: 76, baseType: !849, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1754, file: !1723, line: 77, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1750, file: !1723, line: 83, baseType: !1433, size: 256, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1722, file: !1723, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1722, file: !1723, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1722, file: !1723, line: 138, baseType: !7, size: 32, offset: 1056)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1722, file: !1723, line: 139, baseType: !265, size: 128, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1722, file: !1723, line: 142, baseType: !968, size: 512, offset: 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1722, file: !1723, line: 143, baseType: !976, size: 64, offset: 1728)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1722, file: !1723, line: 150, baseType: !1767, size: 256, offset: 1792)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 256, elements: !1772)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1723, line: 38, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1768, file: !1723, line: 39, baseType: !499, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1768, file: !1723, line: 40, baseType: !499, size: 64, offset: 64)
!1772 = !{!1773}
!1773 = !DISubrange(count: 2)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1722, file: !1723, line: 156, baseType: !1775, size: 192, offset: 2048)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1723, line: 66, size: 192, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1775, file: !1723, line: 67, baseType: !1778, size: 192)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1723, line: 47, size: 192, elements: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1778, file: !1723, line: 48, baseType: !712, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1778, file: !1723, line: 49, baseType: !712, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1778, file: !1723, line: 50, baseType: !712, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1722, file: !1723, line: 160, baseType: !1462, size: 640, offset: 2240)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1722, file: !1723, line: 163, baseType: !1785, size: 256, offset: 2880)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 256, elements: !817)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1722, file: !1723, line: 169, baseType: !804, size: 64, offset: 3136)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1722, file: !1723, line: 172, baseType: !27, size: 32, offset: 3200)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1722, file: !1723, line: 174, baseType: !1789, size: 64, offset: 3264)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1791, line: 193, size: 5248, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!1792 = !{!1793, !1798, !1799, !2291, !3081, !3082, !3083, !3130, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3147, !3148, !3149, !3150, !3151, !3159, !3168, !3169, !3170, !3171, !3172, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1790, file: !1791, line: 194, baseType: !1794, size: 32)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1795, line: 19, size: 32, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1794, file: !1795, line: 20, baseType: !808, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1790, file: !1791, line: 195, baseType: !27, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1790, file: !1791, line: 196, baseType: !1800, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !76, line: 705, size: 5824, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1808, !1809, !1864, !1934, !1935, !1936, !1937, !1938, !1945, !2048, !2061, !2071, !2075, !2077, !2078, !2079, !2083, !2090, !2091, !2094, !2097, !2101, !2206, !2207, !2208, !2209, !2210, !2211, !2268, !2269, !2270, !2273, !2276, !2285, !2286, !2287, !2288, !2289, !2290}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1801, file: !76, line: 706, baseType: !311, size: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1801, file: !76, line: 707, baseType: !1800, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1801, file: !76, line: 709, baseType: !1806, size: 64, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !76, line: 37, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1801, file: !76, line: 711, baseType: !185, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1801, file: !76, line: 712, baseType: !1810, size: 64, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !76, line: 89, size: 384, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1822, !1829, !1833}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !76, line: 90, baseType: !185, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1812, file: !76, line: 91, baseType: !398, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1812, file: !76, line: 92, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!27, !1820, !347}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1812, file: !76, line: 93, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!352, !1820, !1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1812, file: !76, line: 95, baseType: !1830, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1800}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1812, file: !76, line: 97, baseType: !1834, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !83, line: 286, size: 1472, elements: !1837)
!1837 = !{!1838, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1836, file: !83, line: 287, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!27, !1800}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1836, file: !83, line: 288, baseType: !1830, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1836, file: !83, line: 289, baseType: !1839, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1836, file: !83, line: 290, baseType: !1839, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1836, file: !83, line: 291, baseType: !1839, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1836, file: !83, line: 292, baseType: !1839, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1836, file: !83, line: 293, baseType: !1839, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1836, file: !83, line: 294, baseType: !1839, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1836, file: !83, line: 295, baseType: !1839, size: 64, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1836, file: !83, line: 296, baseType: !1839, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1836, file: !83, line: 297, baseType: !1839, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1836, file: !83, line: 298, baseType: !1839, size: 64, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1836, file: !83, line: 299, baseType: !1839, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1836, file: !83, line: 300, baseType: !1839, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1836, file: !83, line: 301, baseType: !1839, size: 64, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1836, file: !83, line: 302, baseType: !1839, size: 64, offset: 960)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1836, file: !83, line: 303, baseType: !1839, size: 64, offset: 1024)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1836, file: !83, line: 304, baseType: !1839, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1836, file: !83, line: 305, baseType: !1839, size: 64, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1836, file: !83, line: 306, baseType: !1839, size: 64, offset: 1216)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1836, file: !83, line: 307, baseType: !1839, size: 64, offset: 1280)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1836, file: !83, line: 308, baseType: !1839, size: 64, offset: 1344)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1836, file: !83, line: 309, baseType: !1839, size: 64, offset: 1408)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1801, file: !76, line: 714, baseType: !1865, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1868, line: 80, size: 1344, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1933}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !1868, line: 81, baseType: !185, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1867, file: !1868, line: 82, baseType: !185, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1867, file: !1868, line: 83, baseType: !398, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1867, file: !1868, line: 84, baseType: !398, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1867, file: !1868, line: 85, baseType: !398, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1867, file: !1868, line: 87, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!27, !1800, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !70, line: 96, size: 1152, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1892, !1896, !1897, !1898, !1899, !1900, !1908, !1909, !1910, !1911, !1912, !1913}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !70, line: 97, baseType: !185, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1880, file: !70, line: 98, baseType: !1865, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1880, file: !70, line: 100, baseType: !298, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1880, file: !70, line: 101, baseType: !185, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1880, file: !70, line: 103, baseType: !1571, size: 8, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1880, file: !70, line: 104, baseType: !69, size: 32, offset: 288)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1880, file: !70, line: 106, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !70, line: 106, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1880, file: !70, line: 107, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !70, line: 107, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1880, file: !70, line: 109, baseType: !1839, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1880, file: !70, line: 110, baseType: !1830, size: 64, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1880, file: !70, line: 111, baseType: !1839, size: 64, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1880, file: !70, line: 112, baseType: !1830, size: 64, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1880, file: !70, line: 113, baseType: !1901, size: 64, offset: 704)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!27, !1800, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !83, line: 60, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !83, line: 58, size: 32, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1905, file: !83, line: 59, baseType: !27, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1880, file: !70, line: 114, baseType: !1839, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1880, file: !70, line: 115, baseType: !398, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1880, file: !70, line: 116, baseType: !398, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1880, file: !70, line: 118, baseType: !1834, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1880, file: !70, line: 119, baseType: !1830, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1880, file: !70, line: 121, baseType: !1914, size: 64, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !70, line: 121, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1867, file: !1868, line: 88, baseType: !1817, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1867, file: !1868, line: 89, baseType: !1839, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1867, file: !1868, line: 90, baseType: !1830, size: 64, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1867, file: !1868, line: 91, baseType: !1830, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1867, file: !1868, line: 92, baseType: !1830, size: 64, offset: 640)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1867, file: !1868, line: 94, baseType: !1839, size: 64, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1867, file: !1868, line: 95, baseType: !1839, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1867, file: !1868, line: 97, baseType: !1901, size: 64, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1867, file: !1868, line: 98, baseType: !1839, size: 64, offset: 896)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1867, file: !1868, line: 100, baseType: !1839, size: 64, offset: 960)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1867, file: !1868, line: 102, baseType: !1839, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1867, file: !1868, line: 103, baseType: !1830, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1867, file: !1868, line: 105, baseType: !1834, size: 64, offset: 1152)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1867, file: !1868, line: 107, baseType: !1930, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1868, line: 107, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1867, file: !1868, line: 109, baseType: !1571, size: 8, offset: 1280)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1801, file: !76, line: 715, baseType: !1879, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1801, file: !76, line: 717, baseType: !189, size: 64, offset: 896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1801, file: !76, line: 719, baseType: !189, size: 64, offset: 960)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1801, file: !76, line: 721, baseType: !706, size: 256, offset: 1024)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1801, file: !76, line: 725, baseType: !1939, size: 448, offset: 1280)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !76, line: 517, size: 448, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1939, file: !76, line: 518, baseType: !265, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1939, file: !76, line: 519, baseType: !265, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1939, file: !76, line: 520, baseType: !265, size: 128, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1939, file: !76, line: 521, baseType: !75, size: 32, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1801, file: !76, line: 726, baseType: !1946, size: 2496, offset: 1728)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !83, line: 663, size: 2496, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2041, !2045}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1946, file: !83, line: 664, baseType: !1904, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1946, file: !83, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1946, file: !83, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1946, file: !83, line: 667, baseType: !1571, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1946, file: !83, line: 668, baseType: !1571, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1946, file: !83, line: 669, baseType: !1571, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1946, file: !83, line: 670, baseType: !1571, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1946, file: !83, line: 671, baseType: !1571, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1946, file: !83, line: 672, baseType: !1571, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1946, file: !83, line: 673, baseType: !1571, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1946, file: !83, line: 674, baseType: !1571, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1946, file: !83, line: 675, baseType: !495, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1946, file: !83, line: 676, baseType: !227, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1946, file: !83, line: 678, baseType: !265, size: 128, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1946, file: !83, line: 679, baseType: !1433, size: 256, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1946, file: !83, line: 680, baseType: !1964, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1966, line: 43, size: 1536, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1975, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1965, file: !1966, line: 44, baseType: !185, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1965, file: !1966, line: 45, baseType: !27, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1966, line: 46, baseType: !265, size: 128, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !1966, line: 47, baseType: !227, size: 32, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1965, file: !1966, line: 48, baseType: !1973, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !83, line: 629, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1965, file: !1966, line: 49, baseType: !1976, size: 320, offset: 384)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1977, line: 11, size: 320, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1978 = !{!1979, !1980, !1981, !1986}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1976, file: !1977, line: 16, baseType: !618, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1976, file: !1977, line: 17, baseType: !207, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1976, file: !1977, line: 18, baseType: !1982, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1977, line: 19, baseType: !495, size: 32, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1965, file: !1966, line: 50, baseType: !207, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1965, file: !1966, line: 51, baseType: !976, size: 64, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1965, file: !1966, line: 52, baseType: !976, size: 64, offset: 832)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1965, file: !1966, line: 53, baseType: !976, size: 64, offset: 896)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1965, file: !1966, line: 54, baseType: !976, size: 64, offset: 960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1965, file: !1966, line: 55, baseType: !976, size: 64, offset: 1024)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1965, file: !1966, line: 56, baseType: !207, size: 64, offset: 1088)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1965, file: !1966, line: 57, baseType: !207, size: 64, offset: 1152)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1965, file: !1966, line: 58, baseType: !207, size: 64, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1965, file: !1966, line: 59, baseType: !207, size: 64, offset: 1280)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1965, file: !1966, line: 60, baseType: !207, size: 64, offset: 1344)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1965, file: !1966, line: 61, baseType: !1800, size: 64, offset: 1408)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1965, file: !1966, line: 62, baseType: !1571, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1965, file: !1966, line: 63, baseType: !1571, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1946, file: !83, line: 681, baseType: !1571, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1946, file: !83, line: 682, baseType: !1571, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1946, file: !83, line: 683, baseType: !1571, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1946, file: !83, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1946, file: !83, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1946, file: !83, line: 690, baseType: !968, size: 512, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1946, file: !83, line: 691, baseType: !499, size: 64, offset: 1152)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1946, file: !83, line: 692, baseType: !1320, size: 256, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1946, file: !83, line: 693, baseType: !222, size: 192, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1946, file: !83, line: 694, baseType: !1973, size: 64, offset: 1664)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1946, file: !83, line: 695, baseType: !217, size: 32, offset: 1728)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1946, file: !83, line: 696, baseType: !217, size: 32, offset: 1760)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1946, file: !83, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1946, file: !83, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1946, file: !83, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1946, file: !83, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1946, file: !83, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1946, file: !83, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1946, file: !83, line: 703, baseType: !1571, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1946, file: !83, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1946, file: !83, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1946, file: !83, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1946, file: !83, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1946, file: !83, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1946, file: !83, line: 709, baseType: !7, size: 32, offset: 1824)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1946, file: !83, line: 710, baseType: !82, size: 32, offset: 1856)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1946, file: !83, line: 711, baseType: !90, size: 32, offset: 1888)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1946, file: !83, line: 712, baseType: !90, size: 32, offset: 1920)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1946, file: !83, line: 713, baseType: !27, size: 32, offset: 1952)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1946, file: !83, line: 714, baseType: !27, size: 32, offset: 1984)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1946, file: !83, line: 715, baseType: !499, size: 64, offset: 2048)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1946, file: !83, line: 716, baseType: !499, size: 64, offset: 2112)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1946, file: !83, line: 717, baseType: !499, size: 64, offset: 2176)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1946, file: !83, line: 718, baseType: !499, size: 64, offset: 2240)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1946, file: !83, line: 720, baseType: !2036, size: 64, offset: 2304)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !83, line: 632, size: 64, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2037, file: !83, line: 633, baseType: !227, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2037, file: !83, line: 634, baseType: !7, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1946, file: !83, line: 721, baseType: !2042, size: 64, offset: 2368)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !1800, !1245}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1946, file: !83, line: 722, baseType: !2046, size: 64, offset: 2432)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !83, line: 722, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1801, file: !76, line: 727, baseType: !2049, size: 64, offset: 4224)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !83, line: 742, size: 1792, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2058, !2059, !2060}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2050, file: !83, line: 743, baseType: !1836, size: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2050, file: !83, line: 744, baseType: !1839, size: 64, offset: 1472)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2050, file: !83, line: 745, baseType: !2055, size: 64, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1800, !1571}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2050, file: !83, line: 746, baseType: !1839, size: 64, offset: 1600)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2050, file: !83, line: 747, baseType: !1830, size: 64, offset: 1664)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2050, file: !83, line: 748, baseType: !1830, size: 64, offset: 1728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1801, file: !76, line: 736, baseType: !2062, size: 128, offset: 4288)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !76, line: 529, size: 128, elements: !2063)
!2063 = !{!2064, !2068}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2062, file: !76, line: 531, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2067, line: 13, flags: DIFlagFwdDecl)
!2067 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2062, file: !76, line: 532, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !76, line: 49, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1801, file: !76, line: 738, baseType: !2072, size: 64, offset: 4416)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !76, line: 738, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1801, file: !76, line: 740, baseType: !2076, size: 64, offset: 4480)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1801, file: !76, line: 741, baseType: !499, size: 64, offset: 4544)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1801, file: !76, line: 746, baseType: !499, size: 64, offset: 4608)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1801, file: !76, line: 747, baseType: !2080, size: 64, offset: 4672)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !76, line: 747, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1801, file: !76, line: 749, baseType: !2084, size: 64, offset: 4736)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !76, line: 428, size: 128, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2085, file: !76, line: 433, baseType: !7, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2085, file: !76, line: 434, baseType: !7, size: 32, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2085, file: !76, line: 435, baseType: !207, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1801, file: !76, line: 751, baseType: !265, size: 128, offset: 4800)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1801, file: !76, line: 762, baseType: !2092, size: 64, offset: 4928)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !76, line: 762, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1801, file: !76, line: 770, baseType: !2095, offset: 4992)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2096, line: 5, elements: !626)
!2096 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1801, file: !76, line: 772, baseType: !2098, size: 64, offset: 4992)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2100, line: 18, flags: DIFlagFwdDecl)
!2100 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1801, file: !76, line: 773, baseType: !2102, size: 64, offset: 5056)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2104, line: 41, size: 512, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2105 = !{!2106, !2107, !2202, !2203, !2204, !2205}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2103, file: !2104, line: 42, baseType: !2102, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2103, file: !2104, line: 43, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2104, line: 125, size: 1408, elements: !2111)
!2111 = !{!2112, !2116, !2120, !2126, !2130, !2131, !2136, !2140, !2144, !2149, !2153, !2154, !2158, !2162, !2166, !2177, !2178, !2179, !2180, !2190, !2194, !2198}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2110, file: !2104, line: 126, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2102, !2102}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2110, file: !2104, line: 127, baseType: !2117, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2102}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2110, file: !2104, line: 128, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!1571, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2110, file: !2104, line: 129, baseType: !2127, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!1278, !2124, !1820}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2110, file: !2104, line: 131, baseType: !2121, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2110, file: !2104, line: 133, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2135, !2124}
!2135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2104, line: 132, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2110, file: !2104, line: 134, baseType: !2137, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1571, !2124, !185}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2110, file: !2104, line: 136, baseType: !2141, size: 64, offset: 448)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!27, !2124, !185, !7, !189, !203}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2110, file: !2104, line: 141, baseType: !2145, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!27, !2124, !185, !2148, !203}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2110, file: !2104, line: 144, baseType: !2150, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!185, !2124}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2110, file: !2104, line: 145, baseType: !2150, size: 64, offset: 640)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2110, file: !2104, line: 146, baseType: !2155, size: 64, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!2102, !2124}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2110, file: !2104, line: 148, baseType: !2159, size: 64, offset: 768)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2102, !2124, !2102}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2110, file: !2104, line: 151, baseType: !2163, size: 64, offset: 832)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!2102, !2124, !185}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2110, file: !2104, line: 153, baseType: !2167, size: 64, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!27, !2124, !185, !185, !7, !7, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2104, line: 94, size: 640, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2171, file: !2104, line: 95, baseType: !2102, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2171, file: !2104, line: 96, baseType: !7, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2171, file: !2104, line: 97, baseType: !2176, size: 512, offset: 128)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 512, elements: !1011)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2110, file: !2104, line: 158, baseType: !2159, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2110, file: !2104, line: 161, baseType: !2155, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2110, file: !2104, line: 163, baseType: !2113, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2110, file: !2104, line: 164, baseType: !2181, size: 64, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!27, !2124, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2104, line: 73, size: 128, elements: !2186)
!2186 = !{!2187, !2188, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2185, file: !2104, line: 74, baseType: !7, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2185, file: !2104, line: 75, baseType: !7, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2185, file: !2104, line: 76, baseType: !2124, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2110, file: !2104, line: 166, baseType: !2191, size: 64, offset: 1216)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!189, !2102, !27}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2110, file: !2104, line: 167, baseType: !2195, size: 64, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!27, !2124, !7}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2110, file: !2104, line: 168, baseType: !2199, size: 64, offset: 1344)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!27, !2102}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2103, file: !2104, line: 44, baseType: !1800, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2103, file: !2104, line: 45, baseType: !265, size: 128, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2103, file: !2104, line: 46, baseType: !265, size: 128, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 47, baseType: !251, size: 8, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1801, file: !76, line: 776, baseType: !27, size: 32, offset: 5120)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1801, file: !76, line: 778, baseType: !582, size: 32, offset: 5152)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1801, file: !76, line: 779, baseType: !495, size: 32, offset: 5184)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1801, file: !76, line: 781, baseType: !227, size: 32, offset: 5216)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1801, file: !76, line: 782, baseType: !265, size: 128, offset: 5248)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1801, file: !76, line: 784, baseType: !2212, size: 64, offset: 5376)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2215, line: 52, size: 768, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2225, !2229, !2230, !2231, !2259, !2263, !2267}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2214, file: !2215, line: 53, baseType: !185, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2214, file: !2215, line: 55, baseType: !398, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2214, file: !2215, line: 56, baseType: !398, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2214, file: !2215, line: 58, baseType: !1817, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2214, file: !2215, line: 59, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!352, !1820, !1826}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2214, file: !2215, line: 61, baseType: !2226, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2212}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2214, file: !2215, line: 62, baseType: !1830, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2214, file: !2215, line: 64, baseType: !1839, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2214, file: !2215, line: 66, baseType: !2232, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !98, line: 39, size: 384, elements: !2235)
!2235 = !{!2236, !2237, !2241, !2245, !2251, !2255}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2234, file: !98, line: 40, baseType: !97, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2234, file: !98, line: 41, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1571}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2234, file: !98, line: 42, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!189}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2234, file: !98, line: 43, baseType: !2246, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!1278, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !98, line: 19, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2234, file: !98, line: 44, baseType: !2252, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!1278}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2234, file: !98, line: 45, baseType: !2256, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !189}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2214, file: !2215, line: 67, baseType: !2260, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!1278, !1820}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2214, file: !2215, line: 69, baseType: !2264, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !1820, !1827, !1828}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2214, file: !2215, line: 71, baseType: !1834, size: 64, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1801, file: !76, line: 785, baseType: !398, size: 64, offset: 5440)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1801, file: !76, line: 787, baseType: !1830, size: 64, offset: 5504)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1801, file: !76, line: 788, baseType: !2271, size: 64, offset: 5568)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !76, line: 46, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1801, file: !76, line: 789, baseType: !2274, size: 64, offset: 5632)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !76, line: 48, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1801, file: !76, line: 791, baseType: !2277, size: 64, offset: 5696)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !76, line: 597, size: 128, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2278, file: !76, line: 598, baseType: !103, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2278, file: !76, line: 599, baseType: !112, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2278, file: !76, line: 600, baseType: !117, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2278, file: !76, line: 601, baseType: !1571, size: 8, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2278, file: !76, line: 602, baseType: !1571, size: 8, offset: 104)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1801, file: !76, line: 793, baseType: !122, size: 32, offset: 5760)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1801, file: !76, line: 795, baseType: !1571, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1801, file: !76, line: 796, baseType: !1571, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1801, file: !76, line: 797, baseType: !1571, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1801, file: !76, line: 798, baseType: !1571, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1801, file: !76, line: 799, baseType: !1571, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1790, file: !1791, line: 197, baseType: !2292, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !2294, line: 441, size: 1472, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!2295 = !{!2296, !2297, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2831, !2832, !2836, !2837, !2839, !2960, !2963, !2964, !3080}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2293, file: !2294, line: 442, baseType: !1794, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !2293, file: !2294, line: 443, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2301, line: 14, size: 832, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!2302 = !{!2303, !2304, !2305, !2800, !2801, !2802}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2300, file: !2301, line: 15, baseType: !311, size: 512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2300, file: !2301, line: 16, baseType: !298, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2300, file: !2301, line: 17, baseType: !2306, size: 64, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !54, line: 1914, size: 2112, elements: !2309)
!2309 = !{!2310, !2311, !2315, !2319, !2323, !2401, !2402, !2408, !2421, !2429, !2433, !2434, !2722, !2723, !2727, !2732, !2733, !2737, !2741, !2747, !2748, !2752, !2753, !2759, !2763, !2767, !2773, !2777, !2781, !2785, !2789, !2790, !2796}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2308, file: !54, line: 1915, baseType: !298, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2308, file: !54, line: 1916, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!209, !1171, !209, !27}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2308, file: !54, line: 1917, baseType: !2316, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!384, !1171, !352, !203, !208}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2308, file: !54, line: 1918, baseType: !2320, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!384, !1171, !185, !203, !208}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2308, file: !54, line: 1919, baseType: !2324, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!384, !2327, !2349}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !54, line: 373, size: 384, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2336, !2337, !2338, !2339}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2328, file: !54, line: 374, baseType: !1171, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2328, file: !54, line: 375, baseType: !209, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2328, file: !54, line: 376, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2327, !387}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2328, file: !54, line: 377, baseType: !189, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2328, file: !54, line: 378, baseType: !27, size: 32, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2328, file: !54, line: 379, baseType: !261, size: 16, offset: 288)
!2339 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !54, line: 380, baseType: !2340, size: 64, offset: 320)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !54, line: 380, size: 64, elements: !2341)
!2341 = !{!2342, !2345}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2340, file: !54, line: 386, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !54, line: 386, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2340, file: !54, line: 395, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!384, !189}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2351, line: 41, size: 320, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2363, !2396}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2350, file: !2351, line: 42, baseType: !251, size: 8)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2350, file: !2351, line: 43, baseType: !1571, size: 8, offset: 8)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2350, file: !2351, line: 44, baseType: !1571, size: 8, offset: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2350, file: !2351, line: 45, baseType: !1571, size: 8, offset: 24)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2350, file: !2351, line: 46, baseType: !1571, size: 8, offset: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !2351, line: 47, baseType: !2359, size: 64, offset: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !2351, line: 47, size: 64, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2359, file: !2351, line: 48, baseType: !203, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2359, file: !2351, line: 49, baseType: !27, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !2351, line: 61, baseType: !2364, size: 128, offset: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !2351, line: 61, size: 128, elements: !2365)
!2365 = !{!2366, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2364, file: !2351, line: 67, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2368, line: 17, size: 128, elements: !2369)
!2368 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2367, file: !2368, line: 19, baseType: !189, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2367, file: !2368, line: 20, baseType: !204, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2351, line: 68, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2351, line: 68, size: 128, elements: !2374)
!2374 = !{!2375, !2395}
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2373, file: !2351, line: 69, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2373, file: !2351, line: 69, size: 64, elements: !2377)
!2377 = !{!2378, !2381, !2388, !2392, !2394}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2376, file: !2351, line: 71, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2376, file: !2351, line: 72, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2351, line: 17, size: 128, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2384, file: !2351, line: 18, baseType: !189, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2384, file: !2351, line: 19, baseType: !203, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2376, file: !2351, line: 73, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2351, line: 73, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2376, file: !2351, line: 74, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2376, file: !2351, line: 75, baseType: !189, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2373, file: !2351, line: 77, baseType: !203, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !2351, line: 80, baseType: !2397, size: 64, offset: 256)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !2351, line: 80, size: 64, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2397, file: !2351, line: 81, baseType: !207, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2397, file: !2351, line: 82, baseType: !209, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2308, file: !54, line: 1920, baseType: !2324, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2308, file: !54, line: 1921, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!27, !2327, !2406, !7}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !54, line: 53, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2308, file: !54, line: 1923, baseType: !2409, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!27, !1171, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !54, line: 1858, size: 128, elements: !2414)
!2414 = !{!2415, !2420}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2413, file: !54, line: 1859, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !54, line: 1855, baseType: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!1571, !2412, !185, !27, !209, !499, !7}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2413, file: !54, line: 1860, baseType: !209, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2308, file: !54, line: 1924, baseType: !2422, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2425, !1171, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2426, line: 59, baseType: !7)
!2426 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !54, line: 61, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2308, file: !54, line: 1925, baseType: !2430, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!387, !1171, !7, !207}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2308, file: !54, line: 1926, baseType: !2430, size: 64, offset: 640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2308, file: !54, line: 1927, baseType: !2435, size: 64, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!27, !1171, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !129, line: 625, size: 1344, elements: !2440)
!2440 = !{!2441, !2450, !2451, !2457, !2464, !2465, !2470, !2471, !2476, !2477, !2480, !2715, !2716, !2717, !2718, !2719, !2720}
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !129, line: 628, baseType: !2442, size: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2439, file: !129, line: 628, size: 128, elements: !2443)
!2443 = !{!2444, !2449}
!2444 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !129, line: 629, baseType: !2445, size: 128)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2442, file: !129, line: 629, size: 128, elements: !2446)
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2445, file: !129, line: 631, baseType: !207, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2445, file: !129, line: 632, baseType: !207, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2442, file: !129, line: 635, baseType: !763, size: 128, align: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2439, file: !129, line: 639, baseType: !1144, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2439, file: !129, line: 640, baseType: !2452, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1180, line: 297, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1180, line: 297, size: 64, elements: !2454)
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2453, file: !1180, line: 297, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1185, line: 19, baseType: !207)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !129, line: 646, baseType: !2458, size: 64, offset: 256)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2439, file: !129, line: 646, size: 64, elements: !2459)
!2459 = !{!2460, !2463}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2458, file: !129, line: 647, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !129, line: 542, baseType: !207)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2458, file: !129, line: 648, baseType: !2462, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2439, file: !129, line: 666, baseType: !27, size: 32, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2439, file: !129, line: 667, baseType: !2466, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !129, line: 579, size: 320, elements: !2468)
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2467, file: !129, line: 580, baseType: !1199, size: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2439, file: !129, line: 670, baseType: !1571, size: 8, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2439, file: !129, line: 681, baseType: !2472, size: 256, offset: 512)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2439, file: !129, line: 678, size: 256, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2472, file: !129, line: 679, baseType: !898, size: 192, align: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2472, file: !129, line: 680, baseType: !207, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2439, file: !129, line: 689, baseType: !265, size: 128, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2439, file: !129, line: 691, baseType: !2478, size: 64, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !129, line: 691, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2439, file: !129, line: 694, baseType: !2481, size: 64, offset: 960)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2484, line: 563, size: 1024, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2485 = !{!2486, !2490, !2491, !2495, !2499, !2503, !2679, !2683, !2687, !2691, !2692, !2693, !2697, !2701, !2707, !2711}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2483, file: !2484, line: 564, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2438}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2483, file: !2484, line: 569, baseType: !2487, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2483, file: !2484, line: 571, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!27, !2438, !207}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2483, file: !2484, line: 572, baseType: !2496, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!27, !2438}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2483, file: !2484, line: 578, baseType: !2500, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!27, !2438, !207, !207, !207}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2483, file: !2484, line: 580, baseType: !2504, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !129, line: 1184, baseType: !7)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2484, line: 512, size: 896, elements: !2510)
!2510 = !{!2511, !2519, !2520, !2527, !2534, !2544, !2672, !2673, !2675, !2677}
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !2484, line: 513, baseType: !2512, size: 320)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2509, file: !2484, line: 513, size: 320, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2512, file: !2484, line: 514, baseType: !2438, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2512, file: !2484, line: 515, baseType: !842, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2512, file: !2484, line: 516, baseType: !207, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2512, file: !2484, line: 517, baseType: !207, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2512, file: !2484, line: 518, baseType: !207, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !2484, line: 520, baseType: !128, size: 32, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2509, file: !2484, line: 522, baseType: !2521, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1185, line: 22, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 22, size: 64, elements: !2524)
!2524 = !{!2525}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2523, file: !1185, line: 22, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1185, line: 15, baseType: !207)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2509, file: !2484, line: 524, baseType: !2528, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1180, line: 372, baseType: !2530)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 372, size: 64, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2530, file: !1180, line: 372, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1185, line: 16, baseType: !207)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !2484, line: 527, baseType: !2535, size: 64, offset: 512)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !2484, line: 527, size: 64, elements: !2536)
!2536 = !{!2537, !2543}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2535, file: !2484, line: 528, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1185, line: 21, baseType: !2539)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 21, size: 64, elements: !2540)
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2539, file: !1185, line: 21, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1185, line: 14, baseType: !207)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2535, file: !2484, line: 529, baseType: !2522, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2509, file: !2484, line: 534, baseType: !2545, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !129, line: 74, size: 512, align: 128, elements: !2547)
!2547 = !{!2548, !2549, !2666, !2671}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2546, file: !129, line: 75, baseType: !207, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !129, line: 83, baseType: !2550, size: 320, offset: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !129, line: 83, size: 320, elements: !2551)
!2551 = !{!2552, !2573, !2587, !2591, !2665}
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !2550, file: !129, line: 84, baseType: !2553, size: 320)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !129, line: 84, size: 320, elements: !2554)
!2554 = !{!2555, !2566, !2567, !2572}
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !129, line: 90, baseType: !2556, size: 128)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !129, line: 90, size: 128, elements: !2557)
!2557 = !{!2558, !2559, !2564, !2565}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2556, file: !129, line: 91, baseType: !265, size: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !129, line: 94, baseType: !2560, size: 128)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !129, line: 94, size: 128, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2560, file: !129, line: 96, baseType: !189, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2560, file: !129, line: 98, baseType: !7, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2556, file: !129, line: 102, baseType: !265, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2556, file: !129, line: 103, baseType: !265, size: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2553, file: !129, line: 106, baseType: !422, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !129, line: 107, baseType: !2568, size: 64, offset: 192)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !129, line: 107, size: 64, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2568, file: !129, line: 108, baseType: !207, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2568, file: !129, line: 109, baseType: !207, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2553, file: !129, line: 117, baseType: !207, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2550, file: !129, line: 119, baseType: !2574, size: 320)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !129, line: 119, size: 320, elements: !2575)
!2575 = !{!2576, !2577, !2580, !2581, !2582}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2574, file: !129, line: 124, baseType: !207, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2574, file: !129, line: 125, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !129, line: 125, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2574, file: !129, line: 126, baseType: !207, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2574, file: !129, line: 127, baseType: !207, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !2574, file: !129, line: 128, baseType: !2583, size: 64, offset: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2574, file: !129, line: 128, size: 64, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2583, file: !129, line: 133, baseType: !207, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2583, file: !129, line: 138, baseType: !710, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2550, file: !129, line: 141, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !129, line: 141, size: 64, elements: !2589)
!2589 = !{!2590}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2588, file: !129, line: 142, baseType: !207, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2550, file: !129, line: 144, baseType: !2592, size: 128)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !129, line: 144, size: 128, elements: !2593)
!2593 = !{!2594, !2664}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2592, file: !129, line: 146, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !145, line: 126, size: 1216, elements: !2597)
!2597 = !{!2598, !2607, !2628, !2629, !2630, !2631, !2632, !2646, !2647, !2648}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2596, file: !145, line: 127, baseType: !2599, size: 384)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !145, line: 21, size: 384, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2599, file: !145, line: 22, baseType: !207, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2599, file: !145, line: 23, baseType: !297, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2599, file: !145, line: 24, baseType: !297, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2599, file: !145, line: 25, baseType: !207, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2599, file: !145, line: 26, baseType: !207, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2599, file: !145, line: 27, baseType: !207, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2596, file: !145, line: 128, baseType: !2608, size: 128, offset: 384)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2609, line: 105, size: 128, elements: !2610)
!2609 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2608, file: !2609, line: 110, baseType: !207, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2608, file: !2609, line: 118, baseType: !2613, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2609, line: 95, size: 448, elements: !2615)
!2615 = !{!2616, !2617, !2623, !2624, !2625, !2626, !2627}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2614, file: !2609, line: 96, baseType: !710, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2614, file: !2609, line: 97, baseType: !2618, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2609, line: 60, baseType: !2620)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2614, file: !2609, line: 98, baseType: !2618, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2614, file: !2609, line: 99, baseType: !1571, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2614, file: !2609, line: 100, baseType: !1571, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2614, file: !2609, line: 101, baseType: !763, size: 128, align: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2614, file: !2609, line: 102, baseType: !2622, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2596, file: !145, line: 129, baseType: !1433, size: 256, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2596, file: !145, line: 130, baseType: !144, size: 32, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !145, line: 131, baseType: !7, size: 32, offset: 800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2596, file: !145, line: 132, baseType: !207, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2596, file: !145, line: 133, baseType: !2633, size: 64, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !145, line: 77, size: 192, elements: !2636)
!2636 = !{!2637, !2641, !2642}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2635, file: !145, line: 83, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2545}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2635, file: !145, line: 89, baseType: !2504, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2635, file: !145, line: 100, baseType: !2643, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!27, !2595, !207, !207, !27}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2596, file: !145, line: 134, baseType: !189, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2596, file: !145, line: 135, baseType: !27, size: 32, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !145, line: 136, baseType: !2649, size: 128, offset: 1088)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !145, line: 136, size: 128, elements: !2650)
!2650 = !{!2651, !2657}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2649, file: !145, line: 137, baseType: !2652, size: 128)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2653, line: 6, size: 128, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2654 = !{!2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2652, file: !2653, line: 7, baseType: !499, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2652, file: !2653, line: 8, baseType: !499, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2649, file: !145, line: 138, baseType: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2649, file: !145, line: 138, elements: !2659)
!2659 = !{!2660, !2662}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2658, file: !145, line: 138, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2658, file: !145, line: 138, elements: !626)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2658, file: !145, line: 138, baseType: !2663)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, elements: !1333)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2592, file: !129, line: 147, baseType: !189, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2550, file: !129, line: 161, baseType: !763, size: 128, align: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !129, line: 164, baseType: !2667, size: 32, offset: 384)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !129, line: 164, size: 32, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2667, file: !129, line: 169, baseType: !217, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2667, file: !129, line: 177, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2546, file: !129, line: 181, baseType: !217, size: 32, offset: 416)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2509, file: !2484, line: 535, baseType: !2545, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2509, file: !2484, line: 541, baseType: !2674, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2509, file: !2484, line: 545, baseType: !2676, size: 64, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2509, file: !2484, line: 549, baseType: !2678, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1180, line: 520, baseType: !2545)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2483, file: !2484, line: 581, baseType: !2680, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!2507, !2508, !7}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2483, file: !2484, line: 582, baseType: !2684, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!2507, !2508, !207, !207}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2483, file: !2484, line: 584, baseType: !2688, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!207, !2438}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2483, file: !2484, line: 588, baseType: !2504, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2483, file: !2484, line: 591, baseType: !2504, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2483, file: !2484, line: 597, baseType: !2694, size: 64, offset: 704)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!27, !2438, !207, !189, !27, !27}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2483, file: !2484, line: 603, baseType: !2698, size: 64, offset: 768)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!185, !2438}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2483, file: !2484, line: 613, baseType: !2702, size: 64, offset: 832)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!27, !2438, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !851, line: 54, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2483, file: !2484, line: 625, baseType: !2708, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2705, !2438, !207}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2483, file: !2484, line: 633, baseType: !2712, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2545, !2438, !207}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2439, file: !129, line: 697, baseType: !207, size: 64, offset: 1024)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2439, file: !129, line: 699, baseType: !1171, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2439, file: !129, line: 700, baseType: !189, size: 64, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2439, file: !129, line: 711, baseType: !710, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2439, file: !129, line: 717, baseType: !2705, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2439, file: !129, line: 722, baseType: !2721, offset: 1344)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !129, line: 570, elements: !626)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2308, file: !54, line: 1928, baseType: !207, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2308, file: !54, line: 1929, baseType: !2724, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!27, !426, !1171}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2308, file: !54, line: 1930, baseType: !2728, size: 64, offset: 896)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!27, !1171, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !54, line: 1061, baseType: !189)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2308, file: !54, line: 1931, baseType: !2724, size: 64, offset: 960)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2308, file: !54, line: 1932, baseType: !2734, size: 64, offset: 1024)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!27, !1171, !209, !209, !27}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2308, file: !54, line: 1933, baseType: !2738, size: 64, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!27, !27, !1171, !27}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2308, file: !54, line: 1934, baseType: !2742, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!27, !1171, !27, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !54, line: 1063, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2308, file: !54, line: 1935, baseType: !1168, size: 64, offset: 1216)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2308, file: !54, line: 1936, baseType: !2749, size: 64, offset: 1280)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!27, !27}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2308, file: !54, line: 1937, baseType: !2742, size: 64, offset: 1344)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2308, file: !54, line: 1938, baseType: !2754, size: 64, offset: 1408)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!384, !2757, !1171, !208, !203, !7}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !851, line: 59, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2308, file: !54, line: 1939, baseType: !2760, size: 64, offset: 1472)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!384, !1171, !208, !2757, !203, !7}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2308, file: !54, line: 1940, baseType: !2764, size: 64, offset: 1536)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !1171}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2308, file: !54, line: 1941, baseType: !2768, size: 64, offset: 1600)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!27, !1171, !27, !2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2308, file: !54, line: 1942, baseType: !2774, size: 64, offset: 1664)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!387, !1171, !27, !209, !209}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2308, file: !54, line: 1944, baseType: !2778, size: 64, offset: 1728)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !694, !1171}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2308, file: !54, line: 1948, baseType: !2782, size: 64, offset: 1792)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!384, !1171, !209, !1171, !209, !203, !7}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2308, file: !54, line: 1950, baseType: !2786, size: 64, offset: 1856)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!209, !1171, !209, !1171, !209, !209, !7}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2308, file: !54, line: 1953, baseType: !2734, size: 64, offset: 1920)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2308, file: !54, line: 1954, baseType: !2791, size: 64, offset: 1984)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!27, !2794, !7}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !54, line: 1911, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2308, file: !54, line: 1955, baseType: !2797, size: 64, offset: 2048)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!27, !2794, !2406, !7}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2300, file: !2301, line: 18, baseType: !265, size: 128, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2300, file: !2301, line: 19, baseType: !582, size: 32, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2301, line: 20, baseType: !7, size: 32, offset: 800)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2293, file: !2294, line: 444, baseType: !298, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !2293, file: !2294, line: 445, baseType: !185, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2293, file: !2294, line: 446, baseType: !185, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !2293, file: !2294, line: 447, baseType: !27, size: 32, offset: 320)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2293, file: !2294, line: 448, baseType: !27, size: 32, offset: 352)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !2293, file: !2294, line: 449, baseType: !27, size: 32, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2293, file: !2294, line: 450, baseType: !7, size: 32, offset: 416)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !2294, line: 451, baseType: !1297, size: 16, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !2293, file: !2294, line: 452, baseType: !1297, size: 16, offset: 464)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !2293, file: !2294, line: 453, baseType: !2813, size: 352, offset: 480)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2814, line: 30, size: 352, elements: !2815)
!2814 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!2815 = !{!2816, !2818, !2819, !2820, !2821, !2824, !2828, !2830}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2813, file: !2814, line: 31, baseType: !2817, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2814, line: 7, baseType: !7)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2813, file: !2814, line: 32, baseType: !2817, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2813, file: !2814, line: 33, baseType: !2817, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2813, file: !2814, line: 34, baseType: !2817, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2813, file: !2814, line: 35, baseType: !2822, size: 8, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2823, line: 5, baseType: !255)
!2823 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2813, file: !2814, line: 36, baseType: !2825, size: 152, offset: 136)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, size: 152, elements: !2826)
!2826 = !{!2827}
!2827 = !DISubrange(count: 19)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2813, file: !2814, line: 37, baseType: !2829, size: 32, offset: 288)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2823, line: 6, baseType: !7)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2813, file: !2814, line: 38, baseType: !2829, size: 32, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !2294, line: 454, baseType: !207, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !2293, file: !2294, line: 455, baseType: !2833, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2835, line: 131, flags: DIFlagFwdDecl)
!2835 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2293, file: !2294, line: 456, baseType: !2292, size: 64, offset: 960)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !2293, file: !2294, line: 461, baseType: !2838, size: 64, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2293, file: !2294, line: 462, baseType: !2840, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2843, line: 101, size: 3008, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!2844 = !{!2845, !2877, !2878, !2879, !2901, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2929, !2955, !2956, !2957, !2958, !2959}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2842, file: !2843, line: 102, baseType: !2846, size: 1088)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2847, line: 35, size: 1088, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!2848 = !{!2849, !2866, !2867, !2868, !2869, !2870, !2874, !2875, !2876}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2846, file: !2847, line: 36, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2847, line: 10, size: 256, elements: !2852)
!2852 = !{!2853, !2858, !2859, !2860, !2861, !2862, !2863, !2864}
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !2851, file: !2847, line: 11, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2851, file: !2847, line: 11, size: 64, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2854, file: !2847, line: 12, baseType: !2850, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2854, file: !2847, line: 13, baseType: !757, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2851, file: !2847, line: 15, baseType: !7, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2851, file: !2847, line: 16, baseType: !7, size: 32, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2851, file: !2847, line: 17, baseType: !7, size: 32, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2851, file: !2847, line: 18, baseType: !7, size: 32, offset: 160)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2851, file: !2847, line: 19, baseType: !7, size: 32, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2851, file: !2847, line: 20, baseType: !1571, size: 8, offset: 224)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2851, file: !2847, line: 22, baseType: !2865, align: 64, offset: 256)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !1333)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2846, file: !2847, line: 37, baseType: !1320, size: 256, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2846, file: !2847, line: 38, baseType: !706, size: 256, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2846, file: !2847, line: 39, baseType: !217, size: 32, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2846, file: !2847, line: 40, baseType: !2851, size: 256, offset: 640)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2846, file: !2847, line: 41, baseType: !2871, size: 64, offset: 896)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !758, line: 56, size: 64, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2871, file: !758, line: 57, baseType: !761, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2846, file: !2847, line: 42, baseType: !217, size: 32, offset: 960)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2846, file: !2847, line: 43, baseType: !27, size: 32, offset: 992)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2846, file: !2847, line: 44, baseType: !2850, size: 64, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2842, file: !2843, line: 103, baseType: !1789, size: 64, offset: 1088)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2842, file: !2843, line: 104, baseType: !1789, size: 64, offset: 1152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2842, file: !2843, line: 105, baseType: !2880, size: 64, offset: 1216)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2843, line: 33, size: 320, elements: !2883)
!2883 = !{!2884, !2888, !2892, !2896, !2900}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2882, file: !2843, line: 34, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!1571, !2841}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2882, file: !2843, line: 35, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2841, !1571}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2882, file: !2843, line: 36, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2841}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2882, file: !2843, line: 37, baseType: !2897, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!27, !2841, !1789}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2882, file: !2843, line: 38, baseType: !2893, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2842, file: !2843, line: 106, baseType: !2902, size: 64, offset: 1280)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2843, line: 41, size: 192, elements: !2905)
!2905 = !{!2906, !2912, !2916}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2904, file: !2843, line: 42, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!203, !2841, !2910, !2910, !203}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2904, file: !2843, line: 44, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2841, !2910, !2910, !203}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2904, file: !2843, line: 46, baseType: !2893, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !2843, line: 107, baseType: !227, size: 32, offset: 1344)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2842, file: !2843, line: 108, baseType: !27, size: 32, offset: 1376)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2842, file: !2843, line: 109, baseType: !27, size: 32, offset: 1408)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2842, file: !2843, line: 110, baseType: !222, size: 192, offset: 1472)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2842, file: !2843, line: 111, baseType: !222, size: 192, offset: 1664)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2842, file: !2843, line: 112, baseType: !207, size: 64, offset: 1856)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2842, file: !2843, line: 113, baseType: !207, size: 64, offset: 1920)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2842, file: !2843, line: 114, baseType: !255, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2842, file: !2843, line: 115, baseType: !706, size: 256, offset: 2048)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2842, file: !2843, line: 116, baseType: !706, size: 256, offset: 2304)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2842, file: !2843, line: 117, baseType: !2928, size: 64, offset: 2560)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !2842, file: !2843, line: 118, baseType: !2930, size: 192, offset: 2624)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2842, file: !2843, line: 118, size: 192, elements: !2931)
!2931 = !{!2932, !2953}
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2843, line: 118, baseType: !2933, size: 192)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2930, file: !2843, line: 118, size: 192, elements: !2934)
!2934 = !{!2935, !2944, !2945, !2946, !2951, !2952}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !2933, file: !2843, line: 118, baseType: !2936, size: 192)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !2937, line: 44, size: 192, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!2938 = !{!2939, !2940, !2941, !2942, !2943}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2936, file: !2937, line: 45, baseType: !7, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2936, file: !2937, line: 46, baseType: !7, size: 32, offset: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2936, file: !2937, line: 47, baseType: !7, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !2936, file: !2937, line: 48, baseType: !7, size: 32, offset: 96)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2936, file: !2937, line: 49, baseType: !189, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2933, file: !2843, line: 118, baseType: !2928, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !2933, file: !2843, line: 118, baseType: !503, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !2933, file: !2843, line: 118, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !2949)
!2949 = !{!2950}
!2950 = !DISubrange(count: 0)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2933, file: !2843, line: 118, baseType: !2928, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !2933, file: !2843, line: 118, baseType: !503, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2930, file: !2843, line: 118, baseType: !2954, offset: 192)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !2949)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2842, file: !2843, line: 119, baseType: !7, size: 32, offset: 2816)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2842, file: !2843, line: 120, baseType: !7, size: 32, offset: 2848)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2842, file: !2843, line: 121, baseType: !27, size: 32, offset: 2880)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2842, file: !2843, line: 122, baseType: !1794, size: 32, offset: 2912)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2842, file: !2843, line: 123, baseType: !189, size: 64, offset: 2944)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2293, file: !2294, line: 463, baseType: !2961, size: 64, offset: 1152)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !2293, file: !2294, line: 464, baseType: !189, size: 64, offset: 1216)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2293, file: !2294, line: 470, baseType: !2965, size: 64, offset: 1280)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !2294, line: 357, size: 2176, elements: !2968)
!2968 = !{!2969, !2973, !2977, !2981, !2985, !2989, !2993, !2994, !2998, !3002, !3003, !3007, !3008, !3012, !3016, !3022, !3023, !3024, !3025, !3026, !3027, !3031, !3032, !3033, !3034, !3038, !3042, !3046, !3050, !3062, !3068, !3074, !3075, !3079}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2967, file: !2294, line: 358, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!1789, !2292, !1171, !27}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2967, file: !2294, line: 360, baseType: !2974, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!27, !2292, !1789}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2967, file: !2294, line: 361, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2292, !1789}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2967, file: !2294, line: 362, baseType: !2982, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!27, !1789, !1171}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2967, file: !2294, line: 363, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !1789, !1171}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2967, file: !2294, line: 364, baseType: !2990, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !1789}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2967, file: !2294, line: 365, baseType: !2990, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2967, file: !2294, line: 366, baseType: !2995, size: 64, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!384, !1789, !2910, !203}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2967, file: !2294, line: 367, baseType: !2999, size: 64, offset: 512)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!27, !1789, !251}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2967, file: !2294, line: 368, baseType: !2990, size: 64, offset: 576)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2967, file: !2294, line: 369, baseType: !3004, size: 64, offset: 640)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!7, !1789}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2967, file: !2294, line: 370, baseType: !3004, size: 64, offset: 704)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2967, file: !2294, line: 371, baseType: !3009, size: 64, offset: 768)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!27, !1789, !7, !207}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2967, file: !2294, line: 373, baseType: !3013, size: 64, offset: 832)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!387, !1789, !7, !207}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2967, file: !2294, line: 375, baseType: !3017, size: 64, offset: 896)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !1789, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2967, file: !2294, line: 376, baseType: !2990, size: 64, offset: 960)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2967, file: !2294, line: 377, baseType: !2990, size: 64, offset: 1024)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2967, file: !2294, line: 378, baseType: !2990, size: 64, offset: 1088)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2967, file: !2294, line: 379, baseType: !2990, size: 64, offset: 1152)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2967, file: !2294, line: 380, baseType: !2990, size: 64, offset: 1216)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2967, file: !2294, line: 381, baseType: !3028, size: 64, offset: 1280)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!27, !1789, !27}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2967, file: !2294, line: 382, baseType: !2990, size: 64, offset: 1344)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !2967, file: !2294, line: 383, baseType: !3028, size: 64, offset: 1408)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2967, file: !2294, line: 384, baseType: !2990, size: 64, offset: 1472)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2967, file: !2294, line: 385, baseType: !3035, size: 64, offset: 1536)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !1789, !27}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2967, file: !2294, line: 386, baseType: !3039, size: 64, offset: 1600)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !1789, !187}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2967, file: !2294, line: 387, baseType: !3043, size: 64, offset: 1664)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!27, !1789}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2967, file: !2294, line: 388, baseType: !3047, size: 64, offset: 1728)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!27, !1789, !7, !7}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2967, file: !2294, line: 390, baseType: !3051, size: 64, offset: 1792)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!27, !1789, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3056, line: 15, size: 64, elements: !3057)
!3056 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3055, file: !3056, line: 16, baseType: !194, size: 16)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3055, file: !3056, line: 17, baseType: !194, size: 16, offset: 16)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3055, file: !3056, line: 18, baseType: !194, size: 16, offset: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3055, file: !3056, line: 19, baseType: !194, size: 16, offset: 48)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2967, file: !2294, line: 391, baseType: !3063, size: 64, offset: 1856)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!27, !1789, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2294, line: 16, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2967, file: !2294, line: 393, baseType: !3069, size: 64, offset: 1920)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!27, !1789, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2294, line: 17, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2967, file: !2294, line: 394, baseType: !3069, size: 64, offset: 1984)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2967, file: !2294, line: 395, baseType: !3076, size: 64, offset: 2048)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !1789, !694}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2967, file: !2294, line: 401, baseType: !744, size: 64, offset: 2112)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !2293, file: !2294, line: 471, baseType: !265, size: 128, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1790, file: !1791, line: 198, baseType: !2841, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1790, file: !1791, line: 199, baseType: !2965, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1790, file: !1791, line: 201, baseType: !3084, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3086, line: 269, size: 128, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!3087 = !{!3088, !3129}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3085, file: !3086, line: 270, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3086, line: 231, size: 1152, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3102, !3106, !3107, !3108, !3109, !3113, !3114, !3118, !3119, !3123, !3127, !3128}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3090, file: !3086, line: 232, baseType: !352, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3090, file: !3086, line: 233, baseType: !27, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3090, file: !3086, line: 238, baseType: !3043, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3090, file: !3086, line: 239, baseType: !2990, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3090, file: !3086, line: 240, baseType: !2990, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3090, file: !3086, line: 241, baseType: !3098, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!384, !1789, !1171, !3101, !203, !2772, !207}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3090, file: !3086, line: 243, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!384, !1789, !1171, !2910, !203}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3090, file: !3086, line: 245, baseType: !3009, size: 64, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3090, file: !3086, line: 247, baseType: !3009, size: 64, offset: 512)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3090, file: !3086, line: 249, baseType: !3017, size: 64, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3090, file: !3086, line: 250, baseType: !3110, size: 64, offset: 640)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!2425, !1789, !1171, !2427}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3090, file: !3086, line: 252, baseType: !2990, size: 64, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3090, file: !3086, line: 257, baseType: !3115, size: 64, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !1789, !2910, !2910, !203}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3090, file: !3086, line: 259, baseType: !2990, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3090, file: !3086, line: 260, baseType: !3120, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !1789, !1571}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3090, file: !3086, line: 261, baseType: !3124, size: 64, offset: 960)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!203, !1789, !2910, !2910, !203}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3090, file: !3086, line: 263, baseType: !3115, size: 64, offset: 1024)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3090, file: !3086, line: 266, baseType: !298, size: 64, offset: 1088)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3085, file: !3086, line: 271, baseType: !1789, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1790, file: !1791, line: 202, baseType: !3131, size: 384, offset: 384)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3086, line: 17, size: 384, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3131, file: !3086, line: 18, baseType: !710, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3131, file: !3086, line: 19, baseType: !719, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3131, file: !3086, line: 20, baseType: !7, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3131, file: !3086, line: 21, baseType: !265, size: 128, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3131, file: !3086, line: 22, baseType: !265, size: 128, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1790, file: !1791, line: 204, baseType: !706, size: 256, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1790, file: !1791, line: 205, baseType: !706, size: 256, offset: 1024)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1790, file: !1791, line: 206, baseType: !706, size: 256, offset: 1280)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1790, file: !1791, line: 207, baseType: !1199, size: 320, offset: 1536)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1790, file: !1791, line: 208, baseType: !706, size: 256, offset: 1856)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1790, file: !1791, line: 209, baseType: !2813, size: 352, offset: 2112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1790, file: !1791, line: 209, baseType: !2813, size: 352, offset: 2464)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1791, line: 210, baseType: !3146, size: 512, offset: 2816)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 512, elements: !357)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1791, line: 211, baseType: !207, size: 64, offset: 3328)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1790, file: !1791, line: 212, baseType: !27, size: 32, offset: 3392)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1790, file: !1791, line: 213, baseType: !7, size: 32, offset: 3424)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1790, file: !1791, line: 214, baseType: !3055, size: 64, offset: 3456)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1790, file: !1791, line: 221, baseType: !3152, size: 64, align: 64, offset: 3520)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1791, line: 216, size: 64, align: 64, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3152, file: !1791, line: 217, baseType: !227, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3152, file: !1791, line: 218, baseType: !1571, size: 8, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3152, file: !1791, line: 219, baseType: !1571, size: 8, offset: 40)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3152, file: !1791, line: 220, baseType: !3158, offset: 64)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !2949)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1790, file: !1791, line: 230, baseType: !3160, size: 192, align: 64, offset: 3584)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1791, line: 223, size: 192, align: 64, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3160, file: !1791, line: 224, baseType: !804, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3160, file: !1791, line: 225, baseType: !804, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3160, file: !1791, line: 226, baseType: !227, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3160, file: !1791, line: 227, baseType: !255, size: 8, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3160, file: !1791, line: 228, baseType: !1571, size: 8, offset: 168)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3160, file: !1791, line: 229, baseType: !3158, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1790, file: !1791, line: 232, baseType: !1571, size: 8, offset: 3776)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1790, file: !1791, line: 233, baseType: !1571, size: 8, offset: 3784)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1790, file: !1791, line: 234, baseType: !27, size: 32, offset: 3808)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1790, file: !1791, line: 236, baseType: !1789, size: 64, offset: 3840)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1790, file: !1791, line: 237, baseType: !3173, size: 64, offset: 3904)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !54, line: 1083, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3174, file: !54, line: 1084, baseType: !783, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3174, file: !54, line: 1085, baseType: !27, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3174, file: !54, line: 1086, baseType: !27, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3174, file: !54, line: 1087, baseType: !3173, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3174, file: !54, line: 1088, baseType: !1171, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3174, file: !54, line: 1089, baseType: !763, size: 128, align: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1790, file: !1791, line: 238, baseType: !222, size: 192, offset: 3968)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1790, file: !1791, line: 239, baseType: !222, size: 192, offset: 4160)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1790, file: !1791, line: 240, baseType: !1320, size: 256, offset: 4352)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1790, file: !1791, line: 241, baseType: !189, size: 64, offset: 4608)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1790, file: !1791, line: 242, baseType: !189, size: 64, offset: 4672)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1790, file: !1791, line: 243, baseType: !227, size: 32, offset: 4736)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1790, file: !1791, line: 244, baseType: !27, size: 32, offset: 4768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1790, file: !1791, line: 245, baseType: !2928, size: 64, offset: 4800)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1790, file: !1791, line: 247, baseType: !265, size: 128, offset: 4864)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1790, file: !1791, line: 250, baseType: !1320, size: 256, offset: 4992)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1722, file: !1723, line: 185, baseType: !3193, size: 64, offset: 3328)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !468, line: 860, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !468, line: 853, size: 64, elements: !3195)
!3195 = !{!3196, !3197}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3194, file: !468, line: 858, baseType: !467, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3194, file: !468, line: 859, baseType: !227, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1722, file: !1723, line: 186, baseType: !499, size: 64, offset: 3392)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1722, file: !1723, line: 186, baseType: !499, size: 64, offset: 3456)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1722, file: !1723, line: 186, baseType: !499, size: 64, offset: 3520)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1722, file: !1723, line: 186, baseType: !499, size: 64, offset: 3584)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1722, file: !1723, line: 187, baseType: !499, size: 64, offset: 3648)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1722, file: !1723, line: 188, baseType: !499, size: 64, offset: 3712)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1722, file: !1723, line: 189, baseType: !1450, size: 192, offset: 3776)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1722, file: !1723, line: 190, baseType: !207, size: 64, offset: 3968)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1722, file: !1723, line: 190, baseType: !207, size: 64, offset: 4032)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1722, file: !1723, line: 190, baseType: !207, size: 64, offset: 4096)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1722, file: !1723, line: 190, baseType: !207, size: 64, offset: 4160)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1722, file: !1723, line: 191, baseType: !207, size: 64, offset: 4224)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1722, file: !1723, line: 191, baseType: !207, size: 64, offset: 4288)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1722, file: !1723, line: 191, baseType: !207, size: 64, offset: 4352)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1722, file: !1723, line: 191, baseType: !207, size: 64, offset: 4416)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1722, file: !1723, line: 192, baseType: !207, size: 64, offset: 4480)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1722, file: !1723, line: 192, baseType: !207, size: 64, offset: 4544)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1722, file: !1723, line: 192, baseType: !207, size: 64, offset: 4608)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1722, file: !1723, line: 192, baseType: !207, size: 64, offset: 4672)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1722, file: !1723, line: 193, baseType: !207, size: 64, offset: 4736)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1722, file: !1723, line: 193, baseType: !207, size: 64, offset: 4800)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1722, file: !1723, line: 194, baseType: !3220, size: 448, offset: 4864)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3221, line: 12, size: 448, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3220, file: !3221, line: 15, baseType: !499, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3220, file: !3221, line: 17, baseType: !499, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3220, file: !3221, line: 19, baseType: !499, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3220, file: !3221, line: 21, baseType: !499, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3220, file: !3221, line: 29, baseType: !499, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3220, file: !3221, line: 35, baseType: !499, size: 64, offset: 320)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3220, file: !3221, line: 44, baseType: !499, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1722, file: !1723, line: 202, baseType: !501, size: 64, offset: 5312)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1722, file: !1723, line: 213, baseType: !3232, size: 2048, offset: 5376)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3233, size: 2048, elements: !1668)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3234, line: 43, size: 128, elements: !3235)
!3234 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3233, file: !3234, line: 44, baseType: !206, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3233, file: !3234, line: 45, baseType: !206, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1722, file: !1723, line: 216, baseType: !3239, size: 448, offset: 7424)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1723, line: 30, size: 448, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3239, file: !1723, line: 31, baseType: !27, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3239, file: !1723, line: 32, baseType: !387, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3239, file: !1723, line: 33, baseType: !207, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3239, file: !1723, line: 34, baseType: !499, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3239, file: !1723, line: 34, baseType: !499, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3239, file: !1723, line: 35, baseType: !207, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3239, file: !1723, line: 35, baseType: !207, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1722, file: !1723, line: 219, baseType: !3249, size: 64, offset: 7872)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1723, line: 219, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1722, file: !1723, line: 222, baseType: !7, size: 32, offset: 7936)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1722, file: !1723, line: 223, baseType: !3253, size: 64, offset: 8000)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1723, line: 223, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1722, file: !1723, line: 230, baseType: !1571, size: 8, offset: 8064)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1722, file: !1723, line: 231, baseType: !1297, size: 16, offset: 8080)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1722, file: !1723, line: 232, baseType: !1297, size: 16, offset: 8096)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1722, file: !1723, line: 234, baseType: !1144, size: 64, offset: 8128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1722, file: !1723, line: 237, baseType: !706, size: 256, offset: 8192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1722, file: !1723, line: 243, baseType: !1199, size: 320, offset: 8448)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !850, file: !851, line: 1111, baseType: !3262, size: 64, offset: 15424)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1723, line: 20, size: 16640, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3263, file: !1723, line: 21, baseType: !227, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !1723, line: 22, baseType: !808, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3263, file: !1723, line: 23, baseType: !222, size: 192, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3263, file: !1723, line: 24, baseType: !3269, size: 16384, offset: 256)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 16384, elements: !357)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1649, line: 51, size: 256, elements: !3271)
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3270, file: !1649, line: 52, baseType: !3273, size: 256)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1649, line: 37, size: 256, elements: !3274)
!3274 = !{!3275, !3282, !3283, !3289}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3273, file: !1649, line: 39, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3277, line: 83, baseType: !3278)
!3277 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3277, line: 82, baseType: !3280)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !27}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3273, file: !1649, line: 40, baseType: !207, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3273, file: !1649, line: 46, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3277, line: 86, baseType: !3285)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3277, line: 85, baseType: !3287)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3273, file: !1649, line: 48, baseType: !1737, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !850, file: !851, line: 1112, baseType: !1737, size: 64, offset: 15488)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !850, file: !851, line: 1113, baseType: !1737, size: 64, offset: 15552)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !850, file: !851, line: 1115, baseType: !1737, size: 64, offset: 15616)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !850, file: !851, line: 1116, baseType: !1733, size: 192, offset: 15680)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !850, file: !851, line: 1117, baseType: !207, size: 64, offset: 15872)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !850, file: !851, line: 1118, baseType: !203, size: 64, offset: 15936)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !850, file: !851, line: 1119, baseType: !7, size: 32, offset: 16000)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !850, file: !851, line: 1121, baseType: !766, size: 64, offset: 16064)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !850, file: !851, line: 1125, baseType: !3299, size: 64, offset: 16128)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !851, line: 43, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !850, file: !851, line: 1127, baseType: !432, size: 32, offset: 16192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !850, file: !851, line: 1128, baseType: !7, size: 32, offset: 16224)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !850, file: !851, line: 1130, baseType: !3304, size: 128, offset: 16256)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3305, line: 37, size: 128, elements: !3306)
!3305 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3306 = !{!3307, !3308, !3309}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3304, file: !3305, line: 38, baseType: !27, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3304, file: !3305, line: 39, baseType: !217, size: 32, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3304, file: !3305, line: 40, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3305, line: 24, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !850, file: !851, line: 1131, baseType: !3313, size: 256, offset: 16384)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3314, line: 12, size: 256, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3315 = !{!3316, !3317, !3318, !3319}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3313, file: !3314, line: 13, baseType: !352, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3313, file: !3314, line: 14, baseType: !207, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3313, file: !3314, line: 15, baseType: !207, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3313, file: !3314, line: 16, baseType: !1571, size: 8, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !850, file: !851, line: 1134, baseType: !499, size: 64, offset: 16640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !850, file: !851, line: 1135, baseType: !499, size: 64, offset: 16704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !850, file: !851, line: 1138, baseType: !227, size: 32, offset: 16768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !850, file: !851, line: 1141, baseType: !719, size: 32, offset: 16800)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !850, file: !851, line: 1143, baseType: !3325, size: 64, offset: 16832)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !851, line: 735, size: 64, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3325, file: !851, line: 736, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !850, file: !851, line: 1147, baseType: !1027, size: 128, offset: 16896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !850, file: !851, line: 1149, baseType: !849, size: 64, offset: 17024)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !850, file: !851, line: 1151, baseType: !3332, size: 64, offset: 17088)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !851, line: 1151, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !850, file: !851, line: 1188, baseType: !189, size: 64, offset: 17152)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !850, file: !851, line: 1191, baseType: !3336, size: 64, offset: 17216)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !851, line: 44, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !850, file: !851, line: 1194, baseType: !3339, size: 64, offset: 17280)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !851, line: 45, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !850, file: !851, line: 1197, baseType: !3342, size: 64, offset: 17344)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !851, line: 61, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !850, file: !851, line: 1199, baseType: !3345, size: 64, offset: 17408)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3347, line: 99, size: 128, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3348 = !{!3349, !3350, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3346, file: !3347, line: 100, baseType: !710, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3346, file: !3347, line: 101, baseType: !217, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3346, file: !3347, line: 103, baseType: !194, size: 16, offset: 96)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !850, file: !851, line: 1202, baseType: !3353, size: 64, offset: 17472)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !851, line: 48, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !850, file: !851, line: 1205, baseType: !207, size: 64, offset: 17536)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !850, file: !851, line: 1206, baseType: !3357, size: 64, offset: 17600)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1649, line: 14, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1649, line: 12, size: 384, elements: !3360)
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3359, file: !1649, line: 13, baseType: !3362, size: 384)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3359, file: !1649, line: 13, size: 384, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3362, file: !1649, line: 13, baseType: !27, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3362, file: !1649, line: 13, baseType: !27, size: 32, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3362, file: !1649, line: 13, baseType: !27, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3362, file: !1649, line: 13, baseType: !3368, size: 256, offset: 128)
!3368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3369, line: 37, size: 256, elements: !3370)
!3369 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3370 = !{!3371, !3376, !3389, !3395, !3404, !3431, !3436}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3368, file: !3369, line: 42, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 39, size: 64, elements: !3373)
!3373 = !{!3374, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3372, file: !3369, line: 40, baseType: !1416, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3372, file: !3369, line: 41, baseType: !438, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3368, file: !3369, line: 50, baseType: !3377, size: 192)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 45, size: 192, elements: !3378)
!3378 = !{!3379, !3381, !3382, !3388}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3377, file: !3369, line: 46, baseType: !3380, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !205, line: 95, baseType: !27)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3377, file: !3369, line: 47, baseType: !27, size: 32, offset: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3377, file: !3369, line: 48, baseType: !3383, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3369, line: 11, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3369, line: 8, size: 64, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3384, file: !3369, line: 9, baseType: !27, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3384, file: !3369, line: 10, baseType: !189, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3377, file: !3369, line: 49, baseType: !27, size: 32, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3368, file: !3369, line: 57, baseType: !3390, size: 128)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 53, size: 128, elements: !3391)
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3390, file: !3369, line: 54, baseType: !1416, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3390, file: !3369, line: 55, baseType: !438, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3390, file: !3369, line: 56, baseType: !3383, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3368, file: !3369, line: 66, baseType: !3396, size: 256)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 60, size: 256, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3403}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3396, file: !3369, line: 61, baseType: !1416, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3396, file: !3369, line: 62, baseType: !438, size: 32, offset: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3396, file: !3369, line: 63, baseType: !27, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3396, file: !3369, line: 64, baseType: !3402, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !205, line: 94, baseType: !386)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3396, file: !3369, line: 65, baseType: !3402, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3368, file: !3369, line: 105, baseType: !3405, size: 256)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 69, size: 256, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3405, file: !3369, line: 70, baseType: !189, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3369, line: 79, baseType: !3409, size: 192, offset: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3369, line: 79, size: 192, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3420, !3425}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3409, file: !3369, line: 81, baseType: !27, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3409, file: !3369, line: 86, baseType: !1297, size: 16)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3409, file: !3369, line: 92, baseType: !3414, size: 192)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !3369, line: 88, size: 192, elements: !3415)
!3415 = !{!3416, !3418, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3414, file: !3369, line: 89, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !1011)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3414, file: !3369, line: 90, baseType: !189, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3414, file: !3369, line: 91, baseType: !189, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3409, file: !3369, line: 97, baseType: !3421, size: 96)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !3369, line: 94, size: 96, elements: !3422)
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3421, file: !3369, line: 95, baseType: !3417, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3421, file: !3369, line: 96, baseType: !496, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3409, file: !3369, line: 103, baseType: !3426, size: 128)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !3369, line: 99, size: 128, elements: !3427)
!3427 = !{!3428, !3429, !3430}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3426, file: !3369, line: 100, baseType: !207, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3426, file: !3369, line: 101, baseType: !496, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3426, file: !3369, line: 102, baseType: !496, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3368, file: !3369, line: 111, baseType: !3432, size: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 108, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3432, file: !3369, line: 109, baseType: !387, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3432, file: !3369, line: 110, baseType: !27, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3368, file: !3369, line: 118, baseType: !3437, size: 128)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3369, line: 114, size: 128, elements: !3438)
!3438 = !{!3439, !3440, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3437, file: !3369, line: 115, baseType: !189, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3437, file: !3369, line: 116, baseType: !27, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3437, file: !3369, line: 117, baseType: !7, size: 32, offset: 96)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !850, file: !851, line: 1208, baseType: !3220, size: 448, offset: 17664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !850, file: !851, line: 1215, baseType: !499, size: 64, offset: 18112)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !850, file: !851, line: 1217, baseType: !499, size: 64, offset: 18176)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !850, file: !851, line: 1219, baseType: !499, size: 64, offset: 18240)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !850, file: !851, line: 1223, baseType: !3447, size: 64, offset: 18304)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3448, line: 99, baseType: !3449)
!3448 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3448, line: 99, size: 64, elements: !3450)
!3450 = !{!3451}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3449, file: !3448, line: 99, baseType: !1095, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !850, file: !851, line: 1225, baseType: !467, size: 32, offset: 18368)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !850, file: !851, line: 1226, baseType: !27, size: 32, offset: 18400)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !850, file: !851, line: 1227, baseType: !27, size: 32, offset: 18432)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !850, file: !851, line: 1231, baseType: !3456, size: 64, offset: 18496)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !851, line: 1231, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !850, file: !851, line: 1233, baseType: !265, size: 128, offset: 18560)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !850, file: !851, line: 1240, baseType: !3460, size: 64, offset: 18688)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !851, line: 62, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !850, file: !851, line: 1242, baseType: !3463, size: 64, offset: 18752)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3465, line: 392, size: 96, elements: !3466)
!3465 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3466 = !{!3467, !3473, !3475}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3464, file: !3465, line: 393, baseType: !3468, size: 32)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3465, line: 388, size: 32, elements: !3469)
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3468, file: !3465, line: 389, baseType: !3471, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3472, line: 46, baseType: !495)
!3472 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3464, file: !3465, line: 394, baseType: !3474, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3472, line: 42, baseType: !1245)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3464, file: !3465, line: 395, baseType: !3471, size: 32, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !850, file: !851, line: 1244, baseType: !265, size: 128, offset: 18816)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !850, file: !851, line: 1245, baseType: !3478, size: 64, offset: 18944)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !851, line: 51, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !850, file: !851, line: 1246, baseType: !706, size: 256, offset: 19008)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !850, file: !851, line: 1247, baseType: !7, size: 32, offset: 19264)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !850, file: !851, line: 1250, baseType: !3483, size: 64, offset: 19328)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !851, line: 57, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !850, file: !851, line: 1251, baseType: !706, size: 256, offset: 19392)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !850, file: !851, line: 1252, baseType: !265, size: 128, offset: 19648)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !850, file: !851, line: 1259, baseType: !2705, size: 64, offset: 19776)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !850, file: !851, line: 1260, baseType: !1297, size: 16, offset: 19840)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !850, file: !851, line: 1261, baseType: !1297, size: 16, offset: 19856)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !850, file: !851, line: 1314, baseType: !3491, size: 64, offset: 19904)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3493, line: 62, size: 256, align: 256, elements: !3494)
!3493 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3492, file: !3493, line: 75, baseType: !496, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3492, file: !3493, line: 90, baseType: !496, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3492, file: !3493, line: 112, baseType: !500, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !3493, line: 132, baseType: !496, size: 32, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3492, file: !3493, line: 140, baseType: !496, size: 32, offset: 160)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3492, file: !3493, line: 149, baseType: !496, size: 32, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3492, file: !3493, line: 154, baseType: !3502, offset: 224)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !1333)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !850, file: !851, line: 1315, baseType: !495, size: 32, offset: 19968)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !850, file: !851, line: 1316, baseType: !495, size: 32, offset: 20000)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !850, file: !851, line: 1321, baseType: !207, size: 64, offset: 20032)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !850, file: !851, line: 1325, baseType: !27, size: 32, offset: 20096)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !850, file: !851, line: 1326, baseType: !27, size: 32, offset: 20128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !850, file: !851, line: 1327, baseType: !27, size: 32, offset: 20160)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !850, file: !851, line: 1328, baseType: !27, size: 32, offset: 20192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !850, file: !851, line: 1329, baseType: !763, size: 128, align: 64, offset: 20224)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !850, file: !851, line: 1332, baseType: !3512, size: 128, offset: 20352)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3513, line: 51, size: 128, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3514 = !{!3515, !3520, !3521}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3512, file: !3513, line: 60, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3517, line: 7, size: 64, elements: !3518)
!3517 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3518 = !{!3519}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3516, file: !3517, line: 12, baseType: !1092, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3512, file: !3513, line: 63, baseType: !1571, size: 8, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3512, file: !3513, line: 70, baseType: !1571, size: 8, offset: 72)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !850, file: !851, line: 1335, baseType: !2757, size: 64, offset: 20480)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !850, file: !851, line: 1337, baseType: !3524, size: 128, offset: 20544)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3513, line: 39, size: 128, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3524, file: !3513, line: 40, baseType: !2545, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3524, file: !3513, line: 42, baseType: !496, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3524, file: !3513, line: 43, baseType: !496, size: 32, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !850, file: !851, line: 1340, baseType: !3530, size: 64, offset: 20672)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !851, line: 69, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !850, file: !851, line: 1351, baseType: !27, size: 32, offset: 20736)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !850, file: !851, line: 1352, baseType: !27, size: 32, offset: 20768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !850, file: !851, line: 1354, baseType: !207, size: 64, offset: 20800)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !850, file: !851, line: 1364, baseType: !499, size: 64, offset: 20864)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !850, file: !851, line: 1365, baseType: !499, size: 64, offset: 20928)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !850, file: !851, line: 1412, baseType: !207, size: 64, offset: 20992)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !850, file: !851, line: 1453, baseType: !3539, size: 64, offset: 21056)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !851, line: 1453, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !850, file: !851, line: 1457, baseType: !3542, size: 64, offset: 21120)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !153, line: 61, size: 576, elements: !3544)
!3544 = !{!3545, !3546, !3565, !3568, !3569, !3602, !3612}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3543, file: !153, line: 62, baseType: !152, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, scope: !3543, file: !153, line: 64, baseType: !3547, size: 192, offset: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3543, file: !153, line: 64, size: 192, elements: !3548)
!3548 = !{!3549, !3560}
!3549 = !DIDerivedType(tag: DW_TAG_member, scope: !3547, file: !153, line: 65, baseType: !3550, size: 192)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3547, file: !153, line: 65, size: 192, elements: !3551)
!3551 = !{!3552, !3559}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3550, file: !153, line: 66, baseType: !3553, size: 128)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3554, line: 50, size: 128, elements: !3555)
!3554 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3553, file: !3554, line: 52, baseType: !207, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3553, file: !3554, line: 54, baseType: !7, size: 32, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3553, file: !3554, line: 55, baseType: !7, size: 32, offset: 96)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3550, file: !153, line: 67, baseType: !207, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, scope: !3547, file: !153, line: 70, baseType: !3561, size: 192)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3547, file: !153, line: 70, size: 192, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3561, file: !153, line: 71, baseType: !763, size: 128, align: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3561, file: !153, line: 72, baseType: !207, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3543, file: !153, line: 76, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !153, line: 76, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3543, file: !153, line: 77, baseType: !207, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3543, file: !153, line: 79, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3554, line: 25, size: 256, elements: !3572)
!3572 = !{!3573, !3579, !3583}
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3571, file: !3554, line: 26, baseType: !3574, size: 128)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3571, file: !3554, line: 26, size: 128, elements: !3575)
!3575 = !{!3576, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3574, file: !3554, line: 27, baseType: !3577, size: 128)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !1668)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3574, file: !3554, line: 28, baseType: !3577, size: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3571, file: !3554, line: 31, baseType: !3580, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3582)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3554, line: 23, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3571, file: !3554, line: 33, baseType: !3584, size: 64, offset: 192)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3571, file: !3554, line: 33, size: 64, elements: !3585)
!3585 = !{!3586, !3592, !3597}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3584, file: !3554, line: 38, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !3554, line: 34, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3587, file: !3554, line: 35, baseType: !1245, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3587, file: !3554, line: 36, baseType: !251, size: 8, offset: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3587, file: !3554, line: 37, baseType: !251, size: 8, offset: 40)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3584, file: !3554, line: 42, baseType: !3593, size: 16)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !3554, line: 39, size: 16, elements: !3594)
!3594 = !{!3595, !3596}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3593, file: !3554, line: 40, baseType: !251, size: 8)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3593, file: !3554, line: 41, baseType: !251, size: 8, offset: 8)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3584, file: !3554, line: 46, baseType: !3598, size: 16)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !3554, line: 43, size: 16, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3598, file: !3554, line: 44, baseType: !251, size: 8)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3598, file: !3554, line: 45, baseType: !251, size: 8, offset: 8)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3543, file: !153, line: 81, baseType: !3603, size: 64, offset: 448)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !153, line: 85, size: 384, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3604, file: !153, line: 86, baseType: !3566, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3604, file: !153, line: 87, baseType: !207, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3604, file: !153, line: 88, baseType: !207, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3604, file: !153, line: 89, baseType: !207, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3604, file: !153, line: 90, baseType: !1571, size: 8, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3604, file: !153, line: 92, baseType: !3603, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3543, file: !153, line: 82, baseType: !7, size: 32, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !850, file: !851, line: 1463, baseType: !3614, offset: 21184)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !851, line: 739, elements: !626)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !850, file: !851, line: 1470, baseType: !763, size: 128, align: 64, offset: 21184)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !850, file: !851, line: 1471, baseType: !808, size: 32, offset: 21312)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !850, file: !851, line: 1472, baseType: !27, size: 32, offset: 21344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !850, file: !851, line: 1474, baseType: !849, size: 64, offset: 21376)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !850, file: !851, line: 1475, baseType: !1976, size: 320, offset: 21440)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !850, file: !851, line: 1478, baseType: !3621, size: 64, offset: 21760)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3623, line: 49, size: 512, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3631, !3632, !3633, !3635}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3622, file: !3623, line: 50, baseType: !3621, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3622, file: !3623, line: 51, baseType: !189, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3622, file: !3623, line: 52, baseType: !207, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3622, file: !3623, line: 53, baseType: !207, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3622, file: !3623, line: 54, baseType: !3630, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3622, file: !3623, line: 56, baseType: !7, size: 32, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3622, file: !3623, line: 58, baseType: !7, size: 32, offset: 352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3622, file: !3623, line: 59, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 159, baseType: !499)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3622, file: !3623, line: 60, baseType: !1278, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !850, file: !851, line: 1482, baseType: !808, size: 32, offset: 21824)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !850, file: !851, line: 1489, baseType: !189, size: 64, offset: 21888)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !850, file: !851, line: 1504, baseType: !189, size: 64, offset: 21952)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !850, file: !851, line: 1505, baseType: !500, size: 64, offset: 22016)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !850, file: !851, line: 1506, baseType: !499, size: 64, offset: 22080)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !850, file: !851, line: 1507, baseType: !500, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !850, file: !851, line: 1508, baseType: !500, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !850, file: !851, line: 1509, baseType: !500, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !850, file: !851, line: 1510, baseType: !763, size: 128, align: 64, offset: 22208)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !850, file: !851, line: 1511, baseType: !27, size: 32, offset: 22336)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !850, file: !851, line: 1515, baseType: !2871, size: 64, offset: 22400)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !850, file: !851, line: 1518, baseType: !2871, size: 64, offset: 22464)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !850, file: !851, line: 1528, baseType: !763, size: 128, align: 64, offset: 22528)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !850, file: !851, line: 1552, baseType: !3650, size: 35328, offset: 23040)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3651, line: 430, size: 35328, elements: !3652)
!3651 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3652 = !{!3653, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3682, !3683, !3684, !3685, !3686, !3687, !3690, !3691, !3692, !3693}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3650, file: !3651, line: 432, baseType: !3654, size: 192)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3655, size: 192, elements: !353)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3656, line: 16, size: 64, elements: !3657)
!3656 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3655, file: !3656, line: 17, baseType: !261, size: 16)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3655, file: !3656, line: 18, baseType: !261, size: 16, offset: 16)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3655, file: !3656, line: 19, baseType: !261, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3655, file: !3656, line: 19, baseType: !261, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3655, file: !3656, line: 19, baseType: !261, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3655, file: !3656, line: 19, baseType: !261, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3655, file: !3656, line: 19, baseType: !261, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3655, file: !3656, line: 20, baseType: !261, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3655, file: !3656, line: 20, baseType: !261, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3655, file: !3656, line: 20, baseType: !261, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3655, file: !3656, line: 20, baseType: !261, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3655, file: !3656, line: 20, baseType: !261, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3655, file: !3656, line: 20, baseType: !261, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3650, file: !3651, line: 436, baseType: !207, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3650, file: !3651, line: 440, baseType: !194, size: 16, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3650, file: !3651, line: 441, baseType: !194, size: 16, offset: 272)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3650, file: !3651, line: 442, baseType: !194, size: 16, offset: 288)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3650, file: !3651, line: 443, baseType: !194, size: 16, offset: 304)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3650, file: !3651, line: 447, baseType: !207, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3650, file: !3651, line: 448, baseType: !207, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3650, file: !3651, line: 459, baseType: !3679, size: 256, offset: 448)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3680, size: 256, elements: !817)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3651, line: 428, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3650, file: !3651, line: 461, baseType: !207, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3650, file: !3651, line: 463, baseType: !207, size: 64, offset: 768)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3650, file: !3651, line: 465, baseType: !207, size: 64, offset: 832)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3650, file: !3651, line: 466, baseType: !207, size: 64, offset: 896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3650, file: !3651, line: 467, baseType: !207, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3650, file: !3651, line: 473, baseType: !3688, size: 64, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3651, line: 10, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3650, file: !3651, line: 480, baseType: !207, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3650, file: !3651, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3650, file: !3651, line: 491, baseType: !495, size: 32, offset: 1184)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3650, file: !3651, line: 501, baseType: !3694, size: 33792, offset: 1536)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3695, line: 448, size: 33792, elements: !3696)
!3695 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3696 = !{!3697, !3698, !3699, !3860, !3861, !3867, !3868}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3694, file: !3695, line: 461, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3694, file: !3695, line: 468, baseType: !207, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3694, file: !3695, line: 476, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3695, line: 356, size: 33280, align: 512, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3701, file: !3695, line: 358, baseType: !7, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3701, file: !3695, line: 361, baseType: !7, size: 32, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3701, file: !3695, line: 364, baseType: !499, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3701, file: !3695, line: 367, baseType: !499, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3701, file: !3695, line: 370, baseType: !499, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3701, file: !3695, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3701, file: !3695, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3701, file: !3695, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3701, file: !3695, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3701, file: !3695, line: 397, baseType: !3713, size: 32768, offset: 512)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3695, line: 348, size: 32768, elements: !3714)
!3714 = !{!3715, !3730, !3767, !3844, !3856}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3713, file: !3695, line: 349, baseType: !3716, size: 896)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3695, line: 12, size: 896, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3729}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3716, file: !3695, line: 13, baseType: !495, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3716, file: !3695, line: 14, baseType: !495, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3716, file: !3695, line: 15, baseType: !495, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3716, file: !3695, line: 16, baseType: !495, size: 32, offset: 96)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3716, file: !3695, line: 17, baseType: !495, size: 32, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3716, file: !3695, line: 18, baseType: !495, size: 32, offset: 160)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3716, file: !3695, line: 19, baseType: !495, size: 32, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3716, file: !3695, line: 22, baseType: !3726, size: 640, offset: 224)
!3726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 640, elements: !3727)
!3727 = !{!3728}
!3728 = !DISubrange(count: 20)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3716, file: !3695, line: 25, baseType: !495, size: 32, offset: 864)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3713, file: !3695, line: 350, baseType: !3731, size: 4096, align: 128)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3695, line: 34, size: 4096, align: 128, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3752, !3753, !3754, !3756, !3758, !3762}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3731, file: !3695, line: 35, baseType: !261, size: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3731, file: !3695, line: 36, baseType: !261, size: 16, offset: 16)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3731, file: !3695, line: 37, baseType: !261, size: 16, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3731, file: !3695, line: 38, baseType: !261, size: 16, offset: 48)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3695, line: 39, baseType: !3738, size: 128, offset: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3695, line: 39, size: 128, elements: !3739)
!3739 = !{!3740, !3745}
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3695, line: 40, baseType: !3741, size: 128)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3738, file: !3695, line: 40, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3741, file: !3695, line: 41, baseType: !499, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3741, file: !3695, line: 42, baseType: !499, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3695, line: 44, baseType: !3746, size: 128)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3738, file: !3695, line: 44, size: 128, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3746, file: !3695, line: 45, baseType: !495, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3746, file: !3695, line: 46, baseType: !495, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3746, file: !3695, line: 47, baseType: !495, size: 32, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3746, file: !3695, line: 48, baseType: !495, size: 32, offset: 96)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3731, file: !3695, line: 51, baseType: !495, size: 32, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3731, file: !3695, line: 52, baseType: !495, size: 32, offset: 224)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3731, file: !3695, line: 55, baseType: !3755, size: 1024, offset: 256)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 1024, elements: !508)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3731, file: !3695, line: 58, baseType: !3757, size: 2048, offset: 1280)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 2048, elements: !357)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3731, file: !3695, line: 60, baseType: !3759, size: 384, offset: 3328)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 384, elements: !3760)
!3760 = !{!3761}
!3761 = !DISubrange(count: 12)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3695, line: 62, baseType: !3763, size: 384, offset: 3712)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3695, line: 62, size: 384, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3763, file: !3695, line: 63, baseType: !3759, size: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3763, file: !3695, line: 64, baseType: !3759, size: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3713, file: !3695, line: 351, baseType: !3768, size: 1088)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3695, line: 79, size: 1088, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3843}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3768, file: !3695, line: 80, baseType: !495, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3768, file: !3695, line: 81, baseType: !495, size: 32, offset: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3768, file: !3695, line: 82, baseType: !495, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3768, file: !3695, line: 83, baseType: !495, size: 32, offset: 96)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3768, file: !3695, line: 84, baseType: !495, size: 32, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3768, file: !3695, line: 85, baseType: !495, size: 32, offset: 160)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3768, file: !3695, line: 86, baseType: !495, size: 32, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3768, file: !3695, line: 88, baseType: !3726, size: 640, offset: 224)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3768, file: !3695, line: 89, baseType: !251, size: 8, offset: 864)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3768, file: !3695, line: 90, baseType: !251, size: 8, offset: 872)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3768, file: !3695, line: 91, baseType: !251, size: 8, offset: 880)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3768, file: !3695, line: 92, baseType: !251, size: 8, offset: 888)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3768, file: !3695, line: 93, baseType: !251, size: 8, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3768, file: !3695, line: 94, baseType: !251, size: 8, offset: 904)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3768, file: !3695, line: 95, baseType: !3785, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3787, line: 11, size: 128, elements: !3788)
!3787 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3786, file: !3787, line: 12, baseType: !387, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3786, file: !3787, line: 13, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3793, line: 103, size: 1344, elements: !3794)
!3793 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3823, !3824, !3825}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3792, file: !3793, line: 109, baseType: !207, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3792, file: !3793, line: 110, baseType: !207, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3792, file: !3793, line: 111, baseType: !207, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3792, file: !3793, line: 112, baseType: !207, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3792, file: !3793, line: 113, baseType: !207, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3792, file: !3793, line: 114, baseType: !207, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3792, file: !3793, line: 117, baseType: !207, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3792, file: !3793, line: 118, baseType: !207, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3792, file: !3793, line: 119, baseType: !207, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3792, file: !3793, line: 120, baseType: !207, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3792, file: !3793, line: 121, baseType: !207, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3792, file: !3793, line: 122, baseType: !207, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3792, file: !3793, line: 123, baseType: !207, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3792, file: !3793, line: 124, baseType: !207, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3792, file: !3793, line: 125, baseType: !207, size: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3792, file: !3793, line: 139, baseType: !207, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3792, file: !3793, line: 142, baseType: !207, size: 64, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 144, baseType: !3813, size: 64, offset: 1088)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 144, size: 64, elements: !3814)
!3814 = !{!3815, !3816, !3817}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3813, file: !3793, line: 146, baseType: !261, size: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3813, file: !3793, line: 148, baseType: !499, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3813, file: !3793, line: 150, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3793, line: 59, size: 64, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3818, file: !3793, line: 61, baseType: !499, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3818, file: !3793, line: 63, baseType: !499, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3818, file: !3793, line: 65, baseType: !499, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3792, file: !3793, line: 153, baseType: !207, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3792, file: !3793, line: 154, baseType: !207, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3792, file: !3793, line: 156, baseType: !3826, size: 64, offset: 1280)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3792, file: !3793, line: 156, size: 64, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3826, file: !3793, line: 158, baseType: !261, size: 16)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3826, file: !3793, line: 160, baseType: !499, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3826, file: !3793, line: 162, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3793, line: 69, size: 64, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3831, file: !3793, line: 71, baseType: !499, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3831, file: !3793, line: 73, baseType: !499, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3831, file: !3793, line: 75, baseType: !499, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3831, file: !3793, line: 77, baseType: !499, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3831, file: !3793, line: 80, baseType: !499, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3831, file: !3793, line: 83, baseType: !499, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3831, file: !3793, line: 86, baseType: !499, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3831, file: !3793, line: 88, baseType: !499, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3831, file: !3793, line: 93, baseType: !499, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3831, file: !3793, line: 100, baseType: !499, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3768, file: !3695, line: 96, baseType: !495, size: 32, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3713, file: !3695, line: 352, baseType: !3845, size: 4608, align: 512)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3695, line: 333, size: 4608, align: 512, elements: !3846)
!3846 = !{!3847, !3848, !3855}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3845, file: !3695, line: 334, baseType: !3731, size: 4096, align: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3845, file: !3695, line: 335, baseType: !3849, size: 512, offset: 4096)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3695, line: 312, size: 512, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3849, file: !3695, line: 313, baseType: !499, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3849, file: !3695, line: 314, baseType: !499, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3849, file: !3695, line: 315, baseType: !3854, size: 384, offset: 128)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 384, elements: !1558)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3845, file: !3695, line: 336, baseType: !2865, offset: 4608)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3713, file: !3695, line: 353, baseType: !3857, size: 32768)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 32768, elements: !3858)
!3858 = !{!3859}
!3859 = !DISubrange(count: 4096)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3694, file: !3695, line: 484, baseType: !3700, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3694, file: !3695, line: 491, baseType: !3862, size: 128, offset: 256)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3695, line: 404, size: 128, elements: !3863)
!3863 = !{!3864, !3865, !3866}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3862, file: !3695, line: 424, baseType: !499, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3862, file: !3695, line: 432, baseType: !7, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3862, file: !3695, line: 440, baseType: !7, size: 32, offset: 96)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3694, file: !3695, line: 498, baseType: !3862, size: 128, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3694, file: !3695, line: 508, baseType: !3701, size: 33280, align: 512, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !829, file: !830, line: 31, baseType: !3870, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3872, line: 11, flags: DIFlagFwdDecl)
!3872 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !829, file: !830, line: 32, baseType: !7, size: 32, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !829, file: !830, line: 33, baseType: !828, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !829, file: !830, line: 35, baseType: !3876, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !830, line: 17, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !829, file: !830, line: 37, baseType: !1304, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !829, file: !830, line: 38, baseType: !1647, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !829, file: !830, line: 39, baseType: !27, size: 32, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !829, file: !830, line: 40, baseType: !3882, size: 192, offset: 896)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3883, line: 9, size: 192, elements: !3884)
!3883 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3884 = !{!3885, !3886, !3890, !3891}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3882, file: !3883, line: 10, baseType: !710, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3882, file: !3883, line: 11, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3883, line: 7, flags: DIFlagFwdDecl)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3882, file: !3883, line: 12, baseType: !7, size: 32, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3882, file: !3883, line: 13, baseType: !808, size: 32, offset: 160)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !829, file: !830, line: 42, baseType: !27, size: 32, offset: 1088)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !780, file: !54, line: 951, baseType: !159, size: 32, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !780, file: !54, line: 952, baseType: !432, size: 32, offset: 160)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !780, file: !54, line: 952, baseType: !432, size: 32, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !780, file: !54, line: 953, baseType: !27, size: 32, offset: 224)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !751, file: !54, line: 1012, baseType: !1480, size: 64, offset: 896)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !751, file: !54, line: 1013, baseType: !3899, size: 256, offset: 960)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !54, line: 970, size: 256, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3899, file: !54, line: 971, baseType: !207, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3899, file: !54, line: 972, baseType: !7, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3899, file: !54, line: 973, baseType: !7, size: 32, offset: 96)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3899, file: !54, line: 974, baseType: !7, size: 32, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3899, file: !54, line: 975, baseType: !7, size: 32, offset: 160)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3899, file: !54, line: 976, baseType: !209, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !751, file: !54, line: 1014, baseType: !3908, size: 128, offset: 1216)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3909, line: 8, size: 128, elements: !3910)
!3909 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3908, file: !3909, line: 9, baseType: !571, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3908, file: !3909, line: 10, baseType: !461, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !751, file: !54, line: 1015, baseType: !426, size: 64, offset: 1344)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !751, file: !54, line: 1016, baseType: !2306, size: 64, offset: 1408)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !751, file: !54, line: 1018, baseType: !499, size: 64, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !751, file: !54, line: 1020, baseType: !189, size: 64, offset: 1536)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !751, file: !54, line: 1023, baseType: !189, size: 64, offset: 1600)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !751, file: !54, line: 1027, baseType: !3919, size: 64, offset: 1664)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !751, file: !54, line: 1029, baseType: !422, size: 64, offset: 1728)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !751, file: !54, line: 1030, baseType: !3922, size: 32, offset: 1792)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3923, line: 8, baseType: !495)
!3923 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !751, file: !54, line: 1031, baseType: !3922, size: 32, offset: 1824)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !695, file: !696, line: 29, baseType: !189, size: 64, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !638, file: !54, line: 2077, baseType: !691, size: 64, offset: 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !638, file: !54, line: 2078, baseType: !691, size: 64, offset: 1152)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !638, file: !54, line: 2079, baseType: !691, size: 64, offset: 1216)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !638, file: !54, line: 2081, baseType: !3930, size: 64, offset: 1280)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!384, !577, !27, !352, !203, !209}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !638, file: !54, line: 2082, baseType: !3934, size: 64, offset: 1344)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!384, !577, !27, !185, !203, !209}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !638, file: !54, line: 2083, baseType: !3938, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!3941, !426}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !168, line: 296, size: 1664, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3969, !3970, !3971}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3943, file: !168, line: 297, baseType: !618, size: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3943, file: !168, line: 298, baseType: !265, size: 128, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3943, file: !168, line: 299, baseType: !265, size: 128, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3943, file: !168, line: 300, baseType: !265, size: 128, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3943, file: !168, line: 301, baseType: !706, size: 256, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3943, file: !168, line: 302, baseType: !227, size: 32, offset: 768)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3943, file: !168, line: 303, baseType: !217, size: 32, offset: 800)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3943, file: !168, line: 304, baseType: !577, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3943, file: !168, line: 305, baseType: !3954, size: 64, offset: 896)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !168, line: 68, size: 64, elements: !3955)
!3955 = !{!3956, !3968}
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3954, file: !168, line: 69, baseType: !3957, size: 32)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3954, file: !168, line: 69, size: 32, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3957, file: !168, line: 70, baseType: !432, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3957, file: !168, line: 71, baseType: !441, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3957, file: !168, line: 72, baseType: !3962, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3963, line: 24, baseType: !3964)
!3963 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3963, line: 22, size: 32, elements: !3965)
!3965 = !{!3966}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3964, file: !3963, line: 23, baseType: !3967, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3963, line: 20, baseType: !438)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3954, file: !168, line: 74, baseType: !167, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3943, file: !168, line: 306, baseType: !209, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3943, file: !168, line: 307, baseType: !207, size: 64, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3943, file: !168, line: 308, baseType: !3972, size: 576, offset: 1088)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !168, line: 205, size: 576, elements: !3973)
!3973 = !{!3974, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3972, file: !168, line: 206, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !168, line: 66, baseType: !211)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3972, file: !168, line: 207, baseType: !3975, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3972, file: !168, line: 208, baseType: !3975, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3972, file: !168, line: 209, baseType: !3975, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3972, file: !168, line: 210, baseType: !3975, size: 64, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3972, file: !168, line: 211, baseType: !3975, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3972, file: !168, line: 212, baseType: !3975, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3972, file: !168, line: 213, baseType: !1529, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3972, file: !168, line: 214, baseType: !1529, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !638, file: !54, line: 2085, baseType: !3985, size: 64, offset: 1472)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!387, !577, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3990, line: 15, size: 256, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3991 = !{!3992, !3993, !3994, !3995, !3996}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3989, file: !3990, line: 16, baseType: !842, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3989, file: !3990, line: 19, baseType: !27, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3989, file: !3990, line: 26, baseType: !207, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3989, file: !3990, line: 33, baseType: !207, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3989, file: !3990, line: 36, baseType: !3997, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !129, line: 33, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !638, file: !54, line: 2087, baseType: !3985, size: 64, offset: 1536)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !638, file: !54, line: 2089, baseType: !608, size: 64, offset: 1600)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !578, file: !54, line: 1198, baseType: !4002, size: 64, offset: 448)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4004)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !168, line: 324, size: 704, elements: !4005)
!4005 = !{!4006, !4010, !4014, !4018, !4019, !4020, !4021, !4022, !4027, !4032, !4036}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4004, file: !168, line: 325, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!27, !3942}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4004, file: !168, line: 326, baseType: !4011, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!3942, !577, !27}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4004, file: !168, line: 327, baseType: !4015, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !3942}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4004, file: !168, line: 328, baseType: !4007, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4004, file: !168, line: 329, baseType: !4007, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4004, file: !168, line: 330, baseType: !4007, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4004, file: !168, line: 331, baseType: !666, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4004, file: !168, line: 334, baseType: !4023, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!4026, !426}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4004, file: !168, line: 335, baseType: !4028, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!27, !426, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4004, file: !168, line: 337, baseType: !4033, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!27, !426, !4026}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4004, file: !168, line: 339, baseType: !4037, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!27, !577, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !578, file: !54, line: 1199, baseType: !4042, size: 64, offset: 512)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4044)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !168, line: 430, size: 704, elements: !4045)
!4045 = !{!4046, !4052, !4053, !4057, !4058, !4059, !4074, !4097, !4101, !4102, !4125}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4044, file: !168, line: 431, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!27, !577, !27, !27, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3908)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4044, file: !168, line: 432, baseType: !666, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4044, file: !168, line: 433, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!27, !577, !7}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4044, file: !168, line: 434, baseType: !4054, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4044, file: !168, line: 435, baseType: !666, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4044, file: !168, line: 436, baseType: !4060, size: 64, offset: 320)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!27, !577, !27, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !168, line: 417, size: 256, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4064, file: !168, line: 418, baseType: !27, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4064, file: !168, line: 419, baseType: !7, size: 32, offset: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4064, file: !168, line: 420, baseType: !7, size: 32, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4064, file: !168, line: 422, baseType: !7, size: 32, offset: 96)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4064, file: !168, line: 423, baseType: !7, size: 32, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4064, file: !168, line: 424, baseType: !7, size: 32, offset: 160)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4064, file: !168, line: 425, baseType: !7, size: 32, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4064, file: !168, line: 426, baseType: !7, size: 32, offset: 224)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4044, file: !168, line: 437, baseType: !4075, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!27, !577, !3954, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !168, line: 345, size: 960, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4079, file: !168, line: 346, baseType: !27, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4079, file: !168, line: 347, baseType: !499, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4079, file: !168, line: 348, baseType: !499, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4079, file: !168, line: 349, baseType: !499, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4079, file: !168, line: 350, baseType: !499, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4079, file: !168, line: 351, baseType: !499, size: 64, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4079, file: !168, line: 352, baseType: !499, size: 64, offset: 384)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4079, file: !168, line: 353, baseType: !716, size: 64, offset: 448)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4079, file: !168, line: 355, baseType: !716, size: 64, offset: 512)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4079, file: !168, line: 356, baseType: !27, size: 32, offset: 576)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4079, file: !168, line: 357, baseType: !27, size: 32, offset: 608)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4079, file: !168, line: 358, baseType: !499, size: 64, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4079, file: !168, line: 359, baseType: !499, size: 64, offset: 704)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4079, file: !168, line: 360, baseType: !499, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4079, file: !168, line: 361, baseType: !716, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4079, file: !168, line: 362, baseType: !27, size: 32, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4044, file: !168, line: 438, baseType: !4098, size: 64, offset: 448)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!27, !577, !4040, !4078}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4044, file: !168, line: 440, baseType: !4075, size: 64, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4044, file: !168, line: 441, baseType: !4103, size: 64, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!27, !577, !4106}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !168, line: 411, size: 1408, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4107, file: !168, line: 412, baseType: !7, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4107, file: !168, line: 413, baseType: !4111, size: 1344, offset: 64)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4112, size: 1344, elements: !353)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !168, line: 397, size: 448, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4124}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4112, file: !168, line: 398, baseType: !7, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4112, file: !168, line: 399, baseType: !7, size: 32, offset: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4112, file: !168, line: 401, baseType: !7, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4112, file: !168, line: 402, baseType: !7, size: 32, offset: 96)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4112, file: !168, line: 403, baseType: !7, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4112, file: !168, line: 404, baseType: !7, size: 32, offset: 160)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4112, file: !168, line: 405, baseType: !7, size: 32, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4112, file: !168, line: 406, baseType: !501, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4112, file: !168, line: 407, baseType: !4123, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 132, baseType: !499)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4112, file: !168, line: 408, baseType: !4123, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4044, file: !168, line: 442, baseType: !4054, size: 64, offset: 640)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !578, file: !54, line: 1200, baseType: !4127, size: 64, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4129)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !54, line: 54, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !578, file: !54, line: 1201, baseType: !207, size: 64, offset: 640)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !578, file: !54, line: 1202, baseType: !207, size: 64, offset: 704)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !578, file: !54, line: 1203, baseType: !207, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !578, file: !54, line: 1204, baseType: !461, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !578, file: !54, line: 1205, baseType: !1199, size: 320, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !578, file: !54, line: 1206, baseType: !27, size: 32, offset: 1216)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !578, file: !54, line: 1207, baseType: !217, size: 32, offset: 1248)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !578, file: !54, line: 1209, baseType: !189, size: 64, offset: 1280)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !578, file: !54, line: 1211, baseType: !4139, size: 64, offset: 1344)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !54, line: 1211, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !578, file: !54, line: 1223, baseType: !4144, size: 64, offset: 1408)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !478, line: 34, size: 64, elements: !4145)
!4145 = !{!4146}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4144, file: !478, line: 35, baseType: !481, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !578, file: !54, line: 1224, baseType: !265, size: 128, offset: 1472)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !578, file: !54, line: 1225, baseType: !4149, size: 64, offset: 1600)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !54, line: 1225, flags: DIFlagFwdDecl)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !578, file: !54, line: 1226, baseType: !4152, size: 64, offset: 1664)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !54, line: 1226, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !578, file: !54, line: 1227, baseType: !4155, size: 64, offset: 1728)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !54, line: 50, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !578, file: !54, line: 1228, baseType: !4158, size: 64, offset: 1792)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !54, line: 1228, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !578, file: !54, line: 1229, baseType: !618, size: 128, offset: 1856)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !578, file: !54, line: 1230, baseType: !7, size: 32, offset: 1984)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !578, file: !54, line: 1231, baseType: !4163, size: 2496, offset: 2048)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !168, line: 521, size: 2496, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4169, !4201}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4163, file: !168, line: 522, baseType: !7, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4163, file: !168, line: 523, baseType: !1199, size: 320, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4163, file: !168, line: 524, baseType: !4168, size: 192, offset: 384)
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !353)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4163, file: !168, line: 525, baseType: !4170, size: 1728, offset: 576)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4171, size: 1728, elements: !353)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !168, line: 222, size: 576, elements: !4172)
!4172 = !{!4173, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4171, file: !168, line: 223, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !168, line: 445, size: 256, elements: !4176)
!4176 = !{!4177, !4178, !4191, !4192}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4175, file: !168, line: 446, baseType: !27, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4175, file: !168, line: 447, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4181)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !168, line: 312, size: 512, elements: !4182)
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4181, file: !168, line: 313, baseType: !666, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4181, file: !168, line: 314, baseType: !666, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4181, file: !168, line: 315, baseType: !666, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4181, file: !168, line: 316, baseType: !666, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4181, file: !168, line: 317, baseType: !4007, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4181, file: !168, line: 318, baseType: !4007, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4181, file: !168, line: 319, baseType: !4007, size: 64, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4181, file: !168, line: 320, baseType: !4037, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4175, file: !168, line: 448, baseType: !298, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4175, file: !168, line: 449, baseType: !4174, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4171, file: !168, line: 224, baseType: !27, size: 32, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4171, file: !168, line: 226, baseType: !265, size: 128, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4171, file: !168, line: 227, baseType: !207, size: 64, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4171, file: !168, line: 228, baseType: !7, size: 32, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4171, file: !168, line: 229, baseType: !7, size: 32, offset: 352)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4171, file: !168, line: 230, baseType: !3975, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4171, file: !168, line: 231, baseType: !3975, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4171, file: !168, line: 232, baseType: !189, size: 64, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4163, file: !168, line: 526, baseType: !4202, size: 192, offset: 2304)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4179, size: 192, elements: !353)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !578, file: !54, line: 1233, baseType: !4204, size: 2368, offset: 4544)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !54, line: 1184, size: 2368, elements: !4205)
!4205 = !{!4206, !4207, !4208}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4204, file: !54, line: 1185, baseType: !194, size: 16)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4204, file: !54, line: 1186, baseType: !194, size: 16, offset: 16)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4204, file: !54, line: 1187, baseType: !4209, size: 2304, offset: 64)
!4209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4210, size: 2304, elements: !353)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4211, line: 12, size: 768, elements: !4212)
!4211 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4212 = !{!4213, !4221, !4223, !4228, !4229}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4210, file: !4211, line: 13, baseType: !4214, size: 384)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4215, line: 17, size: 384, elements: !4216)
!4215 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4216 = !{!4217, !4218, !4219, !4220}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4214, file: !4215, line: 18, baseType: !27, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4214, file: !4215, line: 19, baseType: !27, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4214, file: !4215, line: 20, baseType: !222, size: 192, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4214, file: !4215, line: 22, baseType: !763, size: 128, align: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4210, file: !4211, line: 14, baseType: !4222, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4210, file: !4211, line: 15, baseType: !4224, size: 64, offset: 448)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4225, line: 16, size: 64, elements: !4226)
!4225 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4226 = !{!4227}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4224, file: !4225, line: 17, baseType: !849, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4210, file: !4211, line: 16, baseType: !222, size: 192, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4210, file: !4211, line: 17, baseType: !217, size: 32, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !578, file: !54, line: 1240, baseType: !189, size: 64, offset: 6912)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !578, file: !54, line: 1243, baseType: !495, size: 32, offset: 6976)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !578, file: !54, line: 1245, baseType: !1529, size: 64, offset: 7040)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !578, file: !54, line: 1246, baseType: !1529, size: 64, offset: 7104)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !578, file: !54, line: 1248, baseType: !496, size: 32, offset: 7168)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !578, file: !54, line: 1249, baseType: !4236, size: 64, offset: 7232)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !54, line: 634, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !578, file: !54, line: 1252, baseType: !4239, size: 256, offset: 7296)
!4239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !508)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !578, file: !54, line: 1253, baseType: !4241, size: 128, offset: 7552)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4242, line: 21, baseType: !4243)
!4242 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4242, line: 19, size: 128, elements: !4244)
!4244 = !{!4245}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4243, file: !4242, line: 20, baseType: !4246, size: 128)
!4246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !1668)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !578, file: !54, line: 1255, baseType: !7, size: 32, offset: 7680)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !578, file: !54, line: 1261, baseType: !706, size: 256, offset: 7744)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !578, file: !54, line: 1267, baseType: !185, size: 64, offset: 8000)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !578, file: !54, line: 1269, baseType: !524, size: 64, offset: 8064)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !578, file: !54, line: 1271, baseType: !4252, size: 448, offset: 8128)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3990, line: 63, size: 448, elements: !4253)
!4253 = !{!4254, !4259, !4260, !4261, !4262, !4263, !4264}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4252, file: !3990, line: 64, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!207, !4258, !3988}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4252, file: !3990, line: 66, baseType: !4255, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4252, file: !3990, line: 69, baseType: !387, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4252, file: !3990, line: 70, baseType: !27, size: 32, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4252, file: !3990, line: 71, baseType: !7, size: 32, offset: 224)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4252, file: !3990, line: 74, baseType: !265, size: 128, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4252, file: !3990, line: 85, baseType: !4265, size: 64, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !578, file: !54, line: 1274, baseType: !710, size: 64, offset: 8576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !578, file: !54, line: 1280, baseType: !710, size: 64, offset: 8640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !578, file: !54, line: 1283, baseType: !27, size: 32, offset: 8704)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !578, file: !54, line: 1286, baseType: !3922, size: 32, offset: 8736)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !578, file: !54, line: 1289, baseType: !4271, size: 64, offset: 8768)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1321, line: 18, flags: DIFlagFwdDecl)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !578, file: !54, line: 1290, baseType: !614, size: 64, offset: 8832)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !578, file: !54, line: 1297, baseType: !1304, size: 64, offset: 8896)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !578, file: !54, line: 1304, baseType: !4276, size: 64, offset: 8960)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4277, line: 49, size: 64, elements: !4278)
!4277 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4278 = !{!4279}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4276, file: !4277, line: 50, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4277, line: 41, size: 512, align: 512, elements: !4282)
!4282 = !{!4283, !4284, !4289}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4281, file: !4277, line: 43, baseType: !227, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4281, file: !4277, line: 45, baseType: !4285, size: 192, offset: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4277, line: 29, size: 192, elements: !4286)
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4285, file: !4277, line: 30, baseType: !265, size: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4285, file: !4277, line: 32, baseType: !387, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4281, file: !4277, line: 46, baseType: !387, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !578, file: !54, line: 1305, baseType: !4276, size: 64, offset: 9024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !578, file: !54, line: 1306, baseType: !763, size: 128, align: 64, offset: 9088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !578, file: !54, line: 1307, baseType: !1320, size: 256, offset: 9216)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !578, file: !54, line: 1309, baseType: !706, size: 256, offset: 9472)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !578, file: !54, line: 1314, baseType: !27, size: 32, offset: 9728)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !578, file: !54, line: 1317, baseType: !227, size: 32, align: 512, offset: 10240)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !578, file: !54, line: 1318, baseType: !265, size: 128, offset: 10304)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !578, file: !54, line: 1320, baseType: !227, size: 32, offset: 10432)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !578, file: !54, line: 1321, baseType: !265, size: 128, offset: 10496)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !572, file: !573, line: 73, baseType: !27, size: 32, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !572, file: !573, line: 74, baseType: !4301, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1497, line: 42, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !526, file: !463, line: 141, baseType: !4305, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!27, !4050, !1571}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !526, file: !463, line: 142, baseType: !4309, size: 64, offset: 768)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!461, !461, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !462, file: !463, line: 96, baseType: !577, size: 64, offset: 832)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !462, file: !463, line: 97, baseType: !207, size: 64, offset: 896)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !462, file: !463, line: 98, baseType: !189, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !463, line: 100, baseType: !4318, size: 128, offset: 1024)
!4318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 100, size: 128, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4318, file: !463, line: 101, baseType: !265, size: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4318, file: !463, line: 102, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !462, file: !463, line: 104, baseType: !265, size: 128, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !462, file: !463, line: 105, baseType: !265, size: 128, offset: 1280)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !462, file: !463, line: 113, baseType: !4326, size: 128, offset: 1408)
!4326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !463, line: 109, size: 128, elements: !4327)
!4327 = !{!4328, !4329, !4330}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4326, file: !463, line: 110, baseType: !618, size: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4326, file: !463, line: 111, baseType: !477, size: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4326, file: !463, line: 112, baseType: !763, size: 128, align: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !455, file: !54, line: 1968, baseType: !4332, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!185, !461, !426, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4337, line: 10, size: 128, elements: !4338)
!4337 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4336, file: !4337, line: 11, baseType: !2256, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4336, file: !4337, line: 12, baseType: !189, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !455, file: !54, line: 1969, baseType: !4342, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!27, !4301, !426, !27}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !455, file: !54, line: 1970, baseType: !4346, size: 64, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!449, !426, !27, !1571}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !455, file: !54, line: 1972, baseType: !4350, size: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!27, !461, !352, !27}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !455, file: !54, line: 1974, baseType: !4354, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!27, !4301, !426, !461, !192, !1571}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !455, file: !54, line: 1976, baseType: !4358, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!27, !461, !426, !461}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !455, file: !54, line: 1977, baseType: !4362, size: 64, offset: 448)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!27, !426, !461}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !455, file: !54, line: 1978, baseType: !4366, size: 64, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!27, !4301, !426, !461, !185}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !455, file: !54, line: 1980, baseType: !4370, size: 64, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!27, !4301, !426, !461, !192}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !455, file: !54, line: 1982, baseType: !4362, size: 64, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !455, file: !54, line: 1983, baseType: !4375, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!27, !4301, !426, !461, !192, !582}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !455, file: !54, line: 1985, baseType: !4379, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!27, !4301, !426, !461, !426, !461, !7}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !455, file: !54, line: 1987, baseType: !4383, size: 64, offset: 832)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!27, !4301, !461, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !54, line: 226, size: 640, elements: !4388)
!4388 = !{!4389, !4390, !4391, !4401, !4410, !4411, !4416, !4417, !4418}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4387, file: !54, line: 227, baseType: !7, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4387, file: !54, line: 228, baseType: !192, size: 16, offset: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, scope: !4387, file: !54, line: 241, baseType: !4392, size: 32, offset: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4387, file: !54, line: 241, size: 32, elements: !4393)
!4393 = !{!4394, !4395}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4392, file: !54, line: 242, baseType: !432, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4392, file: !54, line: 243, baseType: !4396, size: 32)
!4396 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4397, line: 16, baseType: !4398)
!4397 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4397, line: 14, size: 32, elements: !4399)
!4399 = !{!4400}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4398, file: !4397, line: 15, baseType: !437, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, scope: !4387, file: !54, line: 245, baseType: !4402, size: 32, offset: 96)
!4402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4387, file: !54, line: 245, size: 32, elements: !4403)
!4403 = !{!4404, !4405}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4402, file: !54, line: 246, baseType: !441, size: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4402, file: !54, line: 247, baseType: !4406, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4397, line: 20, baseType: !4407)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4397, line: 18, size: 32, elements: !4408)
!4408 = !{!4409}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4407, file: !4397, line: 19, baseType: !445, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4387, file: !54, line: 249, baseType: !209, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4387, file: !54, line: 250, baseType: !4412, size: 128, offset: 192)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1530, line: 13, size: 128, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4412, file: !1530, line: 14, baseType: !1529, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4412, file: !1530, line: 15, baseType: !387, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4387, file: !54, line: 251, baseType: !4412, size: 128, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4387, file: !54, line: 252, baseType: !4412, size: 128, offset: 448)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4387, file: !54, line: 259, baseType: !1171, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !455, file: !54, line: 1988, baseType: !4420, size: 64, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!27, !4301, !4050, !4423, !495, !7}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4425, line: 22, size: 1280, elements: !4426)
!4425 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4424, file: !4425, line: 23, baseType: !495, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4424, file: !4425, line: 24, baseType: !192, size: 16, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4424, file: !4425, line: 25, baseType: !7, size: 32, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4424, file: !4425, line: 26, baseType: !1537, size: 32, offset: 96)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4424, file: !4425, line: 27, baseType: !499, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4424, file: !4425, line: 28, baseType: !499, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4424, file: !4425, line: 41, baseType: !499, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4424, file: !4425, line: 42, baseType: !582, size: 32, offset: 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4424, file: !4425, line: 43, baseType: !582, size: 32, offset: 352)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4424, file: !4425, line: 44, baseType: !432, size: 32, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4424, file: !4425, line: 45, baseType: !441, size: 32, offset: 416)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4424, file: !4425, line: 46, baseType: !209, size: 64, offset: 448)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4424, file: !4425, line: 47, baseType: !4412, size: 128, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4424, file: !4425, line: 48, baseType: !4412, size: 128, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4424, file: !4425, line: 49, baseType: !4412, size: 128, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4424, file: !4425, line: 50, baseType: !4412, size: 128, offset: 896)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4424, file: !4425, line: 51, baseType: !499, size: 64, offset: 1024)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4424, file: !4425, line: 52, baseType: !499, size: 64, offset: 1088)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4424, file: !4425, line: 53, baseType: !495, size: 32, offset: 1152)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4424, file: !4425, line: 54, baseType: !495, size: 32, offset: 1184)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4424, file: !4425, line: 55, baseType: !499, size: 64, offset: 1216)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !455, file: !54, line: 1990, baseType: !4449, size: 64, offset: 960)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!384, !461, !352, !203}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !455, file: !54, line: 1991, baseType: !4453, size: 64, offset: 1024)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!27, !426, !4456, !499, !499}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !54, line: 55, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !455, file: !54, line: 1993, baseType: !4459, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!27, !426, !27}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !455, file: !54, line: 1994, baseType: !4463, size: 64, offset: 1152)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!27, !426, !461, !1171, !7, !192}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !455, file: !54, line: 1997, baseType: !4467, size: 64, offset: 1216)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!27, !4301, !426, !1171, !192}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !455, file: !54, line: 1999, baseType: !4471, size: 64, offset: 1280)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!449, !4301, !461, !27}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !455, file: !54, line: 2001, baseType: !4475, size: 64, offset: 1344)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!27, !4301, !461, !449, !27}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !455, file: !54, line: 2003, baseType: !4479, size: 64, offset: 1408)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!27, !4301, !461, !4482}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !54, line: 76, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !455, file: !54, line: 2005, baseType: !4485, size: 64, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!27, !461, !4482}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !455, file: !54, line: 2006, baseType: !4489, size: 64, offset: 1536)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!4492, !426}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !54, line: 3192, size: 192, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4493, file: !54, line: 3193, baseType: !837, size: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4493, file: !54, line: 3194, baseType: !495, size: 32, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !427, file: !54, line: 655, baseType: !577, size: 64, offset: 448)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !427, file: !54, line: 656, baseType: !422, size: 64, offset: 512)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !427, file: !54, line: 659, baseType: !189, size: 64, offset: 576)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !427, file: !54, line: 663, baseType: !207, size: 64, offset: 640)
!4501 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !54, line: 671, baseType: !4502, size: 32, offset: 704)
!4502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !54, line: 671, size: 32, elements: !4503)
!4503 = !{!4504, !4506}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4502, file: !54, line: 672, baseType: !4505, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4502, file: !54, line: 673, baseType: !7, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !427, file: !54, line: 675, baseType: !582, size: 32, offset: 736)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !427, file: !54, line: 676, baseType: !209, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !427, file: !54, line: 677, baseType: !4412, size: 128, offset: 832)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !427, file: !54, line: 678, baseType: !4412, size: 128, offset: 960)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !427, file: !54, line: 679, baseType: !4412, size: 128, offset: 1088)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !427, file: !54, line: 680, baseType: !227, size: 32, offset: 1216)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !427, file: !54, line: 681, baseType: !194, size: 16, offset: 1248)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !427, file: !54, line: 682, baseType: !251, size: 8, offset: 1264)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !427, file: !54, line: 683, baseType: !251, size: 8, offset: 1272)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !427, file: !54, line: 684, baseType: !4123, size: 64, offset: 1280)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !427, file: !54, line: 691, baseType: !207, size: 64, offset: 1344)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !427, file: !54, line: 692, baseType: !1199, size: 320, offset: 1408)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !427, file: !54, line: 694, baseType: !207, size: 64, offset: 1728)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !427, file: !54, line: 695, baseType: !207, size: 64, offset: 1792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !427, file: !54, line: 697, baseType: !618, size: 128, offset: 1856)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !427, file: !54, line: 698, baseType: !265, size: 128, offset: 1984)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !427, file: !54, line: 707, baseType: !265, size: 128, offset: 2112)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !427, file: !54, line: 708, baseType: !265, size: 128, offset: 2240)
!4525 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !54, line: 709, baseType: !4526, size: 128, offset: 2368)
!4526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !54, line: 709, size: 128, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4526, file: !54, line: 710, baseType: !614, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4526, file: !54, line: 711, baseType: !763, size: 128, align: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !427, file: !54, line: 713, baseType: !712, size: 64, offset: 2496)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !427, file: !54, line: 714, baseType: !712, size: 64, offset: 2560)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !427, file: !54, line: 715, baseType: !217, size: 32, offset: 2624)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !427, file: !54, line: 716, baseType: !217, size: 32, offset: 2656)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !427, file: !54, line: 717, baseType: !217, size: 32, offset: 2688)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !427, file: !54, line: 719, baseType: !217, size: 32, offset: 2720)
!4536 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !54, line: 721, baseType: !4537, size: 64, offset: 2752)
!4537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !54, line: 721, size: 64, elements: !4538)
!4538 = !{!4539, !4540}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4537, file: !54, line: 722, baseType: !2306, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4537, file: !54, line: 723, baseType: !645, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !427, file: !54, line: 725, baseType: !4542, size: 64, offset: 2816)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !54, line: 725, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !427, file: !54, line: 726, baseType: !423, size: 1536, align: 64, offset: 2880)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !427, file: !54, line: 727, baseType: !265, size: 128, offset: 4416)
!4546 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !54, line: 728, baseType: !4547, size: 64, offset: 4544)
!4547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !54, line: 728, size: 64, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4547, file: !54, line: 729, baseType: !2757, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4547, file: !54, line: 730, baseType: !2299, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4547, file: !54, line: 731, baseType: !352, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4547, file: !54, line: 732, baseType: !7, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !427, file: !54, line: 735, baseType: !496, size: 32, offset: 4608)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !427, file: !54, line: 738, baseType: !496, size: 32, offset: 4640)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !427, file: !54, line: 739, baseType: !4236, size: 64, offset: 4672)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !427, file: !54, line: 750, baseType: !189, size: 64, offset: 4736)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !423, file: !54, line: 474, baseType: !837, size: 128, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !423, file: !54, line: 475, baseType: !1199, size: 320, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !423, file: !54, line: 476, baseType: !842, size: 32, offset: 512)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !423, file: !54, line: 477, baseType: !217, size: 32, offset: 544)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !423, file: !54, line: 482, baseType: !1027, size: 128, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !423, file: !54, line: 483, baseType: !207, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !423, file: !54, line: 484, baseType: !207, size: 64, offset: 768)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !423, file: !54, line: 485, baseType: !4565, size: 64, offset: 832)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4567)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !54, line: 404, size: 1280, elements: !4568)
!4568 = !{!4569, !4573, !4643, !4647, !4651, !4657, !4661, !4665, !4670, !4674, !4678, !4682, !4683, !4687, !4691, !4695, !4700, !4704, !4711, !4712}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4567, file: !54, line: 405, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!27, !2545, !657}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4567, file: !54, line: 406, baseType: !4574, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!27, !1171, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !129, line: 293, size: 1536, elements: !4579)
!4579 = !{!4580, !4610, !4624}
!4580 = !DIDerivedType(tag: DW_TAG_member, scope: !4578, file: !129, line: 295, baseType: !4581, size: 512)
!4581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4578, file: !129, line: 295, size: 512, elements: !4582)
!4582 = !{!4583, !4609}
!4583 = !DIDerivedType(tag: DW_TAG_member, scope: !4581, file: !129, line: 296, baseType: !4584, size: 448)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4581, file: !129, line: 296, size: 448, elements: !4585)
!4585 = !{!4586, !4587, !4596, !4597, !4598, !4607, !4608}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4584, file: !129, line: 298, baseType: !207, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, scope: !4584, file: !129, line: 299, baseType: !4588, size: 128, offset: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4584, file: !129, line: 299, size: 128, elements: !4589)
!4589 = !{!4590, !4591}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4588, file: !129, line: 300, baseType: !265, size: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, scope: !4588, file: !129, line: 302, baseType: !4592, size: 128)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4588, file: !129, line: 302, size: 128, elements: !4593)
!4593 = !{!4594, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4592, file: !129, line: 303, baseType: !189, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4592, file: !129, line: 305, baseType: !7, size: 32, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4584, file: !129, line: 310, baseType: !422, size: 64, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4584, file: !129, line: 311, baseType: !207, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, scope: !4584, file: !129, line: 312, baseType: !4599, size: 64, offset: 320)
!4599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4584, file: !129, line: 312, size: 64, elements: !4600)
!4600 = !{!4601, !4602}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4599, file: !129, line: 313, baseType: !189, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4599, file: !129, line: 314, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !129, line: 257, baseType: !4604)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 255, size: 64, elements: !4605)
!4605 = !{!4606}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4604, file: !129, line: 256, baseType: !207, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4584, file: !129, line: 316, baseType: !217, size: 32, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4584, file: !129, line: 317, baseType: !217, size: 32, offset: 416)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4581, file: !129, line: 323, baseType: !2546, size: 512, align: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, scope: !4578, file: !129, line: 325, baseType: !4611, size: 512, offset: 512)
!4611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4578, file: !129, line: 325, size: 512, elements: !4612)
!4612 = !{!4613, !4623}
!4613 = !DIDerivedType(tag: DW_TAG_member, scope: !4611, file: !129, line: 326, baseType: !4614, size: 320)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !129, line: 326, size: 320, elements: !4615)
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4621, !4622}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4614, file: !129, line: 327, baseType: !207, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4614, file: !129, line: 328, baseType: !207, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4614, file: !129, line: 329, baseType: !207, size: 64, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4614, file: !129, line: 331, baseType: !217, size: 32, offset: 192)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4614, file: !129, line: 332, baseType: !217, size: 32, offset: 224)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4614, file: !129, line: 333, baseType: !217, size: 32, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4614, file: !129, line: 335, baseType: !7, size: 32, offset: 288)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4611, file: !129, line: 339, baseType: !2546, size: 512, align: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, scope: !4578, file: !129, line: 341, baseType: !4625, size: 512, offset: 1024)
!4625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4578, file: !129, line: 341, size: 512, elements: !4626)
!4626 = !{!4627, !4636, !4642}
!4627 = !DIDerivedType(tag: DW_TAG_member, scope: !4625, file: !129, line: 342, baseType: !4628, size: 384)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4625, file: !129, line: 342, size: 384, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4628, file: !129, line: 343, baseType: !207, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4628, file: !129, line: 344, baseType: !207, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4628, file: !129, line: 346, baseType: !189, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4628, file: !129, line: 347, baseType: !189, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4628, file: !129, line: 348, baseType: !189, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4628, file: !129, line: 349, baseType: !189, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, scope: !4625, file: !129, line: 352, baseType: !4637, size: 256)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4625, file: !129, line: 352, size: 256, elements: !4638)
!4638 = !{!4639, !4640, !4641}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4637, file: !129, line: 353, baseType: !207, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4637, file: !129, line: 354, baseType: !207, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4637, file: !129, line: 356, baseType: !265, size: 128, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4625, file: !129, line: 359, baseType: !2546, size: 512, align: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4567, file: !54, line: 409, baseType: !4644, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!27, !422, !657}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4567, file: !54, line: 412, baseType: !4648, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!1571, !422, !4577}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4567, file: !54, line: 414, baseType: !4652, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !54, line: 310, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4567, file: !54, line: 416, baseType: !4658, size: 64, offset: 320)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!27, !1171, !422, !209, !7, !3630, !2772}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4567, file: !54, line: 419, baseType: !4662, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!27, !1171, !422, !209, !7, !7, !2545, !189}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4567, file: !54, line: 424, baseType: !4666, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!4669, !422, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 131, baseType: !499)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4567, file: !54, line: 425, baseType: !4671, size: 64, offset: 512)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !4577, !203, !203}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4567, file: !54, line: 426, baseType: !4675, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!1571, !4577, !842}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4567, file: !54, line: 427, baseType: !4679, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !4577}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4567, file: !54, line: 428, baseType: !2324, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4567, file: !54, line: 433, baseType: !4684, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!27, !422, !4577, !4577, !173}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4567, file: !54, line: 435, baseType: !4688, size: 64, offset: 832)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!27, !4577}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4567, file: !54, line: 436, baseType: !4692, size: 64, offset: 896)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!1571, !4577, !203, !203}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4567, file: !54, line: 438, baseType: !4696, size: 64, offset: 960)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{null, !4577, !4699, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4567, file: !54, line: 439, baseType: !4701, size: 64, offset: 1024)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!27, !422, !2545}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4567, file: !54, line: 442, baseType: !4705, size: 64, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!27, !4708, !1171, !4710}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !54, line: 66, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4567, file: !54, line: 444, baseType: !2764, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4567, file: !54, line: 445, baseType: !4713, size: 64, offset: 1216)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!27, !2327, !2349}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !54, line: 486, baseType: !207, size: 64, offset: 896)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !423, file: !54, line: 487, baseType: !1199, size: 320, offset: 960)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !423, file: !54, line: 488, baseType: !3922, size: 32, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !423, file: !54, line: 489, baseType: !227, size: 32, offset: 1312)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !423, file: !54, line: 490, baseType: !265, size: 128, offset: 1344)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !423, file: !54, line: 491, baseType: !189, size: 64, offset: 1472)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !413, file: !378, line: 180, baseType: !4723, size: 64, offset: 320)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!384, !1171, !317, !412, !352, !209, !203}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !413, file: !378, line: 182, baseType: !4723, size: 64, offset: 384)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !413, file: !378, line: 184, baseType: !4728, size: 64, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!27, !1171, !317, !412, !2438}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !401, file: !378, line: 90, baseType: !4732, size: 64, offset: 192)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !401, file: !378, line: 91, baseType: !4734, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !368, file: !312, line: 120, baseType: !4736, size: 64, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!2232, !335}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !368, file: !312, line: 121, baseType: !4740, size: 64, offset: 256)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!1278, !335}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !368, file: !312, line: 122, baseType: !4744, size: 64, offset: 320)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !335, !1827, !1828}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !311, file: !312, line: 70, baseType: !4748, size: 64, offset: 384)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4750, line: 190, size: 1152, elements: !4751)
!4750 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4831, !4832, !4833, !4834, !4835, !4838}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4749, file: !4750, line: 191, baseType: !217, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4749, file: !4750, line: 192, baseType: !217, size: 32, offset: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4749, file: !4750, line: 202, baseType: !4748, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4749, file: !4750, line: 203, baseType: !185, size: 64, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4749, file: !4750, line: 205, baseType: !898, size: 192, align: 64, offset: 192)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4749, file: !4750, line: 207, baseType: !1278, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4749, file: !4750, line: 208, baseType: !7, size: 32, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_member, scope: !4749, file: !4750, line: 209, baseType: !4760, size: 256, offset: 512)
!4760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4749, file: !4750, line: 209, size: 256, elements: !4761)
!4761 = !{!4762, !4771, !4775}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4760, file: !4750, line: 210, baseType: !4763, size: 256)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4750, line: 153, size: 256, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4770}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4763, file: !4750, line: 154, baseType: !207, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4763, file: !4750, line: 156, baseType: !1030, size: 64, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4763, file: !4750, line: 162, baseType: !4768, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4750, line: 162, flags: DIFlagFwdDecl)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4763, file: !4750, line: 167, baseType: !207, size: 64, offset: 192)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4760, file: !4750, line: 211, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4750, line: 170, size: 64, elements: !4773)
!4773 = !{!4774}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4772, file: !4750, line: 171, baseType: !4748, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4760, file: !4750, line: 212, baseType: !4776, size: 256)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4750, line: 174, size: 256, elements: !4777)
!4777 = !{!4778, !4826, !4829, !4830}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4776, file: !4750, line: 175, baseType: !4779, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4750, line: 271, size: 768, elements: !4782)
!4782 = !{!4783, !4803, !4807, !4808, !4809, !4810, !4811, !4815, !4816, !4817, !4818, !4822}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4781, file: !4750, line: 276, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!27, !4787}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4750, line: 251, size: 1216, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4788, file: !4750, line: 253, baseType: !4748, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4788, file: !4750, line: 254, baseType: !1171, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4788, file: !4750, line: 255, baseType: !694, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4788, file: !4750, line: 256, baseType: !189, size: 64, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4788, file: !4750, line: 259, baseType: !706, size: 256, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4788, file: !4750, line: 260, baseType: !706, size: 256, offset: 512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4788, file: !4750, line: 261, baseType: !27, size: 32, offset: 768)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4788, file: !4750, line: 262, baseType: !265, size: 128, offset: 832)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4788, file: !4750, line: 263, baseType: !352, size: 64, offset: 960)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4788, file: !4750, line: 265, baseType: !203, size: 64, offset: 1024)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4788, file: !4750, line: 266, baseType: !1571, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4788, file: !4750, line: 267, baseType: !1571, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4788, file: !4750, line: 268, baseType: !2481, size: 64, offset: 1152)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4781, file: !4750, line: 277, baseType: !4804, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4787}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4781, file: !4750, line: 290, baseType: !744, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4781, file: !4750, line: 292, baseType: !732, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4781, file: !4750, line: 293, baseType: !740, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4781, file: !4750, line: 294, baseType: !736, size: 64, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4781, file: !4750, line: 296, baseType: !4812, size: 64, offset: 384)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!384, !4787, !352, !203, !209}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4781, file: !4750, line: 306, baseType: !203, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4781, file: !4750, line: 313, baseType: !1571, size: 8, offset: 512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4781, file: !4750, line: 314, baseType: !4812, size: 64, offset: 576)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4781, file: !4750, line: 317, baseType: !4819, size: 64, offset: 640)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!2425, !4787, !2427}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4781, file: !4750, line: 320, baseType: !4823, size: 64, offset: 704)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!27, !4787, !2438}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4776, file: !4750, line: 176, baseType: !4827, size: 64, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4750, line: 35, flags: DIFlagFwdDecl)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4776, file: !4750, line: 177, baseType: !209, size: 64, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4776, file: !4750, line: 178, baseType: !4748, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4749, file: !4750, line: 215, baseType: !189, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4749, file: !4750, line: 221, baseType: !499, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4749, file: !4750, line: 223, baseType: !194, size: 16, offset: 896)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4749, file: !4750, line: 224, baseType: !192, size: 16, offset: 912)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4749, file: !4750, line: 225, baseType: !4836, size: 64, offset: 960)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4750, line: 36, flags: DIFlagFwdDecl)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4749, file: !4750, line: 227, baseType: !763, size: 128, align: 64, offset: 1024)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !311, file: !312, line: 71, baseType: !1794, size: 32, offset: 448)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !311, file: !312, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !311, file: !312, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !311, file: !312, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !311, file: !312, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !311, file: !312, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !308, file: !47, line: 47, baseType: !298, size: 64, offset: 512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !308, file: !47, line: 48, baseType: !317, size: 64, offset: 576)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !308, file: !47, line: 49, baseType: !4848, size: 64, offset: 640)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !47, line: 49, flags: DIFlagFwdDecl)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !308, file: !47, line: 50, baseType: !1432, size: 64, offset: 704)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !299, file: !47, line: 418, baseType: !4852, size: 64, offset: 1408)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !47, line: 53, size: 448, elements: !4854)
!4854 = !{!4855, !4856, !4861, !4865, !4869, !4873}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4853, file: !47, line: 54, baseType: !389, size: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4853, file: !47, line: 55, baseType: !4857, size: 64, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!384, !4852, !4860, !352}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4853, file: !47, line: 57, baseType: !4862, size: 64, offset: 192)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!384, !4852, !4860, !185, !203}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4853, file: !47, line: 59, baseType: !4866, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !298, !185}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4853, file: !47, line: 60, baseType: !4870, size: 64, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!27, !298}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4853, file: !47, line: 61, baseType: !4874, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !298}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !299, file: !47, line: 419, baseType: !185, size: 64, offset: 1472)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !299, file: !47, line: 420, baseType: !185, size: 64, offset: 1536)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !299, file: !47, line: 421, baseType: !317, size: 64, offset: 1600)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !299, file: !47, line: 424, baseType: !4881, size: 64, offset: 1664)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4883)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !47, line: 424, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !299, file: !47, line: 425, baseType: !4885, size: 64, offset: 1728)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !299, file: !47, line: 426, baseType: !7, size: 32, offset: 1792)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !299, file: !47, line: 435, baseType: !706, size: 256, offset: 1856)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !299, file: !47, line: 437, baseType: !4890, size: 64, offset: 2112)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4892, line: 69, size: 320, elements: !4893)
!4892 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4893 = !{!4894, !4895, !4896, !4913, !4915, !4919, !4920}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4891, file: !4892, line: 70, baseType: !185, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4891, file: !4892, line: 71, baseType: !298, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4891, file: !4892, line: 72, baseType: !4897, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4899)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4892, line: 47, size: 256, elements: !4900)
!4900 = !{!4901, !4902, !4908, !4912}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4899, file: !4892, line: 49, baseType: !7, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4899, file: !4892, line: 51, baseType: !4903, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!27, !185, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4891)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4899, file: !4892, line: 53, baseType: !4909, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!27, !352, !4906}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4899, file: !4892, line: 55, baseType: !2256, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4891, file: !4892, line: 73, baseType: !4914, size: 16, offset: 192)
!4914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4891, file: !4892, line: 74, baseType: !4916, size: 8, offset: 208)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !252, line: 16, baseType: !4917)
!4917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !254, line: 20, baseType: !4918)
!4918 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4891, file: !4892, line: 75, baseType: !251, size: 8, offset: 216)
!4920 = !DIDerivedType(tag: DW_TAG_member, scope: !4891, file: !4892, line: 76, baseType: !4921, size: 64, offset: 256)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4891, file: !4892, line: 76, size: 64, elements: !4922)
!4922 = !{!4923, !4924, !4931}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4921, file: !4892, line: 77, baseType: !189, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4921, file: !4892, line: 78, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4927)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4892, line: 86, size: 128, elements: !4928)
!4928 = !{!4929, !4930}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4927, file: !4892, line: 87, baseType: !7, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4927, file: !4892, line: 88, baseType: !352, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4921, file: !4892, line: 79, baseType: !4932, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4934)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4892, line: 92, size: 256, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939, !4940}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4934, file: !4892, line: 94, baseType: !7, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4934, file: !4892, line: 95, baseType: !7, size: 32, offset: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4934, file: !4892, line: 96, baseType: !4222, size: 64, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4934, file: !4892, line: 97, baseType: !4897, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4934, file: !4892, line: 98, baseType: !189, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !299, file: !47, line: 438, baseType: !7, size: 32, offset: 2176)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !299, file: !47, line: 441, baseType: !7, size: 32, offset: 2208)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !299, file: !47, line: 442, baseType: !4881, size: 64, offset: 2240)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !299, file: !47, line: 443, baseType: !4885, size: 64, offset: 2304)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !299, file: !47, line: 444, baseType: !1571, size: 8, offset: 2368)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !299, file: !47, line: 451, baseType: !1571, size: 8, offset: 2376)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !299, file: !47, line: 454, baseType: !7, size: 32, offset: 2400)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !299, file: !47, line: 455, baseType: !4949, size: 64, offset: 2432)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4951, line: 23, size: 96, elements: !4952)
!4951 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4952 = !{!4953, !4954, !4955}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4950, file: !4951, line: 24, baseType: !27, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4950, file: !4951, line: 24, baseType: !27, size: 32, offset: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4950, file: !4951, line: 24, baseType: !27, size: 32, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !299, file: !47, line: 458, baseType: !4957, size: 64, offset: 2496)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!27}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !299, file: !47, line: 460, baseType: !4961, size: 4032, align: 512, offset: 2560)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4962, size: 4032, elements: !4976)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !47, line: 362, size: 576, elements: !4963)
!4963 = !{!4964, !4965, !4966}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4962, file: !47, line: 363, baseType: !189, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4962, file: !47, line: 364, baseType: !7, size: 32, offset: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4962, file: !47, line: 367, baseType: !4967, size: 448, offset: 128)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !47, line: 319, size: 448, elements: !4968)
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4967, file: !47, line: 320, baseType: !298, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4967, file: !47, line: 321, baseType: !4971, size: 384, offset: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4972, line: 40, size: 384, elements: !4973)
!4972 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4973 = !{!4974}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4971, file: !4972, line: 41, baseType: !4975, size: 384, align: 64)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 384, align: 64, elements: !1772)
!4976 = !{!4977}
!4977 = !DISubrange(count: 7)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !299, file: !47, line: 463, baseType: !4979, size: 192, offset: 6592)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4980, line: 8, size: 192, elements: !4981)
!4980 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4981 = !{!4982, !4983, !4984}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4979, file: !4980, line: 10, baseType: !7, size: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4979, file: !4980, line: 11, baseType: !291, size: 64, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4979, file: !4980, line: 12, baseType: !4985, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4987, line: 59, size: 48, elements: !4988)
!4987 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4988 = !{!4989, !4990, !4991, !4992, !4993, !4994}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4986, file: !4987, line: 60, baseType: !1295, size: 16)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4986, file: !4987, line: 61, baseType: !1295, size: 16, offset: 16)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4986, file: !4987, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4986, file: !4987, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4986, file: !4987, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4986, file: !4987, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !299, file: !47, line: 465, baseType: !207, size: 64, offset: 6784)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !299, file: !47, line: 469, baseType: !7, size: 32, offset: 6848)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !299, file: !47, line: 470, baseType: !265, size: 128, offset: 6912)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !299, file: !47, line: 471, baseType: !4999, size: 64, offset: 7040)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5001, line: 33, size: 96, elements: !5002)
!5001 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5002 = !{!5003, !5004, !5005, !5006}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5000, file: !5001, line: 37, baseType: !27, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5000, file: !5001, line: 43, baseType: !27, size: 32, offset: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5000, file: !5001, line: 45, baseType: !194, size: 16, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5000, file: !5001, line: 47, baseType: !194, size: 16, offset: 80)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !299, file: !47, line: 476, baseType: !5008, size: 64, offset: 7104)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !47, line: 378, size: 256, elements: !5010)
!5010 = !{!5011, !5027, !5028, !5029}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5009, file: !47, line: 379, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5014, line: 204, baseType: !5015)
!5014 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5014, line: 197, size: 192, elements: !5016)
!5016 = !{!5017, !5019, !5020, !5021, !5023, !5025}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5015, file: !5014, line: 198, baseType: !5018, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5014, line: 21, baseType: !496)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5015, file: !5014, line: 199, baseType: !255, size: 8, offset: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5015, file: !5014, line: 200, baseType: !255, size: 8, offset: 40)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5015, file: !5014, line: 201, baseType: !5022, size: 16, offset: 48)
!5022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5014, line: 17, baseType: !262)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5015, file: !5014, line: 202, baseType: !5024, size: 64, offset: 64)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5014, line: 16, baseType: !500)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5015, file: !5014, line: 203, baseType: !5026, size: 64, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5014, line: 22, baseType: !500)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5009, file: !47, line: 380, baseType: !7, size: 32, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5009, file: !47, line: 381, baseType: !352, size: 64, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5009, file: !47, line: 382, baseType: !352, size: 64, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !299, file: !47, line: 477, baseType: !5009, size: 256, offset: 7168)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !299, file: !47, line: 480, baseType: !5032, size: 64, offset: 7424)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !47, line: 480, flags: DIFlagFwdDecl)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !299, file: !47, line: 483, baseType: !5035, size: 64, offset: 7488)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !47, line: 483, flags: DIFlagFwdDecl)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !299, file: !47, line: 488, baseType: !352, size: 64, offset: 7552)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !299, file: !47, line: 492, baseType: !189, size: 64, offset: 7616)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !299, file: !47, line: 493, baseType: !7, size: 32, offset: 7680)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !299, file: !47, line: 495, baseType: !189, size: 64, offset: 7744)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !299, file: !47, line: 496, baseType: !7, size: 32, offset: 7808)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !299, file: !47, line: 499, baseType: !7, size: 32, offset: 7840)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !299, file: !47, line: 500, baseType: !5044, size: 64, offset: 7872)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5046, line: 45, baseType: !5047)
!5046 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !299, file: !47, line: 503, baseType: !7, size: 32, offset: 7936)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !299, file: !47, line: 504, baseType: !5050, size: 64, offset: 8000)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5053, line: 96, size: 192, elements: !5054)
!5053 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5054 = !{!5055, !5056, !5099, !5101}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5052, file: !5053, line: 97, baseType: !7, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5052, file: !5053, line: 98, baseType: !5057, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5053, line: 24, size: 3072, elements: !5059)
!5059 = !{!5060, !5062, !5063, !5064, !5065, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5096, !5097, !5098}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5058, file: !5053, line: 26, baseType: !5061, size: 128)
!5061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 128, elements: !1772)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5058, file: !5053, line: 27, baseType: !5061, size: 128, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5058, file: !5053, line: 28, baseType: !27, size: 32, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5058, file: !5053, line: 31, baseType: !227, size: 32, align: 512, offset: 512)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5058, file: !5053, line: 32, baseType: !5066, size: 960, offset: 576)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5067, line: 206, size: 960, elements: !5068)
!5067 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5068 = !{!5069, !5070, !5073, !5075, !5076, !5078}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5066, file: !5067, line: 207, baseType: !766, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5066, file: !5067, line: 208, baseType: !5071, size: 256, offset: 64)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5072, size: 256, elements: !817)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5066, file: !5067, line: 209, baseType: !5074, size: 256, offset: 320)
!5074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !817)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5066, file: !5067, line: 213, baseType: !387, size: 64, offset: 576)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5066, file: !5067, line: 215, baseType: !5077, size: 256, offset: 640)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !817)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5066, file: !5067, line: 216, baseType: !251, size: 8, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5058, file: !5053, line: 33, baseType: !207, size: 64, offset: 1536)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5058, file: !5053, line: 34, baseType: !207, size: 64, offset: 1600)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5058, file: !5053, line: 35, baseType: !1571, size: 8, offset: 1664)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5058, file: !5053, line: 36, baseType: !1976, size: 320, offset: 1728)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5058, file: !5053, line: 37, baseType: !1320, size: 256, offset: 2048)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5058, file: !5053, line: 38, baseType: !763, size: 128, align: 64, offset: 2304)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5058, file: !5053, line: 39, baseType: !5086, size: 64, offset: 2432)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5053, line: 49, size: 768, elements: !5088)
!5088 = !{!5089, !5090, !5091, !5092, !5093, !5094, !5095}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5087, file: !5053, line: 50, baseType: !227, size: 32)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5087, file: !5053, line: 51, baseType: !5074, size: 256, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5087, file: !5053, line: 53, baseType: !5074, size: 256, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5087, file: !5053, line: 54, baseType: !207, size: 64, offset: 576)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5087, file: !5053, line: 55, baseType: !5086, size: 64, offset: 640)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5087, file: !5053, line: 56, baseType: !27, size: 32, offset: 704)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5087, file: !5053, line: 57, baseType: !27, size: 32, offset: 736)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5058, file: !5053, line: 40, baseType: !207, size: 64, offset: 2496)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5058, file: !5053, line: 42, baseType: !27, size: 32, offset: 2560)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5058, file: !5053, line: 43, baseType: !5051, size: 64, offset: 2624)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5052, file: !5053, line: 99, baseType: !5100, offset: 128)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !625, line: 211, elements: !626)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5052, file: !5053, line: 100, baseType: !5102, size: 64, offset: 128)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5053, line: 63, size: 3008, elements: !5104)
!5104 = !{!5105, !5106, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5134}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5103, file: !5053, line: 64, baseType: !5086, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5103, file: !5053, line: 65, baseType: !5107, size: 192, offset: 64)
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5086, size: 192, elements: !353)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5103, file: !5053, line: 67, baseType: !27, size: 32, offset: 256)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5103, file: !5053, line: 68, baseType: !706, size: 256, offset: 320)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5103, file: !5053, line: 69, baseType: !227, size: 32, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5103, file: !5053, line: 70, baseType: !706, size: 256, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5103, file: !5053, line: 71, baseType: !207, size: 64, offset: 896)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5103, file: !5053, line: 72, baseType: !207, size: 64, offset: 960)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5103, file: !5053, line: 73, baseType: !207, size: 64, offset: 1024)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5103, file: !5053, line: 74, baseType: !207, size: 64, offset: 1088)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5103, file: !5053, line: 75, baseType: !207, size: 64, offset: 1152)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5103, file: !5053, line: 76, baseType: !207, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5103, file: !5053, line: 77, baseType: !207, size: 64, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5103, file: !5053, line: 78, baseType: !207, size: 64, offset: 1344)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5103, file: !5053, line: 79, baseType: !1571, size: 8, offset: 1408)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5103, file: !5053, line: 80, baseType: !207, size: 64, offset: 1472)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5103, file: !5053, line: 81, baseType: !706, size: 256, offset: 1536)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5103, file: !5053, line: 82, baseType: !1433, size: 256, offset: 1792)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5103, file: !5053, line: 84, baseType: !217, size: 32, offset: 2048)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5103, file: !5053, line: 87, baseType: !207, size: 64, offset: 2112)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5103, file: !5053, line: 88, baseType: !207, size: 64, offset: 2176)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5103, file: !5053, line: 89, baseType: !5128, size: 704, offset: 2240)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1321, line: 111, size: 704, elements: !5129)
!5129 = !{!5130, !5131, !5132, !5133}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5128, file: !1321, line: 112, baseType: !1320, size: 256)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5128, file: !1321, line: 113, baseType: !1976, size: 320, offset: 256)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5128, file: !1321, line: 116, baseType: !4271, size: 64, offset: 576)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5128, file: !1321, line: 117, baseType: !27, size: 32, offset: 640)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5103, file: !5053, line: 90, baseType: !5051, size: 64, offset: 2944)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !299, file: !47, line: 515, baseType: !5136, size: 64, offset: 8064)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5138, line: 117, size: 128, elements: !5139)
!5138 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5139 = !{!5140, !5141, !5142}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5137, file: !5138, line: 118, baseType: !1245, size: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5137, file: !5138, line: 119, baseType: !1245, size: 32, offset: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5137, file: !5138, line: 120, baseType: !387, size: 64, offset: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !299, file: !47, line: 516, baseType: !7, size: 32, offset: 8128)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !299, file: !47, line: 519, baseType: !7, size: 32, offset: 8160)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !299, file: !47, line: 520, baseType: !2148, size: 64, offset: 8192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !299, file: !47, line: 523, baseType: !5147, size: 64, offset: 8256)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !47, line: 523, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !299, file: !47, line: 524, baseType: !7, size: 32, offset: 8320)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !299, file: !47, line: 525, baseType: !5152, size: 64, offset: 8384)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !5155, line: 28, size: 192, elements: !5156)
!5155 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!5156 = !{!5157, !5158, !5159}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5154, file: !5155, line: 29, baseType: !185, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !5154, file: !5155, line: 30, baseType: !185, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !5154, file: !5155, line: 31, baseType: !207, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !299, file: !47, line: 526, baseType: !7, size: 32, offset: 8448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !299, file: !47, line: 533, baseType: !189, size: 64, offset: 8512)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !299, file: !47, line: 534, baseType: !7, size: 32, offset: 8576)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !299, file: !47, line: 535, baseType: !5164, size: 64, offset: 8640)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !299, file: !47, line: 536, baseType: !7, size: 32, offset: 8704)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !299, file: !47, line: 539, baseType: !27, size: 32, offset: 8736)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !299, file: !47, line: 540, baseType: !5168, size: 64, offset: 8768)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5170, line: 32, size: 64, elements: !5171)
!5170 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5171 = !{!5172, !5173}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5169, file: !5170, line: 33, baseType: !1245, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5169, file: !5170, line: 34, baseType: !1245, size: 32, offset: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !299, file: !47, line: 563, baseType: !265, size: 128, offset: 8832)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !299, file: !47, line: 565, baseType: !265, size: 128, offset: 8960)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !299, file: !47, line: 568, baseType: !5177, size: 64, offset: 9088)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !299, file: !47, line: 570, baseType: !217, size: 32, offset: 9152)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5181)
!5181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !495)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !387)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5193)
!5193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5194)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !5046, line: 26, size: 192, elements: !5196)
!5196 = !{!5197, !5198, !5199}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5195, file: !5046, line: 27, baseType: !189, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5195, file: !5046, line: 28, baseType: !189, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5195, file: !5046, line: 29, baseType: !27, size: 32, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!5202 = !{!0, !5203, !5205, !5207, !5209, !5226, !5228, !5230, !5232, !5234, !5237, !5239, !5242, !5244, !5249, !5254, !5300, !5305, !5310, !5315, !5317, !5326, !5341, !5346, !5349, !5351, !5353, !5358, !5360, !5365, !5370, !5373, !5378, !5380, !5382, !5387, !5389, !5391, !5393, !5395, !5397, !5399, !5410, !5412, !5414, !5416, !5418, !5420, !5422, !5424, !5426, !5428, !5433, !5438, !5440, !5445, !5448, !5450, !5464, !5467, !5469, !5471, !5481, !5483, !5488, !5493, !5522, !5524, !5532, !5534, !5536, !5538, !5541, !5544, !5549, !5551, !5554, !5559, !5561, !5566, !5569, !5571, !5576, !5579}
!5203 = !DIGlobalVariableExpression(var: !5204, expr: !DIExpression())
!5204 = distinct !DIGlobalVariable(name: "panic_on_taint_nousertaint", scope: !2, file: !3, line: 63, type: !1571, isLocal: false, isDefinition: true)
!5205 = !DIGlobalVariableExpression(var: !5206, expr: !DIExpression())
!5206 = distinct !DIGlobalVariable(name: "panic_timeout", scope: !2, file: !3, line: 66, type: !27, isLocal: false, isDefinition: true)
!5207 = !DIGlobalVariableExpression(var: !5208, expr: !DIExpression())
!5208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_panic_timeout341", scope: !2, file: !3, line: 67, type: !189, isLocal: true, isDefinition: true)
!5209 = !DIGlobalVariableExpression(var: !5210, expr: !DIExpression())
!5210 = distinct !DIGlobalVariable(name: "panic_notifier_list", scope: !2, file: !3, line: 78, type: !5211, isLocal: false, isDefinition: true)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !5212, line: 60, size: 128, elements: !5213)
!5212 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5213 = !{!5214, !5215}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5211, file: !5212, line: 61, baseType: !227, size: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5211, file: !5212, line: 62, baseType: !5216, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5212, line: 54, size: 192, elements: !5218)
!5218 = !{!5219, !5224, !5225}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5217, file: !5212, line: 55, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5212, line: 51, baseType: !5221)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!27, !5216, !207, !189}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5217, file: !5212, line: 56, baseType: !5216, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5217, file: !5212, line: 57, baseType: !27, size: 32, offset: 128)
!5226 = !DIGlobalVariableExpression(var: !5227, expr: !DIExpression())
!5227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_panic_notifier_list342", scope: !2, file: !3, line: 80, type: !189, isLocal: true, isDefinition: true)
!5228 = !DIGlobalVariableExpression(var: !5229, expr: !DIExpression())
!5229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_panic__343_110_kernel_panic_sysctls_init7344", scope: !2, file: !3, line: 110, type: !189, isLocal: true, isDefinition: true)
!5230 = !DIGlobalVariableExpression(var: !5231, expr: !DIExpression())
!5231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_panic__345_129_kernel_panic_sysfs_init7346", scope: !2, file: !3, line: 129, type: !189, isLocal: true, isDefinition: true)
!5232 = !DIGlobalVariableExpression(var: !5233, expr: !DIExpression())
!5233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_panic_blink347", scope: !2, file: !3, line: 139, type: !189, isLocal: true, isDefinition: true)
!5234 = !DIGlobalVariableExpression(var: !5235, expr: !DIExpression())
!5235 = distinct !DIGlobalVariable(name: "cpus_stopped", scope: !5236, file: !3, line: 167, type: !27, isLocal: true, isDefinition: true)
!5236 = distinct !DISubprogram(name: "crash_smp_send_stop", scope: !3, file: !3, line: 165, type: !3287, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5237 = !DIGlobalVariableExpression(var: !5238, expr: !DIExpression())
!5238 = distinct !DIGlobalVariable(name: "panic_cpu", scope: !2, file: !3, line: 185, type: !217, isLocal: false, isDefinition: true)
!5239 = !DIGlobalVariableExpression(var: !5240, expr: !DIExpression())
!5240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !5241, isLocal: true, isDefinition: true)
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 24, elements: !353)
!5242 = !DIGlobalVariableExpression(var: !5243, expr: !DIExpression())
!5243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nmi_panic348", scope: !2, file: !3, line: 205, type: !189, isLocal: true, isDefinition: true)
!5244 = !DIGlobalVariableExpression(var: !5245, expr: !DIExpression())
!5245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !5246, isLocal: true, isDefinition: true)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 216, elements: !5247)
!5247 = !{!5248}
!5248 = !DISubrange(count: 27)
!5249 = !DIGlobalVariableExpression(var: !5250, expr: !DIExpression())
!5250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5251, isLocal: true, isDefinition: true)
!5251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 432, elements: !5252)
!5252 = !{!5253}
!5253 = !DISubrange(count: 54)
!5254 = !DIGlobalVariableExpression(var: !5255, expr: !DIExpression())
!5255 = distinct !DIGlobalVariable(name: "buf", scope: !5256, file: !3, line: 278, type: !5297, isLocal: true, isDefinition: true)
!5256 = distinct !DISubprogram(name: "panic", scope: !3, file: !3, line: 276, type: !5257, scopeLine: 277, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !185, null}
!5259 = !{!5260, !5261, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5281, !5283, !5285, !5292}
!5260 = !DILocalVariable(name: "fmt", arg: 1, scope: !5256, file: !3, line: 276, type: !185)
!5261 = !DILocalVariable(name: "args", scope: !5256, file: !3, line: 279, type: !5262)
!5262 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5263, line: 5, baseType: !5264)
!5263 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5265)
!5265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5266, size: 192, elements: !1096)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5266, file: !3, line: 279, baseType: !7, size: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5266, file: !3, line: 279, baseType: !7, size: 32, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5266, file: !3, line: 279, baseType: !189, size: 64, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5266, file: !3, line: 279, baseType: !189, size: 64, offset: 128)
!5272 = !DILocalVariable(name: "i", scope: !5256, file: !3, line: 280, type: !387)
!5273 = !DILocalVariable(name: "i_next", scope: !5256, file: !3, line: 280, type: !387)
!5274 = !DILocalVariable(name: "len", scope: !5256, file: !3, line: 280, type: !387)
!5275 = !DILocalVariable(name: "state", scope: !5256, file: !3, line: 281, type: !27)
!5276 = !DILocalVariable(name: "old_cpu", scope: !5256, file: !3, line: 282, type: !27)
!5277 = !DILocalVariable(name: "this_cpu", scope: !5256, file: !3, line: 282, type: !27)
!5278 = !DILocalVariable(name: "_crash_kexec_post_notifiers", scope: !5256, file: !3, line: 283, type: !1571)
!5279 = !DILocalVariable(name: "pscr_ret__", scope: !5280, file: !3, line: 319, type: !27)
!5280 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 319, column: 13)
!5281 = !DILocalVariable(name: "__vpp_verify", scope: !5282, file: !3, line: 319, type: !1278)
!5282 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 319, column: 13)
!5283 = !DILocalVariable(name: "pfo_val__", scope: !5284, file: !3, line: 319, type: !495)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 319, column: 13)
!5285 = !DILocalVariable(name: "__ms", scope: !5286, file: !3, line: 416, type: !207)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 416, column: 4)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 410, column: 64)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 410, column: 3)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 410, column: 3)
!5290 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 403, column: 25)
!5291 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 403, column: 6)
!5292 = !DILocalVariable(name: "__ms", scope: !5293, file: !3, line: 460, type: !207)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 460, column: 3)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 454, column: 39)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 454, column: 2)
!5296 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 454, column: 2)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 8192, elements: !5298)
!5298 = !{!5299}
!5299 = !DISubrange(count: 1024)
!5300 = !DIGlobalVariableExpression(var: !5301, expr: !DIExpression())
!5301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !5302, isLocal: true, isDefinition: true)
!5302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 272, elements: !5303)
!5303 = !{!5304}
!5304 = !DISubrange(count: 34)
!5305 = !DIGlobalVariableExpression(var: !5306, expr: !DIExpression())
!5306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !5307, isLocal: true, isDefinition: true)
!5307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 232, elements: !5308)
!5308 = !{!5309}
!5309 = !DISubrange(count: 29)
!5310 = !DIGlobalVariableExpression(var: !5311, expr: !DIExpression())
!5311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !5312, isLocal: true, isDefinition: true)
!5312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 384, elements: !5313)
!5313 = !{!5314}
!5314 = !DISubrange(count: 48)
!5315 = !DIGlobalVariableExpression(var: !5316, expr: !DIExpression())
!5316 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_panic350", scope: !2, file: !3, line: 464, type: !189, isLocal: true, isDefinition: true)
!5317 = !DIGlobalVariableExpression(var: !5318, expr: !DIExpression())
!5318 = distinct !DIGlobalVariable(name: "taint_flags", scope: !2, file: !3, line: 470, type: !5319, isLocal: false, isDefinition: true)
!5319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5320, size: 456, elements: !2826)
!5320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5321)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taint_flag", file: !36, line: 79, size: 24, elements: !5322)
!5322 = !{!5323, !5324, !5325}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "c_true", scope: !5321, file: !36, line: 80, baseType: !187, size: 8)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "c_false", scope: !5321, file: !36, line: 81, baseType: !187, size: 8, offset: 8)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !5321, file: !36, line: 82, baseType: !1571, size: 8, offset: 16)
!5326 = !DIGlobalVariableExpression(var: !5327, expr: !DIExpression())
!5327 = distinct !DIGlobalVariable(name: "buf", scope: !5328, file: !3, line: 502, type: !5307, isLocal: true, isDefinition: true)
!5328 = distinct !DISubprogram(name: "print_tainted", scope: !3, file: !3, line: 500, type: !5329, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5331)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!185}
!5331 = !{!5332, !5335, !5336}
!5332 = !DILocalVariable(name: "s", scope: !5333, file: !3, line: 507, type: !352)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 506, column: 20)
!5334 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 506, column: 6)
!5335 = !DILocalVariable(name: "i", scope: !5333, file: !3, line: 508, type: !27)
!5336 = !DILocalVariable(name: "t", scope: !5337, file: !3, line: 512, type: !5340)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 511, column: 43)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 511, column: 3)
!5339 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 511, column: 3)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5341 = !DIGlobalVariableExpression(var: !5342, expr: !DIExpression())
!5342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !5343, isLocal: true, isDefinition: true)
!5343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 80, elements: !5344)
!5344 = !{!5345}
!5345 = !DISubrange(count: 10)
!5346 = !DIGlobalVariableExpression(var: !5347, expr: !DIExpression())
!5347 = distinct !DIGlobalVariable(scope: null, file: !3, line: 518, type: !5348, isLocal: true, isDefinition: true)
!5348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 96, elements: !3760)
!5349 = !DIGlobalVariableExpression(var: !5350, expr: !DIExpression())
!5350 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_test_taint352", scope: !2, file: !3, line: 527, type: !189, isLocal: true, isDefinition: true)
!5351 = !DIGlobalVariableExpression(var: !5352, expr: !DIExpression())
!5352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !5312, isLocal: true, isDefinition: true)
!5353 = !DIGlobalVariableExpression(var: !5354, expr: !DIExpression())
!5354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 551, type: !5355, isLocal: true, isDefinition: true)
!5355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 184, elements: !5356)
!5356 = !{!5357}
!5357 = !DISubrange(count: 23)
!5358 = !DIGlobalVariableExpression(var: !5359, expr: !DIExpression())
!5359 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_add_taint353", scope: !2, file: !3, line: 554, type: !189, isLocal: true, isDefinition: true)
!5360 = !DIGlobalVariableExpression(var: !5361, expr: !DIExpression())
!5361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !5362, isLocal: true, isDefinition: true)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 328, elements: !5363)
!5363 = !{!5364}
!5364 = !DISubrange(count: 41)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 670, type: !5367, isLocal: true, isDefinition: true)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 280, elements: !5368)
!5368 = !{!5369}
!5369 = !DISubrange(count: 35)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !5372, isLocal: true, isDefinition: true)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 56, elements: !4976)
!5373 = !DIGlobalVariableExpression(var: !5374, expr: !DIExpression())
!5374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !5375, isLocal: true, isDefinition: true)
!5375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 320, elements: !5376)
!5376 = !{!5377}
!5377 = !DISubrange(count: 40)
!5378 = !DIGlobalVariableExpression(var: !5379, expr: !DIExpression())
!5379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___warn_printk354", scope: !2, file: !3, line: 732, type: !189, isLocal: true, isDefinition: true)
!5380 = !DIGlobalVariableExpression(var: !5381, expr: !DIExpression())
!5381 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_panic__355_755_register_warn_debugfs6356", scope: !2, file: !3, line: 755, type: !189, isLocal: true, isDefinition: true)
!5382 = !DIGlobalVariableExpression(var: !5383, expr: !DIExpression())
!5383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 767, type: !5384, isLocal: true, isDefinition: true)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 408, elements: !5385)
!5385 = !{!5386}
!5386 = !DISubrange(count: 51)
!5387 = !DIGlobalVariableExpression(var: !5388, expr: !DIExpression())
!5388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___stack_chk_fail357", scope: !2, file: !3, line: 771, type: !189, isLocal: true, isDefinition: true)
!5389 = !DIGlobalVariableExpression(var: !5390, expr: !DIExpression())
!5390 = distinct !DIGlobalVariable(name: "__param_panic", scope: !2, file: !3, line: 775, type: !4907, isLocal: true, isDefinition: true, align: 64)
!5391 = !DIGlobalVariableExpression(var: !5392, expr: !DIExpression())
!5392 = distinct !DIGlobalVariable(name: "__param_panic_print", scope: !2, file: !3, line: 776, type: !4907, isLocal: true, isDefinition: true, align: 64)
!5393 = !DIGlobalVariableExpression(var: !5394, expr: !DIExpression())
!5394 = distinct !DIGlobalVariable(name: "__param_pause_on_oops", scope: !2, file: !3, line: 777, type: !4907, isLocal: true, isDefinition: true, align: 64)
!5395 = !DIGlobalVariableExpression(var: !5396, expr: !DIExpression())
!5396 = distinct !DIGlobalVariable(name: "__param_panic_on_warn", scope: !2, file: !3, line: 778, type: !4907, isLocal: true, isDefinition: true, align: 64)
!5397 = !DIGlobalVariableExpression(var: !5398, expr: !DIExpression())
!5398 = distinct !DIGlobalVariable(name: "__param_crash_kexec_post_notifiers", scope: !2, file: !3, line: 779, type: !4907, isLocal: true, isDefinition: true, align: 64)
!5399 = !DIGlobalVariableExpression(var: !5400, expr: !DIExpression())
!5400 = distinct !DIGlobalVariable(name: "__setup_oops_setup", scope: !2, file: !3, line: 789, type: !5401, isLocal: true, isDefinition: true, align: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5402, line: 324, size: 192, elements: !5403)
!5402 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5403 = !{!5404, !5405, !5409}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5401, file: !5402, line: 325, baseType: !185, size: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5401, file: !5402, line: 326, baseType: !5406, size: 64, offset: 64)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!27, !352}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5401, file: !5402, line: 327, baseType: !27, size: 32, offset: 128)
!5410 = !DIGlobalVariableExpression(var: !5411, expr: !DIExpression())
!5411 = distinct !DIGlobalVariable(name: "__setup_panic_on_taint_setup", scope: !2, file: !3, line: 816, type: !5401, isLocal: true, isDefinition: true, align: 64)
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(name: "sysctl_oops_all_cpu_backtrace", scope: !2, file: !3, line: 49, type: !7, isLocal: true, isDefinition: true)
!5414 = !DIGlobalVariableExpression(var: !5415, expr: !DIExpression())
!5415 = distinct !DIGlobalVariable(name: "pause_on_oops", scope: !2, file: !3, line: 57, type: !27, isLocal: true, isDefinition: true)
!5416 = !DIGlobalVariableExpression(var: !5417, expr: !DIExpression())
!5417 = distinct !DIGlobalVariable(name: "pause_on_oops_flag", scope: !2, file: !3, line: 58, type: !27, isLocal: true, isDefinition: true)
!5418 = !DIGlobalVariableExpression(var: !5419, expr: !DIExpression())
!5419 = distinct !DIGlobalVariable(name: "crash_kexec_post_notifiers", scope: !2, file: !3, line: 60, type: !1571, isLocal: false, isDefinition: true)
!5420 = !DIGlobalVariableExpression(var: !5421, expr: !DIExpression())
!5421 = distinct !DIGlobalVariable(name: "panic_on_warn", scope: !2, file: !3, line: 61, type: !27, isLocal: false, isDefinition: true)
!5422 = !DIGlobalVariableExpression(var: !5423, expr: !DIExpression())
!5423 = distinct !DIGlobalVariable(name: "panic_on_taint", scope: !2, file: !3, line: 62, type: !207, isLocal: false, isDefinition: true)
!5424 = !DIGlobalVariableExpression(var: !5425, expr: !DIExpression())
!5425 = distinct !DIGlobalVariable(name: "warn_limit", scope: !2, file: !3, line: 64, type: !7, isLocal: true, isDefinition: true)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(name: "panic_print", scope: !2, file: !3, line: 76, type: !207, isLocal: false, isDefinition: true)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(name: "panic_blink", scope: !2, file: !3, line: 138, type: !5430, isLocal: false, isDefinition: true)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!387, !27}
!5433 = !DIGlobalVariableExpression(var: !5434, expr: !DIExpression())
!5434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !5435, isLocal: true, isDefinition: true)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 136, elements: !5436)
!5436 = !{!5437}
!5437 = !DISubrange(count: 17)
!5438 = !DIGlobalVariableExpression(var: !5439, expr: !DIExpression())
!5439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !5355, isLocal: true, isDefinition: true)
!5440 = !DIGlobalVariableExpression(var: !5441, expr: !DIExpression())
!5441 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !5442, isLocal: true, isDefinition: true)
!5442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 88, elements: !5443)
!5443 = !{!5444}
!5444 = !DISubrange(count: 11)
!5445 = !DIGlobalVariableExpression(var: !5446, expr: !DIExpression())
!5446 = distinct !DIGlobalVariable(name: "kern_panic_table", scope: !2, file: !3, line: 83, type: !5447, isLocal: true, isDefinition: true)
!5447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1536, elements: !353)
!5448 = !DIGlobalVariableExpression(var: !5449, expr: !DIExpression())
!5449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5442, isLocal: true, isDefinition: true)
!5450 = !DIGlobalVariableExpression(var: !5451, expr: !DIExpression())
!5451 = distinct !DIGlobalVariable(name: "warn_count_attr", scope: !2, file: !3, line: 122, type: !5452, isLocal: true, isDefinition: true)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !312, line: 139, size: 256, elements: !5453)
!5453 = !{!5454, !5455, !5460}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5452, file: !312, line: 140, baseType: !389, size: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5452, file: !312, line: 141, baseType: !5456, size: 64, offset: 128)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!384, !317, !5459, !352}
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5452, file: !312, line: 143, baseType: !5461, size: 64, offset: 192)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!384, !317, !5459, !185, !203}
!5464 = !DIGlobalVariableExpression(var: !5465, expr: !DIExpression())
!5465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !5466, isLocal: true, isDefinition: true)
!5466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 32, elements: !817)
!5467 = !DIGlobalVariableExpression(var: !5468, expr: !DIExpression())
!5468 = distinct !DIGlobalVariable(name: "warn_count", scope: !2, file: !3, line: 113, type: !217, isLocal: true, isDefinition: true)
!5469 = !DIGlobalVariableExpression(var: !5470, expr: !DIExpression())
!5470 = distinct !DIGlobalVariable(name: "tainted_mask", scope: !2, file: !3, line: 55, type: !207, isLocal: true, isDefinition: true)
!5471 = !DIGlobalVariableExpression(var: !5472, expr: !DIExpression())
!5472 = distinct !DIGlobalVariable(name: "spin_counter", scope: !5473, file: !3, line: 573, type: !27, isLocal: true, isDefinition: true)
!5473 = distinct !DISubprogram(name: "do_oops_enter_exit", scope: !3, file: !3, line: 570, type: !3287, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5474 = !{!5475, !5476, !5480}
!5475 = !DILocalVariable(name: "flags", scope: !5473, file: !3, line: 572, type: !207)
!5476 = !DILocalVariable(name: "__dummy", scope: !5477, file: !3, line: 578, type: !207)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 578, column: 2)
!5478 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 578, column: 2)
!5479 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 578, column: 2)
!5480 = !DILocalVariable(name: "__dummy2", scope: !5477, file: !3, line: 578, type: !207)
!5481 = !DIGlobalVariableExpression(var: !5482, expr: !DIExpression())
!5482 = distinct !DIGlobalVariable(name: "pause_on_oops_lock", scope: !2, file: !3, line: 59, type: !227, isLocal: true, isDefinition: true)
!5483 = !DIGlobalVariableExpression(var: !5484, expr: !DIExpression())
!5484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 641, type: !5485, isLocal: true, isDefinition: true)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 248, elements: !5486)
!5486 = !{!5487}
!5487 = !DISubrange(count: 31)
!5488 = !DIGlobalVariableExpression(var: !5489, expr: !DIExpression())
!5489 = distinct !DIGlobalVariable(scope: null, file: !41, line: 69, type: !5490, isLocal: true, isDefinition: true)
!5490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 288, elements: !5491)
!5491 = !{!5492}
!5492 = !DISubrange(count: 36)
!5493 = !DIGlobalVariableExpression(var: !5494, expr: !DIExpression())
!5494 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_error_report_end335", scope: !5495, file: !41, line: 69, type: !189, isLocal: true, isDefinition: true)
!5495 = distinct !DISubprogram(name: "trace_error_report_end", scope: !41, file: !41, line: 69, type: !5496, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{null, !40, !207}
!5498 = !{!5499, !5500, !5501, !5504, !5507, !5509, !5511, !5514, !5517, !5519, !5520}
!5499 = !DILocalVariable(name: "error_detector", arg: 1, scope: !5495, file: !41, line: 69, type: !40)
!5500 = !DILocalVariable(name: "id", arg: 2, scope: !5495, file: !41, line: 69, type: !207)
!5501 = !DILocalVariable(name: "__idx", scope: !5502, file: !41, line: 69, type: !27)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !41, line: 69, column: 1)
!5503 = distinct !DILexicalBlock(scope: !5495, file: !41, line: 69, column: 1)
!5504 = !DILocalVariable(name: "pscr_ret__", scope: !5505, file: !41, line: 69, type: !27)
!5505 = distinct !DILexicalBlock(scope: !5506, file: !41, line: 69, column: 1)
!5506 = distinct !DILexicalBlock(scope: !5502, file: !41, line: 69, column: 1)
!5507 = !DILocalVariable(name: "__vpp_verify", scope: !5508, file: !41, line: 69, type: !1278)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !41, line: 69, column: 1)
!5509 = !DILocalVariable(name: "pfo_val__", scope: !5510, file: !41, line: 69, type: !495)
!5510 = distinct !DILexicalBlock(scope: !5505, file: !41, line: 69, column: 1)
!5511 = !DILocalVariable(name: "__ret_warn_on", scope: !5512, file: !41, line: 69, type: !27)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !41, line: 69, column: 1)
!5513 = distinct !DILexicalBlock(scope: !5502, file: !41, line: 69, column: 1)
!5514 = !DILocalVariable(name: "__flags", scope: !5515, file: !41, line: 69, type: !27)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !41, line: 69, column: 1)
!5516 = distinct !DILexicalBlock(scope: !5512, file: !41, line: 69, column: 1)
!5517 = !DILocalVariable(name: "it_func_ptr", scope: !5518, file: !41, line: 69, type: !5194)
!5518 = distinct !DILexicalBlock(scope: !5502, file: !41, line: 69, column: 1)
!5519 = !DILocalVariable(name: "__data", scope: !5518, file: !41, line: 69, type: !189)
!5520 = !DILocalVariable(name: "__UNIQUE_ID_rcu333", scope: !5521, file: !41, line: 69, type: !5194)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !41, line: 69, column: 1)
!5522 = !DIGlobalVariableExpression(var: !5523, expr: !DIExpression())
!5523 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace336", scope: !5495, file: !41, line: 69, type: !189, isLocal: true, isDefinition: true)
!5524 = !DIGlobalVariableExpression(var: !5525, expr: !DIExpression())
!5525 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace332", scope: !5526, file: !5527, line: 155, type: !189, isLocal: true, isDefinition: true)
!5526 = distinct !DISubprogram(name: "warn_rcu_exit", scope: !5527, file: !5527, line: 151, type: !5528, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5527 = !DIFile(filename: "./include/linux/context_tracking.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c1efe0468183524087d0fa1060971d6")
!5528 = !DISubroutineType(types: !5529)
!5529 = !{null, !1571}
!5530 = !{!5531}
!5531 = !DILocalVariable(name: "rcu", arg: 1, scope: !5526, file: !5527, line: 151, type: !1571)
!5532 = !DIGlobalVariableExpression(var: !5533, expr: !DIExpression())
!5533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 750, type: !1667, isLocal: true, isDefinition: true)
!5534 = !DIGlobalVariableExpression(var: !5535, expr: !DIExpression())
!5535 = distinct !DIGlobalVariable(name: "clear_warn_once_fops", scope: !2, file: !3, line: 744, type: !2307, isLocal: true, isDefinition: true)
!5536 = !DIGlobalVariableExpression(var: !5537, expr: !DIExpression())
!5537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !1557, isLocal: true, isDefinition: true)
!5538 = !DIGlobalVariableExpression(var: !5539, expr: !DIExpression())
!5539 = distinct !DIGlobalVariable(name: "__param_str_panic", scope: !2, file: !3, line: 775, type: !5540, isLocal: true, isDefinition: true)
!5540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 48, elements: !1558)
!5541 = !DIGlobalVariableExpression(var: !5542, expr: !DIExpression())
!5542 = distinct !DIGlobalVariable(name: "__param_str_panic_print", scope: !2, file: !3, line: 776, type: !5543, isLocal: true, isDefinition: true)
!5543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 96, elements: !3760)
!5544 = !DIGlobalVariableExpression(var: !5545, expr: !DIExpression())
!5545 = distinct !DIGlobalVariable(name: "__param_str_pause_on_oops", scope: !2, file: !3, line: 777, type: !5546, isLocal: true, isDefinition: true)
!5546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 112, elements: !5547)
!5547 = !{!5548}
!5548 = !DISubrange(count: 14)
!5549 = !DIGlobalVariableExpression(var: !5550, expr: !DIExpression())
!5550 = distinct !DIGlobalVariable(name: "__param_str_panic_on_warn", scope: !2, file: !3, line: 778, type: !5546, isLocal: true, isDefinition: true)
!5551 = !DIGlobalVariableExpression(var: !5552, expr: !DIExpression())
!5552 = distinct !DIGlobalVariable(name: "__param_str_crash_kexec_post_notifiers", scope: !2, file: !3, line: 779, type: !5553, isLocal: true, isDefinition: true)
!5553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 216, elements: !5247)
!5554 = !DIGlobalVariableExpression(var: !5555, expr: !DIExpression())
!5555 = distinct !DIGlobalVariable(name: "__setup_str_oops_setup", scope: !2, file: !3, line: 789, type: !5556, isLocal: true, isDefinition: true, align: 8)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 40, elements: !5557)
!5557 = !{!5558}
!5558 = !DISubrange(count: 5)
!5559 = !DIGlobalVariableExpression(var: !5560, expr: !DIExpression())
!5560 = distinct !DIGlobalVariable(scope: null, file: !3, line: 785, type: !1557, isLocal: true, isDefinition: true)
!5561 = !DIGlobalVariableExpression(var: !5562, expr: !DIExpression())
!5562 = distinct !DIGlobalVariable(name: "__setup_str_panic_on_taint_setup", scope: !2, file: !3, line: 816, type: !5563, isLocal: true, isDefinition: true, align: 8)
!5563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 120, elements: !5564)
!5564 = !{!5565}
!5565 = !DISubrange(count: 15)
!5566 = !DIGlobalVariableExpression(var: !5567, expr: !DIExpression())
!5567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 798, type: !5568, isLocal: true, isDefinition: true)
!5568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 16, elements: !1772)
!5569 = !DIGlobalVariableExpression(var: !5570, expr: !DIExpression())
!5570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 808, type: !5348, isLocal: true, isDefinition: true)
!5571 = !DIGlobalVariableExpression(var: !5572, expr: !DIExpression())
!5572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 811, type: !5573, isLocal: true, isDefinition: true)
!5573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 424, elements: !5574)
!5574 = !{!5575}
!5575 = !DISubrange(count: 53)
!5576 = !DIGlobalVariableExpression(var: !5577, expr: !DIExpression())
!5577 = distinct !DIGlobalVariable(scope: null, file: !5578, line: 14, type: !3417, isLocal: true, isDefinition: true)
!5578 = !DIFile(filename: "./include/linux/string_choices.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ad1e87696bc052c91a0c5d621fdd86e")
!5579 = !DIGlobalVariableExpression(var: !5580, expr: !DIExpression())
!5580 = distinct !DIGlobalVariable(scope: null, file: !5578, line: 14, type: !5581, isLocal: true, isDefinition: true)
!5581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 72, elements: !5582)
!5582 = !{!5583}
!5583 = !DISubrange(count: 9)
!5584 = !{!"rsp"}
!5585 = !{i32 7, !"Dwarf Version", i32 5}
!5586 = !{i32 2, !"Debug Info Version", i32 3}
!5587 = !{i32 1, !"wchar_size", i32 2}
!5588 = !{i32 8, !"cf-protection-branch", i32 1}
!5589 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5590 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5591 = !{i32 1, !"Code Model", i32 2}
!5592 = !{i32 1, !"override-stack-alignment", i32 8}
!5593 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5594 = distinct !DISubprogram(name: "__initstub__kmod_panic__343_110_kernel_panic_sysctls_init7", scope: !3, file: !3, line: 110, type: !4958, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5595 = !DILocation(line: 110, column: 1, scope: !5594)
!5596 = distinct !DISubprogram(name: "kernel_panic_sysctls_init", scope: !3, file: !3, line: 105, type: !4958, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5597 = !DILocation(line: 107, column: 2, scope: !5596)
!5598 = !DILocation(line: 108, column: 2, scope: !5596)
!5599 = distinct !DISubprogram(name: "__initstub__kmod_panic__345_129_kernel_panic_sysfs_init7", scope: !3, file: !3, line: 129, type: !4958, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5600 = !DILocation(line: 129, column: 1, scope: !5599)
!5601 = distinct !DISubprogram(name: "kernel_panic_sysfs_init", scope: !3, file: !3, line: 124, type: !4958, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5602 = !DILocation(line: 126, column: 26, scope: !5601)
!5603 = !DILocation(line: 126, column: 2, scope: !5601)
!5604 = !DILocation(line: 127, column: 2, scope: !5601)
!5605 = distinct !DISubprogram(name: "panic_smp_self_stop", scope: !3, file: !3, line: 144, type: !3287, scopeLine: 145, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5606 = !DILocation(line: 146, column: 2, scope: !5605)
!5607 = !DILocation(line: 147, column: 3, scope: !5605)
!5608 = distinct !{!5608, !5606, !5609, !5610}
!5609 = !DILocation(line: 147, column: 13, scope: !5605)
!5610 = !{!"llvm.loop.unroll.disable"}
!5611 = distinct !DISubprogram(name: "cpu_relax", scope: !5612, file: !5612, line: 16, type: !3287, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5612 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!5613 = !DILocation(line: 18, column: 2, scope: !5611)
!5614 = !DILocation(line: 19, column: 1, scope: !5611)
!5615 = distinct !DISubprogram(name: "nmi_panic_self_stop", scope: !3, file: !3, line: 154, type: !5616, scopeLine: 155, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5618)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{null, !3791}
!5618 = !{!5619}
!5619 = !DILocalVariable(name: "regs", arg: 1, scope: !5615, file: !3, line: 154, type: !3791)
!5620 = !DILocation(line: 154, column: 60, scope: !5615)
!5621 = !DILocation(line: 156, column: 2, scope: !5615)
!5622 = !DILocation(line: 173, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 173, column: 6)
!5624 = !DILocation(line: 173, column: 6, scope: !5236)
!5625 = !DILocation(line: 174, column: 3, scope: !5623)
!5626 = !DILocation(line: 181, column: 2, scope: !5236)
!5627 = !DILocation(line: 182, column: 15, scope: !5236)
!5628 = !DILocation(line: 183, column: 1, scope: !5236)
!5629 = distinct !DISubprogram(name: "smp_send_stop", scope: !5630, file: !5630, line: 54, type: !3287, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5630 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9466013197f61ce2fbb2e675d22e6f5")
!5631 = !DILocation(line: 56, column: 10, scope: !5629)
!5632 = !DILocation(line: 56, column: 2, scope: !5629)
!5633 = !DILocation(line: 57, column: 1, scope: !5629)
!5634 = distinct !DISubprogram(name: "nmi_panic", scope: !3, file: !3, line: 193, type: !5635, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5637)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !3791, !185}
!5637 = !{!5638, !5639, !5640, !5641, !5642, !5644, !5646}
!5638 = !DILocalVariable(name: "regs", arg: 1, scope: !5634, file: !3, line: 193, type: !3791)
!5639 = !DILocalVariable(name: "msg", arg: 2, scope: !5634, file: !3, line: 193, type: !185)
!5640 = !DILocalVariable(name: "old_cpu", scope: !5634, file: !3, line: 195, type: !27)
!5641 = !DILocalVariable(name: "cpu", scope: !5634, file: !3, line: 195, type: !27)
!5642 = !DILocalVariable(name: "pscr_ret__", scope: !5643, file: !3, line: 197, type: !27)
!5643 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 197, column: 8)
!5644 = !DILocalVariable(name: "__vpp_verify", scope: !5645, file: !3, line: 197, type: !1278)
!5645 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 197, column: 8)
!5646 = !DILocalVariable(name: "pfo_val__", scope: !5647, file: !3, line: 197, type: !495)
!5647 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 197, column: 8)
!5648 = !DILocation(line: 193, column: 32, scope: !5634)
!5649 = !DILocation(line: 193, column: 50, scope: !5634)
!5650 = !DILocation(line: 195, column: 2, scope: !5634)
!5651 = !DILocation(line: 195, column: 6, scope: !5634)
!5652 = !DILocation(line: 195, column: 15, scope: !5634)
!5653 = !DILocation(line: 197, column: 8, scope: !5643)
!5654 = !DILocation(line: 197, column: 8, scope: !5645)
!5655 = !DILocation(line: 197, column: 8, scope: !5647)
!5656 = !{i64 2155637957}
!5657 = !DILocation(line: 197, column: 8, scope: !5634)
!5658 = !DILocation(line: 197, column: 6, scope: !5634)
!5659 = !DILocation(line: 198, column: 58, scope: !5634)
!5660 = !DILocation(line: 198, column: 12, scope: !5634)
!5661 = !DILocation(line: 198, column: 10, scope: !5634)
!5662 = !DILocation(line: 200, column: 6, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 200, column: 6)
!5664 = !DILocation(line: 200, column: 14, scope: !5663)
!5665 = !DILocation(line: 200, column: 6, scope: !5634)
!5666 = !DILocation(line: 201, column: 15, scope: !5663)
!5667 = !DILocation(line: 201, column: 3, scope: !5663)
!5668 = !DILocation(line: 202, column: 11, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 202, column: 11)
!5670 = !DILocation(line: 202, column: 22, scope: !5669)
!5671 = !DILocation(line: 202, column: 19, scope: !5669)
!5672 = !DILocation(line: 202, column: 11, scope: !5663)
!5673 = !DILocation(line: 203, column: 23, scope: !5669)
!5674 = !DILocation(line: 203, column: 3, scope: !5669)
!5675 = !DILocation(line: 204, column: 1, scope: !5634)
!5676 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !5677, file: !5677, line: 1191, type: !5678, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5680)
!5677 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!27, !5200, !27, !27}
!5680 = !{!5681, !5682, !5683}
!5681 = !DILocalVariable(name: "v", arg: 1, scope: !5676, file: !5677, line: 1191, type: !5200)
!5682 = !DILocalVariable(name: "old", arg: 2, scope: !5676, file: !5677, line: 1191, type: !27)
!5683 = !DILocalVariable(name: "new", arg: 3, scope: !5676, file: !5677, line: 1191, type: !27)
!5684 = !DILocation(line: 1191, column: 26, scope: !5676)
!5685 = !DILocation(line: 1191, column: 33, scope: !5676)
!5686 = !DILocation(line: 1191, column: 42, scope: !5676)
!5687 = !DILocation(line: 1193, column: 2, scope: !5676)
!5688 = !DILocation(line: 1193, column: 2, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5676, file: !5677, line: 1193, column: 2)
!5690 = !DILocation(line: 1194, column: 31, scope: !5676)
!5691 = !DILocation(line: 1194, column: 2, scope: !5676)
!5692 = !DILocation(line: 1195, column: 28, scope: !5676)
!5693 = !DILocation(line: 1195, column: 31, scope: !5676)
!5694 = !DILocation(line: 1195, column: 36, scope: !5676)
!5695 = !DILocation(line: 1195, column: 9, scope: !5676)
!5696 = !DILocation(line: 1195, column: 2, scope: !5676)
!5697 = !DILocation(line: 276, column: 24, scope: !5256)
!5698 = !DILocation(line: 279, column: 2, scope: !5256)
!5699 = !DILocation(line: 279, column: 10, scope: !5256)
!5700 = !DILocation(line: 280, column: 2, scope: !5256)
!5701 = !DILocation(line: 280, column: 7, scope: !5256)
!5702 = !DILocation(line: 280, column: 10, scope: !5256)
!5703 = !DILocation(line: 280, column: 22, scope: !5256)
!5704 = !DILocation(line: 281, column: 2, scope: !5256)
!5705 = !DILocation(line: 281, column: 6, scope: !5256)
!5706 = !DILocation(line: 282, column: 2, scope: !5256)
!5707 = !DILocation(line: 282, column: 6, scope: !5256)
!5708 = !DILocation(line: 282, column: 15, scope: !5256)
!5709 = !DILocation(line: 283, column: 2, scope: !5256)
!5710 = !DILocation(line: 283, column: 7, scope: !5256)
!5711 = !DILocation(line: 283, column: 37, scope: !5256)
!5712 = !{i8 0, i8 2}
!5713 = !DILocation(line: 285, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 285, column: 6)
!5715 = !DILocation(line: 285, column: 6, scope: !5256)
!5716 = !DILocation(line: 292, column: 17, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 285, column: 21)
!5718 = !DILocation(line: 293, column: 2, scope: !5717)
!5719 = !DILocation(line: 301, column: 2, scope: !5256)
!5720 = !DILocation(line: 301, column: 2, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 301, column: 2)
!5722 = !DILocation(line: 302, column: 2, scope: !5256)
!5723 = !DILocation(line: 302, column: 2, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 302, column: 2)
!5725 = !{i64 2155643329}
!5726 = !DILocation(line: 319, column: 13, scope: !5280)
!5727 = !DILocation(line: 319, column: 13, scope: !5282)
!5728 = !DILocation(line: 319, column: 13, scope: !5284)
!5729 = !{i64 2155645919}
!5730 = !DILocation(line: 319, column: 13, scope: !5256)
!5731 = !DILocation(line: 319, column: 11, scope: !5256)
!5732 = !DILocation(line: 320, column: 59, scope: !5256)
!5733 = !DILocation(line: 320, column: 13, scope: !5256)
!5734 = !DILocation(line: 320, column: 11, scope: !5256)
!5735 = !DILocation(line: 322, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 322, column: 6)
!5737 = !DILocation(line: 322, column: 14, scope: !5736)
!5738 = !DILocation(line: 322, column: 35, scope: !5736)
!5739 = !DILocation(line: 322, column: 38, scope: !5736)
!5740 = !DILocation(line: 322, column: 49, scope: !5736)
!5741 = !DILocation(line: 322, column: 46, scope: !5736)
!5742 = !DILocation(line: 322, column: 6, scope: !5256)
!5743 = !DILocation(line: 323, column: 3, scope: !5736)
!5744 = !DILocation(line: 325, column: 2, scope: !5256)
!5745 = !DILocation(line: 326, column: 2, scope: !5256)
!5746 = !DILocation(line: 327, column: 2, scope: !5256)
!5747 = !DILocation(line: 328, column: 37, scope: !5256)
!5748 = !DILocation(line: 328, column: 42, scope: !5256)
!5749 = !DILocation(line: 328, column: 8, scope: !5256)
!5750 = !DILocation(line: 328, column: 6, scope: !5256)
!5751 = !DILocation(line: 329, column: 2, scope: !5256)
!5752 = !DILocation(line: 331, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 331, column: 6)
!5754 = !DILocation(line: 331, column: 10, scope: !5753)
!5755 = !DILocation(line: 331, column: 17, scope: !5753)
!5756 = !DILocation(line: 331, column: 21, scope: !5753)
!5757 = !DILocation(line: 331, column: 13, scope: !5753)
!5758 = !DILocation(line: 331, column: 26, scope: !5753)
!5759 = !DILocation(line: 331, column: 6, scope: !5256)
!5760 = !DILocation(line: 332, column: 7, scope: !5753)
!5761 = !DILocation(line: 332, column: 11, scope: !5753)
!5762 = !DILocation(line: 332, column: 3, scope: !5753)
!5763 = !DILocation(line: 332, column: 16, scope: !5753)
!5764 = !DILocation(line: 334, column: 2, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 334, column: 2)
!5766 = !DILocation(line: 334, column: 2, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 334, column: 2)
!5768 = !DILocation(line: 339, column: 7, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 339, column: 6)
!5770 = !DILocation(line: 339, column: 29, scope: !5769)
!5771 = !DILocation(line: 339, column: 32, scope: !5769)
!5772 = !DILocation(line: 339, column: 49, scope: !5769)
!5773 = !DILocation(line: 339, column: 6, scope: !5256)
!5774 = !DILocation(line: 340, column: 3, scope: !5769)
!5775 = !DILocation(line: 348, column: 2, scope: !5256)
!5776 = !DILocation(line: 358, column: 7, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 358, column: 6)
!5778 = !DILocation(line: 358, column: 6, scope: !5256)
!5779 = !DILocation(line: 359, column: 3, scope: !5777)
!5780 = !DILocation(line: 361, column: 28, scope: !5256)
!5781 = !DILocation(line: 361, column: 2, scope: !5256)
!5782 = !DILocation(line: 367, column: 2, scope: !5256)
!5783 = !DILocation(line: 369, column: 2, scope: !5256)
!5784 = !DILocation(line: 371, column: 2, scope: !5256)
!5785 = !DILocation(line: 382, column: 6, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 382, column: 6)
!5787 = !DILocation(line: 382, column: 6, scope: !5256)
!5788 = !DILocation(line: 383, column: 3, scope: !5786)
!5789 = !DILocation(line: 385, column: 2, scope: !5256)
!5790 = !DILocation(line: 395, column: 2, scope: !5256)
!5791 = !DILocation(line: 396, column: 2, scope: !5256)
!5792 = !DILocation(line: 398, column: 2, scope: !5256)
!5793 = !DILocation(line: 400, column: 7, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 400, column: 6)
!5795 = !DILocation(line: 400, column: 6, scope: !5256)
!5796 = !DILocation(line: 401, column: 15, scope: !5794)
!5797 = !DILocation(line: 401, column: 3, scope: !5794)
!5798 = !DILocation(line: 403, column: 6, scope: !5291)
!5799 = !DILocation(line: 403, column: 20, scope: !5291)
!5800 = !DILocation(line: 403, column: 6, scope: !5256)
!5801 = !DILocation(line: 408, column: 3, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 408, column: 3)
!5803 = !DILocation(line: 408, column: 3, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 408, column: 3)
!5805 = !DILocation(line: 410, column: 10, scope: !5289)
!5806 = !DILocation(line: 410, column: 8, scope: !5289)
!5807 = !DILocation(line: 410, column: 15, scope: !5288)
!5808 = !DILocation(line: 410, column: 19, scope: !5288)
!5809 = !DILocation(line: 410, column: 33, scope: !5288)
!5810 = !DILocation(line: 410, column: 17, scope: !5288)
!5811 = !DILocation(line: 410, column: 3, scope: !5289)
!5812 = !DILocation(line: 411, column: 4, scope: !5287)
!5813 = !DILocation(line: 412, column: 8, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 412, column: 8)
!5815 = !DILocation(line: 412, column: 13, scope: !5814)
!5816 = !DILocation(line: 412, column: 10, scope: !5814)
!5817 = !DILocation(line: 412, column: 8, scope: !5287)
!5818 = !DILocation(line: 413, column: 10, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 412, column: 21)
!5820 = !DILocation(line: 413, column: 28, scope: !5819)
!5821 = !DILocation(line: 413, column: 7, scope: !5819)
!5822 = !DILocation(line: 414, column: 14, scope: !5819)
!5823 = !DILocation(line: 414, column: 16, scope: !5819)
!5824 = !DILocation(line: 414, column: 12, scope: !5819)
!5825 = !DILocation(line: 415, column: 4, scope: !5819)
!5826 = !DILocation(line: 416, column: 4, scope: !5286)
!5827 = !DILocation(line: 416, column: 4, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 416, column: 4)
!5829 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 416, column: 4)
!5830 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 416, column: 4)
!5831 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 416, column: 4)
!5832 = distinct !{!5832, !5826, !5826, !5833, !5610}
!5833 = !{!"llvm.loop.mustprogress"}
!5834 = !DILocation(line: 416, column: 4, scope: !5287)
!5835 = !DILocation(line: 417, column: 3, scope: !5287)
!5836 = !DILocation(line: 410, column: 43, scope: !5288)
!5837 = !DILocation(line: 410, column: 3, scope: !5288)
!5838 = distinct !{!5838, !5811, !5839, !5833, !5610}
!5839 = !DILocation(line: 417, column: 3, scope: !5289)
!5840 = !DILocation(line: 418, column: 2, scope: !5290)
!5841 = !DILocation(line: 419, column: 6, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 419, column: 6)
!5843 = !DILocation(line: 419, column: 20, scope: !5842)
!5844 = !DILocation(line: 419, column: 6, scope: !5256)
!5845 = !DILocation(line: 425, column: 7, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 425, column: 7)
!5847 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 419, column: 26)
!5848 = !DILocation(line: 425, column: 25, scope: !5846)
!5849 = !DILocation(line: 425, column: 7, scope: !5847)
!5850 = !DILocation(line: 426, column: 18, scope: !5846)
!5851 = !DILocation(line: 426, column: 16, scope: !5846)
!5852 = !DILocation(line: 426, column: 4, scope: !5846)
!5853 = !DILocation(line: 427, column: 3, scope: !5847)
!5854 = !DILocation(line: 428, column: 2, scope: !5847)
!5855 = !DILocation(line: 441, column: 2, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 441, column: 2)
!5857 = !DILocation(line: 441, column: 2, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 441, column: 2)
!5859 = !DILocation(line: 444, column: 18, scope: !5256)
!5860 = !DILocation(line: 451, column: 2, scope: !5256)
!5861 = !DILocation(line: 453, column: 2, scope: !5256)
!5862 = !DILocation(line: 453, column: 2, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 453, column: 2)
!5864 = !DILocation(line: 454, column: 9, scope: !5296)
!5865 = !DILocation(line: 454, column: 7, scope: !5296)
!5866 = !DILocation(line: 455, column: 3, scope: !5294)
!5867 = !DILocation(line: 456, column: 7, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 456, column: 7)
!5869 = !DILocation(line: 456, column: 12, scope: !5868)
!5870 = !DILocation(line: 456, column: 9, scope: !5868)
!5871 = !DILocation(line: 456, column: 7, scope: !5294)
!5872 = !DILocation(line: 457, column: 9, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 456, column: 20)
!5874 = !DILocation(line: 457, column: 27, scope: !5873)
!5875 = !DILocation(line: 457, column: 6, scope: !5873)
!5876 = !DILocation(line: 458, column: 13, scope: !5873)
!5877 = !DILocation(line: 458, column: 15, scope: !5873)
!5878 = !DILocation(line: 458, column: 11, scope: !5873)
!5879 = !DILocation(line: 459, column: 3, scope: !5873)
!5880 = !DILocation(line: 460, column: 3, scope: !5293)
!5881 = !DILocation(line: 460, column: 3, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 460, column: 3)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 460, column: 3)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 460, column: 3)
!5885 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 460, column: 3)
!5886 = distinct !{!5886, !5880, !5880, !5833, !5610}
!5887 = !DILocation(line: 460, column: 3, scope: !5294)
!5888 = !DILocation(line: 461, column: 2, scope: !5294)
!5889 = !DILocation(line: 454, column: 18, scope: !5295)
!5890 = !DILocation(line: 454, column: 2, scope: !5295)
!5891 = distinct !{!5891, !5892, !5893, !5610}
!5892 = !DILocation(line: 454, column: 2, scope: !5296)
!5893 = !DILocation(line: 461, column: 2, scope: !5296)
!5894 = distinct !DISubprogram(name: "check_panic_on_warn", scope: !3, file: !3, line: 231, type: !5895, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5897)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{null, !185}
!5897 = !{!5898, !5899}
!5898 = !DILocalVariable(name: "origin", arg: 1, scope: !5894, file: !3, line: 231, type: !185)
!5899 = !DILocalVariable(name: "limit", scope: !5894, file: !3, line: 233, type: !7)
!5900 = !DILocation(line: 231, column: 38, scope: !5894)
!5901 = !DILocation(line: 233, column: 2, scope: !5894)
!5902 = !DILocation(line: 233, column: 15, scope: !5894)
!5903 = !DILocation(line: 235, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 235, column: 6)
!5905 = !DILocation(line: 235, column: 6, scope: !5894)
!5906 = !DILocation(line: 236, column: 40, scope: !5904)
!5907 = !DILocation(line: 236, column: 3, scope: !5904)
!5908 = !DILocation(line: 238, column: 10, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 238, column: 10)
!5910 = !DILocation(line: 238, column: 10, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 238, column: 10)
!5912 = !DILocation(line: 238, column: 8, scope: !5894)
!5913 = !DILocation(line: 239, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 239, column: 6)
!5915 = !DILocation(line: 239, column: 40, scope: !5914)
!5916 = !DILocation(line: 239, column: 37, scope: !5914)
!5917 = !DILocation(line: 239, column: 46, scope: !5914)
!5918 = !DILocation(line: 239, column: 49, scope: !5914)
!5919 = !DILocation(line: 239, column: 6, scope: !5894)
!5920 = !DILocation(line: 241, column: 9, scope: !5914)
!5921 = !DILocation(line: 241, column: 17, scope: !5914)
!5922 = !DILocation(line: 240, column: 3, scope: !5914)
!5923 = !DILocation(line: 242, column: 1, scope: !5894)
!5924 = distinct !DISubprogram(name: "atomic_inc_return", scope: !5677, file: !5677, line: 450, type: !5925, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5927)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{!27, !5200}
!5927 = !{!5928}
!5928 = !DILocalVariable(name: "v", arg: 1, scope: !5924, file: !5677, line: 450, type: !5200)
!5929 = !DILocation(line: 450, column: 29, scope: !5924)
!5930 = !DILocation(line: 452, column: 2, scope: !5924)
!5931 = !DILocation(line: 452, column: 2, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5924, file: !5677, line: 452, column: 2)
!5933 = !DILocation(line: 453, column: 31, scope: !5924)
!5934 = !DILocation(line: 453, column: 2, scope: !5924)
!5935 = !DILocation(line: 454, column: 31, scope: !5924)
!5936 = !DILocation(line: 454, column: 9, scope: !5924)
!5937 = !DILocation(line: 454, column: 2, scope: !5924)
!5938 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5939, file: !5939, line: 70, type: !3287, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5939 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!5940 = !DILocation(line: 72, column: 2, scope: !5938)
!5941 = !DILocation(line: 73, column: 1, scope: !5938)
!5942 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5943, file: !5943, line: 78, type: !3280, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5944)
!5943 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5944 = !{!5945, !5946, !5948}
!5945 = !DILocalVariable(name: "val", arg: 1, scope: !5942, file: !5943, line: 78, type: !27)
!5946 = !DILocalVariable(name: "pao_ID__", scope: !5947, file: !5943, line: 80, type: !5047)
!5947 = distinct !DILexicalBlock(scope: !5942, file: !5943, line: 80, column: 2)
!5948 = !DILocalVariable(name: "pto_val__", scope: !5949, file: !5943, line: 80, type: !495)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !5943, line: 80, column: 2)
!5950 = distinct !DILexicalBlock(scope: !5951, file: !5943, line: 80, column: 2)
!5951 = distinct !DILexicalBlock(scope: !5947, file: !5943, line: 80, column: 2)
!5952 = !DILocation(line: 78, column: 53, scope: !5942)
!5953 = !DILocation(line: 80, column: 2, scope: !5942)
!5954 = !DILocation(line: 80, column: 2, scope: !5947)
!5955 = !DILocation(line: 80, column: 2, scope: !5951)
!5956 = !DILocation(line: 80, column: 2, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5951, file: !5943, line: 80, column: 2)
!5958 = !{i64 2149504452}
!5959 = !DILocation(line: 80, column: 2, scope: !5950)
!5960 = !DILocation(line: 80, column: 2, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5950, file: !5943, line: 80, column: 2)
!5962 = !{i64 2149504747}
!5963 = !DILocation(line: 80, column: 2, scope: !5949)
!5964 = !{i64 2149505452}
!5965 = !DILocation(line: 81, column: 1, scope: !5942)
!5966 = !DISubprogram(name: "console_verbose", scope: !5967, file: !5967, line: 70, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5968 = !DISubprogram(name: "bust_spinlocks", scope: !276, file: !276, line: 218, type: !3280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5969 = !DISubprogram(name: "vscnprintf", scope: !5970, file: !5970, line: 15, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5970 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!27, !352, !203, !185, !5973}
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5974 = !DISubprogram(name: "_printk", scope: !5967, file: !5967, line: 153, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!27, !185, null}
!5977 = distinct !DISubprogram(name: "test_taint", scope: !3, file: !3, line: 523, type: !5978, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!27, !7}
!5980 = !{!5981}
!5981 = !DILocalVariable(name: "flag", arg: 1, scope: !5977, file: !3, line: 523, type: !7)
!5982 = !DILocation(line: 523, column: 25, scope: !5977)
!5983 = !DILocation(line: 525, column: 9, scope: !5977)
!5984 = !DILocation(line: 525, column: 2, scope: !5977)
!5985 = !DISubprogram(name: "dump_stack", scope: !5967, file: !5967, line: 193, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = distinct !DISubprogram(name: "kgdb_panic", scope: !5987, file: !5987, line: 366, type: !5895, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5987 = !DIFile(filename: "./include/linux/kgdb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c12231616c19f0473858a68ec8f10ad8")
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "msg", arg: 1, scope: !5986, file: !5987, line: 366, type: !185)
!5990 = !DILocation(line: 366, column: 43, scope: !5986)
!5991 = !DILocation(line: 366, column: 49, scope: !5986)
!5992 = !DISubprogram(name: "__crash_kexec", scope: !5993, file: !5993, line: 385, type: !5616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!5994 = distinct !DISubprogram(name: "panic_other_cpus_shutdown", scope: !3, file: !3, line: 249, type: !5528, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996}
!5996 = !DILocalVariable(name: "crash_kexec", arg: 1, scope: !5994, file: !3, line: 249, type: !1571)
!5997 = !DILocation(line: 249, column: 44, scope: !5994)
!5998 = !DILocation(line: 251, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 251, column: 6)
!6000 = !DILocation(line: 251, column: 18, scope: !5999)
!6001 = !DILocation(line: 251, column: 6, scope: !5994)
!6002 = !DILocation(line: 252, column: 3, scope: !5999)
!6003 = !DILocation(line: 262, column: 7, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 262, column: 6)
!6005 = !DILocation(line: 262, column: 6, scope: !5994)
!6006 = !DILocation(line: 263, column: 3, scope: !6004)
!6007 = !DILocation(line: 265, column: 3, scope: !6004)
!6008 = !DILocation(line: 266, column: 1, scope: !5994)
!6009 = !DISubprogram(name: "atomic_notifier_call_chain", scope: !5212, file: !5212, line: 169, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!27, !6012, !207, !189}
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!6013 = distinct !DISubprogram(name: "panic_print_sys_info", scope: !3, file: !3, line: 207, type: !5528, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6014)
!6014 = !{!6015}
!6015 = !DILocalVariable(name: "console_flush", arg: 1, scope: !6013, file: !3, line: 207, type: !1571)
!6016 = !DILocation(line: 207, column: 39, scope: !6013)
!6017 = !DILocation(line: 209, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 209, column: 6)
!6019 = !DILocation(line: 209, column: 6, scope: !6013)
!6020 = !DILocation(line: 210, column: 7, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 210, column: 7)
!6022 = distinct !DILexicalBlock(scope: !6018, file: !3, line: 209, column: 21)
!6023 = !DILocation(line: 210, column: 19, scope: !6021)
!6024 = !DILocation(line: 210, column: 7, scope: !6022)
!6025 = !DILocation(line: 211, column: 4, scope: !6021)
!6026 = !DILocation(line: 212, column: 3, scope: !6022)
!6027 = !DILocation(line: 215, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 215, column: 6)
!6029 = !DILocation(line: 215, column: 18, scope: !6028)
!6030 = !DILocation(line: 215, column: 6, scope: !6013)
!6031 = !DILocation(line: 216, column: 3, scope: !6028)
!6032 = !DILocation(line: 218, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 218, column: 6)
!6034 = !DILocation(line: 218, column: 18, scope: !6033)
!6035 = !DILocation(line: 218, column: 6, scope: !6013)
!6036 = !DILocation(line: 219, column: 3, scope: !6033)
!6037 = !DILocation(line: 221, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 221, column: 6)
!6039 = !DILocation(line: 221, column: 18, scope: !6038)
!6040 = !DILocation(line: 221, column: 6, scope: !6013)
!6041 = !DILocation(line: 222, column: 3, scope: !6038)
!6042 = !DILocation(line: 224, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 224, column: 6)
!6044 = !DILocation(line: 224, column: 18, scope: !6043)
!6045 = !DILocation(line: 224, column: 6, scope: !6013)
!6046 = !DILocation(line: 225, column: 3, scope: !6043)
!6047 = !DILocation(line: 227, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 227, column: 6)
!6049 = !DILocation(line: 227, column: 18, scope: !6048)
!6050 = !DILocation(line: 227, column: 6, scope: !6013)
!6051 = !DILocation(line: 228, column: 3, scope: !6048)
!6052 = !DILocation(line: 229, column: 1, scope: !6013)
!6053 = !DISubprogram(name: "kmsg_dump", scope: !12, file: !12, line: 58, type: !6054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{null, !11}
!6056 = !DISubprogram(name: "console_unblank", scope: !21, file: !21, line: 351, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubprogram(name: "debug_locks_off", scope: !6058, file: !6058, line: 22, type: !4958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!6059 = !DISubprogram(name: "console_flush_on_panic", scope: !21, file: !21, line: 352, type: !6060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{null, !20}
!6062 = distinct !DISubprogram(name: "no_blink", scope: !3, file: !3, line: 132, type: !5431, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6063 = !{!6064}
!6064 = !DILocalVariable(name: "state", arg: 1, scope: !6062, file: !3, line: 132, type: !27)
!6065 = !DILocation(line: 132, column: 26, scope: !6062)
!6066 = !DILocation(line: 134, column: 2, scope: !6062)
!6067 = distinct !DISubprogram(name: "touch_nmi_watchdog", scope: !6068, file: !6068, line: 139, type: !3287, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6068 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!6069 = !DILocation(line: 147, column: 2, scope: !6067)
!6070 = !DILocation(line: 149, column: 2, scope: !6067)
!6071 = !DILocation(line: 150, column: 1, scope: !6067)
!6072 = !DISubprogram(name: "__const_udelay", scope: !6073, file: !6073, line: 11, type: !6074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6074 = !DISubroutineType(types: !6075)
!6075 = !{null, !207}
!6076 = !DISubprogram(name: "emergency_restart", scope: !26, file: !26, line: 183, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6077 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5939, file: !5939, line: 75, type: !3287, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6078 = !DILocation(line: 77, column: 2, scope: !6077)
!6079 = !DILocation(line: 78, column: 1, scope: !6077)
!6080 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !6068, file: !6068, line: 54, type: !3287, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6081 = !DILocation(line: 54, column: 54, scope: !6080)
!6082 = !DILocation(line: 504, column: 2, scope: !5328)
!6083 = !DILocation(line: 504, column: 2, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 504, column: 2)
!6085 = !DILocation(line: 506, column: 6, scope: !5334)
!6086 = !DILocation(line: 506, column: 6, scope: !5328)
!6087 = !DILocation(line: 507, column: 3, scope: !5333)
!6088 = !DILocation(line: 507, column: 9, scope: !5333)
!6089 = !DILocation(line: 508, column: 3, scope: !5333)
!6090 = !DILocation(line: 508, column: 7, scope: !5333)
!6091 = !DILocation(line: 510, column: 13, scope: !5333)
!6092 = !DILocation(line: 510, column: 11, scope: !5333)
!6093 = !DILocation(line: 510, column: 5, scope: !5333)
!6094 = !DILocation(line: 511, column: 10, scope: !5339)
!6095 = !DILocation(line: 511, column: 8, scope: !5339)
!6096 = !DILocation(line: 511, column: 15, scope: !5338)
!6097 = !DILocation(line: 511, column: 17, scope: !5338)
!6098 = !DILocation(line: 511, column: 3, scope: !5339)
!6099 = !DILocation(line: 512, column: 4, scope: !5337)
!6100 = !DILocation(line: 512, column: 29, scope: !5337)
!6101 = !DILocation(line: 512, column: 46, scope: !5337)
!6102 = !DILocation(line: 512, column: 34, scope: !5337)
!6103 = !DILocation(line: 513, column: 11, scope: !5337)
!6104 = !DILocation(line: 514, column: 6, scope: !5337)
!6105 = !DILocation(line: 514, column: 9, scope: !5337)
!6106 = !DILocation(line: 514, column: 18, scope: !5337)
!6107 = !DILocation(line: 514, column: 21, scope: !5337)
!6108 = !DILocation(line: 513, column: 6, scope: !5337)
!6109 = !DILocation(line: 513, column: 9, scope: !5337)
!6110 = !DILocation(line: 515, column: 3, scope: !5338)
!6111 = !DILocation(line: 515, column: 3, scope: !5337)
!6112 = !DILocation(line: 511, column: 39, scope: !5338)
!6113 = !DILocation(line: 511, column: 3, scope: !5338)
!6114 = distinct !{!6114, !6098, !6115, !5833, !5610}
!6115 = !DILocation(line: 515, column: 3, scope: !5339)
!6116 = !DILocation(line: 516, column: 4, scope: !5333)
!6117 = !DILocation(line: 516, column: 6, scope: !5333)
!6118 = !DILocation(line: 517, column: 2, scope: !5334)
!6119 = !DILocation(line: 517, column: 2, scope: !5333)
!6120 = !DILocation(line: 518, column: 3, scope: !5334)
!6121 = !DILocation(line: 520, column: 2, scope: !5328)
!6122 = !DISubprogram(name: "sprintf", scope: !5970, file: !5970, line: 10, type: !6123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!27, !352, !185, null}
!6125 = distinct !DISubprogram(name: "const_test_bit", scope: !6126, file: !6126, line: 166, type: !6127, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6132)
!6126 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!1571, !207, !6129}
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6131)
!6131 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !207)
!6132 = !{!6133, !6134, !6135, !6136, !6137}
!6133 = !DILocalVariable(name: "nr", arg: 1, scope: !6125, file: !6126, line: 166, type: !207)
!6134 = !DILocalVariable(name: "addr", arg: 2, scope: !6125, file: !6126, line: 166, type: !6129)
!6135 = !DILocalVariable(name: "p", scope: !6125, file: !6126, line: 168, type: !296)
!6136 = !DILocalVariable(name: "mask", scope: !6125, file: !6126, line: 169, type: !207)
!6137 = !DILocalVariable(name: "val", scope: !6125, file: !6126, line: 170, type: !207)
!6138 = !DILocation(line: 166, column: 30, scope: !6125)
!6139 = !DILocation(line: 166, column: 64, scope: !6125)
!6140 = !DILocation(line: 168, column: 2, scope: !6125)
!6141 = !DILocation(line: 168, column: 23, scope: !6125)
!6142 = !DILocation(line: 168, column: 50, scope: !6125)
!6143 = !DILocation(line: 168, column: 57, scope: !6125)
!6144 = !DILocation(line: 168, column: 55, scope: !6125)
!6145 = !DILocation(line: 169, column: 2, scope: !6125)
!6146 = !DILocation(line: 169, column: 16, scope: !6125)
!6147 = !DILocation(line: 169, column: 23, scope: !6125)
!6148 = !DILocation(line: 170, column: 2, scope: !6125)
!6149 = !DILocation(line: 170, column: 16, scope: !6125)
!6150 = !DILocation(line: 170, column: 23, scope: !6125)
!6151 = !DILocation(line: 170, column: 22, scope: !6125)
!6152 = !DILocation(line: 172, column: 12, scope: !6125)
!6153 = !DILocation(line: 172, column: 18, scope: !6125)
!6154 = !DILocation(line: 172, column: 16, scope: !6125)
!6155 = !DILocation(line: 172, column: 10, scope: !6125)
!6156 = !DILocation(line: 172, column: 9, scope: !6125)
!6157 = !DILocation(line: 173, column: 1, scope: !6125)
!6158 = !DILocation(line: 172, column: 2, scope: !6125)
!6159 = distinct !DISubprogram(name: "_test_bit", scope: !6160, file: !6160, line: 139, type: !6127, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6160 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6161 = !{!6162, !6163}
!6162 = !DILocalVariable(name: "nr", arg: 1, scope: !6159, file: !6160, line: 139, type: !207)
!6163 = !DILocalVariable(name: "addr", arg: 2, scope: !6159, file: !6160, line: 139, type: !6129)
!6164 = !DILocation(line: 139, column: 25, scope: !6159)
!6165 = !DILocation(line: 139, column: 59, scope: !6159)
!6166 = !DILocation(line: 141, column: 25, scope: !6159)
!6167 = !DILocation(line: 141, column: 32, scope: !6159)
!6168 = !DILocation(line: 141, column: 30, scope: !6159)
!6169 = !DILocation(line: 141, column: 2, scope: !6159)
!6170 = !DILocation(line: 142, column: 23, scope: !6159)
!6171 = !DILocation(line: 142, column: 27, scope: !6159)
!6172 = !DILocation(line: 142, column: 9, scope: !6159)
!6173 = !DILocation(line: 142, column: 2, scope: !6159)
!6174 = !DISubprogram(name: "snprintf", scope: !5970, file: !5970, line: 12, type: !6175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!27, !352, !203, !185, null}
!6177 = distinct !DISubprogram(name: "get_taint", scope: !3, file: !3, line: 529, type: !6178, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!207}
!6180 = !DILocation(line: 531, column: 9, scope: !6177)
!6181 = !DILocation(line: 531, column: 2, scope: !6177)
!6182 = distinct !DISubprogram(name: "add_taint", scope: !3, file: !3, line: 542, type: !6183, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{null, !7, !35}
!6185 = !{!6186, !6187}
!6186 = !DILocalVariable(name: "flag", arg: 1, scope: !6182, file: !3, line: 542, type: !7)
!6187 = !DILocalVariable(name: "lockdep_ok", arg: 2, scope: !6182, file: !3, line: 542, type: !35)
!6188 = !DILocation(line: 542, column: 25, scope: !6182)
!6189 = !DILocation(line: 542, column: 47, scope: !6182)
!6190 = !DILocation(line: 544, column: 6, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 544, column: 6)
!6192 = !DILocation(line: 544, column: 17, scope: !6191)
!6193 = !DILocation(line: 544, column: 43, scope: !6191)
!6194 = !DILocation(line: 544, column: 46, scope: !6191)
!6195 = !DILocation(line: 544, column: 6, scope: !6182)
!6196 = !DILocation(line: 545, column: 3, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 545, column: 3)
!6198 = !DILocation(line: 545, column: 3, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 545, column: 3)
!6200 = !DILocation(line: 545, column: 3, scope: !6191)
!6201 = !DILocation(line: 547, column: 10, scope: !6182)
!6202 = !DILocation(line: 547, column: 2, scope: !6182)
!6203 = !DILocation(line: 549, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 549, column: 6)
!6205 = !DILocation(line: 549, column: 21, scope: !6204)
!6206 = !DILocation(line: 549, column: 19, scope: !6204)
!6207 = !DILocation(line: 549, column: 6, scope: !6182)
!6208 = !DILocation(line: 550, column: 18, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 549, column: 37)
!6210 = !DILocation(line: 551, column: 3, scope: !6209)
!6211 = !DILocation(line: 553, column: 1, scope: !6182)
!6212 = distinct !DISubprogram(name: "__debug_locks_off", scope: !6058, file: !6058, line: 14, type: !4958, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6213 = !{!6214, !6216}
!6214 = !DILocalVariable(name: "__ai_ptr", scope: !6215, file: !6058, line: 16, type: !291)
!6215 = distinct !DILexicalBlock(scope: !6212, file: !6058, line: 16, column: 9)
!6216 = !DILocalVariable(name: "__ret", scope: !6217, file: !6058, line: 16, type: !27)
!6217 = distinct !DILexicalBlock(scope: !6215, file: !6058, line: 16, column: 9)
!6218 = !DILocation(line: 16, column: 9, scope: !6215)
!6219 = !DILocation(line: 16, column: 9, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6215, file: !6058, line: 16, column: 9)
!6221 = !DILocation(line: 16, column: 9, scope: !6217)
!6222 = !{i64 2148327859}
!6223 = !DILocation(line: 16, column: 9, scope: !6212)
!6224 = !DILocation(line: 16, column: 2, scope: !6212)
!6225 = distinct !DISubprogram(name: "set_bit", scope: !6226, file: !6226, line: 26, type: !6227, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6226 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6227 = !DISubroutineType(types: !6228)
!6228 = !{null, !387, !6229}
!6229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6230 = !{!6231, !6232}
!6231 = !DILocalVariable(name: "nr", arg: 1, scope: !6225, file: !6226, line: 26, type: !387)
!6232 = !DILocalVariable(name: "addr", arg: 2, scope: !6225, file: !6226, line: 26, type: !6229)
!6233 = !DILocation(line: 26, column: 42, scope: !6225)
!6234 = !DILocation(line: 26, column: 70, scope: !6225)
!6235 = !DILocation(line: 28, column: 26, scope: !6225)
!6236 = !DILocation(line: 28, column: 33, scope: !6225)
!6237 = !DILocation(line: 28, column: 31, scope: !6225)
!6238 = !DILocation(line: 28, column: 2, scope: !6225)
!6239 = !DILocation(line: 29, column: 15, scope: !6225)
!6240 = !DILocation(line: 29, column: 19, scope: !6225)
!6241 = !DILocation(line: 29, column: 2, scope: !6225)
!6242 = !DILocation(line: 30, column: 1, scope: !6225)
!6243 = distinct !DISubprogram(name: "oops_may_print", scope: !3, file: !3, line: 609, type: !2239, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6244 = !DILocation(line: 611, column: 9, scope: !6243)
!6245 = !DILocation(line: 611, column: 28, scope: !6243)
!6246 = !DILocation(line: 611, column: 2, scope: !6243)
!6247 = distinct !DISubprogram(name: "oops_enter", scope: !3, file: !3, line: 628, type: !3287, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6248 = !DILocation(line: 630, column: 2, scope: !6247)
!6249 = !DILocation(line: 632, column: 2, scope: !6247)
!6250 = !DILocation(line: 633, column: 2, scope: !6247)
!6251 = !DILocation(line: 635, column: 6, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 635, column: 6)
!6253 = !DILocation(line: 635, column: 6, scope: !6247)
!6254 = !DILocation(line: 636, column: 3, scope: !6252)
!6255 = !DILocation(line: 637, column: 1, scope: !6247)
!6256 = !DISubprogram(name: "tracing_off", scope: !276, file: !276, line: 267, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6257 = !DILocation(line: 572, column: 2, scope: !5473)
!6258 = !DILocation(line: 572, column: 16, scope: !5473)
!6259 = !DILocation(line: 575, column: 7, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 575, column: 6)
!6261 = !DILocation(line: 575, column: 6, scope: !5473)
!6262 = !DILocation(line: 576, column: 3, scope: !6260)
!6263 = !DILocation(line: 578, column: 2, scope: !5473)
!6264 = !DILocation(line: 578, column: 2, scope: !5479)
!6265 = !DILocation(line: 578, column: 2, scope: !5477)
!6266 = !DILocation(line: 578, column: 2, scope: !5478)
!6267 = !DILocation(line: 579, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 579, column: 6)
!6269 = !DILocation(line: 579, column: 25, scope: !6268)
!6270 = !DILocation(line: 579, column: 6, scope: !5473)
!6271 = !DILocation(line: 581, column: 22, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 579, column: 31)
!6273 = !DILocation(line: 582, column: 2, scope: !6272)
!6274 = !DILocation(line: 584, column: 8, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 584, column: 7)
!6276 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 582, column: 9)
!6277 = !DILocation(line: 584, column: 7, scope: !6276)
!6278 = !DILocation(line: 586, column: 19, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 584, column: 22)
!6280 = !DILocation(line: 586, column: 17, scope: !6279)
!6281 = !DILocation(line: 587, column: 4, scope: !6279)
!6282 = !DILocation(line: 588, column: 5, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 587, column: 7)
!6284 = !DILocation(line: 589, column: 5, scope: !6283)
!6285 = !DILocation(line: 590, column: 5, scope: !6283)
!6286 = !DILocation(line: 591, column: 4, scope: !6283)
!6287 = !DILocation(line: 591, column: 13, scope: !6279)
!6288 = distinct !{!6288, !6281, !6289, !5833, !5610}
!6289 = !DILocation(line: 591, column: 27, scope: !6279)
!6290 = !DILocation(line: 592, column: 23, scope: !6279)
!6291 = !DILocation(line: 593, column: 3, scope: !6279)
!6292 = !DILocation(line: 595, column: 4, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 593, column: 10)
!6294 = !DILocation(line: 595, column: 11, scope: !6293)
!6295 = !DILocation(line: 596, column: 5, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6293, file: !3, line: 595, column: 25)
!6297 = !DILocation(line: 597, column: 5, scope: !6296)
!6298 = !DILocation(line: 598, column: 5, scope: !6296)
!6299 = distinct !{!6299, !6292, !6300, !5833, !5610}
!6300 = !DILocation(line: 599, column: 4, scope: !6293)
!6301 = !DILocation(line: 602, column: 46, scope: !5473)
!6302 = !DILocation(line: 602, column: 2, scope: !5473)
!6303 = !DILocation(line: 603, column: 1, scope: !5473)
!6304 = distinct !DISubprogram(name: "trigger_all_cpu_backtrace", scope: !6068, file: !6068, line: 158, type: !2239, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6305 = !DILocation(line: 160, column: 2, scope: !6304)
!6306 = !DILocation(line: 161, column: 2, scope: !6304)
!6307 = distinct !DISubprogram(name: "oops_exit", scope: !3, file: !3, line: 648, type: !3287, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6308 = !DILocation(line: 650, column: 2, scope: !6307)
!6309 = !DILocation(line: 651, column: 2, scope: !6307)
!6310 = !DILocation(line: 652, column: 2, scope: !6307)
!6311 = !DILocation(line: 653, column: 1, scope: !6307)
!6312 = distinct !DISubprogram(name: "print_oops_end_marker", scope: !3, file: !3, line: 639, type: !3287, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6313 = !DILocation(line: 641, column: 2, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 641, column: 2)
!6315 = !DILocation(line: 641, column: 2, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 641, column: 2)
!6317 = !DILocation(line: 642, column: 1, scope: !6312)
!6318 = distinct !DISubprogram(name: "__warn", scope: !3, file: !3, line: 660, type: !6319, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{null, !185, !27, !189, !7, !3791, !6321}
!6321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6322, size: 64)
!6322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "warn_args", file: !3, line: 655, size: 256, elements: !6323)
!6323 = !{!6324, !6325}
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !6322, file: !3, line: 656, baseType: !185, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !6322, file: !3, line: 657, baseType: !5262, size: 192, offset: 64)
!6326 = !{!6327, !6328, !6329, !6330, !6331, !6332, !6333, !6337, !6339, !6341, !6344, !6346}
!6327 = !DILocalVariable(name: "file", arg: 1, scope: !6318, file: !3, line: 660, type: !185)
!6328 = !DILocalVariable(name: "line", arg: 2, scope: !6318, file: !3, line: 660, type: !27)
!6329 = !DILocalVariable(name: "caller", arg: 3, scope: !6318, file: !3, line: 660, type: !189)
!6330 = !DILocalVariable(name: "taint", arg: 4, scope: !6318, file: !3, line: 660, type: !7)
!6331 = !DILocalVariable(name: "regs", arg: 5, scope: !6318, file: !3, line: 661, type: !3791)
!6332 = !DILocalVariable(name: "args", arg: 6, scope: !6318, file: !3, line: 661, type: !6321)
!6333 = !DILocalVariable(name: "pscr_ret__", scope: !6334, file: !3, line: 666, type: !27)
!6334 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 666, column: 3)
!6335 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 666, column: 3)
!6336 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 665, column: 6)
!6337 = !DILocalVariable(name: "__vpp_verify", scope: !6338, file: !3, line: 666, type: !1278)
!6338 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 666, column: 3)
!6339 = !DILocalVariable(name: "pfo_val__", scope: !6340, file: !3, line: 666, type: !495)
!6340 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 666, column: 3)
!6341 = !DILocalVariable(name: "pscr_ret__", scope: !6342, file: !3, line: 670, type: !27)
!6342 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 670, column: 3)
!6343 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 670, column: 3)
!6344 = !DILocalVariable(name: "__vpp_verify", scope: !6345, file: !3, line: 670, type: !1278)
!6345 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 670, column: 3)
!6346 = !DILocalVariable(name: "pfo_val__", scope: !6347, file: !3, line: 670, type: !495)
!6347 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 670, column: 3)
!6348 = !DILocation(line: 660, column: 25, scope: !6318)
!6349 = !DILocation(line: 660, column: 35, scope: !6318)
!6350 = !DILocation(line: 660, column: 47, scope: !6318)
!6351 = !DILocation(line: 660, column: 64, scope: !6318)
!6352 = !DILocation(line: 661, column: 22, scope: !6318)
!6353 = !DILocation(line: 661, column: 46, scope: !6318)
!6354 = !DILocation(line: 663, column: 2, scope: !6318)
!6355 = !DILocation(line: 665, column: 6, scope: !6336)
!6356 = !DILocation(line: 665, column: 6, scope: !6318)
!6357 = !DILocation(line: 666, column: 3, scope: !6335)
!6358 = !DILocation(line: 666, column: 3, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 666, column: 3)
!6360 = !DILocation(line: 666, column: 3, scope: !6334)
!6361 = !DILocation(line: 666, column: 3, scope: !6338)
!6362 = !DILocation(line: 666, column: 3, scope: !6340)
!6363 = !{i64 2155666974}
!6364 = !DILocation(line: 666, column: 3, scope: !6336)
!6365 = !DILocation(line: 670, column: 3, scope: !6343)
!6366 = !DILocation(line: 670, column: 3, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 670, column: 3)
!6368 = !DILocation(line: 670, column: 3, scope: !6342)
!6369 = !DILocation(line: 670, column: 3, scope: !6345)
!6370 = !DILocation(line: 670, column: 3, scope: !6347)
!6371 = !{i64 2155670939}
!6372 = !DILocation(line: 673, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 673, column: 6)
!6374 = !DILocation(line: 673, column: 6, scope: !6318)
!6375 = !DILocation(line: 674, column: 11, scope: !6373)
!6376 = !DILocation(line: 674, column: 17, scope: !6373)
!6377 = !DILocation(line: 674, column: 22, scope: !6373)
!6378 = !DILocation(line: 674, column: 28, scope: !6373)
!6379 = !DILocation(line: 674, column: 3, scope: !6373)
!6380 = !DILocation(line: 676, column: 2, scope: !6318)
!6381 = !DILocation(line: 678, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 678, column: 6)
!6383 = !DILocation(line: 678, column: 6, scope: !6318)
!6384 = !DILocation(line: 679, column: 13, scope: !6382)
!6385 = !DILocation(line: 679, column: 3, scope: !6382)
!6386 = !DILocation(line: 681, column: 2, scope: !6318)
!6387 = !DILocation(line: 683, column: 7, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 683, column: 6)
!6389 = !DILocation(line: 683, column: 6, scope: !6318)
!6390 = !DILocation(line: 684, column: 3, scope: !6388)
!6391 = !DILocation(line: 686, column: 24, scope: !6318)
!6392 = !DILocation(line: 686, column: 2, scope: !6318)
!6393 = !DILocation(line: 688, column: 2, scope: !6318)
!6394 = !DILocation(line: 689, column: 61, scope: !6318)
!6395 = !DILocation(line: 689, column: 46, scope: !6318)
!6396 = !DILocation(line: 689, column: 2, scope: !6318)
!6397 = !DILocation(line: 692, column: 12, scope: !6318)
!6398 = !DILocation(line: 692, column: 2, scope: !6318)
!6399 = !DILocation(line: 693, column: 1, scope: !6318)
!6400 = !DISubprogram(name: "disable_trace_on_warning", scope: !6401, file: !6401, line: 1157, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6401 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!6402 = distinct !DISubprogram(name: "get_current", scope: !6403, file: !6403, line: 39, type: !6404, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6406)
!6403 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!849}
!6406 = !{!6407, !6409, !6411}
!6407 = !DILocalVariable(name: "pscr_ret__", scope: !6408, file: !6403, line: 41, type: !849)
!6408 = distinct !DILexicalBlock(scope: !6402, file: !6403, line: 41, column: 9)
!6409 = !DILocalVariable(name: "__vpp_verify", scope: !6410, file: !6403, line: 41, type: !1278)
!6410 = distinct !DILexicalBlock(scope: !6408, file: !6403, line: 41, column: 9)
!6411 = !DILocalVariable(name: "pfo_val__", scope: !6412, file: !6403, line: 41, type: !499)
!6412 = distinct !DILexicalBlock(scope: !6408, file: !6403, line: 41, column: 9)
!6413 = !DILocation(line: 41, column: 9, scope: !6408)
!6414 = !DILocation(line: 41, column: 9, scope: !6410)
!6415 = !DILocation(line: 41, column: 9, scope: !6412)
!6416 = !{i64 2149064007}
!6417 = !DILocation(line: 41, column: 9, scope: !6402)
!6418 = !DILocation(line: 41, column: 2, scope: !6402)
!6419 = !DISubprogram(name: "vprintk", scope: !5967, file: !5967, line: 150, type: !6420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!27, !185, !5973}
!6422 = !DISubprogram(name: "print_modules", scope: !47, file: !47, line: 737, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6423 = !DISubprogram(name: "show_regs", scope: !6424, file: !6424, line: 26, type: !5616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6424 = !DIFile(filename: "./include/linux/sched/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "162ea9be471e54e9534d809de8723629")
!6425 = distinct !DISubprogram(name: "print_irqtrace_events", scope: !6426, file: !6426, line: 516, type: !6427, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6429)
!6426 = !DIFile(filename: "./include/linux/lockdep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f59f80522afecdf25b67841b74f6b28f")
!6427 = !DISubroutineType(types: !6428)
!6428 = !{null, !849}
!6429 = !{!6430}
!6430 = !DILocalVariable(name: "curr", arg: 1, scope: !6425, file: !6426, line: 516, type: !849)
!6431 = !DILocation(line: 516, column: 62, scope: !6425)
!6432 = !DILocation(line: 518, column: 1, scope: !6425)
!6433 = !DILocation(line: 69, column: 1, scope: !5495)
!6434 = !DILocation(line: 69, column: 1, scope: !5503)
!6435 = !DILocation(line: 69, column: 1, scope: !5502)
!6436 = !DILocation(line: 69, column: 1, scope: !5505)
!6437 = !DILocation(line: 69, column: 1, scope: !5508)
!6438 = !DILocation(line: 69, column: 1, scope: !5510)
!6439 = !{i64 2155574178}
!6440 = !DILocation(line: 69, column: 1, scope: !5506)
!6441 = !DILocation(line: 69, column: 1, scope: !5512)
!6442 = !DILocation(line: 69, column: 1, scope: !5516)
!6443 = !DILocation(line: 69, column: 1, scope: !5515)
!6444 = !DILocation(line: 69, column: 1, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !5515, file: !41, line: 69, column: 1)
!6446 = !DILocation(line: 69, column: 1, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !5515, file: !41, line: 69, column: 1)
!6448 = !{i64 2155575394, i64 2155575423, i64 2155575469, i64 2155575527, i64 2155575581, i64 2155575635, i64 2155575690, i64 2155575721, i64 2155576029, i64 2155576035, i64 2155576082, i64 2155576105, i64 2155576131}
!6449 = !DILocation(line: 69, column: 1, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !5515, file: !41, line: 69, column: 1)
!6451 = !DILocation(line: 69, column: 1, scope: !5513)
!6452 = !DILocation(line: 69, column: 1, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !5502, file: !41, line: 69, column: 1)
!6454 = !{i64 2155576490}
!6455 = !DILocation(line: 69, column: 1, scope: !5518)
!6456 = !DILocation(line: 69, column: 1, scope: !5521)
!6457 = !DILocation(line: 69, column: 1, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !5521, file: !41, line: 69, column: 1)
!6459 = !DILocation(line: 69, column: 1, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6458, file: !41, line: 69, column: 1)
!6461 = !DILocation(line: 69, column: 1, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !5518, file: !41, line: 69, column: 1)
!6463 = !DILocation(line: 69, column: 1, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6462, file: !41, line: 69, column: 1)
!6465 = !DILocation(line: 69, column: 1, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6464, file: !41, line: 69, column: 1)
!6467 = !DILocation(line: 69, column: 1, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !5502, file: !41, line: 69, column: 1)
!6469 = !{i64 2155582989}
!6470 = !DILocation(line: 69, column: 1, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6468, file: !41, line: 69, column: 1)
!6472 = !DILocation(line: 69, column: 1, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6471, file: !41, line: 69, column: 1)
!6474 = !{i64 2155583148}
!6475 = distinct !DISubprogram(name: "__warn_printk", scope: !3, file: !3, line: 720, type: !5257, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6476)
!6476 = !{!6477, !6478, !6479}
!6477 = !DILocalVariable(name: "fmt", arg: 1, scope: !6475, file: !3, line: 720, type: !185)
!6478 = !DILocalVariable(name: "rcu", scope: !6475, file: !3, line: 722, type: !1571)
!6479 = !DILocalVariable(name: "args", scope: !6475, file: !3, line: 723, type: !5262)
!6480 = !DILocation(line: 720, column: 32, scope: !6475)
!6481 = !DILocation(line: 722, column: 2, scope: !6475)
!6482 = !DILocation(line: 722, column: 7, scope: !6475)
!6483 = !DILocation(line: 722, column: 13, scope: !6475)
!6484 = !DILocation(line: 723, column: 2, scope: !6475)
!6485 = !DILocation(line: 723, column: 10, scope: !6475)
!6486 = !DILocation(line: 725, column: 2, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 725, column: 2)
!6488 = !DILocation(line: 725, column: 2, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 725, column: 2)
!6490 = !DILocation(line: 727, column: 2, scope: !6475)
!6491 = !DILocation(line: 728, column: 10, scope: !6475)
!6492 = !DILocation(line: 728, column: 15, scope: !6475)
!6493 = !DILocation(line: 728, column: 2, scope: !6475)
!6494 = !DILocation(line: 729, column: 2, scope: !6475)
!6495 = !DILocation(line: 730, column: 16, scope: !6475)
!6496 = !DILocation(line: 730, column: 2, scope: !6475)
!6497 = !DILocation(line: 731, column: 1, scope: !6475)
!6498 = distinct !DISubprogram(name: "warn_rcu_enter", scope: !5527, file: !5527, line: 134, type: !2239, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6499 = !{!6500}
!6500 = !DILocalVariable(name: "ret", scope: !6498, file: !5527, line: 136, type: !1571)
!6501 = !DILocation(line: 136, column: 2, scope: !6498)
!6502 = !DILocation(line: 136, column: 7, scope: !6498)
!6503 = !DILocation(line: 142, column: 2, scope: !6498)
!6504 = !DILocation(line: 142, column: 2, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6498, file: !5527, line: 142, column: 2)
!6506 = !{i64 2155481268}
!6507 = !DILocation(line: 143, column: 6, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6498, file: !5527, line: 143, column: 6)
!6509 = !DILocation(line: 143, column: 6, scope: !6498)
!6510 = !DILocation(line: 144, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6508, file: !5527, line: 143, column: 38)
!6512 = !DILocation(line: 145, column: 3, scope: !6511)
!6513 = !DILocation(line: 146, column: 2, scope: !6511)
!6514 = !DILocation(line: 148, column: 9, scope: !6498)
!6515 = !DILocation(line: 149, column: 1, scope: !6498)
!6516 = !DILocation(line: 148, column: 2, scope: !6498)
!6517 = !DILocation(line: 151, column: 48, scope: !5526)
!6518 = !DILocation(line: 153, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 153, column: 6)
!6520 = !DILocation(line: 153, column: 6, scope: !5526)
!6521 = !DILocation(line: 154, column: 3, scope: !6519)
!6522 = !DILocation(line: 155, column: 2, scope: !5526)
!6523 = !DILocation(line: 155, column: 2, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 155, column: 2)
!6525 = !{i64 2155481655}
!6526 = !DILocation(line: 155, column: 2, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6524, file: !5527, line: 155, column: 2)
!6528 = !DILocation(line: 155, column: 2, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6527, file: !5527, line: 155, column: 2)
!6530 = !{i64 2155481814}
!6531 = !DILocation(line: 156, column: 1, scope: !5526)
!6532 = distinct !DISubprogram(name: "__initstub__kmod_panic__355_755_register_warn_debugfs6", scope: !3, file: !3, line: 755, type: !4958, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6533 = !DILocation(line: 755, column: 1, scope: !6532)
!6534 = distinct !DISubprogram(name: "register_warn_debugfs", scope: !3, file: !3, line: 747, type: !4958, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6535 = !DILocation(line: 750, column: 2, scope: !6534)
!6536 = !DILocation(line: 752, column: 2, scope: !6534)
!6537 = distinct !DISubprogram(name: "__stack_chk_fail", scope: !3, file: !3, line: 764, type: !3287, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6538 = !DILocation(line: 766, column: 2, scope: !6537)
!6539 = !DILocation(line: 766, column: 2, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 766, column: 2)
!6541 = !DILocation(line: 768, column: 3, scope: !6537)
!6542 = !DILocation(line: 767, column: 2, scope: !6537)
!6543 = distinct !DISubprogram(name: "oops_setup", scope: !3, file: !3, line: 781, type: !5407, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6544 = !{!6545}
!6545 = !DILocalVariable(name: "s", arg: 1, scope: !6543, file: !3, line: 781, type: !352)
!6546 = !DILocation(line: 781, column: 36, scope: !6543)
!6547 = !DILocation(line: 783, column: 7, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 783, column: 6)
!6549 = !DILocation(line: 783, column: 6, scope: !6543)
!6550 = !DILocation(line: 784, column: 3, scope: !6548)
!6551 = !DILocation(line: 785, column: 14, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 785, column: 6)
!6553 = !DILocation(line: 785, column: 7, scope: !6552)
!6554 = !DILocation(line: 785, column: 6, scope: !6543)
!6555 = !DILocation(line: 786, column: 17, scope: !6552)
!6556 = !DILocation(line: 786, column: 3, scope: !6552)
!6557 = !DILocation(line: 787, column: 2, scope: !6543)
!6558 = !DILocation(line: 788, column: 1, scope: !6543)
!6559 = distinct !DISubprogram(name: "panic_on_taint_setup", scope: !3, file: !3, line: 791, type: !5407, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6560)
!6560 = !{!6561, !6562}
!6561 = !DILocalVariable(name: "s", arg: 1, scope: !6559, file: !3, line: 791, type: !352)
!6562 = !DILocalVariable(name: "taint_str", scope: !6559, file: !3, line: 793, type: !352)
!6563 = !DILocation(line: 791, column: 46, scope: !6559)
!6564 = !DILocation(line: 793, column: 2, scope: !6559)
!6565 = !DILocation(line: 793, column: 8, scope: !6559)
!6566 = !DILocation(line: 795, column: 7, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 795, column: 6)
!6568 = !DILocation(line: 795, column: 6, scope: !6559)
!6569 = !DILocation(line: 796, column: 3, scope: !6567)
!6570 = !DILocation(line: 798, column: 14, scope: !6559)
!6571 = !DILocation(line: 798, column: 12, scope: !6559)
!6572 = !DILocation(line: 799, column: 15, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 799, column: 6)
!6574 = !DILocation(line: 799, column: 6, scope: !6573)
!6575 = !DILocation(line: 799, column: 6, scope: !6559)
!6576 = !DILocation(line: 800, column: 3, scope: !6573)
!6577 = !DILocation(line: 803, column: 17, scope: !6559)
!6578 = !DILocation(line: 805, column: 7, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 805, column: 6)
!6580 = !DILocation(line: 805, column: 6, scope: !6559)
!6581 = !DILocation(line: 806, column: 3, scope: !6579)
!6582 = !DILocation(line: 808, column: 6, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 808, column: 6)
!6584 = !DILocation(line: 808, column: 8, scope: !6583)
!6585 = !DILocation(line: 808, column: 19, scope: !6583)
!6586 = !DILocation(line: 808, column: 12, scope: !6583)
!6587 = !DILocation(line: 808, column: 6, scope: !6559)
!6588 = !DILocation(line: 809, column: 30, scope: !6583)
!6589 = !DILocation(line: 809, column: 3, scope: !6583)
!6590 = !DILocation(line: 811, column: 2, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 811, column: 2)
!6592 = !DILocation(line: 811, column: 2, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 811, column: 2)
!6594 = !DILocation(line: 814, column: 2, scope: !6559)
!6595 = !DILocation(line: 815, column: 1, scope: !6559)
!6596 = !DISubprogram(name: "__register_sysctl_init", scope: !181, file: !181, line: 237, type: !6597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{null, !185, !201, !185, !203}
!6599 = !DISubprogram(name: "sysfs_add_file_to_group", scope: !378, file: !378, line: 319, type: !6600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!27, !317, !6602, !185}
!6602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6603, size: 64)
!6603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!6604 = distinct !DISubprogram(name: "warn_count_show", scope: !3, file: !3, line: 116, type: !5457, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6605)
!6605 = !{!6606, !6607, !6608}
!6606 = !DILocalVariable(name: "kobj", arg: 1, scope: !6604, file: !3, line: 116, type: !317)
!6607 = !DILocalVariable(name: "attr", arg: 2, scope: !6604, file: !3, line: 116, type: !5459)
!6608 = !DILocalVariable(name: "page", arg: 3, scope: !6604, file: !3, line: 117, type: !352)
!6609 = !DILocation(line: 116, column: 48, scope: !6604)
!6610 = !DILocation(line: 116, column: 77, scope: !6604)
!6611 = !DILocation(line: 117, column: 17, scope: !6604)
!6612 = !DILocation(line: 119, column: 20, scope: !6604)
!6613 = !DILocation(line: 119, column: 34, scope: !6604)
!6614 = !DILocation(line: 119, column: 9, scope: !6604)
!6615 = !DILocation(line: 119, column: 2, scope: !6604)
!6616 = !DISubprogram(name: "sysfs_emit", scope: !378, file: !378, line: 357, type: !6123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6617 = distinct !DISubprogram(name: "atomic_read", scope: !5677, file: !5677, line: 30, type: !6618, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6622)
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!27, !6620}
!6620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6621, size: 64)
!6621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!6622 = !{!6623}
!6623 = !DILocalVariable(name: "v", arg: 1, scope: !6617, file: !5677, line: 30, type: !6620)
!6624 = !DILocation(line: 30, column: 29, scope: !6617)
!6625 = !DILocation(line: 32, column: 25, scope: !6617)
!6626 = !DILocation(line: 32, column: 2, scope: !6617)
!6627 = !DILocation(line: 33, column: 25, scope: !6617)
!6628 = !DILocation(line: 33, column: 9, scope: !6617)
!6629 = !DILocation(line: 33, column: 2, scope: !6617)
!6630 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6631, file: !6631, line: 66, type: !6632, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6631 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6632 = !DISubroutineType(types: !6633)
!6633 = !{null, !6634, !203}
!6634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6635, size: 64)
!6635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6636)
!6636 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "v", arg: 1, scope: !6630, file: !6631, line: 66, type: !6634)
!6639 = !DILocalVariable(name: "size", arg: 2, scope: !6630, file: !6631, line: 66, type: !203)
!6640 = !DILocation(line: 66, column: 73, scope: !6630)
!6641 = !DILocation(line: 66, column: 83, scope: !6630)
!6642 = !DILocation(line: 68, column: 19, scope: !6630)
!6643 = !DILocation(line: 68, column: 22, scope: !6630)
!6644 = !DILocation(line: 68, column: 2, scope: !6630)
!6645 = !DILocation(line: 69, column: 2, scope: !6630)
!6646 = !DILocation(line: 70, column: 1, scope: !6630)
!6647 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6648, file: !6648, line: 442, type: !6618, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6649)
!6648 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6649 = !{!6650}
!6650 = !DILocalVariable(name: "v", arg: 1, scope: !6647, file: !6648, line: 442, type: !6620)
!6651 = !DILocation(line: 442, column: 33, scope: !6647)
!6652 = !DILocation(line: 444, column: 26, scope: !6647)
!6653 = !DILocation(line: 444, column: 9, scope: !6647)
!6654 = !DILocation(line: 444, column: 2, scope: !6647)
!6655 = distinct !DISubprogram(name: "kasan_check_read", scope: !6656, file: !6656, line: 40, type: !6657, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6656 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!1571, !6634, !7}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "p", arg: 1, scope: !6655, file: !6656, line: 40, type: !6634)
!6661 = !DILocalVariable(name: "size", arg: 2, scope: !6655, file: !6656, line: 40, type: !7)
!6662 = !DILocation(line: 40, column: 58, scope: !6655)
!6663 = !DILocation(line: 40, column: 74, scope: !6655)
!6664 = !DILocation(line: 42, column: 2, scope: !6655)
!6665 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6666, file: !6666, line: 229, type: !6667, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6669)
!6666 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6667 = !DISubroutineType(types: !6668)
!6668 = !{null, !6634, !203, !27}
!6669 = !{!6670, !6671, !6672}
!6670 = !DILocalVariable(name: "ptr", arg: 1, scope: !6665, file: !6666, line: 229, type: !6634)
!6671 = !DILocalVariable(name: "size", arg: 2, scope: !6665, file: !6666, line: 229, type: !203)
!6672 = !DILocalVariable(name: "type", arg: 3, scope: !6665, file: !6666, line: 230, type: !27)
!6673 = !DILocation(line: 229, column: 60, scope: !6665)
!6674 = !DILocation(line: 229, column: 72, scope: !6665)
!6675 = !DILocation(line: 230, column: 15, scope: !6665)
!6676 = !DILocation(line: 230, column: 23, scope: !6665)
!6677 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6678, file: !6678, line: 17, type: !6618, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6678 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6679 = !{!6680}
!6680 = !DILocalVariable(name: "v", arg: 1, scope: !6677, file: !6678, line: 17, type: !6620)
!6681 = !DILocation(line: 17, column: 61, scope: !6677)
!6682 = !DILocation(line: 23, column: 9, scope: !6677)
!6683 = !DILocation(line: 23, column: 2, scope: !6677)
!6684 = distinct !DISubprogram(name: "rep_nop", scope: !5612, file: !5612, line: 11, type: !3287, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6685 = !DILocation(line: 13, column: 2, scope: !6684)
!6686 = !{i64 1973238}
!6687 = !DILocation(line: 14, column: 1, scope: !6684)
!6688 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6631, file: !6631, line: 94, type: !6632, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6689)
!6689 = !{!6690, !6691}
!6690 = !DILocalVariable(name: "v", arg: 1, scope: !6688, file: !6631, line: 94, type: !6634)
!6691 = !DILocalVariable(name: "size", arg: 2, scope: !6688, file: !6631, line: 94, type: !203)
!6692 = !DILocation(line: 94, column: 79, scope: !6688)
!6693 = !DILocation(line: 94, column: 89, scope: !6688)
!6694 = !DILocation(line: 96, column: 20, scope: !6688)
!6695 = !DILocation(line: 96, column: 23, scope: !6688)
!6696 = !DILocation(line: 96, column: 2, scope: !6688)
!6697 = !DILocation(line: 97, column: 2, scope: !6688)
!6698 = !DILocation(line: 98, column: 1, scope: !6688)
!6699 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !6648, file: !6648, line: 2001, type: !5678, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6700)
!6700 = !{!6701, !6702, !6703}
!6701 = !DILocalVariable(name: "v", arg: 1, scope: !6699, file: !6648, line: 2001, type: !5200)
!6702 = !DILocalVariable(name: "old", arg: 2, scope: !6699, file: !6648, line: 2001, type: !27)
!6703 = !DILocalVariable(name: "new", arg: 3, scope: !6699, file: !6648, line: 2001, type: !27)
!6704 = !DILocation(line: 2001, column: 30, scope: !6699)
!6705 = !DILocation(line: 2001, column: 37, scope: !6699)
!6706 = !DILocation(line: 2001, column: 46, scope: !6699)
!6707 = !DILocation(line: 2004, column: 29, scope: !6699)
!6708 = !DILocation(line: 2004, column: 32, scope: !6699)
!6709 = !DILocation(line: 2004, column: 37, scope: !6699)
!6710 = !DILocation(line: 2004, column: 9, scope: !6699)
!6711 = !DILocation(line: 2004, column: 2, scope: !6699)
!6712 = distinct !DISubprogram(name: "kasan_check_write", scope: !6656, file: !6656, line: 44, type: !6657, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6713 = !{!6714, !6715}
!6714 = !DILocalVariable(name: "p", arg: 1, scope: !6712, file: !6656, line: 44, type: !6634)
!6715 = !DILocalVariable(name: "size", arg: 2, scope: !6712, file: !6656, line: 44, type: !7)
!6716 = !DILocation(line: 44, column: 59, scope: !6712)
!6717 = !DILocation(line: 44, column: 75, scope: !6712)
!6718 = !DILocation(line: 46, column: 2, scope: !6712)
!6719 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !6678, file: !6678, line: 107, type: !5678, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6720 = !{!6721, !6722, !6723, !6724, !6726, !6727, !6728}
!6721 = !DILocalVariable(name: "v", arg: 1, scope: !6719, file: !6678, line: 107, type: !5200)
!6722 = !DILocalVariable(name: "old", arg: 2, scope: !6719, file: !6678, line: 107, type: !27)
!6723 = !DILocalVariable(name: "new", arg: 3, scope: !6719, file: !6678, line: 107, type: !27)
!6724 = !DILocalVariable(name: "__ret", scope: !6725, file: !6678, line: 109, type: !27)
!6725 = distinct !DILexicalBlock(scope: !6719, file: !6678, line: 109, column: 9)
!6726 = !DILocalVariable(name: "__old", scope: !6725, file: !6678, line: 109, type: !27)
!6727 = !DILocalVariable(name: "__new", scope: !6725, file: !6678, line: 109, type: !27)
!6728 = !DILocalVariable(name: "__ptr", scope: !6725, file: !6678, line: 109, type: !5182)
!6729 = !DILocation(line: 107, column: 58, scope: !6719)
!6730 = !DILocation(line: 107, column: 65, scope: !6719)
!6731 = !DILocation(line: 107, column: 74, scope: !6719)
!6732 = !DILocation(line: 109, column: 9, scope: !6725)
!6733 = !{i64 2147798290, i64 2147798329, i64 2147798350, i64 2147798387, i64 2147798410, i64 2147798419}
!6734 = !DILocation(line: 109, column: 9, scope: !6719)
!6735 = !DILocation(line: 109, column: 2, scope: !6719)
!6736 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !6648, file: !6648, line: 996, type: !5925, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6737)
!6737 = !{!6738}
!6738 = !DILocalVariable(name: "v", arg: 1, scope: !6736, file: !6648, line: 996, type: !5200)
!6739 = !DILocation(line: 996, column: 33, scope: !6736)
!6740 = !DILocation(line: 1007, column: 34, scope: !6736)
!6741 = !DILocation(line: 1007, column: 9, scope: !6736)
!6742 = !DILocation(line: 1007, column: 2, scope: !6736)
!6743 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !6648, file: !6648, line: 548, type: !6744, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6746)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!27, !27, !5200}
!6746 = !{!6747, !6748}
!6747 = !DILocalVariable(name: "i", arg: 1, scope: !6743, file: !6648, line: 548, type: !27)
!6748 = !DILocalVariable(name: "v", arg: 2, scope: !6743, file: !6648, line: 548, type: !5200)
!6749 = !DILocation(line: 548, column: 27, scope: !6743)
!6750 = !DILocation(line: 548, column: 40, scope: !6743)
!6751 = !DILocation(line: 551, column: 32, scope: !6743)
!6752 = !DILocation(line: 551, column: 35, scope: !6743)
!6753 = !DILocation(line: 551, column: 9, scope: !6743)
!6754 = !DILocation(line: 551, column: 2, scope: !6743)
!6755 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6678, file: !6678, line: 83, type: !6744, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6756 = !{!6757, !6758, !6759}
!6757 = !DILocalVariable(name: "i", arg: 1, scope: !6755, file: !6678, line: 83, type: !27)
!6758 = !DILocalVariable(name: "v", arg: 2, scope: !6755, file: !6678, line: 83, type: !5200)
!6759 = !DILocalVariable(name: "__ret", scope: !6760, file: !6678, line: 85, type: !27)
!6760 = distinct !DILexicalBlock(scope: !6755, file: !6678, line: 85, column: 13)
!6761 = !DILocation(line: 83, column: 55, scope: !6755)
!6762 = !DILocation(line: 83, column: 68, scope: !6755)
!6763 = !DILocation(line: 85, column: 9, scope: !6755)
!6764 = !DILocation(line: 85, column: 13, scope: !6760)
!6765 = !{i64 2147791065, i64 2147791104, i64 2147791125, i64 2147791162, i64 2147791185, i64 2147791194}
!6766 = !DILocation(line: 85, column: 13, scope: !6755)
!6767 = !DILocation(line: 85, column: 11, scope: !6755)
!6768 = !DILocation(line: 85, column: 2, scope: !6755)
!6769 = distinct !DISubprogram(name: "native_irq_disable", scope: !5939, file: !5939, line: 35, type: !3287, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6770 = !DILocation(line: 37, column: 2, scope: !6769)
!6771 = !{i64 1931578}
!6772 = !DILocation(line: 38, column: 1, scope: !6769)
!6773 = distinct !DISubprogram(name: "show_state", scope: !6424, file: !6424, line: 19, type: !3287, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6774 = !DILocation(line: 21, column: 2, scope: !6773)
!6775 = !DILocation(line: 22, column: 1, scope: !6773)
!6776 = distinct !DISubprogram(name: "show_mem", scope: !2484, file: !2484, line: 3170, type: !3287, scopeLine: 3171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6777 = !DILocation(line: 3172, column: 2, scope: !6776)
!6778 = !DILocation(line: 3173, column: 1, scope: !6776)
!6779 = !DISubprogram(name: "sysrq_timer_list_show", scope: !59, file: !59, line: 532, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6780 = distinct !DISubprogram(name: "debug_show_all_locks", scope: !6058, file: !6058, line: 56, type: !3287, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6781 = !DILocation(line: 58, column: 1, scope: !6780)
!6782 = !DISubprogram(name: "ftrace_dump", scope: !276, file: !276, line: 407, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{null, !275}
!6785 = !DISubprogram(name: "show_state_filter", scope: !6424, file: !6424, line: 17, type: !6786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{null, !7}
!6788 = !DISubprogram(name: "__show_mem", scope: !2484, file: !2484, line: 3169, type: !6789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6789 = !DISubroutineType(types: !6790)
!6790 = !{null, !7, !6791, !27}
!6791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!6792 = distinct !DISubprogram(name: "arch_touch_nmi_watchdog", scope: !6068, file: !6068, line: 96, type: !3287, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6793 = !DILocation(line: 96, column: 52, scope: !6792)
!6794 = distinct !DISubprogram(name: "native_irq_enable", scope: !5939, file: !5939, line: 40, type: !3287, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6795 = !DILocation(line: 42, column: 2, scope: !6794)
!6796 = !{i64 1931670}
!6797 = !DILocation(line: 43, column: 1, scope: !6794)
!6798 = distinct !DISubprogram(name: "arch_test_bit", scope: !6799, file: !6799, line: 237, type: !6127, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6800)
!6799 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6800 = !{!6801, !6802}
!6801 = !DILocalVariable(name: "nr", arg: 1, scope: !6798, file: !6799, line: 237, type: !207)
!6802 = !DILocalVariable(name: "addr", arg: 2, scope: !6798, file: !6799, line: 237, type: !6129)
!6803 = !DILocation(line: 237, column: 29, scope: !6798)
!6804 = !DILocation(line: 237, column: 63, scope: !6798)
!6805 = !DILocation(line: 239, column: 30, scope: !6798)
!6806 = !DILocation(line: 239, column: 9, scope: !6798)
!6807 = !DILocation(line: 239, column: 54, scope: !6798)
!6808 = !DILocation(line: 239, column: 58, scope: !6798)
!6809 = !DILocation(line: 239, column: 36, scope: !6798)
!6810 = !DILocation(line: 240, column: 26, scope: !6798)
!6811 = !DILocation(line: 240, column: 30, scope: !6798)
!6812 = !DILocation(line: 240, column: 8, scope: !6798)
!6813 = !DILocation(line: 239, column: 2, scope: !6798)
!6814 = distinct !DISubprogram(name: "constant_test_bit", scope: !6799, file: !6799, line: 204, type: !6815, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6817)
!6815 = !DISubroutineType(types: !6816)
!6816 = !{!1571, !387, !6129}
!6817 = !{!6818, !6819}
!6818 = !DILocalVariable(name: "nr", arg: 1, scope: !6814, file: !6799, line: 204, type: !387)
!6819 = !DILocalVariable(name: "addr", arg: 2, scope: !6814, file: !6799, line: 204, type: !6129)
!6820 = !DILocation(line: 204, column: 52, scope: !6814)
!6821 = !DILocation(line: 204, column: 86, scope: !6814)
!6822 = !DILocation(line: 206, column: 19, scope: !6814)
!6823 = !DILocation(line: 206, column: 22, scope: !6814)
!6824 = !DILocation(line: 206, column: 15, scope: !6814)
!6825 = !DILocation(line: 207, column: 4, scope: !6814)
!6826 = !DILocation(line: 207, column: 9, scope: !6814)
!6827 = !DILocation(line: 207, column: 12, scope: !6814)
!6828 = !DILocation(line: 206, column: 44, scope: !6814)
!6829 = !DILocation(line: 207, column: 37, scope: !6814)
!6830 = !DILocation(line: 206, column: 2, scope: !6814)
!6831 = distinct !DISubprogram(name: "variable_test_bit", scope: !6799, file: !6799, line: 224, type: !6815, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6832)
!6832 = !{!6833, !6834, !6835}
!6833 = !DILocalVariable(name: "nr", arg: 1, scope: !6831, file: !6799, line: 224, type: !387)
!6834 = !DILocalVariable(name: "addr", arg: 2, scope: !6831, file: !6799, line: 224, type: !6129)
!6835 = !DILocalVariable(name: "oldbit", scope: !6831, file: !6799, line: 226, type: !1571)
!6836 = !DILocation(line: 224, column: 52, scope: !6831)
!6837 = !DILocation(line: 224, column: 86, scope: !6831)
!6838 = !DILocation(line: 226, column: 2, scope: !6831)
!6839 = !DILocation(line: 226, column: 7, scope: !6831)
!6840 = !DILocation(line: 231, column: 33, scope: !6831)
!6841 = !DILocation(line: 231, column: 46, scope: !6831)
!6842 = !DILocation(line: 228, column: 2, scope: !6831)
!6843 = !{i64 2148424581, i64 2148424655}
!6844 = !DILocation(line: 233, column: 9, scope: !6831)
!6845 = !DILocation(line: 234, column: 1, scope: !6831)
!6846 = !DILocation(line: 233, column: 2, scope: !6831)
!6847 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6631, file: !6631, line: 80, type: !6632, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6848)
!6848 = !{!6849, !6850}
!6849 = !DILocalVariable(name: "v", arg: 1, scope: !6847, file: !6631, line: 80, type: !6634)
!6850 = !DILocalVariable(name: "size", arg: 2, scope: !6847, file: !6631, line: 80, type: !203)
!6851 = !DILocation(line: 80, column: 74, scope: !6847)
!6852 = !DILocation(line: 80, column: 84, scope: !6847)
!6853 = !DILocation(line: 82, column: 20, scope: !6847)
!6854 = !DILocation(line: 82, column: 23, scope: !6847)
!6855 = !DILocation(line: 82, column: 2, scope: !6847)
!6856 = !DILocation(line: 83, column: 2, scope: !6847)
!6857 = !DILocation(line: 84, column: 1, scope: !6847)
!6858 = distinct !DISubprogram(name: "arch_set_bit", scope: !6799, file: !6799, line: 52, type: !6227, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6859)
!6859 = !{!6860, !6861}
!6860 = !DILocalVariable(name: "nr", arg: 1, scope: !6858, file: !6799, line: 52, type: !387)
!6861 = !DILocalVariable(name: "addr", arg: 2, scope: !6858, file: !6799, line: 52, type: !6229)
!6862 = !DILocation(line: 52, column: 19, scope: !6858)
!6863 = !DILocation(line: 52, column: 47, scope: !6858)
!6864 = !DILocation(line: 54, column: 27, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6858, file: !6799, line: 54, column: 6)
!6866 = !DILocation(line: 54, column: 6, scope: !6865)
!6867 = !DILocation(line: 54, column: 6, scope: !6858)
!6868 = !DILocation(line: 56, column: 6, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6865, file: !6799, line: 54, column: 32)
!6870 = !DILocation(line: 57, column: 12, scope: !6869)
!6871 = !DILocation(line: 55, column: 3, scope: !6869)
!6872 = !{i64 2148410969, i64 2148411008, i64 2148411029, i64 2148411066, i64 2148411089, i64 2148410959}
!6873 = !DILocation(line: 59, column: 2, scope: !6869)
!6874 = !DILocation(line: 61, column: 8, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6865, file: !6799, line: 59, column: 9)
!6876 = !DILocation(line: 61, column: 32, scope: !6875)
!6877 = !DILocation(line: 60, column: 3, scope: !6875)
!6878 = !{i64 2148411254, i64 2148411293, i64 2148411314, i64 2148411351, i64 2148411374, i64 2148411244}
!6879 = !DILocation(line: 63, column: 1, scope: !6858)
!6880 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6881, file: !6881, line: 32, type: !6882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6881 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!207, !6884}
!6884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!6885 = distinct !DISubprogram(name: "spinlock_check", scope: !6886, file: !6886, line: 324, type: !6887, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6889)
!6886 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6887 = !DISubroutineType(types: !6888)
!6888 = !{!6884, !2676}
!6889 = !{!6890}
!6890 = !DILocalVariable(name: "lock", arg: 1, scope: !6885, file: !6886, line: 324, type: !2676)
!6891 = !DILocation(line: 324, column: 67, scope: !6885)
!6892 = !DILocation(line: 326, column: 10, scope: !6885)
!6893 = !DILocation(line: 326, column: 16, scope: !6885)
!6894 = !DILocation(line: 326, column: 2, scope: !6885)
!6895 = distinct !DISubprogram(name: "spin_unlock", scope: !6886, file: !6886, line: 389, type: !6896, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6898)
!6896 = !DISubroutineType(types: !6897)
!6897 = !{null, !2676}
!6898 = !{!6899}
!6899 = !DILocalVariable(name: "lock", arg: 1, scope: !6895, file: !6886, line: 389, type: !2676)
!6900 = !DILocation(line: 389, column: 53, scope: !6895)
!6901 = !DILocation(line: 391, column: 2, scope: !6895)
!6902 = !DILocation(line: 392, column: 1, scope: !6895)
!6903 = distinct !DISubprogram(name: "spin_msec", scope: !3, file: !3, line: 556, type: !3280, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6904)
!6904 = !{!6905, !6906}
!6905 = !DILocalVariable(name: "msecs", arg: 1, scope: !6903, file: !3, line: 556, type: !27)
!6906 = !DILocalVariable(name: "i", scope: !6903, file: !3, line: 558, type: !27)
!6907 = !DILocation(line: 556, column: 27, scope: !6903)
!6908 = !DILocation(line: 558, column: 2, scope: !6903)
!6909 = !DILocation(line: 558, column: 6, scope: !6903)
!6910 = !DILocation(line: 560, column: 9, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6903, file: !3, line: 560, column: 2)
!6912 = !DILocation(line: 560, column: 7, scope: !6911)
!6913 = !DILocation(line: 560, column: 14, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6911, file: !3, line: 560, column: 2)
!6915 = !DILocation(line: 560, column: 18, scope: !6914)
!6916 = !DILocation(line: 560, column: 16, scope: !6914)
!6917 = !DILocation(line: 560, column: 2, scope: !6911)
!6918 = !DILocation(line: 561, column: 3, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 560, column: 30)
!6920 = !DILocation(line: 562, column: 3, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 562, column: 3)
!6922 = distinct !DILexicalBlock(scope: !6923, file: !3, line: 562, column: 3)
!6923 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 562, column: 3)
!6924 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 562, column: 3)
!6925 = !DILocation(line: 563, column: 2, scope: !6919)
!6926 = !DILocation(line: 560, column: 26, scope: !6914)
!6927 = !DILocation(line: 560, column: 2, scope: !6914)
!6928 = distinct !{!6928, !6917, !6929, !5833, !5610}
!6929 = !DILocation(line: 563, column: 2, scope: !6911)
!6930 = !DILocation(line: 564, column: 1, scope: !6903)
!6931 = distinct !DISubprogram(name: "spin_lock", scope: !6886, file: !6886, line: 349, type: !6896, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6932)
!6932 = !{!6933}
!6933 = !DILocalVariable(name: "lock", arg: 1, scope: !6931, file: !6886, line: 349, type: !2676)
!6934 = !DILocation(line: 349, column: 51, scope: !6931)
!6935 = !DILocation(line: 351, column: 2, scope: !6931)
!6936 = !DILocation(line: 352, column: 1, scope: !6931)
!6937 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6886, file: !6886, line: 404, type: !6938, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{null, !2676, !207}
!6940 = !{!6941, !6942, !6943, !6946}
!6941 = !DILocalVariable(name: "lock", arg: 1, scope: !6937, file: !6886, line: 404, type: !2676)
!6942 = !DILocalVariable(name: "flags", arg: 2, scope: !6937, file: !6886, line: 404, type: !207)
!6943 = !DILocalVariable(name: "__dummy", scope: !6944, file: !6886, line: 406, type: !207)
!6944 = distinct !DILexicalBlock(scope: !6945, file: !6886, line: 406, column: 2)
!6945 = distinct !DILexicalBlock(scope: !6937, file: !6886, line: 406, column: 2)
!6946 = !DILocalVariable(name: "__dummy2", scope: !6944, file: !6886, line: 406, type: !207)
!6947 = !DILocation(line: 404, column: 64, scope: !6937)
!6948 = !DILocation(line: 404, column: 84, scope: !6937)
!6949 = !DILocation(line: 406, column: 2, scope: !6937)
!6950 = !DILocation(line: 406, column: 2, scope: !6944)
!6951 = !DILocation(line: 406, column: 2, scope: !6945)
!6952 = !DILocation(line: 407, column: 1, scope: !6937)
!6953 = !DISubprogram(name: "_raw_spin_unlock", scope: !6881, file: !6881, line: 39, type: !6954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6954 = !DISubroutineType(types: !6955)
!6955 = !{null, !6884}
!6956 = !DISubprogram(name: "_raw_spin_lock", scope: !6881, file: !6881, line: 22, type: !6954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6957 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6881, file: !6881, line: 43, type: !6958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{null, !6884, !207}
!6960 = !DISubprogram(name: "arch_trigger_cpumask_backtrace", scope: !6961, file: !6961, line: 44, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = !DIFile(filename: "./arch/x86/include/asm/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83564aa196308da2743ba3ee9fc7c88a")
!6962 = !DISubroutineType(types: !6963)
!6963 = !{null, !5188, !27}
!6964 = distinct !DISubprogram(name: "static_key_false", scope: !5138, file: !5138, line: 205, type: !6965, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6979)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{!1571, !6967}
!6967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6968, size: 64)
!6968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !5138, line: 85, size: 128, elements: !6969)
!6969 = !{!6970, !6971}
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6968, file: !5138, line: 86, baseType: !217, size: 32)
!6971 = !DIDerivedType(tag: DW_TAG_member, scope: !6968, file: !5138, line: 101, baseType: !6972, size: 64, offset: 64)
!6972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6968, file: !5138, line: 101, size: 64, elements: !6973)
!6973 = !{!6974, !6975, !6976}
!6974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6972, file: !5138, line: 102, baseType: !207, size: 64)
!6975 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6972, file: !5138, line: 103, baseType: !5136, size: 64)
!6976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6972, file: !5138, line: 104, baseType: !6977, size: 64)
!6977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6978, size: 64)
!6978 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !5138, line: 104, flags: DIFlagFwdDecl)
!6979 = !{!6980}
!6980 = !DILocalVariable(name: "key", arg: 1, scope: !6964, file: !5138, line: 205, type: !6967)
!6981 = !DILocation(line: 205, column: 65, scope: !6964)
!6982 = !DILocation(line: 207, column: 28, scope: !6964)
!6983 = !DILocation(line: 207, column: 9, scope: !6964)
!6984 = !DILocation(line: 207, column: 2, scope: !6964)
!6985 = distinct !DISubprogram(name: "cpu_online", scope: !1091, file: !1091, line: 1080, type: !6986, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{!1571, !7}
!6988 = !{!6989}
!6989 = !DILocalVariable(name: "cpu", arg: 1, scope: !6985, file: !1091, line: 1080, type: !7)
!6990 = !DILocation(line: 1080, column: 44, scope: !6985)
!6991 = !DILocation(line: 1082, column: 26, scope: !6985)
!6992 = !DILocation(line: 1082, column: 9, scope: !6985)
!6993 = !DILocation(line: 1082, column: 2, scope: !6985)
!6994 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5943, file: !5943, line: 93, type: !2239, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6995)
!6995 = !{!6996}
!6996 = !DILocalVariable(name: "c", scope: !6997, file: !5943, line: 95, type: !1571)
!6997 = distinct !DILexicalBlock(scope: !6994, file: !5943, line: 95, column: 9)
!6998 = !DILocation(line: 95, column: 9, scope: !6997)
!6999 = !{i64 2149508808, i64 2149508901}
!7000 = !DILocation(line: 95, column: 9, scope: !6994)
!7001 = !DILocation(line: 95, column: 2, scope: !6994)
!7002 = distinct !DISubprogram(name: "arch_static_branch", scope: !7003, file: !7003, line: 25, type: !7004, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7006)
!7003 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7004 = !DISubroutineType(types: !7005)
!7005 = !{!1571, !6967, !1571}
!7006 = !{!7007, !7008, !7009}
!7007 = !DILocalVariable(name: "key", arg: 1, scope: !7002, file: !7003, line: 25, type: !6967)
!7008 = !DILocalVariable(name: "branch", arg: 2, scope: !7002, file: !7003, line: 25, type: !1571)
!7009 = !DILabel(scope: !7002, name: "l_yes", file: !7003, line: 33)
!7010 = !DILocation(line: 25, column: 67, scope: !7002)
!7011 = !DILocation(line: 25, column: 77, scope: !7002)
!7012 = !DILocation(line: 30, column: 13, scope: !7002)
!7013 = !DILocation(line: 30, column: 28, scope: !7002)
!7014 = !DILocation(line: 30, column: 26, scope: !7002)
!7015 = !DILocation(line: 27, column: 2, scope: !7002)
!7016 = !{i64 1297401, i64 1297445, i64 2148782128, i64 2148782149, i64 2148782175, i64 2148782208, i64 2148782242, i64 2148782266}
!7017 = !DILocation(line: 32, column: 2, scope: !7002)
!7018 = !DILocation(line: 33, column: 1, scope: !7002)
!7019 = !DILocation(line: 34, column: 2, scope: !7002)
!7020 = !DILocation(line: 35, column: 1, scope: !7002)
!7021 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1091, file: !1091, line: 502, type: !7022, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7024)
!7022 = !DISubroutineType(types: !7023)
!7023 = !{!1571, !27, !5188}
!7024 = !{!7025, !7026}
!7025 = !DILocalVariable(name: "cpu", arg: 1, scope: !7021, file: !1091, line: 502, type: !27)
!7026 = !DILocalVariable(name: "cpumask", arg: 2, scope: !7021, file: !1091, line: 502, type: !5188)
!7027 = !DILocation(line: 502, column: 50, scope: !7021)
!7028 = !DILocation(line: 502, column: 77, scope: !7021)
!7029 = !DILocation(line: 504, column: 9, scope: !7021)
!7030 = !DILocation(line: 504, column: 2, scope: !7021)
!7031 = distinct !DISubprogram(name: "cpumask_check", scope: !1091, file: !1091, line: 148, type: !7032, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7034)
!7032 = !DISubroutineType(types: !7033)
!7033 = !{!7, !7}
!7034 = !{!7035}
!7035 = !DILocalVariable(name: "cpu", arg: 1, scope: !7031, file: !1091, line: 148, type: !7)
!7036 = !DILocation(line: 148, column: 64, scope: !7031)
!7037 = !DILocation(line: 150, column: 20, scope: !7031)
!7038 = !DILocation(line: 150, column: 2, scope: !7031)
!7039 = !DILocation(line: 151, column: 9, scope: !7031)
!7040 = !DILocation(line: 151, column: 2, scope: !7031)
!7041 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1091, file: !1091, line: 140, type: !7042, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7044)
!7042 = !DISubroutineType(types: !7043)
!7043 = !{null, !7, !7}
!7044 = !{!7045, !7046}
!7045 = !DILocalVariable(name: "cpu", arg: 1, scope: !7041, file: !1091, line: 140, type: !7)
!7046 = !DILocalVariable(name: "bits", arg: 2, scope: !7041, file: !1091, line: 140, type: !7)
!7047 = !DILocation(line: 140, column: 60, scope: !7041)
!7048 = !DILocation(line: 140, column: 78, scope: !7041)
!7049 = !DILocation(line: 145, column: 1, scope: !7041)
!7050 = distinct !DISubprogram(name: "rcu_dynticks_curr_cpu_in_eqs", scope: !5527, file: !5527, line: 120, type: !2239, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7051)
!7051 = !{!7052, !7055}
!7052 = !DILocalVariable(name: "__vpp_verify", scope: !7053, file: !5527, line: 122, type: !1278)
!7053 = distinct !DILexicalBlock(scope: !7054, file: !5527, line: 122, column: 27)
!7054 = distinct !DILexicalBlock(scope: !7050, file: !5527, line: 122, column: 27)
!7055 = !DILocalVariable(name: "tcp_ptr__", scope: !7056, file: !5527, line: 122, type: !207)
!7056 = distinct !DILexicalBlock(scope: !7054, file: !5527, line: 122, column: 27)
!7057 = !DILocation(line: 122, column: 27, scope: !7054)
!7058 = !DILocation(line: 122, column: 27, scope: !7053)
!7059 = !DILocation(line: 122, column: 27, scope: !7056)
!7060 = !{i64 2155479746}
!7061 = !DILocation(line: 122, column: 11, scope: !7050)
!7062 = !DILocation(line: 122, column: 66, scope: !7050)
!7063 = !DILocation(line: 122, column: 9, scope: !7050)
!7064 = !DILocation(line: 122, column: 2, scope: !7050)
!7065 = distinct !DISubprogram(name: "ct_state_inc", scope: !5527, file: !5527, line: 129, type: !7066, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7068)
!7066 = !DISubroutineType(types: !7067)
!7067 = !{!207, !27}
!7068 = !{!7069, !7070, !7073}
!7069 = !DILocalVariable(name: "incby", arg: 1, scope: !7065, file: !5527, line: 129, type: !27)
!7070 = !DILocalVariable(name: "__vpp_verify", scope: !7071, file: !5527, line: 131, type: !1278)
!7071 = distinct !DILexicalBlock(scope: !7072, file: !5527, line: 131, column: 38)
!7072 = distinct !DILexicalBlock(scope: !7065, file: !5527, line: 131, column: 38)
!7073 = !DILocalVariable(name: "tcp_ptr__", scope: !7074, file: !5527, line: 131, type: !207)
!7074 = distinct !DILexicalBlock(scope: !7072, file: !5527, line: 131, column: 38)
!7075 = !DILocation(line: 129, column: 55, scope: !7065)
!7076 = !DILocation(line: 131, column: 31, scope: !7065)
!7077 = !DILocation(line: 131, column: 38, scope: !7072)
!7078 = !DILocation(line: 131, column: 38, scope: !7071)
!7079 = !DILocation(line: 131, column: 38, scope: !7074)
!7080 = !{i64 2155480659}
!7081 = !DILocation(line: 131, column: 9, scope: !7065)
!7082 = !DILocation(line: 131, column: 2, scope: !7065)
!7083 = !DISubprogram(name: "debugfs_create_file_unsafe", scope: !7084, file: !7084, line: 78, type: !7085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7084 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!461, !185, !192, !461, !189, !2306}
!7087 = distinct !DISubprogram(name: "clear_warn_once_fops_open", scope: !3, file: !3, line: 744, type: !2725, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7088)
!7088 = !{!7089, !7090}
!7089 = !DILocalVariable(name: "inode", arg: 1, scope: !7087, file: !3, line: 744, type: !426)
!7090 = !DILocalVariable(name: "file", arg: 2, scope: !7087, file: !3, line: 744, type: !1171)
!7091 = !DILocation(line: 744, column: 1, scope: !7087)
!7092 = distinct !DISubprogram(name: "__simple_attr_check_format", scope: !54, file: !54, line: 3366, type: !5257, scopeLine: 3367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7093)
!7093 = !{!7094}
!7094 = !DILocalVariable(name: "fmt", arg: 1, scope: !7092, file: !54, line: 3366, type: !185)
!7095 = !DILocation(line: 3366, column: 45, scope: !7092)
!7096 = !DILocation(line: 3369, column: 1, scope: !7092)
!7097 = !DISubprogram(name: "simple_attr_open", scope: !54, file: !54, line: 3371, type: !7098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7098 = !DISubroutineType(types: !7099)
!7099 = !{!27, !426, !1171, !7100, !7103, !185}
!7100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7101, size: 64)
!7101 = !DISubroutineType(types: !7102)
!7102 = !{!27, !189, !2076}
!7103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7104, size: 64)
!7104 = !DISubroutineType(types: !7105)
!7105 = !{!27, !189, !499}
!7106 = distinct !DISubprogram(name: "clear_warn_once_set", scope: !3, file: !3, line: 737, type: !7104, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7107)
!7107 = !{!7108, !7109}
!7108 = !DILocalVariable(name: "data", arg: 1, scope: !7106, file: !3, line: 737, type: !189)
!7109 = !DILocalVariable(name: "val", arg: 2, scope: !7106, file: !3, line: 737, type: !499)
!7110 = !DILocation(line: 737, column: 38, scope: !7106)
!7111 = !DILocation(line: 737, column: 48, scope: !7106)
!7112 = !DILocation(line: 739, column: 2, scope: !7106)
!7113 = !DILocation(line: 740, column: 2, scope: !7106)
!7114 = !DILocation(line: 741, column: 2, scope: !7106)
!7115 = !DISubprogram(name: "generic_bug_clear_once", scope: !7116, file: !7116, line: 49, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7116 = !DIFile(filename: "./include/linux/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90678d2f644c0a5a4005e4cc9a8b8472")
!7117 = !DISubprogram(name: "strcmp", scope: !7118, file: !7118, line: 88, type: !7119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7118 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7119 = !DISubroutineType(types: !7120)
!7120 = !{!27, !185, !185}
!7121 = !DISubprogram(name: "strsep", scope: !7118, file: !7118, line: 137, type: !7122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7122 = !DISubroutineType(types: !7123)
!7123 = !{!352, !7124, !185}
!7124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!7125 = distinct !DISubprogram(name: "kstrtoul", scope: !7126, file: !7126, line: 30, type: !7127, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7129)
!7126 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!7127 = !DISubroutineType(types: !7128)
!7128 = !{!27, !185, !7, !5164}
!7129 = !{!7130, !7131, !7132}
!7130 = !DILocalVariable(name: "s", arg: 1, scope: !7125, file: !7126, line: 30, type: !185)
!7131 = !DILocalVariable(name: "base", arg: 2, scope: !7125, file: !7126, line: 30, type: !7)
!7132 = !DILocalVariable(name: "res", arg: 3, scope: !7125, file: !7126, line: 30, type: !5164)
!7133 = !DILocation(line: 30, column: 53, scope: !7125)
!7134 = !DILocation(line: 30, column: 69, scope: !7125)
!7135 = !DILocation(line: 30, column: 90, scope: !7125)
!7136 = !DILocation(line: 38, column: 20, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7125, file: !7126, line: 36, column: 6)
!7138 = !DILocation(line: 38, column: 23, scope: !7137)
!7139 = !DILocation(line: 38, column: 51, scope: !7137)
!7140 = !DILocation(line: 38, column: 10, scope: !7137)
!7141 = !DILocation(line: 38, column: 3, scope: !7137)
!7142 = distinct !DISubprogram(name: "str_enabled_disabled", scope: !5578, file: !5578, line: 12, type: !7143, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7145)
!7143 = !DISubroutineType(types: !7144)
!7144 = !{!185, !1571}
!7145 = !{!7146}
!7146 = !DILocalVariable(name: "v", arg: 1, scope: !7142, file: !5578, line: 12, type: !1571)
!7147 = !DILocation(line: 12, column: 53, scope: !7142)
!7148 = !DILocation(line: 14, column: 9, scope: !7142)
!7149 = !DILocation(line: 14, column: 2, scope: !7142)
!7150 = !DISubprogram(name: "kstrtoull", scope: !7126, file: !7126, line: 12, type: !7151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7151 = !DISubroutineType(types: !7152)
!7152 = !{!27, !185, !7, !5201}
