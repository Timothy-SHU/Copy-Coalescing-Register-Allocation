; ModuleID = 'drivers/pcmcia/cs.c'
source_filename = "drivers/pcmcia/cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dead_socket: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dead_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_socket_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_socket_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_socket_list_rwsem: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_socket_list_rwsem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_get_socket: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_get_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_put_socket: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_put_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_register_socket: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_register_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_unregister_socket: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_unregister_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_get_socket_by_nr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_get_socket_by_nr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_parse_events: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_parse_events ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_parse_uevents: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_parse_uevents ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pccard_register_pcmcia: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pccard_register_pcmcia ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_reset_card: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_reset_card ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcmcia_socket_class: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcmcia_socket_class ; .previous"
module asm ".section\09\22.initcall4.init..kmod_pcmcia_core__319_917_init_pcmcia_cs\22, \22a\22\09\09"
module asm "__initcall__kmod_pcmcia_core__319_917_init_pcmcia_cs4:\09\09\09"
module asm ".long\09__initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i64, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.pccard_mem_map = type { i8, i8, i16, i64, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.pccard_resource_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
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

@__UNIQUE_ID_author292 = internal constant [63 x i8] c"pcmcia_core.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description293 = internal constant [51 x i8] c"pcmcia_core.description=Linux Kernel Card Services\00", section ".modinfo", align 1, !dbg !5025
@__UNIQUE_ID_file294 = internal constant [44 x i8] c"pcmcia_core.file=drivers/pcmcia/pcmcia_core\00", section ".modinfo", align 1, !dbg !5030
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"pcmcia_core.license=GPL\00", section ".modinfo", align 1, !dbg !5035
@__param_str_setup_delay = internal constant [24 x i8] c"pcmcia_core.setup_delay\00", align 16, !dbg !5192
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@setup_delay = internal global i32 10, align 4, !dbg !5194
@__param_setup_delay = internal constant %struct.kernel_param { ptr @__param_str_setup_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @setup_delay } }, section "__param", align 8, !dbg !5040
@__UNIQUE_ID_setup_delaytype296 = internal constant [37 x i8] c"pcmcia_core.parmtype=setup_delay:int\00", section ".modinfo", align 1, !dbg !5042
@__param_str_resume_delay = internal constant [25 x i8] c"pcmcia_core.resume_delay\00", align 16, !dbg !5196
@resume_delay = internal global i32 20, align 4, !dbg !5201
@__param_resume_delay = internal constant %struct.kernel_param { ptr @__param_str_resume_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @resume_delay } }, section "__param", align 8, !dbg !5047
@__UNIQUE_ID_resume_delaytype297 = internal constant [38 x i8] c"pcmcia_core.parmtype=resume_delay:int\00", section ".modinfo", align 1, !dbg !5049
@__param_str_shutdown_delay = internal constant [27 x i8] c"pcmcia_core.shutdown_delay\00", align 16, !dbg !5203
@shutdown_delay = internal global i32 3, align 4, !dbg !5208
@__param_shutdown_delay = internal constant %struct.kernel_param { ptr @__param_str_shutdown_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @shutdown_delay } }, section "__param", align 8, !dbg !5054
@__UNIQUE_ID_shutdown_delaytype298 = internal constant [40 x i8] c"pcmcia_core.parmtype=shutdown_delay:int\00", section ".modinfo", align 1, !dbg !5056
@__param_str_vcc_settle = internal constant [23 x i8] c"pcmcia_core.vcc_settle\00", align 16, !dbg !5210
@vcc_settle = internal global i32 40, align 4, !dbg !5215
@__param_vcc_settle = internal constant %struct.kernel_param { ptr @__param_str_vcc_settle, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @vcc_settle } }, section "__param", align 8, !dbg !5061
@__UNIQUE_ID_vcc_settletype299 = internal constant [36 x i8] c"pcmcia_core.parmtype=vcc_settle:int\00", section ".modinfo", align 1, !dbg !5063
@__param_str_reset_time = internal constant [23 x i8] c"pcmcia_core.reset_time\00", align 16, !dbg !5217
@reset_time = internal global i32 10, align 4, !dbg !5219
@__param_reset_time = internal constant %struct.kernel_param { ptr @__param_str_reset_time, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @reset_time } }, section "__param", align 8, !dbg !5068
@__UNIQUE_ID_reset_timetype300 = internal constant [36 x i8] c"pcmcia_core.parmtype=reset_time:int\00", section ".modinfo", align 1, !dbg !5070
@__param_str_unreset_delay = internal constant [26 x i8] c"pcmcia_core.unreset_delay\00", align 16, !dbg !5221
@unreset_delay = internal global i32 10, align 4, !dbg !5224
@__param_unreset_delay = internal constant %struct.kernel_param { ptr @__param_str_unreset_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @unreset_delay } }, section "__param", align 8, !dbg !5072
@__UNIQUE_ID_unreset_delaytype301 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_delay:int\00", section ".modinfo", align 1, !dbg !5074
@__param_str_unreset_check = internal constant [26 x i8] c"pcmcia_core.unreset_check\00", align 16, !dbg !5226
@unreset_check = internal global i32 10, align 4, !dbg !5228
@__param_unreset_check = internal constant %struct.kernel_param { ptr @__param_str_unreset_check, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @unreset_check } }, section "__param", align 8, !dbg !5079
@__UNIQUE_ID_unreset_checktype302 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_check:int\00", section ".modinfo", align 1, !dbg !5081
@__param_str_unreset_limit = internal constant [26 x i8] c"pcmcia_core.unreset_limit\00", align 16, !dbg !5230
@unreset_limit = internal global i32 30, align 4, !dbg !5232
@__param_unreset_limit = internal constant %struct.kernel_param { ptr @__param_str_unreset_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @unreset_limit } }, section "__param", align 8, !dbg !5083
@__UNIQUE_ID_unreset_limittype303 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_limit:int\00", section ".modinfo", align 1, !dbg !5085
@__param_str_cis_speed = internal constant [22 x i8] c"pcmcia_core.cis_speed\00", align 16, !dbg !5234
@cis_speed = internal global i32 300, align 4, !dbg !5239
@__param_cis_speed = internal constant %struct.kernel_param { ptr @__param_str_cis_speed, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @cis_speed } }, section "__param", align 8, !dbg !5087
@__UNIQUE_ID_cis_speedtype304 = internal constant [35 x i8] c"pcmcia_core.parmtype=cis_speed:int\00", section ".modinfo", align 1, !dbg !5089
@dead_socket = hidden global %struct.socket_state_t { i32 0, i32 128, i8 0, i8 0, i8 0 }, align 4, !dbg !5094
@__UNIQUE_ID___addressable_dead_socket305 = internal global ptr @dead_socket, section ".discard.addressable", align 8, !dbg !5096
@pcmcia_socket_list = hidden global %struct.list_head { ptr @pcmcia_socket_list, ptr @pcmcia_socket_list }, align 8, !dbg !5098
@__UNIQUE_ID___addressable_pcmcia_socket_list306 = internal global ptr @pcmcia_socket_list, section ".discard.addressable", align 8, !dbg !5100
@pcmcia_socket_list_rwsem = hidden global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcmcia_socket_list_rwsem, i64 24), ptr getelementptr (i8, ptr @pcmcia_socket_list_rwsem, i64 24) } }, align 8, !dbg !5102
@__UNIQUE_ID___addressable_pcmcia_socket_list_rwsem307 = internal global ptr @pcmcia_socket_list_rwsem, section ".discard.addressable", align 8, !dbg !5104
@__UNIQUE_ID___addressable_pcmcia_get_socket308 = internal global ptr @pcmcia_get_socket, section ".discard.addressable", align 8, !dbg !5106
@__UNIQUE_ID___addressable_pcmcia_put_socket309 = internal global ptr @pcmcia_put_socket, section ".discard.addressable", align 8, !dbg !5108
@pcmcia_socket_class = hidden global %struct.class { ptr @.str.9, ptr null, ptr null, ptr @pcmcia_socket_uevent, ptr null, ptr @pcmcia_release_socket_class, ptr @pcmcia_release_socket, ptr null, ptr null, ptr null, ptr null, ptr @pcmcia_socket_pm_ops }, align 8, !dbg !5180
@.str = private unnamed_addr constant [16 x i8] c"pcmcia_socket%u\00", align 1, !dbg !5110
@pcmcia_register_socket.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5112
@.str.1 = private unnamed_addr constant [19 x i8] c"&socket->skt_mutex\00", align 1, !dbg !5134
@pcmcia_register_socket.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5139
@.str.3 = private unnamed_addr constant [19 x i8] c"&socket->ops_mutex\00", align 1, !dbg !5141
@.str.4 = private unnamed_addr constant [8 x i8] c"pccardd\00", align 1, !dbg !5143
@.str.5 = private unnamed_addr constant [46 x i8] c"PCMCIA: warning: socket thread did not start\0A\00", align 1, !dbg !5145
@.str.6 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1, !dbg !5150
@__UNIQUE_ID___addressable_pcmcia_register_socket310 = internal global ptr @pcmcia_register_socket, section ".discard.addressable", align 8, !dbg !5153
@__UNIQUE_ID___addressable_pcmcia_unregister_socket311 = internal global ptr @pcmcia_unregister_socket, section ".discard.addressable", align 8, !dbg !5155
@__UNIQUE_ID___addressable_pcmcia_get_socket_by_nr312 = internal global ptr @pcmcia_get_socket_by_nr, section ".discard.addressable", align 8, !dbg !5157
@__UNIQUE_ID___addressable_pcmcia_parse_events314 = internal global ptr @pcmcia_parse_events, section ".discard.addressable", align 8, !dbg !5159
@__UNIQUE_ID___addressable_pcmcia_parse_uevents315 = internal global ptr @pcmcia_parse_uevents, section ".discard.addressable", align 8, !dbg !5161
@__UNIQUE_ID___addressable_pccard_register_pcmcia316 = internal global ptr @pccard_register_pcmcia, section ".discard.addressable", align 8, !dbg !5163
@__UNIQUE_ID___addressable_pcmcia_reset_card317 = internal global ptr @pcmcia_reset_card, section ".discard.addressable", align 8, !dbg !5165
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to complete resume\00", align 1, !dbg !5167
@.str.8 = private unnamed_addr constant [20 x i8] c"drivers/pcmcia/cs.c\00", align 1, !dbg !5172
@.str.9 = private unnamed_addr constant [14 x i8] c"pcmcia_socket\00", align 1, !dbg !5175
@pcmcia_socket_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr @pcmcia_socket_dev_complete, ptr null, ptr @pcmcia_socket_dev_resume, ptr null, ptr @pcmcia_socket_dev_resume, ptr null, ptr @pcmcia_socket_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcmcia_socket_dev_suspend_noirq, ptr @pcmcia_socket_dev_resume_noirq, ptr @pcmcia_socket_dev_suspend_noirq, ptr @pcmcia_socket_dev_resume_noirq, ptr @pcmcia_socket_dev_suspend_noirq, ptr @pcmcia_socket_dev_resume_noirq, ptr null, ptr null, ptr null }, align 8, !dbg !5294
@__UNIQUE_ID___addressable_pcmcia_socket_class318 = internal global ptr @pcmcia_socket_class, section ".discard.addressable", align 8, !dbg !5182
@pcmcia_unload = internal global %struct.completion zeroinitializer, align 8, !dbg !5190
@__UNIQUE_ID___addressable___initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4320 = internal global ptr @__initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4, section ".discard.addressable", align 8, !dbg !5184
@__exitcall_exit_pcmcia_cs = internal global ptr @exit_pcmcia_cs, section ".exitcall.exit", align 8, !dbg !5186
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5241
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !5248
@.str.11 = private unnamed_addr constant [35 x i8] c"PCMCIA: unable to register socket\0A\00", align 1, !dbg !5253
@.str.12 = private unnamed_addr constant [33 x i8] c"err %d adding socket attributes\0A\00", align 1, !dbg !5256
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.13 = private unnamed_addr constant [35 x i8] c"pccard: card ejected from slot %d\0A\00", align 1, !dbg !5261
@.str.14 = private unnamed_addr constant [46 x i8] c"*** DANGER *** unable to remove socket power\0A\00", align 1, !dbg !5263
@.str.15 = private unnamed_addr constant [39 x i8] c"pccard: %s card inserted into slot %d\0A\00", align 1, !dbg !5265
@.str.16 = private unnamed_addr constant [8 x i8] c"CardBus\00", align 1, !dbg !5268
@.str.17 = private unnamed_addr constant [7 x i8] c"PCMCIA\00", align 1, !dbg !5270
@.str.18 = private unnamed_addr constant [33 x i8] c"voltage interrogation timed out\0A\00", align 1, !dbg !5272
@.str.19 = private unnamed_addr constant [33 x i8] c"cardbus cards are not supported\0A\00", align 1, !dbg !5274
@.str.20 = private unnamed_addr constant [25 x i8] c"unsupported voltage key\0A\00", align 1, !dbg !5276
@.str.21 = private unnamed_addr constant [23 x i8] c"unable to apply power\0A\00", align 1, !dbg !5279
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5282
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@freezer_active = external dso_local global %struct.static_key_false, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"time out after reset\0A\00", align 1, !dbg !5286
@.str.23 = private unnamed_addr constant [13 x i8] c"SOCKET_NO=%u\00", align 1, !dbg !5289
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__param_setup_delay, ptr @__UNIQUE_ID_setup_delaytype296, ptr @__param_resume_delay, ptr @__UNIQUE_ID_resume_delaytype297, ptr @__param_shutdown_delay, ptr @__UNIQUE_ID_shutdown_delaytype298, ptr @__param_vcc_settle, ptr @__UNIQUE_ID_vcc_settletype299, ptr @__param_reset_time, ptr @__UNIQUE_ID_reset_timetype300, ptr @__param_unreset_delay, ptr @__UNIQUE_ID_unreset_delaytype301, ptr @__param_unreset_check, ptr @__UNIQUE_ID_unreset_checktype302, ptr @__param_unreset_limit, ptr @__UNIQUE_ID_unreset_limittype303, ptr @__param_cis_speed, ptr @__UNIQUE_ID_cis_speedtype304, ptr @__UNIQUE_ID___addressable_dead_socket305, ptr @__UNIQUE_ID___addressable_pcmcia_socket_list306, ptr @__UNIQUE_ID___addressable_pcmcia_socket_list_rwsem307, ptr @__UNIQUE_ID___addressable_pcmcia_get_socket308, ptr @__UNIQUE_ID___addressable_pcmcia_put_socket309, ptr @__UNIQUE_ID___addressable_pcmcia_register_socket310, ptr @__UNIQUE_ID___addressable_pcmcia_unregister_socket311, ptr @__UNIQUE_ID___addressable_pcmcia_get_socket_by_nr312, ptr @__UNIQUE_ID___addressable_pcmcia_parse_events314, ptr @__UNIQUE_ID___addressable_pcmcia_parse_uevents315, ptr @__UNIQUE_ID___addressable_pccard_register_pcmcia316, ptr @__UNIQUE_ID___addressable_pcmcia_reset_card317, ptr @pcmcia_socket_dev_resume, ptr @pcmcia_socket_dev_complete, ptr @__UNIQUE_ID___addressable_pcmcia_socket_class318, ptr @exit_pcmcia_cs, ptr @__UNIQUE_ID___addressable___initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4320, ptr @__exitcall_exit_pcmcia_cs, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcmcia_get_socket(ptr noundef %skt) #0 align 16 !dbg !5308 {
entry:
  %retval = alloca ptr, align 8
  %skt.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #11, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5313, metadata !DIExpression()), !dbg !5316
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !5317
  %dev1 = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 42, !dbg !5318
  %call = call ptr @get_device(ptr noundef %dev1) #12, !dbg !5319
  store ptr %call, ptr %dev, align 8, !dbg !5316
  %1 = load ptr, ptr %dev, align 8, !dbg !5320
  %tobool = icmp ne ptr %1, null, !dbg !5320
  br i1 %tobool, label %if.end, label %if.then, !dbg !5322

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5323

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !5324
  %call2 = call ptr @dev_get_drvdata(ptr noundef %2) #12, !dbg !5325
  store ptr %call2, ptr %retval, align 8, !dbg !5326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5326

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #11, !dbg !5327
  %3 = load ptr, ptr %retval, align 8, !dbg !5327
  ret ptr %3, !dbg !5327
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5328 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #4 align 16 !dbg !5331 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5337
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !5338
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5338
  ret ptr %1, !dbg !5339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcmcia_put_socket(ptr noundef %skt) #0 align 16 !dbg !5340 {
entry:
  %skt.addr = alloca ptr, align 8
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !5344
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 42, !dbg !5345
  call void @put_device(ptr noundef %dev) #12, !dbg !5346
  ret void, !dbg !5347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5348 dso_local void @put_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcmcia_register_socket(ptr noundef %socket) #0 align 16 !dbg !5114 {
entry:
  %retval = alloca i32, align 4
  %socket.addr = alloca ptr, align 8
  %tsk = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__k = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  store ptr %socket, ptr %socket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %socket.addr, metadata !5116, metadata !DIExpression()), !dbg !5349
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #11, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !5117, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5118, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %socket.addr, align 8, !dbg !5354
  %tobool = icmp ne ptr %0, null, !dbg !5354
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5356

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %socket.addr, align 8, !dbg !5357
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 23, !dbg !5358
  %2 = load ptr, ptr %ops, align 8, !dbg !5358
  %tobool1 = icmp ne ptr %2, null, !dbg !5357
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !5359

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %socket.addr, align 8, !dbg !5360
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 42, !dbg !5361
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5362
  %4 = load ptr, ptr %parent, align 8, !dbg !5362
  %tobool3 = icmp ne ptr %4, null, !dbg !5360
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !5363

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %socket.addr, align 8, !dbg !5364
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 24, !dbg !5365
  %6 = load ptr, ptr %resource_ops, align 8, !dbg !5365
  %tobool5 = icmp ne ptr %6, null, !dbg !5364
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5366

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5367

if.end:                                           ; preds = %lor.lhs.false4
  call void @down_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !5368
  %call = call i32 @list_empty(ptr noundef @pcmcia_socket_list) #12, !dbg !5369
  %tobool6 = icmp ne i32 %call, 0, !dbg !5369
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5370

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %socket.addr, align 8, !dbg !5371
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 15, !dbg !5372
  store i32 0, ptr %sock, align 8, !dbg !5373
  br label %if.end20, !dbg !5371

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #11, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %found, metadata !5119, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5122, metadata !DIExpression()), !dbg !5376
  store i32 1, ptr %i, align 4, !dbg !5376
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !5377
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5123, metadata !DIExpression()), !dbg !5378
  br label %do.body, !dbg !5379

do.body:                                          ; preds = %do.cond, %if.else
  store i32 1, ptr %found, align 4, !dbg !5380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5124, metadata !DIExpression()), !dbg !5381
  %8 = load ptr, ptr @pcmcia_socket_list, align 8, !dbg !5381
  store ptr %8, ptr %__mptr, align 8, !dbg !5381
  %9 = load ptr, ptr %__mptr, align 8, !dbg !5381
  %add.ptr = getelementptr i8, ptr %9, i64 -264, !dbg !5381
  store ptr %add.ptr, ptr %tmp8, align 8, !dbg !5381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5382
  %10 = load ptr, ptr %tmp8, align 8, !dbg !5381
  store ptr %10, ptr %tmp, align 8, !dbg !5382
  br label %for.cond, !dbg !5382

for.cond:                                         ; preds = %for.inc, %do.body
  %11 = load ptr, ptr %tmp, align 8, !dbg !5383
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 13, !dbg !5383
  %cmp = icmp eq ptr %socket_list, @pcmcia_socket_list, !dbg !5383
  %lnot = xor i1 %cmp, true, !dbg !5383
  br i1 %lnot, label %for.body, label %for.end, !dbg !5382

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %tmp, align 8, !dbg !5384
  %sock9 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 15, !dbg !5387
  %13 = load i32, ptr %sock9, align 8, !dbg !5387
  %14 = load i32, ptr %i, align 4, !dbg !5388
  %cmp10 = icmp eq i32 %13, %14, !dbg !5389
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5390

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %found, align 4, !dbg !5391
  br label %if.end12, !dbg !5392

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !5393

for.inc:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #11, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5128, metadata !DIExpression()), !dbg !5394
  %15 = load ptr, ptr %tmp, align 8, !dbg !5394
  %socket_list14 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 13, !dbg !5394
  %next = getelementptr inbounds %struct.list_head, ptr %socket_list14, i32 0, i32 0, !dbg !5394
  %16 = load ptr, ptr %next, align 8, !dbg !5394
  store ptr %16, ptr %__mptr13, align 8, !dbg !5394
  %17 = load ptr, ptr %__mptr13, align 8, !dbg !5394
  %add.ptr16 = getelementptr i8, ptr %17, i64 -264, !dbg !5394
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #11, !dbg !5383
  %18 = load ptr, ptr %tmp15, align 8, !dbg !5394
  store ptr %18, ptr %tmp, align 8, !dbg !5383
  br label %for.cond, !dbg !5383, !llvm.loop !5395

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %i, align 4, !dbg !5399
  %inc = add i32 %19, 1, !dbg !5399
  store i32 %inc, ptr %i, align 4, !dbg !5399
  br label %do.cond, !dbg !5400

do.cond:                                          ; preds = %for.end
  %20 = load i32, ptr %found, align 4, !dbg !5401
  %tobool17 = icmp ne i32 %20, 0, !dbg !5402
  %lnot18 = xor i1 %tobool17, true, !dbg !5402
  br i1 %lnot18, label %do.body, label %do.end, !dbg !5400, !llvm.loop !5403

do.end:                                           ; preds = %do.cond
  %21 = load i32, ptr %i, align 4, !dbg !5405
  %sub = sub i32 %21, 1, !dbg !5406
  %22 = load ptr, ptr %socket.addr, align 8, !dbg !5407
  %sock19 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 15, !dbg !5408
  store i32 %sub, ptr %sock19, align 8, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !5410
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !5410
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #11, !dbg !5410
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then7
  %23 = load ptr, ptr %socket.addr, align 8, !dbg !5411
  %socket_list21 = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 13, !dbg !5412
  call void @list_add_tail(ptr noundef %socket_list21, ptr noundef @pcmcia_socket_list) #12, !dbg !5413
  call void @up_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !5414
  %24 = load ptr, ptr %socket.addr, align 8, !dbg !5415
  %dev22 = getelementptr inbounds %struct.pcmcia_socket, ptr %24, i32 0, i32 42, !dbg !5416
  %25 = load ptr, ptr %socket.addr, align 8, !dbg !5417
  call void @dev_set_drvdata(ptr noundef %dev22, ptr noundef %25) #12, !dbg !5418
  %26 = load ptr, ptr %socket.addr, align 8, !dbg !5419
  %dev23 = getelementptr inbounds %struct.pcmcia_socket, ptr %26, i32 0, i32 42, !dbg !5420
  %class = getelementptr inbounds %struct.device, ptr %dev23, i32 0, i32 30, !dbg !5421
  store ptr @pcmcia_socket_class, ptr %class, align 8, !dbg !5422
  %27 = load ptr, ptr %socket.addr, align 8, !dbg !5423
  %dev24 = getelementptr inbounds %struct.pcmcia_socket, ptr %27, i32 0, i32 42, !dbg !5424
  %28 = load ptr, ptr %socket.addr, align 8, !dbg !5425
  %sock25 = getelementptr inbounds %struct.pcmcia_socket, ptr %28, i32 0, i32 15, !dbg !5426
  %29 = load i32, ptr %sock25, align 8, !dbg !5426
  %call26 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev24, ptr noundef @.str, i32 noundef %29) #12, !dbg !5427
  %30 = load ptr, ptr %socket.addr, align 8, !dbg !5428
  %cis_mem = getelementptr inbounds %struct.pcmcia_socket, ptr %30, i32 0, i32 6, !dbg !5429
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %cis_mem, i32 0, i32 1, !dbg !5430
  store i8 0, ptr %flags, align 1, !dbg !5431
  %31 = load i32, ptr @cis_speed, align 4, !dbg !5432
  %conv = trunc i32 %31 to i16, !dbg !5432
  %32 = load ptr, ptr %socket.addr, align 8, !dbg !5433
  %cis_mem27 = getelementptr inbounds %struct.pcmcia_socket, ptr %32, i32 0, i32 6, !dbg !5434
  %speed = getelementptr inbounds %struct.pccard_mem_map, ptr %cis_mem27, i32 0, i32 2, !dbg !5435
  store i16 %conv, ptr %speed, align 2, !dbg !5436
  %33 = load ptr, ptr %socket.addr, align 8, !dbg !5437
  %cis_cache = getelementptr inbounds %struct.pcmcia_socket, ptr %33, i32 0, i32 10, !dbg !5438
  call void @INIT_LIST_HEAD(ptr noundef %cis_cache) #12, !dbg !5439
  %34 = load ptr, ptr %socket.addr, align 8, !dbg !5440
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, ptr %34, i32 0, i32 14, !dbg !5441
  call void @init_completion(ptr noundef %socket_released) #12, !dbg !5442
  %35 = load ptr, ptr %socket.addr, align 8, !dbg !5443
  %thread_done = getelementptr inbounds %struct.pcmcia_socket, ptr %35, i32 0, i32 30, !dbg !5444
  call void @init_completion(ptr noundef %thread_done) #12, !dbg !5445
  br label %do.body28, !dbg !5446

do.body28:                                        ; preds = %if.end20
  %36 = load ptr, ptr %socket.addr, align 8, !dbg !5447
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %36, i32 0, i32 33, !dbg !5447
  call void @__mutex_init(ptr noundef %skt_mutex, ptr noundef @.str.1, ptr noundef @pcmcia_register_socket.__key) #12, !dbg !5447
  br label %do.cond29, !dbg !5447

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5447

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !5449

do.body31:                                        ; preds = %do.end30
  %37 = load ptr, ptr %socket.addr, align 8, !dbg !5450
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %37, i32 0, i32 34, !dbg !5450
  call void @__mutex_init(ptr noundef %ops_mutex, ptr noundef @.str.3, ptr noundef @pcmcia_register_socket.__key.2) #12, !dbg !5450
  br label %do.cond32, !dbg !5450

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5450

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !5452

do.body34:                                        ; preds = %do.end33
  %38 = load ptr, ptr %socket.addr, align 8, !dbg !5453
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, ptr %38, i32 0, i32 35, !dbg !5453
  %call35 = call ptr @spinlock_check(ptr noundef %thread_lock) #12, !dbg !5453
  %39 = load ptr, ptr %socket.addr, align 8, !dbg !5453
  %thread_lock36 = getelementptr inbounds %struct.pcmcia_socket, ptr %39, i32 0, i32 35, !dbg !5453
  %40 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5453
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %40, i32 0, i32 0, !dbg !5453
  %41 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5453
  %counter = getelementptr inbounds %struct.atomic_t, ptr %41, i32 0, i32 0, !dbg !5453
  store i32 0, ptr %counter, align 4, !dbg !5453
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thread_lock36, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5453
  br label %do.cond37, !dbg !5453

do.cond37:                                        ; preds = %do.body34
  br label %do.end38, !dbg !5453

do.end38:                                         ; preds = %do.cond37
  %42 = load ptr, ptr %socket.addr, align 8, !dbg !5455
  %resource_ops39 = getelementptr inbounds %struct.pcmcia_socket, ptr %42, i32 0, i32 24, !dbg !5457
  %43 = load ptr, ptr %resource_ops39, align 8, !dbg !5457
  %init = getelementptr inbounds %struct.pccard_resource_ops, ptr %43, i32 0, i32 3, !dbg !5458
  %44 = load ptr, ptr %init, align 8, !dbg !5458
  %tobool40 = icmp ne ptr %44, null, !dbg !5455
  br i1 %tobool40, label %if.then41, label %if.end50, !dbg !5459

if.then41:                                        ; preds = %do.end38
  %45 = load ptr, ptr %socket.addr, align 8, !dbg !5460
  %ops_mutex42 = getelementptr inbounds %struct.pcmcia_socket, ptr %45, i32 0, i32 34, !dbg !5462
  call void @mutex_lock(ptr noundef %ops_mutex42) #12, !dbg !5463
  %46 = load ptr, ptr %socket.addr, align 8, !dbg !5464
  %resource_ops43 = getelementptr inbounds %struct.pcmcia_socket, ptr %46, i32 0, i32 24, !dbg !5465
  %47 = load ptr, ptr %resource_ops43, align 8, !dbg !5465
  %init44 = getelementptr inbounds %struct.pccard_resource_ops, ptr %47, i32 0, i32 3, !dbg !5466
  %48 = load ptr, ptr %init44, align 8, !dbg !5466
  %49 = load ptr, ptr %socket.addr, align 8, !dbg !5467
  %call45 = call i32 %48(ptr noundef %49) #12, !dbg !5464
  store i32 %call45, ptr %ret, align 4, !dbg !5468
  %50 = load ptr, ptr %socket.addr, align 8, !dbg !5469
  %ops_mutex46 = getelementptr inbounds %struct.pcmcia_socket, ptr %50, i32 0, i32 34, !dbg !5470
  call void @mutex_unlock(ptr noundef %ops_mutex46) #12, !dbg !5471
  %51 = load i32, ptr %ret, align 4, !dbg !5472
  %tobool47 = icmp ne i32 %51, 0, !dbg !5472
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5474

if.then48:                                        ; preds = %if.then41
  br label %err, !dbg !5475

if.end49:                                         ; preds = %if.then41
  br label %if.end50, !dbg !5476

if.end50:                                         ; preds = %if.end49, %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__k) #11, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %__k, metadata !5131, metadata !DIExpression()), !dbg !5477
  %52 = load ptr, ptr %socket.addr, align 8, !dbg !5477
  %call51 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @pccardd, ptr noundef %52, i32 noundef -1, ptr noundef @.str.4) #12, !dbg !5477
  store ptr %call51, ptr %__k, align 8, !dbg !5477
  %53 = load ptr, ptr %__k, align 8, !dbg !5478
  %call52 = call zeroext i1 @IS_ERR(ptr noundef %53) #12, !dbg !5478
  br i1 %call52, label %if.end55, label %if.then53, !dbg !5477

if.then53:                                        ; preds = %if.end50
  %54 = load ptr, ptr %__k, align 8, !dbg !5478
  %call54 = call i32 @wake_up_process(ptr noundef %54) #12, !dbg !5478
  br label %if.end55, !dbg !5478

if.end55:                                         ; preds = %if.then53, %if.end50
  %55 = load ptr, ptr %__k, align 8, !dbg !5477
  store ptr %55, ptr %tmp56, align 8, !dbg !5478
  call void @llvm.lifetime.end.p0(i64 8, ptr %__k) #11, !dbg !5480
  %56 = load ptr, ptr %tmp56, align 8, !dbg !5477
  store ptr %56, ptr %tsk, align 8, !dbg !5481
  %57 = load ptr, ptr %tsk, align 8, !dbg !5482
  %call57 = call zeroext i1 @IS_ERR(ptr noundef %57) #12, !dbg !5484
  br i1 %call57, label %if.then58, label %if.end61, !dbg !5485

if.then58:                                        ; preds = %if.end55
  %58 = load ptr, ptr %tsk, align 8, !dbg !5486
  %call59 = call i64 @PTR_ERR(ptr noundef %58) #12, !dbg !5488
  %conv60 = trunc i64 %call59 to i32, !dbg !5488
  store i32 %conv60, ptr %ret, align 4, !dbg !5489
  br label %err, !dbg !5490

if.end61:                                         ; preds = %if.end55
  %59 = load ptr, ptr %socket.addr, align 8, !dbg !5491
  %thread_done62 = getelementptr inbounds %struct.pcmcia_socket, ptr %59, i32 0, i32 30, !dbg !5492
  call void @wait_for_completion(ptr noundef %thread_done62) #12, !dbg !5493
  %60 = load ptr, ptr %socket.addr, align 8, !dbg !5494
  %thread = getelementptr inbounds %struct.pcmcia_socket, ptr %60, i32 0, i32 29, !dbg !5496
  %61 = load ptr, ptr %thread, align 8, !dbg !5496
  %tobool63 = icmp ne ptr %61, null, !dbg !5494
  br i1 %tobool63, label %if.end69, label %if.then64, !dbg !5497

if.then64:                                        ; preds = %if.end61
  br label %do.body65, !dbg !5498

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !5501

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5501

do.end67:                                         ; preds = %do.cond66
  %62 = load ptr, ptr %socket.addr, align 8, !dbg !5498
  %dev68 = getelementptr inbounds %struct.pcmcia_socket, ptr %62, i32 0, i32 42, !dbg !5498
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev68, ptr noundef @.str.5) #13, !dbg !5498
  store i32 -5, ptr %retval, align 4, !dbg !5503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5503

if.end69:                                         ; preds = %if.end61
  %63 = load ptr, ptr %socket.addr, align 8, !dbg !5504
  call void @pcmcia_parse_events(ptr noundef %63, i32 noundef 128) #12, !dbg !5505
  %call70 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef @.str.6) #12, !dbg !5506
  store i32 0, ptr %retval, align 4, !dbg !5507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5507

err:                                              ; preds = %if.then58, %if.then48
  call void @llvm.dbg.label(metadata !5133), !dbg !5508
  call void @down_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !5509
  %64 = load ptr, ptr %socket.addr, align 8, !dbg !5510
  %socket_list71 = getelementptr inbounds %struct.pcmcia_socket, ptr %64, i32 0, i32 13, !dbg !5511
  call void @list_del(ptr noundef %socket_list71) #12, !dbg !5512
  call void @up_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !5513
  %65 = load i32, ptr %ret, align 4, !dbg !5514
  store i32 %65, ptr %retval, align 4, !dbg !5515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5515

cleanup:                                          ; preds = %err, %if.end69, %do.end67, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #11, !dbg !5516
  %66 = load i32, ptr %retval, align 4, !dbg !5516
  ret i32 %66, !dbg !5516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5517 dso_local void @down_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !5521 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  br label %do.body, !dbg !5530

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5532

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5530
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5530
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5530
  store ptr %1, ptr %tmp, align 8, !dbg !5532
  %2 = load ptr, ptr %tmp, align 8, !dbg !5530
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5534
  %cmp = icmp eq ptr %2, %3, !dbg !5535
  %conv = zext i1 %cmp to i32, !dbg !5535
  ret i32 %conv, !dbg !5536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5537 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5541, metadata !DIExpression()), !dbg !5543
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5542, metadata !DIExpression()), !dbg !5544
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5545
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5546
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5547
  %2 = load ptr, ptr %prev, align 8, !dbg !5547
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5548
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !5549
  ret void, !dbg !5550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5551 dso_local void @up_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #4 align 16 !dbg !5552 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5556, metadata !DIExpression()), !dbg !5558
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5557, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5560
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5561
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !5562
  store ptr %0, ptr %driver_data, align 8, !dbg !5563
  ret void, !dbg !5564
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5565 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5568 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  br label %do.body, !dbg !5574

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5575

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5577

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5575

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5579
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5579
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5579
  store volatile ptr %0, ptr %next, align 8, !dbg !5579
  br label %do.end3, !dbg !5579

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5575

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5581

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5582

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5584

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5582

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5586
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5586
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5586
  store volatile ptr %2, ptr %prev, align 8, !dbg !5586
  br label %do.end9, !dbg !5586

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5582

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5588
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #4 align 16 !dbg !5243 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5247, metadata !DIExpression()), !dbg !5589
  %0 = load ptr, ptr %x.addr, align 8, !dbg !5590
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !5591
  store i32 0, ptr %done, align 8, !dbg !5592
  br label %do.body, !dbg !5593

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !5594
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !5594
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.10, ptr noundef @init_completion.__key) #12, !dbg !5594
  br label %do.end, !dbg !5594

do.end:                                           ; preds = %do.body
  ret void, !dbg !5596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5597 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5602 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5610
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5611
  ret ptr %1, !dbg !5612
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5613 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5616 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5617 dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pccardd(ptr noundef %__skt) #0 align 16 !dbg !5624 {
entry:
  %retval = alloca i32, align 4
  %__skt.addr = alloca ptr, align 8
  %skt = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %flags = alloca i64, align 8
  %events = alloca i32, align 4
  %sysfs_events = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp112 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp113 = alloca i32, align 4
  store ptr %__skt, ptr %__skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__skt.addr, metadata !5626, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %skt) #11, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %skt, metadata !5627, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %__skt.addr, align 8, !dbg !5650
  store ptr %0, ptr %skt, align 8, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5628, metadata !DIExpression()), !dbg !5652
  %call = call ptr @get_current() #12, !dbg !5653
  %1 = load ptr, ptr %skt, align 8, !dbg !5654
  %thread = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 29, !dbg !5655
  store ptr %call, ptr %thread, align 8, !dbg !5656
  %2 = load ptr, ptr %skt, align 8, !dbg !5657
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 1, !dbg !5658
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %socket, ptr align 4 @dead_socket, i64 12, i1 false), !dbg !5659
  %3 = load ptr, ptr %skt, align 8, !dbg !5660
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 23, !dbg !5661
  %4 = load ptr, ptr %ops, align 8, !dbg !5661
  %init = getelementptr inbounds %struct.pccard_operations, ptr %4, i32 0, i32 0, !dbg !5662
  %5 = load ptr, ptr %init, align 8, !dbg !5662
  %6 = load ptr, ptr %skt, align 8, !dbg !5663
  %call1 = call i32 %5(ptr noundef %6) #12, !dbg !5660
  %7 = load ptr, ptr %skt, align 8, !dbg !5664
  %ops2 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 23, !dbg !5665
  %8 = load ptr, ptr %ops2, align 8, !dbg !5665
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %8, i32 0, i32 3, !dbg !5666
  %9 = load ptr, ptr %set_socket, align 8, !dbg !5666
  %10 = load ptr, ptr %skt, align 8, !dbg !5667
  %11 = load ptr, ptr %skt, align 8, !dbg !5668
  %socket3 = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 1, !dbg !5669
  %call4 = call i32 %9(ptr noundef %10, ptr noundef %socket3) #12, !dbg !5664
  %12 = load ptr, ptr %skt, align 8, !dbg !5670
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 42, !dbg !5671
  %call5 = call i32 @device_register(ptr noundef %dev) #12, !dbg !5672
  store i32 %call5, ptr %ret, align 4, !dbg !5673
  %13 = load i32, ptr %ret, align 4, !dbg !5674
  %tobool = icmp ne i32 %13, 0, !dbg !5674
  br i1 %tobool, label %if.then, label %if.end, !dbg !5676

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5677

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5680

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5680

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %skt, align 8, !dbg !5677
  %dev6 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 42, !dbg !5677
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef @.str.11) #13, !dbg !5677
  %15 = load ptr, ptr %skt, align 8, !dbg !5682
  %thread7 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 29, !dbg !5683
  store ptr null, ptr %thread7, align 8, !dbg !5684
  %16 = load ptr, ptr %skt, align 8, !dbg !5685
  %thread_done = getelementptr inbounds %struct.pcmcia_socket, ptr %16, i32 0, i32 30, !dbg !5686
  call void @complete(ptr noundef %thread_done) #12, !dbg !5687
  %17 = load ptr, ptr %skt, align 8, !dbg !5688
  %dev8 = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 42, !dbg !5689
  call void @put_device(ptr noundef %dev8) #12, !dbg !5690
  store i32 0, ptr %retval, align 4, !dbg !5691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup152, !dbg !5691

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %skt, align 8, !dbg !5692
  %dev9 = getelementptr inbounds %struct.pcmcia_socket, ptr %18, i32 0, i32 42, !dbg !5693
  %call10 = call i32 @pccard_sysfs_add_socket(ptr noundef %dev9) #12, !dbg !5694
  store i32 %call10, ptr %ret, align 4, !dbg !5695
  %19 = load i32, ptr %ret, align 4, !dbg !5696
  %tobool11 = icmp ne i32 %19, 0, !dbg !5696
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !5698

if.then12:                                        ; preds = %if.end
  br label %do.body13, !dbg !5699

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !5701

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5701

do.end15:                                         ; preds = %do.cond14
  %20 = load ptr, ptr %skt, align 8, !dbg !5699
  %dev16 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 42, !dbg !5699
  %21 = load i32, ptr %ret, align 4, !dbg !5699
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef @.str.12, i32 noundef %21) #13, !dbg !5699
  br label %if.end17, !dbg !5703

if.end17:                                         ; preds = %do.end15, %if.end
  %22 = load ptr, ptr %skt, align 8, !dbg !5704
  %thread_done18 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 30, !dbg !5705
  call void @complete(ptr noundef %thread_done18) #12, !dbg !5706
  call void @msleep(i32 noundef 250) #12, !dbg !5707
  %call19 = call zeroext i1 @set_freezable() #12, !dbg !5708
  br label %for.cond, !dbg !5709

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5629, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #11, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %events, metadata !5633, metadata !DIExpression()), !dbg !5713
  call void @llvm.lifetime.start.p0(i64 4, ptr %sysfs_events) #11, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %sysfs_events, metadata !5634, metadata !DIExpression()), !dbg !5715
  br label %do.body20, !dbg !5716

do.body20:                                        ; preds = %for.cond
  br label %do.body21, !dbg !5717

do.body21:                                        ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5635, metadata !DIExpression()), !dbg !5718
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5639, metadata !DIExpression()), !dbg !5718
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5718
  %conv = zext i1 %cmp to i32, !dbg !5718
  store i32 1, ptr %tmp, align 4, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5719
  %23 = load i32, ptr %tmp, align 4, !dbg !5718
  %24 = load ptr, ptr %skt, align 8, !dbg !5719
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, ptr %24, i32 0, i32 35, !dbg !5719
  %call22 = call ptr @spinlock_check(ptr noundef %thread_lock) #12, !dbg !5719
  %call23 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call22) #12, !dbg !5719
  store i64 %call23, ptr %flags, align 8, !dbg !5719
  br label %do.cond24, !dbg !5719

do.cond24:                                        ; preds = %do.body21
  br label %do.end25, !dbg !5719

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5717

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5717

do.end27:                                         ; preds = %do.cond26
  %25 = load ptr, ptr %skt, align 8, !dbg !5720
  %thread_events = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 31, !dbg !5721
  %26 = load i32, ptr %thread_events, align 8, !dbg !5721
  store i32 %26, ptr %events, align 4, !dbg !5722
  %27 = load ptr, ptr %skt, align 8, !dbg !5723
  %thread_events28 = getelementptr inbounds %struct.pcmcia_socket, ptr %27, i32 0, i32 31, !dbg !5724
  store i32 0, ptr %thread_events28, align 8, !dbg !5725
  %28 = load ptr, ptr %skt, align 8, !dbg !5726
  %sysfs_events29 = getelementptr inbounds %struct.pcmcia_socket, ptr %28, i32 0, i32 32, !dbg !5727
  %29 = load i32, ptr %sysfs_events29, align 4, !dbg !5727
  store i32 %29, ptr %sysfs_events, align 4, !dbg !5728
  %30 = load ptr, ptr %skt, align 8, !dbg !5729
  %sysfs_events30 = getelementptr inbounds %struct.pcmcia_socket, ptr %30, i32 0, i32 32, !dbg !5730
  store i32 0, ptr %sysfs_events30, align 4, !dbg !5731
  %31 = load ptr, ptr %skt, align 8, !dbg !5732
  %thread_lock31 = getelementptr inbounds %struct.pcmcia_socket, ptr %31, i32 0, i32 35, !dbg !5733
  %32 = load i64, ptr %flags, align 8, !dbg !5734
  call void @spin_unlock_irqrestore(ptr noundef %thread_lock31, i64 noundef %32) #12, !dbg !5735
  %33 = load ptr, ptr %skt, align 8, !dbg !5736
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %33, i32 0, i32 33, !dbg !5737
  call void @mutex_lock(ptr noundef %skt_mutex) #12, !dbg !5738
  %34 = load i32, ptr %events, align 4, !dbg !5739
  %and = and i32 %34, 128, !dbg !5741
  %tobool32 = icmp ne i32 %and, 0, !dbg !5741
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5742

if.then33:                                        ; preds = %do.end27
  %35 = load ptr, ptr %skt, align 8, !dbg !5743
  call void @socket_detect_change(ptr noundef %35) #12, !dbg !5744
  br label %if.end34, !dbg !5744

if.end34:                                         ; preds = %if.then33, %do.end27
  %36 = load i32, ptr %sysfs_events, align 4, !dbg !5745
  %tobool35 = icmp ne i32 %36, 0, !dbg !5745
  br i1 %tobool35, label %if.then36, label %if.end93, !dbg !5747

if.then36:                                        ; preds = %if.end34
  %37 = load i32, ptr %sysfs_events, align 4, !dbg !5748
  %and37 = and i32 %37, 1, !dbg !5751
  %tobool38 = icmp ne i32 %and37, 0, !dbg !5751
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5752

if.then39:                                        ; preds = %if.then36
  %38 = load ptr, ptr %skt, align 8, !dbg !5753
  call void @socket_remove(ptr noundef %38) #12, !dbg !5754
  br label %if.end40, !dbg !5754

if.end40:                                         ; preds = %if.then39, %if.then36
  %39 = load i32, ptr %sysfs_events, align 4, !dbg !5755
  %and41 = and i32 %39, 2, !dbg !5757
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5757
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !5758

if.then43:                                        ; preds = %if.end40
  %40 = load ptr, ptr %skt, align 8, !dbg !5759
  %call44 = call i32 @socket_insert(ptr noundef %40) #12, !dbg !5760
  br label %if.end45, !dbg !5760

if.end45:                                         ; preds = %if.then43, %if.end40
  %41 = load i32, ptr %sysfs_events, align 4, !dbg !5761
  %and46 = and i32 %41, 4, !dbg !5763
  %tobool47 = icmp ne i32 %and46, 0, !dbg !5763
  br i1 %tobool47, label %land.lhs.true, label %if.end60, !dbg !5764

land.lhs.true:                                    ; preds = %if.end45
  %42 = load ptr, ptr %skt, align 8, !dbg !5765
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %42, i32 0, i32 2, !dbg !5766
  %43 = load i32, ptr %state, align 4, !dbg !5766
  %and48 = and i32 %43, 32768, !dbg !5767
  %tobool49 = icmp ne i32 %and48, 0, !dbg !5767
  br i1 %tobool49, label %if.end60, label %if.then50, !dbg !5768

if.then50:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %skt, align 8, !dbg !5769
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %44, i32 0, i32 36, !dbg !5772
  %45 = load ptr, ptr %callback, align 8, !dbg !5772
  %tobool51 = icmp ne ptr %45, null, !dbg !5769
  br i1 %tobool51, label %if.then52, label %if.else, !dbg !5773

if.then52:                                        ; preds = %if.then50
  %46 = load ptr, ptr %skt, align 8, !dbg !5774
  %callback53 = getelementptr inbounds %struct.pcmcia_socket, ptr %46, i32 0, i32 36, !dbg !5775
  %47 = load ptr, ptr %callback53, align 8, !dbg !5775
  %suspend = getelementptr inbounds %struct.pcmcia_callback, ptr %47, i32 0, i32 5, !dbg !5776
  %48 = load ptr, ptr %suspend, align 8, !dbg !5776
  %49 = load ptr, ptr %skt, align 8, !dbg !5777
  %call54 = call i32 %48(ptr noundef %49) #12, !dbg !5774
  store i32 %call54, ptr %ret, align 4, !dbg !5778
  br label %if.end55, !dbg !5779

if.else:                                          ; preds = %if.then50
  store i32 0, ptr %ret, align 4, !dbg !5780
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  %50 = load i32, ptr %ret, align 4, !dbg !5781
  %tobool56 = icmp ne i32 %50, 0, !dbg !5781
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !5783

if.then57:                                        ; preds = %if.end55
  %51 = load ptr, ptr %skt, align 8, !dbg !5784
  %call58 = call i32 @socket_suspend(ptr noundef %51) #12, !dbg !5786
  call void @msleep(i32 noundef 100) #12, !dbg !5787
  br label %if.end59, !dbg !5788

if.end59:                                         ; preds = %if.then57, %if.end55
  br label %if.end60, !dbg !5789

if.end60:                                         ; preds = %if.end59, %land.lhs.true, %if.end45
  %52 = load i32, ptr %sysfs_events, align 4, !dbg !5790
  %and61 = and i32 %52, 8, !dbg !5792
  %tobool62 = icmp ne i32 %and61, 0, !dbg !5792
  br i1 %tobool62, label %land.lhs.true63, label %if.end77, !dbg !5793

land.lhs.true63:                                  ; preds = %if.end60
  %53 = load ptr, ptr %skt, align 8, !dbg !5794
  %state64 = getelementptr inbounds %struct.pcmcia_socket, ptr %53, i32 0, i32 2, !dbg !5795
  %54 = load i32, ptr %state64, align 4, !dbg !5795
  %and65 = and i32 %54, 32768, !dbg !5796
  %tobool66 = icmp ne i32 %and65, 0, !dbg !5796
  br i1 %tobool66, label %if.end77, label %if.then67, !dbg !5797

if.then67:                                        ; preds = %land.lhs.true63
  %55 = load ptr, ptr %skt, align 8, !dbg !5798
  %call68 = call i32 @socket_resume(ptr noundef %55) #12, !dbg !5800
  store i32 %call68, ptr %ret, align 4, !dbg !5801
  %56 = load i32, ptr %ret, align 4, !dbg !5802
  %tobool69 = icmp ne i32 %56, 0, !dbg !5802
  br i1 %tobool69, label %if.end76, label %land.lhs.true70, !dbg !5804

land.lhs.true70:                                  ; preds = %if.then67
  %57 = load ptr, ptr %skt, align 8, !dbg !5805
  %callback71 = getelementptr inbounds %struct.pcmcia_socket, ptr %57, i32 0, i32 36, !dbg !5806
  %58 = load ptr, ptr %callback71, align 8, !dbg !5806
  %tobool72 = icmp ne ptr %58, null, !dbg !5805
  br i1 %tobool72, label %if.then73, label %if.end76, !dbg !5807

if.then73:                                        ; preds = %land.lhs.true70
  %59 = load ptr, ptr %skt, align 8, !dbg !5808
  %callback74 = getelementptr inbounds %struct.pcmcia_socket, ptr %59, i32 0, i32 36, !dbg !5809
  %60 = load ptr, ptr %callback74, align 8, !dbg !5809
  %resume = getelementptr inbounds %struct.pcmcia_callback, ptr %60, i32 0, i32 7, !dbg !5810
  %61 = load ptr, ptr %resume, align 8, !dbg !5810
  %62 = load ptr, ptr %skt, align 8, !dbg !5811
  %call75 = call i32 %61(ptr noundef %62) #12, !dbg !5808
  br label %if.end76, !dbg !5808

if.end76:                                         ; preds = %if.then73, %land.lhs.true70, %if.then67
  br label %if.end77, !dbg !5812

if.end77:                                         ; preds = %if.end76, %land.lhs.true63, %if.end60
  %63 = load i32, ptr %sysfs_events, align 4, !dbg !5813
  %and78 = and i32 %63, 16, !dbg !5815
  %tobool79 = icmp ne i32 %and78, 0, !dbg !5815
  br i1 %tobool79, label %land.lhs.true80, label %if.end92, !dbg !5816

land.lhs.true80:                                  ; preds = %if.end77
  %64 = load ptr, ptr %skt, align 8, !dbg !5817
  %state81 = getelementptr inbounds %struct.pcmcia_socket, ptr %64, i32 0, i32 2, !dbg !5818
  %65 = load i32, ptr %state81, align 4, !dbg !5818
  %and82 = and i32 %65, 32768, !dbg !5819
  %tobool83 = icmp ne i32 %and82, 0, !dbg !5819
  br i1 %tobool83, label %if.end92, label %if.then84, !dbg !5820

if.then84:                                        ; preds = %land.lhs.true80
  %66 = load i32, ptr %ret, align 4, !dbg !5821
  %tobool85 = icmp ne i32 %66, 0, !dbg !5821
  br i1 %tobool85, label %if.end91, label %land.lhs.true86, !dbg !5824

land.lhs.true86:                                  ; preds = %if.then84
  %67 = load ptr, ptr %skt, align 8, !dbg !5825
  %callback87 = getelementptr inbounds %struct.pcmcia_socket, ptr %67, i32 0, i32 36, !dbg !5826
  %68 = load ptr, ptr %callback87, align 8, !dbg !5826
  %tobool88 = icmp ne ptr %68, null, !dbg !5825
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !5827

if.then89:                                        ; preds = %land.lhs.true86
  %69 = load ptr, ptr %skt, align 8, !dbg !5828
  %callback90 = getelementptr inbounds %struct.pcmcia_socket, ptr %69, i32 0, i32 36, !dbg !5829
  %70 = load ptr, ptr %callback90, align 8, !dbg !5829
  %requery = getelementptr inbounds %struct.pcmcia_callback, ptr %70, i32 0, i32 3, !dbg !5830
  %71 = load ptr, ptr %requery, align 8, !dbg !5830
  %72 = load ptr, ptr %skt, align 8, !dbg !5831
  call void %71(ptr noundef %72) #12, !dbg !5828
  br label %if.end91, !dbg !5828

if.end91:                                         ; preds = %if.then89, %land.lhs.true86, %if.then84
  br label %if.end92, !dbg !5832

if.end92:                                         ; preds = %if.end91, %land.lhs.true80, %if.end77
  br label %if.end93, !dbg !5833

if.end93:                                         ; preds = %if.end92, %if.end34
  %73 = load ptr, ptr %skt, align 8, !dbg !5834
  %skt_mutex94 = getelementptr inbounds %struct.pcmcia_socket, ptr %73, i32 0, i32 33, !dbg !5835
  call void @mutex_unlock(ptr noundef %skt_mutex94) #12, !dbg !5836
  %74 = load i32, ptr %events, align 4, !dbg !5837
  %tobool95 = icmp ne i32 %74, 0, !dbg !5837
  br i1 %tobool95, label %if.then97, label %lor.lhs.false, !dbg !5839

lor.lhs.false:                                    ; preds = %if.end93
  %75 = load i32, ptr %sysfs_events, align 4, !dbg !5840
  %tobool96 = icmp ne i32 %75, 0, !dbg !5840
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !5841

if.then97:                                        ; preds = %lor.lhs.false, %if.end93
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842, !llvm.loop !5843

if.end98:                                         ; preds = %lor.lhs.false
  br label %do.body99, !dbg !5846

do.body99:                                        ; preds = %if.end98
  br label %do.body100, !dbg !5847

do.body100:                                       ; preds = %do.body99
  br label %do.cond101, !dbg !5848

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !5848

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !5847

do.body103:                                       ; preds = %do.end102
  br label %do.body104, !dbg !5850

do.body104:                                       ; preds = %do.body103
  br label %do.cond105, !dbg !5851

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !5851

do.end106:                                        ; preds = %do.cond105
  br label %do.body107, !dbg !5850

do.body107:                                       ; preds = %do.end106
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #11, !dbg !5853
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5640, metadata !DIExpression()), !dbg !5853
  %call108 = call ptr @get_current() #12, !dbg !5853
  %__state = getelementptr inbounds %struct.task_struct, ptr %call108, i32 0, i32 1, !dbg !5853
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5853
  br label %do.body109, !dbg !5853

do.body109:                                       ; preds = %do.body107
  br label %do.cond110, !dbg !5854

do.cond110:                                       ; preds = %do.body109
  br label %do.end111, !dbg !5854

do.end111:                                        ; preds = %do.cond110
  %76 = load ptr, ptr %__ai_ptr, align 8, !dbg !5853
  call void @instrument_atomic_read_write(ptr noundef %76, i64 noundef 4) #12, !dbg !5853
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5645, metadata !DIExpression()), !dbg !5856
  store i32 1, ptr %__ret, align 4, !dbg !5856
  %77 = load i32, ptr %__ret, align 4, !dbg !5856
  %78 = load ptr, ptr %__ai_ptr, align 8, !dbg !5856
  %79 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %78, i32 %77, ptr elementtype(i32) %78) #11, !dbg !5856, !srcloc !5857
  store i32 %79, ptr %__ret, align 4, !dbg !5856
  %80 = load i32, ptr %__ret, align 4, !dbg !5856
  store i32 %80, ptr %tmp113, align 4, !dbg !5856
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !5853
  %81 = load i32, ptr %tmp113, align 4, !dbg !5856
  store i32 %81, ptr %tmp112, align 4, !dbg !5853
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #11, !dbg !5858
  %82 = load i32, ptr %tmp112, align 4, !dbg !5853
  br label %do.cond114, !dbg !5858

do.cond114:                                       ; preds = %do.end111
  br label %do.end115, !dbg !5858

do.end115:                                        ; preds = %do.cond114
  br label %do.cond116, !dbg !5850

do.cond116:                                       ; preds = %do.end115
  br label %do.end117, !dbg !5850

do.end117:                                        ; preds = %do.cond116
  br label %do.cond118, !dbg !5847

do.cond118:                                       ; preds = %do.end117
  br label %do.end119, !dbg !5847

do.end119:                                        ; preds = %do.cond118
  %call120 = call zeroext i1 @kthread_should_stop() #12, !dbg !5859
  br i1 %call120, label %if.then121, label %if.end122, !dbg !5861

if.then121:                                       ; preds = %do.end119
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end122:                                        ; preds = %do.end119
  call void @schedule() #12, !dbg !5863
  %call123 = call zeroext i1 @try_to_freeze() #12, !dbg !5864
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5865
  br label %cleanup, !dbg !5865

cleanup:                                          ; preds = %if.end122, %if.then121, %if.then97
  call void @llvm.lifetime.end.p0(i64 4, ptr %sysfs_events) #11, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #11, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5865
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.cond
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5866, !llvm.loop !5843

for.end:                                          ; preds = %cleanup
  br label %do.body126, !dbg !5867

do.body126:                                       ; preds = %for.end
  br label %do.body127, !dbg !5868

do.body127:                                       ; preds = %do.body126
  br label %do.cond128, !dbg !5870

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !5870

do.end129:                                        ; preds = %do.cond128
  br label %do.body130, !dbg !5868

do.body130:                                       ; preds = %do.end129
  br label %do.body131, !dbg !5872

do.body131:                                       ; preds = %do.body130
  br label %do.cond132, !dbg !5874

do.cond132:                                       ; preds = %do.body131
  br label %do.end133, !dbg !5874

do.end133:                                        ; preds = %do.cond132
  br label %do.body134, !dbg !5872

do.body134:                                       ; preds = %do.end133
  %call135 = call ptr @get_current() #12, !dbg !5876
  %__state136 = getelementptr inbounds %struct.task_struct, ptr %call135, i32 0, i32 1, !dbg !5876
  store volatile i32 0, ptr %__state136, align 8, !dbg !5876
  br label %do.cond137, !dbg !5876

do.cond137:                                       ; preds = %do.body134
  br label %do.end138, !dbg !5876

do.end138:                                        ; preds = %do.cond137
  br label %do.cond139, !dbg !5872

do.cond139:                                       ; preds = %do.end138
  br label %do.end140, !dbg !5872

do.end140:                                        ; preds = %do.cond139
  br label %do.cond141, !dbg !5868

do.cond141:                                       ; preds = %do.end140
  br label %do.end142, !dbg !5868

do.end142:                                        ; preds = %do.cond141
  %83 = load ptr, ptr %skt, align 8, !dbg !5878
  %state143 = getelementptr inbounds %struct.pcmcia_socket, ptr %83, i32 0, i32 2, !dbg !5880
  %84 = load i32, ptr %state143, align 4, !dbg !5880
  %and144 = and i32 %84, 8, !dbg !5881
  %tobool145 = icmp ne i32 %and144, 0, !dbg !5881
  br i1 %tobool145, label %if.then146, label %if.end149, !dbg !5882

if.then146:                                       ; preds = %do.end142
  %85 = load ptr, ptr %skt, align 8, !dbg !5883
  %skt_mutex147 = getelementptr inbounds %struct.pcmcia_socket, ptr %85, i32 0, i32 33, !dbg !5885
  call void @mutex_lock(ptr noundef %skt_mutex147) #12, !dbg !5886
  %86 = load ptr, ptr %skt, align 8, !dbg !5887
  call void @socket_remove(ptr noundef %86) #12, !dbg !5888
  %87 = load ptr, ptr %skt, align 8, !dbg !5889
  %skt_mutex148 = getelementptr inbounds %struct.pcmcia_socket, ptr %87, i32 0, i32 33, !dbg !5890
  call void @mutex_unlock(ptr noundef %skt_mutex148) #12, !dbg !5891
  br label %if.end149, !dbg !5892

if.end149:                                        ; preds = %if.then146, %do.end142
  %88 = load ptr, ptr %skt, align 8, !dbg !5893
  %dev150 = getelementptr inbounds %struct.pcmcia_socket, ptr %88, i32 0, i32 42, !dbg !5894
  call void @pccard_sysfs_remove_socket(ptr noundef %dev150) #12, !dbg !5895
  %89 = load ptr, ptr %skt, align 8, !dbg !5896
  %dev151 = getelementptr inbounds %struct.pcmcia_socket, ptr %89, i32 0, i32 42, !dbg !5897
  call void @device_unregister(ptr noundef %dev151) #12, !dbg !5898
  store i32 0, ptr %retval, align 4, !dbg !5899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup152, !dbg !5899

cleanup152:                                       ; preds = %if.end149, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 8, ptr %skt) #11, !dbg !5900
  %90 = load i32, ptr %retval, align 4, !dbg !5900
  ret i32 %90, !dbg !5900

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5901 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5908
  %1 = ptrtoint ptr %0 to i64, !dbg !5908
  %2 = inttoptr i64 %1 to ptr, !dbg !5908
  %3 = ptrtoint ptr %2 to i64, !dbg !5908
  %cmp = icmp uge i64 %3, -4095, !dbg !5908
  %lnot = xor i1 %cmp, true, !dbg !5908
  %lnot1 = xor i1 %lnot, true, !dbg !5908
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5908
  %conv = sext i32 %lnot.ext to i64, !dbg !5908
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5908
  %tobool = icmp ne i64 %expval, 0, !dbg !5908
  ret i1 %tobool, !dbg !5909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5910 dso_local i32 @wake_up_process(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5913 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5919
  %1 = ptrtoint ptr %0 to i64, !dbg !5920
  ret i64 %1, !dbg !5921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5922 dso_local void @wait_for_completion(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5923 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcmcia_parse_events(ptr noundef %s, i32 noundef %events) #0 align 16 !dbg !5927 {
entry:
  %s.addr = alloca ptr, align 8
  %events.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5931, metadata !DIExpression()), !dbg !5941
  store i32 %events, ptr %events.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %events.addr, metadata !5932, metadata !DIExpression()), !dbg !5942
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5933, metadata !DIExpression()), !dbg !5944
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5945
  %thread = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 29, !dbg !5946
  %1 = load ptr, ptr %thread, align 8, !dbg !5946
  %tobool = icmp ne ptr %1, null, !dbg !5945
  br i1 %tobool, label %if.then, label %if.end, !dbg !5947

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5948

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5949

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5934, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5940, metadata !DIExpression()), !dbg !5950
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5950
  %conv = zext i1 %cmp to i32, !dbg !5950
  store i32 1, ptr %tmp, align 4, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5951
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5951
  %2 = load i32, ptr %tmp, align 4, !dbg !5950
  %3 = load ptr, ptr %s.addr, align 8, !dbg !5951
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 35, !dbg !5951
  %call = call ptr @spinlock_check(ptr noundef %thread_lock) #12, !dbg !5951
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !5951
  store i64 %call2, ptr %flags, align 8, !dbg !5951
  br label %do.cond, !dbg !5951

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5951

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5949

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5949

do.end4:                                          ; preds = %do.cond3
  %4 = load i32, ptr %events.addr, align 4, !dbg !5952
  %5 = load ptr, ptr %s.addr, align 8, !dbg !5953
  %thread_events = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 31, !dbg !5954
  %6 = load i32, ptr %thread_events, align 8, !dbg !5955
  %or = or i32 %6, %4, !dbg !5955
  store i32 %or, ptr %thread_events, align 8, !dbg !5955
  %7 = load ptr, ptr %s.addr, align 8, !dbg !5956
  %thread_lock5 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 35, !dbg !5957
  %8 = load i64, ptr %flags, align 8, !dbg !5958
  call void @spin_unlock_irqrestore(ptr noundef %thread_lock5, i64 noundef %8) #12, !dbg !5959
  %9 = load ptr, ptr %s.addr, align 8, !dbg !5960
  %thread6 = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 29, !dbg !5961
  %10 = load ptr, ptr %thread6, align 8, !dbg !5961
  %call7 = call i32 @wake_up_process(ptr noundef %10) #12, !dbg !5962
  br label %if.end, !dbg !5963

if.end:                                           ; preds = %do.end4, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5964
  ret void, !dbg !5964
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5965 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5969 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5973
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !5974
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5975
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5976
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5977
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5978
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5979
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5980
  ret void, !dbg !5981
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcmcia_unregister_socket(ptr noundef %socket) #0 align 16 !dbg !5982 {
entry:
  %socket.addr = alloca ptr, align 8
  store ptr %socket, ptr %socket.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %socket.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  %0 = load ptr, ptr %socket.addr, align 8, !dbg !5986
  %tobool = icmp ne ptr %0, null, !dbg !5986
  br i1 %tobool, label %if.end, label %if.then, !dbg !5988

if.then:                                          ; preds = %entry
  br label %return, !dbg !5989

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %socket.addr, align 8, !dbg !5990
  %thread = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 29, !dbg !5992
  %2 = load ptr, ptr %thread, align 8, !dbg !5992
  %tobool1 = icmp ne ptr %2, null, !dbg !5990
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5993

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %socket.addr, align 8, !dbg !5994
  %thread3 = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 29, !dbg !5995
  %4 = load ptr, ptr %thread3, align 8, !dbg !5995
  %call = call i32 @kthread_stop(ptr noundef %4) #12, !dbg !5996
  br label %if.end4, !dbg !5996

if.end4:                                          ; preds = %if.then2, %if.end
  call void @down_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !5997
  %5 = load ptr, ptr %socket.addr, align 8, !dbg !5998
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 13, !dbg !5999
  call void @list_del(ptr noundef %socket_list) #12, !dbg !6000
  call void @up_write(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !6001
  %6 = load ptr, ptr %socket.addr, align 8, !dbg !6002
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 24, !dbg !6004
  %7 = load ptr, ptr %resource_ops, align 8, !dbg !6004
  %exit = getelementptr inbounds %struct.pccard_resource_ops, ptr %7, i32 0, i32 4, !dbg !6005
  %8 = load ptr, ptr %exit, align 8, !dbg !6005
  %tobool5 = icmp ne ptr %8, null, !dbg !6002
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !6006

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %socket.addr, align 8, !dbg !6007
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 34, !dbg !6009
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6010
  %10 = load ptr, ptr %socket.addr, align 8, !dbg !6011
  %resource_ops7 = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 24, !dbg !6012
  %11 = load ptr, ptr %resource_ops7, align 8, !dbg !6012
  %exit8 = getelementptr inbounds %struct.pccard_resource_ops, ptr %11, i32 0, i32 4, !dbg !6013
  %12 = load ptr, ptr %exit8, align 8, !dbg !6013
  %13 = load ptr, ptr %socket.addr, align 8, !dbg !6014
  call void %12(ptr noundef %13) #12, !dbg !6011
  %14 = load ptr, ptr %socket.addr, align 8, !dbg !6015
  %ops_mutex9 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 34, !dbg !6016
  call void @mutex_unlock(ptr noundef %ops_mutex9) #12, !dbg !6017
  br label %if.end10, !dbg !6018

if.end10:                                         ; preds = %if.then6, %if.end4
  %15 = load ptr, ptr %socket.addr, align 8, !dbg !6019
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 14, !dbg !6020
  call void @wait_for_completion(ptr noundef %socket_released) #12, !dbg !6021
  br label %return, !dbg !6022

return:                                           ; preds = %if.end10, %if.then
  ret void, !dbg !6022
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6023 dso_local i32 @kthread_stop(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcmcia_get_socket_by_nr(i32 noundef %nr) #0 align 16 !dbg !6024 {
entry:
  %retval = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6028, metadata !DIExpression()), !dbg !6036
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6029, metadata !DIExpression()), !dbg !6038
  call void @down_read(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6030, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr @pcmcia_socket_list, align 8, !dbg !6040
  store ptr %0, ptr %__mptr, align 8, !dbg !6040
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6040
  %add.ptr = getelementptr i8, ptr %1, i64 -264, !dbg !6040
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6041
  %2 = load ptr, ptr %tmp, align 8, !dbg !6040
  store ptr %2, ptr %s, align 8, !dbg !6041
  br label %for.cond, !dbg !6041

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %s, align 8, !dbg !6042
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 13, !dbg !6042
  %cmp = icmp eq ptr %socket_list, @pcmcia_socket_list, !dbg !6042
  %lnot = xor i1 %cmp, true, !dbg !6042
  br i1 %lnot, label %for.body, label %for.end, !dbg !6041

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s, align 8, !dbg !6043
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 15, !dbg !6045
  %5 = load i32, ptr %sock, align 8, !dbg !6045
  %6 = load i32, ptr %nr.addr, align 4, !dbg !6046
  %cmp1 = icmp eq i32 %5, %6, !dbg !6047
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6048

if.then:                                          ; preds = %for.body
  call void @up_read(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !6049
  %7 = load ptr, ptr %s, align 8, !dbg !6051
  store ptr %7, ptr %retval, align 8, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6046

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #11, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6033, metadata !DIExpression()), !dbg !6053
  %8 = load ptr, ptr %s, align 8, !dbg !6053
  %socket_list3 = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 13, !dbg !6053
  %next = getelementptr inbounds %struct.list_head, ptr %socket_list3, i32 0, i32 0, !dbg !6053
  %9 = load ptr, ptr %next, align 8, !dbg !6053
  store ptr %9, ptr %__mptr2, align 8, !dbg !6053
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !6053
  %add.ptr5 = getelementptr i8, ptr %10, i64 -264, !dbg !6053
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #11, !dbg !6042
  %11 = load ptr, ptr %tmp4, align 8, !dbg !6053
  store ptr %11, ptr %s, align 8, !dbg !6042
  br label %for.cond, !dbg !6042, !llvm.loop !6054

for.end:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @pcmcia_socket_list_rwsem) #12, !dbg !6056
  store ptr null, ptr %retval, align 8, !dbg !6057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6057

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6058
  %12 = load ptr, ptr %retval, align 8, !dbg !6058
  ret ptr %12, !dbg !6058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6060 dso_local void @up_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !6065 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6069, metadata !DIExpression()), !dbg !6075
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6070, metadata !DIExpression()), !dbg !6076
  br label %do.body, !dbg !6077

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6071, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6074, metadata !DIExpression()), !dbg !6078
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6078
  %conv = zext i1 %cmp to i32, !dbg !6078
  store i32 1, ptr %tmp, align 4, !dbg !6078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6079
  %0 = load i32, ptr %tmp, align 4, !dbg !6078
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6079
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6079
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6079
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !6079
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.body
  ret void, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcmcia_parse_uevents(ptr noundef %s, i32 noundef %events) #0 align 16 !dbg !6081 {
entry:
  %s.addr = alloca ptr, align 8
  %events.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6083, metadata !DIExpression()), !dbg !6093
  store i32 %events, ptr %events.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %events.addr, metadata !6084, metadata !DIExpression()), !dbg !6094
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !6095
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6085, metadata !DIExpression()), !dbg !6096
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6097
  %thread = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 29, !dbg !6098
  %1 = load ptr, ptr %thread, align 8, !dbg !6098
  %tobool = icmp ne ptr %1, null, !dbg !6097
  br i1 %tobool, label %if.then, label %if.end, !dbg !6099

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6100

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !6101

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6102
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6086, metadata !DIExpression()), !dbg !6102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6102
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6092, metadata !DIExpression()), !dbg !6102
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6102
  %conv = zext i1 %cmp to i32, !dbg !6102
  store i32 1, ptr %tmp, align 4, !dbg !6102
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6103
  %2 = load i32, ptr %tmp, align 4, !dbg !6102
  %3 = load ptr, ptr %s.addr, align 8, !dbg !6103
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 35, !dbg !6103
  %call = call ptr @spinlock_check(ptr noundef %thread_lock) #12, !dbg !6103
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !6103
  store i64 %call2, ptr %flags, align 8, !dbg !6103
  br label %do.cond, !dbg !6103

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6103

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6101

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6101

do.end4:                                          ; preds = %do.cond3
  %4 = load i32, ptr %events.addr, align 4, !dbg !6104
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6105
  %sysfs_events = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 32, !dbg !6106
  %6 = load i32, ptr %sysfs_events, align 4, !dbg !6107
  %or = or i32 %6, %4, !dbg !6107
  store i32 %or, ptr %sysfs_events, align 4, !dbg !6107
  %7 = load ptr, ptr %s.addr, align 8, !dbg !6108
  %thread_lock5 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 35, !dbg !6109
  %8 = load i64, ptr %flags, align 8, !dbg !6110
  call void @spin_unlock_irqrestore(ptr noundef %thread_lock5, i64 noundef %8) #12, !dbg !6111
  %9 = load ptr, ptr %s.addr, align 8, !dbg !6112
  %thread6 = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 29, !dbg !6113
  %10 = load ptr, ptr %thread6, align 8, !dbg !6113
  %call7 = call i32 @wake_up_process(ptr noundef %10) #12, !dbg !6114
  br label %if.end, !dbg !6115

if.end:                                           ; preds = %do.end4, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !6116
  ret void, !dbg !6116
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pccard_register_pcmcia(ptr noundef %s, ptr noundef %c) #0 align 16 !dbg !6117 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6121, metadata !DIExpression()), !dbg !6125
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6122, metadata !DIExpression()), !dbg !6126
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6127
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6123, metadata !DIExpression()), !dbg !6128
  store i32 0, ptr %ret, align 4, !dbg !6128
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6129
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 33, !dbg !6130
  call void @mutex_lock(ptr noundef %skt_mutex) #12, !dbg !6131
  %1 = load ptr, ptr %c.addr, align 8, !dbg !6132
  %tobool = icmp ne ptr %1, null, !dbg !6132
  br i1 %tobool, label %if.then, label %if.else, !dbg !6134

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6135
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 36, !dbg !6138
  %3 = load ptr, ptr %callback, align 8, !dbg !6138
  %tobool1 = icmp ne ptr %3, null, !dbg !6135
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6139

if.then2:                                         ; preds = %if.then
  store i32 -16, ptr %ret, align 4, !dbg !6140
  br label %err, !dbg !6142

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %c.addr, align 8, !dbg !6143
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6144
  %callback3 = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 36, !dbg !6145
  store ptr %4, ptr %callback3, align 8, !dbg !6146
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6147
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 2, !dbg !6149
  %7 = load i32, ptr %state, align 4, !dbg !6149
  %and = and i32 %7, 32776, !dbg !6150
  %cmp = icmp eq i32 %and, 8, !dbg !6151
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !6152

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !6153
  %callback5 = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 36, !dbg !6154
  %9 = load ptr, ptr %callback5, align 8, !dbg !6154
  %add = getelementptr inbounds %struct.pcmcia_callback, ptr %9, i32 0, i32 1, !dbg !6155
  %10 = load ptr, ptr %add, align 8, !dbg !6155
  %11 = load ptr, ptr %s.addr, align 8, !dbg !6156
  %call = call i32 %10(ptr noundef %11) #12, !dbg !6153
  br label %if.end6, !dbg !6153

if.end6:                                          ; preds = %if.then4, %if.end
  br label %if.end8, !dbg !6157

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6158
  %callback7 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 36, !dbg !6159
  store ptr null, ptr %callback7, align 8, !dbg !6160
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end6
  br label %err, !dbg !6132

err:                                              ; preds = %if.end8, %if.then2
  call void @llvm.dbg.label(metadata !6124), !dbg !6161
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6162
  %skt_mutex9 = getelementptr inbounds %struct.pcmcia_socket, ptr %13, i32 0, i32 33, !dbg !6163
  call void @mutex_unlock(ptr noundef %skt_mutex9) #12, !dbg !6164
  %14 = load i32, ptr %ret, align 4, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6166
  ret i32 %14, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcmcia_reset_card(ptr noundef %skt) #0 align 16 !dbg !6168 {
entry:
  %skt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6173
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6171, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6175
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 33, !dbg !6176
  call void @mutex_lock(ptr noundef %skt_mutex) #12, !dbg !6177
  br label %do.body, !dbg !6178

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %skt.addr, align 8, !dbg !6179
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 2, !dbg !6182
  %2 = load i32, ptr %state, align 4, !dbg !6182
  %and = and i32 %2, 8, !dbg !6183
  %tobool = icmp ne i32 %and, 0, !dbg !6183
  br i1 %tobool, label %if.end, label %if.then, !dbg !6184

if.then:                                          ; preds = %do.body
  store i32 -19, ptr %ret, align 4, !dbg !6185
  br label %do.end, !dbg !6187

if.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6188
  %state1 = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 2, !dbg !6190
  %4 = load i32, ptr %state1, align 4, !dbg !6190
  %and2 = and i32 %4, 128, !dbg !6191
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6191
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6192

if.then4:                                         ; preds = %if.end
  store i32 -16, ptr %ret, align 4, !dbg !6193
  br label %do.end, !dbg !6195

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !6196
  %state6 = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 2, !dbg !6198
  %6 = load i32, ptr %state6, align 4, !dbg !6198
  %and7 = and i32 %6, 32768, !dbg !6199
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6199
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6200

if.then9:                                         ; preds = %if.end5
  store i32 -1, ptr %ret, align 4, !dbg !6201
  br label %do.end, !dbg !6203

if.end10:                                         ; preds = %if.end5
  %7 = load ptr, ptr %skt.addr, align 8, !dbg !6204
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 36, !dbg !6206
  %8 = load ptr, ptr %callback, align 8, !dbg !6206
  %tobool11 = icmp ne ptr %8, null, !dbg !6204
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !6207

if.then12:                                        ; preds = %if.end10
  %9 = load ptr, ptr %skt.addr, align 8, !dbg !6208
  %callback13 = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 36, !dbg !6209
  %10 = load ptr, ptr %callback13, align 8, !dbg !6209
  %suspend = getelementptr inbounds %struct.pcmcia_callback, ptr %10, i32 0, i32 5, !dbg !6210
  %11 = load ptr, ptr %suspend, align 8, !dbg !6210
  %12 = load ptr, ptr %skt.addr, align 8, !dbg !6211
  %call = call i32 %11(ptr noundef %12) #12, !dbg !6208
  br label %if.end14, !dbg !6208

if.end14:                                         ; preds = %if.then12, %if.end10
  %13 = load ptr, ptr %skt.addr, align 8, !dbg !6212
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %13, i32 0, i32 34, !dbg !6213
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6214
  %14 = load ptr, ptr %skt.addr, align 8, !dbg !6215
  %call15 = call i32 @socket_reset(ptr noundef %14) #12, !dbg !6216
  store i32 %call15, ptr %ret, align 4, !dbg !6217
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !6218
  %ops_mutex16 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 34, !dbg !6219
  call void @mutex_unlock(ptr noundef %ops_mutex16) #12, !dbg !6220
  %16 = load i32, ptr %ret, align 4, !dbg !6221
  %cmp = icmp eq i32 %16, 0, !dbg !6223
  br i1 %cmp, label %land.lhs.true, label %if.end22, !dbg !6224

land.lhs.true:                                    ; preds = %if.end14
  %17 = load ptr, ptr %skt.addr, align 8, !dbg !6225
  %callback17 = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 36, !dbg !6226
  %18 = load ptr, ptr %callback17, align 8, !dbg !6226
  %tobool18 = icmp ne ptr %18, null, !dbg !6227
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !6228

if.then19:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %skt.addr, align 8, !dbg !6229
  %callback20 = getelementptr inbounds %struct.pcmcia_socket, ptr %19, i32 0, i32 36, !dbg !6230
  %20 = load ptr, ptr %callback20, align 8, !dbg !6230
  %resume = getelementptr inbounds %struct.pcmcia_callback, ptr %20, i32 0, i32 7, !dbg !6231
  %21 = load ptr, ptr %resume, align 8, !dbg !6231
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !6232
  %call21 = call i32 %21(ptr noundef %22) #12, !dbg !6229
  br label %if.end22, !dbg !6229

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.end14
  store i32 0, ptr %ret, align 4, !dbg !6233
  br label %do.cond, !dbg !6234

do.cond:                                          ; preds = %if.end22
  br label %do.end, !dbg !6234

do.end:                                           ; preds = %do.cond, %if.then9, %if.then4, %if.then
  %23 = load ptr, ptr %skt.addr, align 8, !dbg !6235
  %skt_mutex23 = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 33, !dbg !6236
  call void @mutex_unlock(ptr noundef %skt_mutex23) #12, !dbg !6237
  %24 = load i32, ptr %ret, align 4, !dbg !6238
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6239
  ret i32 %24, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_reset(ptr noundef %skt) #0 align 16 !dbg !6241 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6243, metadata !DIExpression()), !dbg !6246
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6244, metadata !DIExpression()), !dbg !6248
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6245, metadata !DIExpression()), !dbg !6249
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6250
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 1, !dbg !6251
  %flags = getelementptr inbounds %struct.socket_state_t, ptr %socket, i32 0, i32 0, !dbg !6252
  %1 = load i32, ptr %flags, align 8, !dbg !6253
  %or = or i32 %1, 576, !dbg !6253
  store i32 %or, ptr %flags, align 8, !dbg !6253
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !6254
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 23, !dbg !6255
  %3 = load ptr, ptr %ops, align 8, !dbg !6255
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %3, i32 0, i32 3, !dbg !6256
  %4 = load ptr, ptr %set_socket, align 8, !dbg !6256
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !6257
  %6 = load ptr, ptr %skt.addr, align 8, !dbg !6258
  %socket1 = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 1, !dbg !6259
  %call = call i32 %4(ptr noundef %5, ptr noundef %socket1) #12, !dbg !6254
  %7 = load i32, ptr @reset_time, align 4, !dbg !6260
  %conv = sext i32 %7 to i64, !dbg !6260
  %8 = call i1 @llvm.is.constant.i64(i64 %conv), !dbg !6260
  br i1 %8, label %if.then, label %if.else6, !dbg !6263

if.then:                                          ; preds = %entry
  %9 = load i32, ptr @reset_time, align 4, !dbg !6264
  %conv2 = sext i32 %9 to i64, !dbg !6264
  %div = sdiv i64 %conv2, 20000, !dbg !6264
  %cmp = icmp sge i64 %div, 1, !dbg !6264
  br i1 %cmp, label %if.then4, label %if.else, !dbg !6267

if.then4:                                         ; preds = %if.then
  call void @__bad_udelay() #12, !dbg !6264
  br label %if.end, !dbg !6264

if.else:                                          ; preds = %if.then
  %10 = load i32, ptr @reset_time, align 4, !dbg !6264
  %conv5 = sext i32 %10 to i64, !dbg !6264
  %mul = mul i64 %conv5, 4295, !dbg !6264
  call void @__const_udelay(i64 noundef %mul) #12, !dbg !6264
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end8, !dbg !6267

if.else6:                                         ; preds = %entry
  %11 = load i32, ptr @reset_time, align 4, !dbg !6268
  %conv7 = sext i32 %11 to i64, !dbg !6268
  call void @__udelay(i64 noundef %conv7) #12, !dbg !6268
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.end
  %12 = load ptr, ptr %skt.addr, align 8, !dbg !6270
  %socket9 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 1, !dbg !6271
  %flags10 = getelementptr inbounds %struct.socket_state_t, ptr %socket9, i32 0, i32 0, !dbg !6272
  %13 = load i32, ptr %flags10, align 8, !dbg !6273
  %and = and i32 %13, -65, !dbg !6273
  store i32 %and, ptr %flags10, align 8, !dbg !6273
  %14 = load ptr, ptr %skt.addr, align 8, !dbg !6274
  %ops11 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 23, !dbg !6275
  %15 = load ptr, ptr %ops11, align 8, !dbg !6275
  %set_socket12 = getelementptr inbounds %struct.pccard_operations, ptr %15, i32 0, i32 3, !dbg !6276
  %16 = load ptr, ptr %set_socket12, align 8, !dbg !6276
  %17 = load ptr, ptr %skt.addr, align 8, !dbg !6277
  %18 = load ptr, ptr %skt.addr, align 8, !dbg !6278
  %socket13 = getelementptr inbounds %struct.pcmcia_socket, ptr %18, i32 0, i32 1, !dbg !6279
  %call14 = call i32 %16(ptr noundef %17, ptr noundef %socket13) #12, !dbg !6274
  %19 = load i32, ptr @unreset_delay, align 4, !dbg !6280
  %mul15 = mul i32 %19, 10, !dbg !6281
  call void @msleep(i32 noundef %mul15) #12, !dbg !6282
  store i32 0, ptr %i, align 4, !dbg !6283
  br label %for.cond, !dbg !6285

for.cond:                                         ; preds = %for.inc, %if.end8
  %20 = load i32, ptr %i, align 4, !dbg !6286
  %21 = load i32, ptr @unreset_limit, align 4, !dbg !6288
  %cmp16 = icmp slt i32 %20, %21, !dbg !6289
  br i1 %cmp16, label %for.body, label %for.end, !dbg !6290

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !6291
  %ops18 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 23, !dbg !6293
  %23 = load ptr, ptr %ops18, align 8, !dbg !6293
  %get_status = getelementptr inbounds %struct.pccard_operations, ptr %23, i32 0, i32 2, !dbg !6294
  %24 = load ptr, ptr %get_status, align 8, !dbg !6294
  %25 = load ptr, ptr %skt.addr, align 8, !dbg !6295
  %call19 = call i32 %24(ptr noundef %25, ptr noundef %status) #12, !dbg !6291
  %26 = load i32, ptr %status, align 4, !dbg !6296
  %and20 = and i32 %26, 128, !dbg !6298
  %tobool = icmp ne i32 %and20, 0, !dbg !6298
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !6299

if.then21:                                        ; preds = %for.body
  store i32 -19, ptr %retval, align 4, !dbg !6300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

if.end22:                                         ; preds = %for.body
  %27 = load i32, ptr %status, align 4, !dbg !6301
  %and23 = and i32 %27, 64, !dbg !6303
  %tobool24 = icmp ne i32 %and23, 0, !dbg !6303
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6304

if.then25:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !6305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6305

if.end26:                                         ; preds = %if.end22
  %28 = load i32, ptr @unreset_check, align 4, !dbg !6306
  %mul27 = mul i32 %28, 10, !dbg !6307
  call void @msleep(i32 noundef %mul27) #12, !dbg !6308
  br label %for.inc, !dbg !6309

for.inc:                                          ; preds = %if.end26
  %29 = load i32, ptr %i, align 4, !dbg !6310
  %inc = add i32 %29, 1, !dbg !6310
  store i32 %inc, ptr %i, align 4, !dbg !6310
  br label %for.cond, !dbg !6311, !llvm.loop !6312

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !6314

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !6316

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6316

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr %skt.addr, align 8, !dbg !6314
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %30, i32 0, i32 42, !dbg !6314
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.22) #13, !dbg !6314
  store i32 -110, ptr %retval, align 4, !dbg !6318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6318

cleanup:                                          ; preds = %do.end, %if.then25, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !6319
  %31 = load i32, ptr %retval, align 4, !dbg !6319
  ret i32 %31, !dbg !6319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcmcia_socket_dev_resume(ptr noundef %dev) #0 align 16 !dbg !6320 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6324
  %call = call i32 @__pcmcia_pm_op(ptr noundef %0, ptr noundef @socket_late_resume) #12, !dbg !6325
  ret i32 %call, !dbg !6326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__pcmcia_pm_op(ptr noundef %dev, ptr noundef %callback) #0 align 16 !dbg !6327 {
entry:
  %dev.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6331, metadata !DIExpression()), !dbg !6337
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !6332, metadata !DIExpression()), !dbg !6338
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6333, metadata !DIExpression()), !dbg !6340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6341
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6334, metadata !DIExpression()), !dbg !6341
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6341
  store ptr %0, ptr %__mptr, align 8, !dbg !6341
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6341
  %add.ptr = getelementptr i8, ptr %1, i64 -560, !dbg !6341
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6342
  %2 = load ptr, ptr %tmp, align 8, !dbg !6341
  store ptr %2, ptr %s, align 8, !dbg !6340
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6343
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6336, metadata !DIExpression()), !dbg !6344
  %3 = load ptr, ptr %s, align 8, !dbg !6345
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 33, !dbg !6346
  call void @mutex_lock(ptr noundef %skt_mutex) #12, !dbg !6347
  %4 = load ptr, ptr %callback.addr, align 8, !dbg !6348
  %5 = load ptr, ptr %s, align 8, !dbg !6349
  %call = call i32 %4(ptr noundef %5) #12, !dbg !6348
  store i32 %call, ptr %ret, align 4, !dbg !6350
  %6 = load ptr, ptr %s, align 8, !dbg !6351
  %skt_mutex1 = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 33, !dbg !6352
  call void @mutex_unlock(ptr noundef %skt_mutex1) #12, !dbg !6353
  %7 = load i32, ptr %ret, align 4, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6355
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6355
  ret i32 %7, !dbg !6356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_late_resume(ptr noundef %skt) #0 align 16 !dbg !6357 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6360, metadata !DIExpression()), !dbg !6363
  store i32 0, ptr %ret, align 4, !dbg !6363
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6364
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 34, !dbg !6365
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6366
  %1 = load ptr, ptr %skt.addr, align 8, !dbg !6367
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 2, !dbg !6368
  %2 = load i32, ptr %state, align 4, !dbg !6369
  %and = and i32 %2, -193, !dbg !6369
  store i32 %and, ptr %state, align 4, !dbg !6369
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6370
  %ops_mutex1 = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 34, !dbg !6371
  call void @mutex_unlock(ptr noundef %ops_mutex1) #12, !dbg !6372
  %4 = load ptr, ptr %skt.addr, align 8, !dbg !6373
  %state2 = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 2, !dbg !6375
  %5 = load i32, ptr %state2, align 4, !dbg !6375
  %and3 = and i32 %5, 8, !dbg !6376
  %tobool = icmp ne i32 %and3, 0, !dbg !6376
  br i1 %tobool, label %if.end5, label %if.then, !dbg !6377

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %skt.addr, align 8, !dbg !6378
  %call = call i32 @socket_insert(ptr noundef %6) #12, !dbg !6380
  store i32 %call, ptr %ret, align 4, !dbg !6381
  %7 = load i32, ptr %ret, align 4, !dbg !6382
  %cmp = icmp eq i32 %7, -19, !dbg !6384
  br i1 %cmp, label %if.then4, label %if.end, !dbg !6385

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %ret, align 4, !dbg !6386
  br label %if.end, !dbg !6387

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load i32, ptr %ret, align 4, !dbg !6388
  store i32 %8, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

if.end5:                                          ; preds = %entry
  %9 = load ptr, ptr %skt.addr, align 8, !dbg !6390
  %resume_status = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 44, !dbg !6392
  %10 = load i32, ptr %resume_status, align 8, !dbg !6392
  %tobool6 = icmp ne i32 %10, 0, !dbg !6390
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6393

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %skt.addr, align 8, !dbg !6394
  call void @socket_shutdown(ptr noundef %11) #12, !dbg !6396
  store i32 0, ptr %retval, align 4, !dbg !6397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6397

if.end8:                                          ; preds = %if.end5
  %12 = load ptr, ptr %skt.addr, align 8, !dbg !6398
  %suspended_state = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 3, !dbg !6400
  %13 = load i32, ptr %suspended_state, align 8, !dbg !6400
  %14 = load ptr, ptr %skt.addr, align 8, !dbg !6401
  %state9 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 2, !dbg !6402
  %15 = load i32, ptr %state9, align 4, !dbg !6402
  %cmp10 = icmp ne i32 %13, %15, !dbg !6403
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !6404

if.then11:                                        ; preds = %if.end8
  %16 = load ptr, ptr %skt.addr, align 8, !dbg !6405
  call void @socket_shutdown(ptr noundef %16) #12, !dbg !6407
  %17 = load ptr, ptr %skt.addr, align 8, !dbg !6408
  %call12 = call i32 @socket_insert(ptr noundef %17) #12, !dbg !6409
  store i32 %call12, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end13:                                         ; preds = %if.end8
  %18 = load ptr, ptr %skt.addr, align 8, !dbg !6411
  %state14 = getelementptr inbounds %struct.pcmcia_socket, ptr %18, i32 0, i32 2, !dbg !6413
  %19 = load i32, ptr %state14, align 4, !dbg !6413
  %and15 = and i32 %19, 32768, !dbg !6414
  %tobool16 = icmp ne i32 %and15, 0, !dbg !6414
  br i1 %tobool16, label %if.end21, label %land.lhs.true, !dbg !6415

land.lhs.true:                                    ; preds = %if.end13
  %20 = load ptr, ptr %skt.addr, align 8, !dbg !6416
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 36, !dbg !6417
  %21 = load ptr, ptr %callback, align 8, !dbg !6417
  %tobool17 = icmp ne ptr %21, null, !dbg !6418
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !6419

if.then18:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !6420
  %callback19 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 36, !dbg !6421
  %23 = load ptr, ptr %callback19, align 8, !dbg !6421
  %early_resume = getelementptr inbounds %struct.pcmcia_callback, ptr %23, i32 0, i32 6, !dbg !6422
  %24 = load ptr, ptr %early_resume, align 8, !dbg !6422
  %25 = load ptr, ptr %skt.addr, align 8, !dbg !6423
  %call20 = call i32 %24(ptr noundef %25) #12, !dbg !6420
  store i32 %call20, ptr %ret, align 4, !dbg !6424
  br label %if.end21, !dbg !6425

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %if.end13
  %26 = load i32, ptr %ret, align 4, !dbg !6426
  store i32 %26, ptr %retval, align 4, !dbg !6427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6427

cleanup:                                          ; preds = %if.end21, %if.then11, %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6428
  %27 = load i32, ptr %retval, align 4, !dbg !6428
  ret i32 %27, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcmcia_socket_dev_complete(ptr noundef %dev) #0 align 16 !dbg !6429 {
entry:
  %dev.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6431, metadata !DIExpression()), !dbg !6438
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6432, metadata !DIExpression()), !dbg !6439
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6439
  %call = call i32 @__pcmcia_pm_op(ptr noundef %0, ptr noundef @socket_complete_resume) #12, !dbg !6439
  %tobool = icmp ne i32 %call, 0, !dbg !6439
  %lnot = xor i1 %tobool, true, !dbg !6439
  %lnot1 = xor i1 %lnot, true, !dbg !6439
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6439
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6439
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6440
  %tobool2 = icmp ne i32 %1, 0, !dbg !6440
  %lnot3 = xor i1 %tobool2, true, !dbg !6440
  %lnot5 = xor i1 %lnot3, true, !dbg !6440
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6440
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6440
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6440
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6440
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6439

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6440

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !6441

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6442

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6442

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.7) #12, !dbg !6441
  br label %do.body9, !dbg !6441

do.body9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6434, metadata !DIExpression()), !dbg !6444
  store i32 2313, ptr %__flags, align 4, !dbg !6444
  br label %do.body10, !dbg !6444

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !6445

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6445

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6444

do.body13:                                        ; preds = %do.end12
  %2 = load i32, ptr %__flags, align 4, !dbg !6447
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 867, i32 %2, i64 12) #11, !dbg !6447, !srcloc !6449
  br label %do.cond14, !dbg !6447

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6447

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6444

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !6450

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6450

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6441
  br label %do.cond19, !dbg !6444

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6444

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !6441

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !6452

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6452

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !6441

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !6441

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !6441

if.end:                                           ; preds = %do.end25, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6439
  %tobool26 = icmp ne i32 %3, 0, !dbg !6439
  %lnot27 = xor i1 %tobool26, true, !dbg !6439
  %lnot29 = xor i1 %lnot27, true, !dbg !6439
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6439
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6439
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6439
  store i64 %expval32, ptr %tmp, align 8, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6454
  %4 = load i64, ptr %tmp, align 8, !dbg !6439
  ret void, !dbg !6455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_complete_resume(ptr noundef %skt) #0 align 16 !dbg !6456 {
entry:
  %skt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6459, metadata !DIExpression()), !dbg !6462
  store i32 0, ptr %ret, align 4, !dbg !6462
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6463
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 2, !dbg !6465
  %1 = load i32, ptr %state, align 4, !dbg !6465
  %and = and i32 %1, 32768, !dbg !6466
  %tobool = icmp ne i32 %and, 0, !dbg !6466
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6467

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !6468
  call void @cb_free(ptr noundef %2) #12, !dbg !6470
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6471
  %call = call i32 @cb_alloc(ptr noundef %3) #12, !dbg !6472
  store i32 %call, ptr %ret, align 4, !dbg !6473
  %4 = load i32, ptr %ret, align 4, !dbg !6474
  %tobool1 = icmp ne i32 %4, 0, !dbg !6474
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6476

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !6477
  call void @cb_free(ptr noundef %5) #12, !dbg !6478
  br label %if.end, !dbg !6478

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !6479

if.end3:                                          ; preds = %if.end, %entry
  %6 = load i32, ptr %ret, align 4, !dbg !6480
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6481
  ret i32 %6, !dbg !6482
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6483 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcmcia_socket_uevent(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !6486 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6488, metadata !DIExpression()), !dbg !6495
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !6489, metadata !DIExpression()), !dbg !6496
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %s, metadata !6490, metadata !DIExpression()), !dbg !6498
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6493, metadata !DIExpression()), !dbg !6499
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6499
  store ptr %0, ptr %__mptr, align 8, !dbg !6499
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6499
  %add.ptr = getelementptr i8, ptr %1, i64 -560, !dbg !6499
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6500
  %2 = load ptr, ptr %tmp, align 8, !dbg !6499
  store ptr %2, ptr %s, align 8, !dbg !6498
  %3 = load ptr, ptr %env.addr, align 8, !dbg !6501
  %4 = load ptr, ptr %s, align 8, !dbg !6503
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 15, !dbg !6504
  %5 = load i32, ptr %sock, align 8, !dbg !6504
  %call = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %3, ptr noundef @.str.23, i32 noundef %5) #12, !dbg !6505
  %tobool = icmp ne i32 %call, 0, !dbg !6505
  br i1 %tobool, label %if.then, label %if.end, !dbg !6506

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6507

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6508

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6509
  %6 = load i32, ptr %retval, align 4, !dbg !6509
  ret i32 %6, !dbg !6509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcmcia_release_socket_class(ptr noundef %data) #0 align 16 !dbg !6510 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6512, metadata !DIExpression()), !dbg !6513
  call void @complete(ptr noundef @pcmcia_unload) #12, !dbg !6514
  ret void, !dbg !6515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcmcia_release_socket(ptr noundef %dev) #0 align 16 !dbg !6516 {
entry:
  %dev.addr = alloca ptr, align 8
  %socket = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %socket) #11, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %socket, metadata !6519, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6523
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #12, !dbg !6524
  store ptr %call, ptr %socket, align 8, !dbg !6522
  %1 = load ptr, ptr %socket, align 8, !dbg !6525
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 14, !dbg !6526
  call void @complete(ptr noundef %socket_released) #12, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %socket) #11, !dbg !6528
  ret void, !dbg !6528
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_pcmcia_cs() #9 section ".exit.text" align 16 !dbg !6529 {
entry:
  call void @class_unregister(ptr noundef @pcmcia_socket_class) #12, !dbg !6530
  call void @wait_for_completion(ptr noundef @pcmcia_unload) #12, !dbg !6531
  ret void, !dbg !6532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6533 dso_local void @class_unregister(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4() #9 section ".init.text" align 16 !dbg !6534 {
entry:
  %call = call i32 @init_pcmcia_cs() #13, !dbg !6535
  ret i32 %call, !dbg !6535
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_pcmcia_cs() #9 section ".init.text" align 16 !dbg !6536 {
entry:
  call void @init_completion(ptr noundef @pcmcia_unload) #12, !dbg !6537
  %call = call i32 @class_register(ptr noundef @pcmcia_socket_class) #12, !dbg !6538
  ret i32 %call, !dbg !6539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6540 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6544, metadata !DIExpression()), !dbg !6547
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6545, metadata !DIExpression()), !dbg !6548
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6546, metadata !DIExpression()), !dbg !6549
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6550
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6552
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6553
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !6554
  br i1 %call, label %if.end, label %if.then, !dbg !6555

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6556

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6557
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6558
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6559
  store ptr %3, ptr %prev1, align 8, !dbg !6560
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6561
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6562
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6563
  store ptr %5, ptr %next2, align 8, !dbg !6564
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6565
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6566
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6567
  store ptr %7, ptr %prev3, align 8, !dbg !6568
  br label %do.body, !dbg !6569

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6570

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6572

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6570

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6574
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6574
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6574
  store volatile ptr %9, ptr %next6, align 8, !dbg !6574
  br label %do.end7, !dbg !6574

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6570

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6577 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6581, metadata !DIExpression()), !dbg !6584
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6582, metadata !DIExpression()), !dbg !6585
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6583, metadata !DIExpression()), !dbg !6586
  ret i1 true, !dbg !6587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6588 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6592 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6594, metadata !DIExpression()), !dbg !6595
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6596
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !6598
  br i1 %call, label %if.end, label %if.then, !dbg !6599

if.then:                                          ; preds = %entry
  br label %return, !dbg !6600

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6601
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6602
  %2 = load ptr, ptr %prev, align 8, !dbg !6602
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6603
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6604
  %4 = load ptr, ptr %next, align 8, !dbg !6604
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !6605
  br label %return, !dbg !6606

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6607 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6611, metadata !DIExpression()), !dbg !6612
  ret i1 true, !dbg !6613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6614 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6616, metadata !DIExpression()), !dbg !6618
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6617, metadata !DIExpression()), !dbg !6619
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6620
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6621
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6622
  store ptr %0, ptr %prev1, align 8, !dbg !6623
  br label %do.body, !dbg !6624

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6625

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6627

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6625

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6629
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6629
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6629
  store volatile ptr %2, ptr %next4, align 8, !dbg !6629
  br label %do.end5, !dbg !6629

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6625

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6631
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6632 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6643
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6637, metadata !DIExpression()), !dbg !6643
  br label %do.body, !dbg !6643

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6639, metadata !DIExpression()), !dbg !6644
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6644
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6643
  br label %do.cond, !dbg !6644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6644

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6641, metadata !DIExpression()), !dbg !6645
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !6645, !srcloc !6646
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6645
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6645
  %3 = inttoptr i64 %2 to ptr, !dbg !6645
  store ptr %3, ptr %tmp, align 8, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6643
  %4 = load ptr, ptr %tmp, align 8, !dbg !6645
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6643
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6643
  store ptr %5, ptr %tmp1, align 8, !dbg !6643
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6647
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6643
  ret ptr %6, !dbg !6648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6649 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6650 dso_local void @complete(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6651 dso_local i32 @pccard_sysfs_add_socket(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6652 dso_local void @msleep(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6656 dso_local zeroext i1 @set_freezable() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @socket_detect_change(ptr noundef %skt) #0 align 16 !dbg !6658 {
entry:
  %skt.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6660, metadata !DIExpression()), !dbg !6664
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6665
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 2, !dbg !6666
  %1 = load i32, ptr %state, align 4, !dbg !6666
  %and = and i32 %1, 128, !dbg !6667
  %tobool = icmp ne i32 %and, 0, !dbg !6667
  br i1 %tobool, label %if.end21, label %if.then, !dbg !6668

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6661, metadata !DIExpression()), !dbg !6670
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !6671
  %state1 = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 2, !dbg !6673
  %3 = load i32, ptr %state1, align 4, !dbg !6673
  %and2 = and i32 %3, 8, !dbg !6674
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6674
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6675

if.then4:                                         ; preds = %if.then
  call void @msleep(i32 noundef 20) #12, !dbg !6676
  br label %if.end, !dbg !6676

if.end:                                           ; preds = %if.then4, %if.then
  %4 = load ptr, ptr %skt.addr, align 8, !dbg !6677
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 23, !dbg !6678
  %5 = load ptr, ptr %ops, align 8, !dbg !6678
  %get_status = getelementptr inbounds %struct.pccard_operations, ptr %5, i32 0, i32 2, !dbg !6679
  %6 = load ptr, ptr %get_status, align 8, !dbg !6679
  %7 = load ptr, ptr %skt.addr, align 8, !dbg !6680
  %call = call i32 %6(ptr noundef %7, ptr noundef %status) #12, !dbg !6677
  %8 = load ptr, ptr %skt.addr, align 8, !dbg !6681
  %state5 = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 2, !dbg !6683
  %9 = load i32, ptr %state5, align 4, !dbg !6683
  %and6 = and i32 %9, 8, !dbg !6684
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6684
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !6685

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, ptr %status, align 4, !dbg !6686
  %and8 = and i32 %10, 128, !dbg !6687
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6687
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6688

if.then10:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %skt.addr, align 8, !dbg !6689
  call void @socket_remove(ptr noundef %11) #12, !dbg !6690
  br label %if.end11, !dbg !6690

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  %12 = load ptr, ptr %skt.addr, align 8, !dbg !6691
  %state12 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 2, !dbg !6693
  %13 = load i32, ptr %state12, align 4, !dbg !6693
  %and13 = and i32 %13, 8, !dbg !6694
  %tobool14 = icmp ne i32 %and13, 0, !dbg !6694
  br i1 %tobool14, label %if.end20, label %land.lhs.true15, !dbg !6695

land.lhs.true15:                                  ; preds = %if.end11
  %14 = load i32, ptr %status, align 4, !dbg !6696
  %and16 = and i32 %14, 128, !dbg !6697
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6697
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !6698

if.then18:                                        ; preds = %land.lhs.true15
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !6699
  %call19 = call i32 @socket_insert(ptr noundef %15) #12, !dbg !6700
  br label %if.end20, !dbg !6700

if.end20:                                         ; preds = %if.then18, %land.lhs.true15, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !6701
  br label %if.end21, !dbg !6702

if.end21:                                         ; preds = %if.end20, %entry
  ret void, !dbg !6703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @socket_remove(ptr noundef %skt) #0 align 16 !dbg !6704 {
entry:
  %skt.addr = alloca ptr, align 8
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6706, metadata !DIExpression()), !dbg !6707
  br label %do.body, !dbg !6708

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6710

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6708
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 42, !dbg !6708
  %1 = load ptr, ptr %skt.addr, align 8, !dbg !6708
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 15, !dbg !6708
  %2 = load i32, ptr %sock, align 8, !dbg !6708
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef @.str.13, i32 noundef %2) #13, !dbg !6708
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6712
  call void @socket_shutdown(ptr noundef %3) #12, !dbg !6713
  ret void, !dbg !6714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_insert(ptr noundef %skt) #0 align 16 !dbg !6715 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6717, metadata !DIExpression()), !dbg !6719
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6720
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6718, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6722
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 34, !dbg !6723
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6724
  %1 = load ptr, ptr %skt.addr, align 8, !dbg !6725
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 2, !dbg !6727
  %2 = load i32, ptr %state, align 4, !dbg !6727
  %and = and i32 %2, 16, !dbg !6728
  %tobool = icmp ne i32 %and, 0, !dbg !6728
  br i1 %tobool, label %if.then, label %if.end, !dbg !6729

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6730
  %ops_mutex1 = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 34, !dbg !6732
  call void @mutex_unlock(ptr noundef %ops_mutex1) #12, !dbg !6733
  store i32 -22, ptr %retval, align 4, !dbg !6734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6734

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %skt.addr, align 8, !dbg !6735
  %state2 = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 2, !dbg !6736
  %5 = load i32, ptr %state2, align 4, !dbg !6737
  %or = or i32 %5, 16, !dbg !6737
  store i32 %or, ptr %state2, align 4, !dbg !6737
  %6 = load ptr, ptr %skt.addr, align 8, !dbg !6738
  %7 = load i32, ptr @setup_delay, align 4, !dbg !6739
  %call = call i32 @socket_setup(ptr noundef %6, i32 noundef %7) #12, !dbg !6740
  store i32 %call, ptr %ret, align 4, !dbg !6741
  %8 = load i32, ptr %ret, align 4, !dbg !6742
  %cmp = icmp eq i32 %8, 0, !dbg !6744
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6745

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %skt.addr, align 8, !dbg !6746
  %state4 = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 2, !dbg !6748
  %10 = load i32, ptr %state4, align 4, !dbg !6749
  %or5 = or i32 %10, 8, !dbg !6749
  store i32 %or5, ptr %state4, align 4, !dbg !6749
  br label %do.body, !dbg !6750

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6752

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6752

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %skt.addr, align 8, !dbg !6750
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 42, !dbg !6750
  %12 = load ptr, ptr %skt.addr, align 8, !dbg !6750
  %state6 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 2, !dbg !6750
  %13 = load i32, ptr %state6, align 4, !dbg !6750
  %and7 = and i32 %13, 32768, !dbg !6750
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6750
  %14 = zext i1 %tobool8 to i64, !dbg !6750
  %cond = select i1 %tobool8, ptr @.str.16, ptr @.str.17, !dbg !6750
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !6750
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 15, !dbg !6750
  %16 = load i32, ptr %sock, align 8, !dbg !6750
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef @.str.15, ptr noundef %cond, i32 noundef %16) #13, !dbg !6750
  %17 = load ptr, ptr %skt.addr, align 8, !dbg !6754
  %state9 = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 2, !dbg !6756
  %18 = load i32, ptr %state9, align 4, !dbg !6756
  %and10 = and i32 %18, 32768, !dbg !6757
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6757
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !6758

if.then12:                                        ; preds = %do.end
  %19 = load ptr, ptr %skt.addr, align 8, !dbg !6759
  %call13 = call i32 @cb_alloc(ptr noundef %19) #12, !dbg !6761
  %20 = load ptr, ptr %skt.addr, align 8, !dbg !6762
  %state14 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 2, !dbg !6763
  %21 = load i32, ptr %state14, align 4, !dbg !6764
  %or15 = or i32 %21, 65536, !dbg !6764
  store i32 %or15, ptr %state14, align 4, !dbg !6764
  br label %if.end16, !dbg !6765

if.end16:                                         ; preds = %if.then12, %do.end
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !6766
  %ops_mutex17 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 34, !dbg !6767
  call void @mutex_unlock(ptr noundef %ops_mutex17) #12, !dbg !6768
  %23 = load ptr, ptr %skt.addr, align 8, !dbg !6769
  %state18 = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 2, !dbg !6771
  %24 = load i32, ptr %state18, align 4, !dbg !6771
  %and19 = and i32 %24, 32768, !dbg !6772
  %tobool20 = icmp ne i32 %and19, 0, !dbg !6772
  br i1 %tobool20, label %if.end25, label %land.lhs.true, !dbg !6773

land.lhs.true:                                    ; preds = %if.end16
  %25 = load ptr, ptr %skt.addr, align 8, !dbg !6774
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 36, !dbg !6775
  %26 = load ptr, ptr %callback, align 8, !dbg !6775
  %tobool21 = icmp ne ptr %26, null, !dbg !6776
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !6777

if.then22:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %skt.addr, align 8, !dbg !6778
  %callback23 = getelementptr inbounds %struct.pcmcia_socket, ptr %27, i32 0, i32 36, !dbg !6779
  %28 = load ptr, ptr %callback23, align 8, !dbg !6779
  %add = getelementptr inbounds %struct.pcmcia_callback, ptr %28, i32 0, i32 1, !dbg !6780
  %29 = load ptr, ptr %add, align 8, !dbg !6780
  %30 = load ptr, ptr %skt.addr, align 8, !dbg !6781
  %call24 = call i32 %29(ptr noundef %30) #12, !dbg !6778
  br label %if.end25, !dbg !6778

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end16
  br label %if.end27, !dbg !6782

if.else:                                          ; preds = %if.end
  %31 = load ptr, ptr %skt.addr, align 8, !dbg !6783
  %ops_mutex26 = getelementptr inbounds %struct.pcmcia_socket, ptr %31, i32 0, i32 34, !dbg !6785
  call void @mutex_unlock(ptr noundef %ops_mutex26) #12, !dbg !6786
  %32 = load ptr, ptr %skt.addr, align 8, !dbg !6787
  call void @socket_shutdown(ptr noundef %32) #12, !dbg !6788
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end25
  %33 = load i32, ptr %ret, align 4, !dbg !6789
  store i32 %33, ptr %retval, align 4, !dbg !6790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6790

cleanup:                                          ; preds = %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6791
  %34 = load i32, ptr %retval, align 4, !dbg !6791
  ret i32 %34, !dbg !6791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_suspend(ptr noundef %skt) #0 align 16 !dbg !6792 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6794, metadata !DIExpression()), !dbg !6795
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6796
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 2, !dbg !6798
  %1 = load i32, ptr %state, align 4, !dbg !6798
  %and = and i32 %1, 128, !dbg !6799
  %tobool = icmp ne i32 %and, 0, !dbg !6799
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6800

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !6801
  %state1 = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 2, !dbg !6802
  %3 = load i32, ptr %state1, align 4, !dbg !6802
  %and2 = and i32 %3, 64, !dbg !6803
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6803
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6804

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, ptr %retval, align 4, !dbg !6805
  br label %return, !dbg !6805

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %skt.addr, align 8, !dbg !6806
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 34, !dbg !6807
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6808
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !6809
  %state4 = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 2, !dbg !6811
  %6 = load i32, ptr %state4, align 4, !dbg !6811
  %and5 = and i32 %6, 64, !dbg !6812
  %tobool6 = icmp ne i32 %and5, 0, !dbg !6812
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !6813

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %skt.addr, align 8, !dbg !6814
  %state8 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 2, !dbg !6815
  %8 = load i32, ptr %state8, align 4, !dbg !6815
  %9 = load ptr, ptr %skt.addr, align 8, !dbg !6816
  %suspended_state = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 3, !dbg !6817
  store i32 %8, ptr %suspended_state, align 8, !dbg !6818
  br label %if.end9, !dbg !6816

if.end9:                                          ; preds = %if.then7, %if.end
  %10 = load ptr, ptr %skt.addr, align 8, !dbg !6819
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 1, !dbg !6820
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %socket, ptr align 4 @dead_socket, i64 12, i1 false), !dbg !6821
  %11 = load ptr, ptr %skt.addr, align 8, !dbg !6822
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 23, !dbg !6823
  %12 = load ptr, ptr %ops, align 8, !dbg !6823
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %12, i32 0, i32 3, !dbg !6824
  %13 = load ptr, ptr %set_socket, align 8, !dbg !6824
  %14 = load ptr, ptr %skt.addr, align 8, !dbg !6825
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !6826
  %socket10 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 1, !dbg !6827
  %call = call i32 %13(ptr noundef %14, ptr noundef %socket10) #12, !dbg !6822
  %16 = load ptr, ptr %skt.addr, align 8, !dbg !6828
  %ops11 = getelementptr inbounds %struct.pcmcia_socket, ptr %16, i32 0, i32 23, !dbg !6830
  %17 = load ptr, ptr %ops11, align 8, !dbg !6830
  %suspend = getelementptr inbounds %struct.pccard_operations, ptr %17, i32 0, i32 1, !dbg !6831
  %18 = load ptr, ptr %suspend, align 8, !dbg !6831
  %tobool12 = icmp ne ptr %18, null, !dbg !6828
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !6832

if.then13:                                        ; preds = %if.end9
  %19 = load ptr, ptr %skt.addr, align 8, !dbg !6833
  %ops14 = getelementptr inbounds %struct.pcmcia_socket, ptr %19, i32 0, i32 23, !dbg !6834
  %20 = load ptr, ptr %ops14, align 8, !dbg !6834
  %suspend15 = getelementptr inbounds %struct.pccard_operations, ptr %20, i32 0, i32 1, !dbg !6835
  %21 = load ptr, ptr %suspend15, align 8, !dbg !6835
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !6836
  %call16 = call i32 %21(ptr noundef %22) #12, !dbg !6833
  br label %if.end17, !dbg !6833

if.end17:                                         ; preds = %if.then13, %if.end9
  %23 = load ptr, ptr %skt.addr, align 8, !dbg !6837
  %state18 = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 2, !dbg !6838
  %24 = load i32, ptr %state18, align 4, !dbg !6839
  %or = or i32 %24, 128, !dbg !6839
  store i32 %or, ptr %state18, align 4, !dbg !6839
  %25 = load ptr, ptr %skt.addr, align 8, !dbg !6840
  %state19 = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 2, !dbg !6841
  %26 = load i32, ptr %state19, align 4, !dbg !6842
  %and20 = and i32 %26, -65, !dbg !6842
  store i32 %and20, ptr %state19, align 4, !dbg !6842
  %27 = load ptr, ptr %skt.addr, align 8, !dbg !6843
  %ops_mutex21 = getelementptr inbounds %struct.pcmcia_socket, ptr %27, i32 0, i32 34, !dbg !6844
  call void @mutex_unlock(ptr noundef %ops_mutex21) #12, !dbg !6845
  store i32 0, ptr %retval, align 4, !dbg !6846
  br label %return, !dbg !6846

return:                                           ; preds = %if.end17, %if.then
  %28 = load i32, ptr %retval, align 4, !dbg !6847
  ret i32 %28, !dbg !6847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_resume(ptr noundef %skt) #0 align 16 !dbg !6848 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6850, metadata !DIExpression()), !dbg !6852
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6851, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !6855
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 2, !dbg !6857
  %1 = load i32, ptr %state, align 4, !dbg !6857
  %and = and i32 %1, 128, !dbg !6858
  %tobool = icmp ne i32 %and, 0, !dbg !6858
  br i1 %tobool, label %if.end, label %if.then, !dbg !6859

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !6860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6860

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !6861
  %call = call i32 @socket_early_resume(ptr noundef %2) #12, !dbg !6862
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !6863
  %call1 = call i32 @socket_late_resume(ptr noundef %3) #12, !dbg !6864
  store i32 %call1, ptr %err, align 4, !dbg !6865
  %4 = load i32, ptr %err, align 4, !dbg !6866
  %tobool2 = icmp ne i32 %4, 0, !dbg !6866
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6868

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !6869
  %call4 = call i32 @socket_complete_resume(ptr noundef %5) #12, !dbg !6870
  store i32 %call4, ptr %err, align 4, !dbg !6871
  br label %if.end5, !dbg !6872

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %err, align 4, !dbg !6873
  store i32 %6, ptr %retval, align 4, !dbg !6874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6874

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !6875
  %7 = load i32, ptr %retval, align 4, !dbg !6875
  ret i32 %7, !dbg !6875
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6876 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6884, metadata !DIExpression()), !dbg !6886
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6888
  %1 = load i64, ptr %size.addr, align 8, !dbg !6889
  %conv = trunc i64 %1 to i32, !dbg !6889
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6890
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6891
  %3 = load i64, ptr %size.addr, align 8, !dbg !6891
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !6891
  ret void, !dbg !6892
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6893 dso_local zeroext i1 @kthread_should_stop() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6894 dso_local void @schedule() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @try_to_freeze() #4 align 16 !dbg !6895 {
entry:
  %retval = alloca i1, align 1
  br label %do.body, !dbg !6896

do.body:                                          ; preds = %entry
  call void @might_resched() #12, !dbg !6897
  br label %do.end, !dbg !6897

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #12, !dbg !6899
  %call1 = call zeroext i1 @freezing(ptr noundef %call) #12, !dbg !6899
  %lnot = xor i1 %call1, true, !dbg !6899
  %lnot2 = xor i1 %lnot, true, !dbg !6899
  %lnot3 = xor i1 %lnot2, true, !dbg !6899
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6899
  %conv = sext i32 %lnot.ext to i64, !dbg !6899
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6899
  %tobool = icmp ne i64 %expval, 0, !dbg !6899
  br i1 %tobool, label %if.then, label %if.end, !dbg !6901

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6902
  br label %return, !dbg !6902

if.end:                                           ; preds = %do.end
  %call4 = call ptr @get_current() #12, !dbg !6903
  %flags = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 4, !dbg !6905
  %0 = load i32, ptr %flags, align 4, !dbg !6905
  %and = and i32 %0, 32768, !dbg !6906
  %tobool5 = icmp ne i32 %and, 0, !dbg !6906
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6907

if.then6:                                         ; preds = %if.end
  call void @debug_check_no_locks_held() #12, !dbg !6908
  br label %if.end7, !dbg !6908

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12, !dbg !6909
  store i1 %call8, ptr %retval, align 1, !dbg !6910
  br label %return, !dbg !6910

return:                                           ; preds = %if.end7, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !6911
  ret i1 %1, !dbg !6911
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6912 dso_local void @pccard_sysfs_remove_socket(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6913 dso_local void @device_unregister(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6914 dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @socket_shutdown(ptr noundef %s) #0 align 16 !dbg !6915 {
entry:
  %s.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6917, metadata !DIExpression()), !dbg !6919
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !6920
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6918, metadata !DIExpression()), !dbg !6921
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6922
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 36, !dbg !6924
  %1 = load ptr, ptr %callback, align 8, !dbg !6924
  %tobool = icmp ne ptr %1, null, !dbg !6922
  br i1 %tobool, label %if.then, label %if.end, !dbg !6925

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6926
  %callback1 = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 36, !dbg !6927
  %3 = load ptr, ptr %callback1, align 8, !dbg !6927
  %remove = getelementptr inbounds %struct.pcmcia_callback, ptr %3, i32 0, i32 2, !dbg !6928
  %4 = load ptr, ptr %remove, align 8, !dbg !6928
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6929
  %call = call i32 %4(ptr noundef %5) #12, !dbg !6926
  br label %if.end, !dbg !6926

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6930
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 34, !dbg !6931
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !6932
  %7 = load ptr, ptr %s.addr, align 8, !dbg !6933
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 2, !dbg !6934
  %8 = load i32, ptr %state, align 4, !dbg !6935
  %and = and i32 %8, 24, !dbg !6935
  store i32 %and, ptr %state, align 4, !dbg !6935
  %9 = load i32, ptr @shutdown_delay, align 4, !dbg !6936
  %mul = mul i32 %9, 10, !dbg !6937
  call void @msleep(i32 noundef %mul) #12, !dbg !6938
  %10 = load ptr, ptr %s.addr, align 8, !dbg !6939
  %state2 = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 2, !dbg !6940
  %11 = load i32, ptr %state2, align 4, !dbg !6941
  %and3 = and i32 %11, 16, !dbg !6941
  store i32 %and3, ptr %state2, align 4, !dbg !6941
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6942
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 1, !dbg !6943
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %socket, ptr align 4 @dead_socket, i64 12, i1 false), !dbg !6944
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6945
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %13, i32 0, i32 23, !dbg !6946
  %14 = load ptr, ptr %ops, align 8, !dbg !6946
  %init = getelementptr inbounds %struct.pccard_operations, ptr %14, i32 0, i32 0, !dbg !6947
  %15 = load ptr, ptr %init, align 8, !dbg !6947
  %16 = load ptr, ptr %s.addr, align 8, !dbg !6948
  %call4 = call i32 %15(ptr noundef %16) #12, !dbg !6945
  %17 = load ptr, ptr %s.addr, align 8, !dbg !6949
  %ops5 = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 23, !dbg !6950
  %18 = load ptr, ptr %ops5, align 8, !dbg !6950
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %18, i32 0, i32 3, !dbg !6951
  %19 = load ptr, ptr %set_socket, align 8, !dbg !6951
  %20 = load ptr, ptr %s.addr, align 8, !dbg !6952
  %21 = load ptr, ptr %s.addr, align 8, !dbg !6953
  %socket6 = getelementptr inbounds %struct.pcmcia_socket, ptr %21, i32 0, i32 1, !dbg !6954
  %call7 = call i32 %19(ptr noundef %20, ptr noundef %socket6) #12, !dbg !6949
  %22 = load ptr, ptr %s.addr, align 8, !dbg !6955
  %lock_count = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 5, !dbg !6956
  store i16 0, ptr %lock_count, align 2, !dbg !6957
  %23 = load ptr, ptr %s.addr, align 8, !dbg !6958
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 12, !dbg !6959
  %24 = load ptr, ptr %fake_cis, align 8, !dbg !6959
  call void @kfree(ptr noundef %24) #12, !dbg !6960
  %25 = load ptr, ptr %s.addr, align 8, !dbg !6961
  %fake_cis8 = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 12, !dbg !6962
  store ptr null, ptr %fake_cis8, align 8, !dbg !6963
  %26 = load ptr, ptr %s.addr, align 8, !dbg !6964
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %26, i32 0, i32 4, !dbg !6965
  store i16 0, ptr %functions, align 4, !dbg !6966
  %27 = load ptr, ptr %s.addr, align 8, !dbg !6967
  %ops_mutex9 = getelementptr inbounds %struct.pcmcia_socket, ptr %27, i32 0, i32 34, !dbg !6968
  call void @mutex_unlock(ptr noundef %ops_mutex9) #12, !dbg !6969
  %28 = load ptr, ptr %s.addr, align 8, !dbg !6970
  call void @cb_free(ptr noundef %28) #12, !dbg !6971
  call void @msleep(i32 noundef 100) #12, !dbg !6972
  %29 = load ptr, ptr %s.addr, align 8, !dbg !6973
  %ops10 = getelementptr inbounds %struct.pcmcia_socket, ptr %29, i32 0, i32 23, !dbg !6974
  %30 = load ptr, ptr %ops10, align 8, !dbg !6974
  %get_status = getelementptr inbounds %struct.pccard_operations, ptr %30, i32 0, i32 2, !dbg !6975
  %31 = load ptr, ptr %get_status, align 8, !dbg !6975
  %32 = load ptr, ptr %s.addr, align 8, !dbg !6976
  %call11 = call i32 %31(ptr noundef %32, ptr noundef %status) #12, !dbg !6973
  %33 = load i32, ptr %status, align 4, !dbg !6977
  %and12 = and i32 %33, 256, !dbg !6979
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6979
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6980

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !6981

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !6984

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6984

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %s.addr, align 8, !dbg !6981
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %34, i32 0, i32 42, !dbg !6981
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.14) #13, !dbg !6981
  br label %if.end15, !dbg !6986

if.end15:                                         ; preds = %do.end, %if.end
  %35 = load ptr, ptr %s.addr, align 8, !dbg !6987
  %state16 = getelementptr inbounds %struct.pcmcia_socket, ptr %35, i32 0, i32 2, !dbg !6988
  %36 = load i32, ptr %state16, align 4, !dbg !6989
  %and17 = and i32 %36, -17, !dbg !6989
  store i32 %and17, ptr %state16, align 4, !dbg !6989
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !6990
  ret void, !dbg !6990
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6991 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6995 dso_local void @cb_free(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6996 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_setup(ptr noundef %skt, i32 noundef %initial_delay) #0 align 16 !dbg !6997 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca ptr, align 8
  %initial_delay.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !6999, metadata !DIExpression()), !dbg !7003
  store i32 %initial_delay, ptr %initial_delay.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initial_delay.addr, metadata !7000, metadata !DIExpression()), !dbg !7004
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %status, metadata !7001, metadata !DIExpression()), !dbg !7006
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7002, metadata !DIExpression()), !dbg !7007
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !7008
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 23, !dbg !7009
  %1 = load ptr, ptr %ops, align 8, !dbg !7009
  %get_status = getelementptr inbounds %struct.pccard_operations, ptr %1, i32 0, i32 2, !dbg !7010
  %2 = load ptr, ptr %get_status, align 8, !dbg !7010
  %3 = load ptr, ptr %skt.addr, align 8, !dbg !7011
  %call = call i32 %2(ptr noundef %3, ptr noundef %status) #12, !dbg !7008
  %4 = load i32, ptr %status, align 4, !dbg !7012
  %and = and i32 %4, 128, !dbg !7014
  %tobool = icmp ne i32 %and, 0, !dbg !7014
  br i1 %tobool, label %if.end, label %if.then, !dbg !7015

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !7016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7016

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %initial_delay.addr, align 4, !dbg !7017
  %mul = mul i32 %5, 10, !dbg !7018
  call void @msleep(i32 noundef %mul) #12, !dbg !7019
  store i32 0, ptr %i, align 4, !dbg !7020
  br label %for.cond, !dbg !7022

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !7023
  %cmp = icmp slt i32 %6, 100, !dbg !7025
  br i1 %cmp, label %for.body, label %for.end, !dbg !7026

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %skt.addr, align 8, !dbg !7027
  %ops1 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 23, !dbg !7029
  %8 = load ptr, ptr %ops1, align 8, !dbg !7029
  %get_status2 = getelementptr inbounds %struct.pccard_operations, ptr %8, i32 0, i32 2, !dbg !7030
  %9 = load ptr, ptr %get_status2, align 8, !dbg !7030
  %10 = load ptr, ptr %skt.addr, align 8, !dbg !7031
  %call3 = call i32 %9(ptr noundef %10, ptr noundef %status) #12, !dbg !7027
  %11 = load i32, ptr %status, align 4, !dbg !7032
  %and4 = and i32 %11, 128, !dbg !7034
  %tobool5 = icmp ne i32 %and4, 0, !dbg !7034
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !7035

if.then6:                                         ; preds = %for.body
  store i32 -19, ptr %retval, align 4, !dbg !7036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7036

if.end7:                                          ; preds = %for.body
  %12 = load i32, ptr %status, align 4, !dbg !7037
  %and8 = and i32 %12, 16384, !dbg !7039
  %tobool9 = icmp ne i32 %and8, 0, !dbg !7039
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !7040

if.then10:                                        ; preds = %if.end7
  br label %for.end, !dbg !7041

if.end11:                                         ; preds = %if.end7
  call void @msleep(i32 noundef 100) #12, !dbg !7042
  br label %for.inc, !dbg !7043

for.inc:                                          ; preds = %if.end11
  %13 = load i32, ptr %i, align 4, !dbg !7044
  %inc = add i32 %13, 1, !dbg !7044
  store i32 %inc, ptr %i, align 4, !dbg !7044
  br label %for.cond, !dbg !7045, !llvm.loop !7046

for.end:                                          ; preds = %if.then10, %for.cond
  %14 = load i32, ptr %status, align 4, !dbg !7048
  %and12 = and i32 %14, 16384, !dbg !7050
  %tobool13 = icmp ne i32 %and12, 0, !dbg !7050
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !7051

if.then14:                                        ; preds = %for.end
  br label %do.body, !dbg !7052

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !7055

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7055

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !7052
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 42, !dbg !7052
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.18) #13, !dbg !7052
  store i32 -110, ptr %retval, align 4, !dbg !7057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7057

if.end15:                                         ; preds = %for.end
  %16 = load i32, ptr %status, align 4, !dbg !7058
  %and16 = and i32 %16, 2048, !dbg !7060
  %tobool17 = icmp ne i32 %and16, 0, !dbg !7060
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !7061

if.then18:                                        ; preds = %if.end15
  %17 = load ptr, ptr %skt.addr, align 8, !dbg !7062
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 16, !dbg !7065
  %18 = load i32, ptr %features, align 4, !dbg !7065
  %and19 = and i32 %18, 32768, !dbg !7066
  %tobool20 = icmp ne i32 %and19, 0, !dbg !7066
  br i1 %tobool20, label %if.end26, label %if.then21, !dbg !7067

if.then21:                                        ; preds = %if.then18
  br label %do.body22, !dbg !7068

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !7071

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !7071

do.end24:                                         ; preds = %do.cond23
  %19 = load ptr, ptr %skt.addr, align 8, !dbg !7068
  %dev25 = getelementptr inbounds %struct.pcmcia_socket, ptr %19, i32 0, i32 42, !dbg !7068
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef @.str.19) #13, !dbg !7068
  store i32 -22, ptr %retval, align 4, !dbg !7073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7073

if.end26:                                         ; preds = %if.then18
  %20 = load ptr, ptr %skt.addr, align 8, !dbg !7074
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 2, !dbg !7075
  %21 = load i32, ptr %state, align 4, !dbg !7076
  %or = or i32 %21, 32768, !dbg !7076
  store i32 %or, ptr %state, align 4, !dbg !7076
  br label %if.end29, !dbg !7077

if.else:                                          ; preds = %if.end15
  %22 = load ptr, ptr %skt.addr, align 8, !dbg !7078
  %state27 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 2, !dbg !7079
  %23 = load i32, ptr %state27, align 4, !dbg !7080
  %and28 = and i32 %23, -32769, !dbg !7080
  store i32 %and28, ptr %state27, align 4, !dbg !7080
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end26
  %24 = load i32, ptr %status, align 4, !dbg !7081
  %and30 = and i32 %24, 4096, !dbg !7083
  %tobool31 = icmp ne i32 %and30, 0, !dbg !7083
  br i1 %tobool31, label %if.then32, label %if.else34, !dbg !7084

if.then32:                                        ; preds = %if.end29
  %25 = load ptr, ptr %skt.addr, align 8, !dbg !7085
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 1, !dbg !7086
  %Vpp = getelementptr inbounds %struct.socket_state_t, ptr %socket, i32 0, i32 3, !dbg !7087
  store i8 33, ptr %Vpp, align 1, !dbg !7088
  %26 = load ptr, ptr %skt.addr, align 8, !dbg !7089
  %socket33 = getelementptr inbounds %struct.pcmcia_socket, ptr %26, i32 0, i32 1, !dbg !7090
  %Vcc = getelementptr inbounds %struct.socket_state_t, ptr %socket33, i32 0, i32 2, !dbg !7091
  store i8 33, ptr %Vcc, align 8, !dbg !7092
  br label %if.end48, !dbg !7089

if.else34:                                        ; preds = %if.end29
  %27 = load i32, ptr %status, align 4, !dbg !7093
  %and35 = and i32 %27, 8192, !dbg !7095
  %tobool36 = icmp ne i32 %and35, 0, !dbg !7095
  br i1 %tobool36, label %if.else42, label %if.then37, !dbg !7096

if.then37:                                        ; preds = %if.else34
  %28 = load ptr, ptr %skt.addr, align 8, !dbg !7097
  %socket38 = getelementptr inbounds %struct.pcmcia_socket, ptr %28, i32 0, i32 1, !dbg !7098
  %Vpp39 = getelementptr inbounds %struct.socket_state_t, ptr %socket38, i32 0, i32 3, !dbg !7099
  store i8 50, ptr %Vpp39, align 1, !dbg !7100
  %29 = load ptr, ptr %skt.addr, align 8, !dbg !7101
  %socket40 = getelementptr inbounds %struct.pcmcia_socket, ptr %29, i32 0, i32 1, !dbg !7102
  %Vcc41 = getelementptr inbounds %struct.socket_state_t, ptr %socket40, i32 0, i32 2, !dbg !7103
  store i8 50, ptr %Vcc41, align 8, !dbg !7104
  br label %if.end47, !dbg !7101

if.else42:                                        ; preds = %if.else34
  br label %do.body43, !dbg !7105

do.body43:                                        ; preds = %if.else42
  br label %do.cond44, !dbg !7108

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !7108

do.end45:                                         ; preds = %do.cond44
  %30 = load ptr, ptr %skt.addr, align 8, !dbg !7105
  %dev46 = getelementptr inbounds %struct.pcmcia_socket, ptr %30, i32 0, i32 42, !dbg !7105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef @.str.20) #13, !dbg !7105
  store i32 -5, ptr %retval, align 4, !dbg !7110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7110

if.end47:                                         ; preds = %if.then37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then32
  %31 = load ptr, ptr %skt.addr, align 8, !dbg !7111
  %power_hook = getelementptr inbounds %struct.pcmcia_socket, ptr %31, i32 0, i32 27, !dbg !7113
  %32 = load ptr, ptr %power_hook, align 8, !dbg !7113
  %tobool49 = icmp ne ptr %32, null, !dbg !7111
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !7114

if.then50:                                        ; preds = %if.end48
  %33 = load ptr, ptr %skt.addr, align 8, !dbg !7115
  %power_hook51 = getelementptr inbounds %struct.pcmcia_socket, ptr %33, i32 0, i32 27, !dbg !7116
  %34 = load ptr, ptr %power_hook51, align 8, !dbg !7116
  %35 = load ptr, ptr %skt.addr, align 8, !dbg !7117
  %call52 = call i32 %34(ptr noundef %35, i32 noundef 1) #12, !dbg !7115
  br label %if.end53, !dbg !7115

if.end53:                                         ; preds = %if.then50, %if.end48
  %36 = load ptr, ptr %skt.addr, align 8, !dbg !7118
  %socket54 = getelementptr inbounds %struct.pcmcia_socket, ptr %36, i32 0, i32 1, !dbg !7119
  %flags = getelementptr inbounds %struct.socket_state_t, ptr %socket54, i32 0, i32 0, !dbg !7120
  store i32 0, ptr %flags, align 8, !dbg !7121
  %37 = load ptr, ptr %skt.addr, align 8, !dbg !7122
  %ops55 = getelementptr inbounds %struct.pcmcia_socket, ptr %37, i32 0, i32 23, !dbg !7123
  %38 = load ptr, ptr %ops55, align 8, !dbg !7123
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %38, i32 0, i32 3, !dbg !7124
  %39 = load ptr, ptr %set_socket, align 8, !dbg !7124
  %40 = load ptr, ptr %skt.addr, align 8, !dbg !7125
  %41 = load ptr, ptr %skt.addr, align 8, !dbg !7126
  %socket56 = getelementptr inbounds %struct.pcmcia_socket, ptr %41, i32 0, i32 1, !dbg !7127
  %call57 = call i32 %39(ptr noundef %40, ptr noundef %socket56) #12, !dbg !7122
  %42 = load i32, ptr @vcc_settle, align 4, !dbg !7128
  %mul58 = mul i32 %42, 10, !dbg !7129
  call void @msleep(i32 noundef %mul58) #12, !dbg !7130
  %43 = load ptr, ptr %skt.addr, align 8, !dbg !7131
  %ops59 = getelementptr inbounds %struct.pcmcia_socket, ptr %43, i32 0, i32 23, !dbg !7132
  %44 = load ptr, ptr %ops59, align 8, !dbg !7132
  %get_status60 = getelementptr inbounds %struct.pccard_operations, ptr %44, i32 0, i32 2, !dbg !7133
  %45 = load ptr, ptr %get_status60, align 8, !dbg !7133
  %46 = load ptr, ptr %skt.addr, align 8, !dbg !7134
  %call61 = call i32 %45(ptr noundef %46, ptr noundef %status) #12, !dbg !7131
  %47 = load i32, ptr %status, align 4, !dbg !7135
  %and62 = and i32 %47, 256, !dbg !7137
  %tobool63 = icmp ne i32 %and62, 0, !dbg !7137
  br i1 %tobool63, label %if.end69, label %if.then64, !dbg !7138

if.then64:                                        ; preds = %if.end53
  br label %do.body65, !dbg !7139

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !7142

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !7142

do.end67:                                         ; preds = %do.cond66
  %48 = load ptr, ptr %skt.addr, align 8, !dbg !7139
  %dev68 = getelementptr inbounds %struct.pcmcia_socket, ptr %48, i32 0, i32 42, !dbg !7139
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef @.str.21) #13, !dbg !7139
  store i32 -5, ptr %retval, align 4, !dbg !7144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7144

if.end69:                                         ; preds = %if.end53
  %49 = load ptr, ptr %skt.addr, align 8, !dbg !7145
  %call70 = call i32 @socket_reset(ptr noundef %49) #12, !dbg !7146
  store i32 %call70, ptr %status, align 4, !dbg !7147
  %50 = load ptr, ptr %skt.addr, align 8, !dbg !7148
  %power_hook71 = getelementptr inbounds %struct.pcmcia_socket, ptr %50, i32 0, i32 27, !dbg !7150
  %51 = load ptr, ptr %power_hook71, align 8, !dbg !7150
  %tobool72 = icmp ne ptr %51, null, !dbg !7148
  br i1 %tobool72, label %if.then73, label %if.end76, !dbg !7151

if.then73:                                        ; preds = %if.end69
  %52 = load ptr, ptr %skt.addr, align 8, !dbg !7152
  %power_hook74 = getelementptr inbounds %struct.pcmcia_socket, ptr %52, i32 0, i32 27, !dbg !7153
  %53 = load ptr, ptr %power_hook74, align 8, !dbg !7153
  %54 = load ptr, ptr %skt.addr, align 8, !dbg !7154
  %call75 = call i32 %53(ptr noundef %54, i32 noundef 2) #12, !dbg !7152
  br label %if.end76, !dbg !7152

if.end76:                                         ; preds = %if.then73, %if.end69
  %55 = load i32, ptr %status, align 4, !dbg !7155
  store i32 %55, ptr %retval, align 4, !dbg !7156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7156

cleanup:                                          ; preds = %if.end76, %do.end67, %do.end45, %do.end24, %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !7157
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !7157
  %56 = load i32, ptr %retval, align 4, !dbg !7157
  ret i32 %56, !dbg !7157
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7158 dso_local i32 @cb_alloc(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @socket_early_resume(ptr noundef %skt) #0 align 16 !dbg !7159 {
entry:
  %skt.addr = alloca ptr, align 8
  store ptr %skt, ptr %skt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skt.addr, metadata !7161, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %skt.addr, align 8, !dbg !7163
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 34, !dbg !7164
  call void @mutex_lock(ptr noundef %ops_mutex) #12, !dbg !7165
  %1 = load ptr, ptr %skt.addr, align 8, !dbg !7166
  %socket = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 1, !dbg !7167
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %socket, ptr align 4 @dead_socket, i64 12, i1 false), !dbg !7168
  %2 = load ptr, ptr %skt.addr, align 8, !dbg !7169
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 23, !dbg !7170
  %3 = load ptr, ptr %ops, align 8, !dbg !7170
  %init = getelementptr inbounds %struct.pccard_operations, ptr %3, i32 0, i32 0, !dbg !7171
  %4 = load ptr, ptr %init, align 8, !dbg !7171
  %5 = load ptr, ptr %skt.addr, align 8, !dbg !7172
  %call = call i32 %4(ptr noundef %5) #12, !dbg !7169
  %6 = load ptr, ptr %skt.addr, align 8, !dbg !7173
  %ops1 = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 23, !dbg !7174
  %7 = load ptr, ptr %ops1, align 8, !dbg !7174
  %set_socket = getelementptr inbounds %struct.pccard_operations, ptr %7, i32 0, i32 3, !dbg !7175
  %8 = load ptr, ptr %set_socket, align 8, !dbg !7175
  %9 = load ptr, ptr %skt.addr, align 8, !dbg !7176
  %10 = load ptr, ptr %skt.addr, align 8, !dbg !7177
  %socket2 = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 1, !dbg !7178
  %call3 = call i32 %8(ptr noundef %9, ptr noundef %socket2) #12, !dbg !7173
  %11 = load ptr, ptr %skt.addr, align 8, !dbg !7179
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 2, !dbg !7181
  %12 = load i32, ptr %state, align 4, !dbg !7181
  %and = and i32 %12, 8, !dbg !7182
  %tobool = icmp ne i32 %and, 0, !dbg !7182
  br i1 %tobool, label %if.then, label %if.end, !dbg !7183

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %skt.addr, align 8, !dbg !7184
  %14 = load i32, ptr @resume_delay, align 4, !dbg !7185
  %call4 = call i32 @socket_setup(ptr noundef %13, i32 noundef %14) #12, !dbg !7186
  %15 = load ptr, ptr %skt.addr, align 8, !dbg !7187
  %resume_status = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 44, !dbg !7188
  store i32 %call4, ptr %resume_status, align 8, !dbg !7189
  br label %if.end, !dbg !7187

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %skt.addr, align 8, !dbg !7190
  %state5 = getelementptr inbounds %struct.pcmcia_socket, ptr %16, i32 0, i32 2, !dbg !7191
  %17 = load i32, ptr %state5, align 4, !dbg !7192
  %or = or i32 %17, 64, !dbg !7192
  store i32 %or, ptr %state5, align 4, !dbg !7192
  %18 = load ptr, ptr %skt.addr, align 8, !dbg !7193
  %ops_mutex6 = getelementptr inbounds %struct.pcmcia_socket, ptr %18, i32 0, i32 34, !dbg !7194
  call void @mutex_unlock(ptr noundef %ops_mutex6) #12, !dbg !7195
  ret i32 0, !dbg !7196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7197 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7202, metadata !DIExpression()), !dbg !7204
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7203, metadata !DIExpression()), !dbg !7205
  ret i1 true, !dbg !7206
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7207 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7212, metadata !DIExpression()), !dbg !7215
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7213, metadata !DIExpression()), !dbg !7216
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7214, metadata !DIExpression()), !dbg !7217
  ret void, !dbg !7218
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !5284 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !7219
  %0 = load ptr, ptr %tmp, align 8, !dbg !7219
  %call = call i32 %0() #12, !dbg !7221
  ret void, !dbg !7222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @freezing(ptr noundef %p) #4 align 16 !dbg !7223 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7227, metadata !DIExpression()), !dbg !7231
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #11, !dbg !7232
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7228, metadata !DIExpression()), !dbg !7232
  %call = call zeroext i1 @arch_static_branch(ptr noundef @freezer_active, i1 noundef zeroext false) #12, !dbg !7233
  %frombool = zext i1 %call to i8, !dbg !7233
  store i8 %frombool, ptr %branch, align 1, !dbg !7233
  %0 = load i8, ptr %branch, align 1, !dbg !7232, !range !7236, !noundef !537
  %tobool = trunc i8 %0 to i1, !dbg !7232
  %lnot = xor i1 %tobool, true, !dbg !7232
  %lnot1 = xor i1 %lnot, true, !dbg !7232
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7232
  %conv = sext i32 %lnot.ext to i64, !dbg !7232
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7232
  store i64 %expval, ptr %tmp, align 8, !dbg !7237
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #11, !dbg !7238
  %1 = load i64, ptr %tmp, align 8, !dbg !7232
  %tobool2 = icmp ne i64 %1, 0, !dbg !7238
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7239

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7240
  %call3 = call zeroext i1 @freezing_slow_path(ptr noundef %2) #12, !dbg !7241
  store i1 %call3, ptr %retval, align 1, !dbg !7242
  br label %return, !dbg !7242

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7243
  br label %return, !dbg !7243

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !7244
  ret i1 %3, !dbg !7244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_check_no_locks_held() #4 align 16 !dbg !7245 {
entry:
  ret void, !dbg !7247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7248 dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !7251 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7268, metadata !DIExpression()), !dbg !7271
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7269, metadata !DIExpression()), !dbg !7272
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7273
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7274, !range !7236, !noundef !537
  %tobool = trunc i8 %1 to i1, !dbg !7274
  %conv = zext i1 %tobool to i32, !dbg !7274
  %or = or i32 2, %conv, !dbg !7275
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !7276, !srcloc !7277

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7278
  br label %return, !dbg !7278

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7270), !dbg !7279
  store i1 true, ptr %retval, align 1, !dbg !7280
  br label %return, !dbg !7280

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7281
  ret i1 %2, !dbg !7281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7282 dso_local zeroext i1 @freezing_slow_path(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7283 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7286 dso_local void @__bad_udelay() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7288 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7291 dso_local void @__udelay(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7292 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcmcia_socket_dev_suspend_noirq(ptr noundef %dev) #0 align 16 !dbg !7295 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7297, metadata !DIExpression()), !dbg !7298
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7299
  %call = call i32 @__pcmcia_pm_op(ptr noundef %0, ptr noundef @socket_suspend) #12, !dbg !7300
  ret i32 %call, !dbg !7301
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcmcia_socket_dev_resume_noirq(ptr noundef %dev) #0 align 16 !dbg !7302 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7304, metadata !DIExpression()), !dbg !7305
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7306
  %call = call i32 @__pcmcia_pm_op(ptr noundef %0, ptr noundef @socket_early_resume) #12, !dbg !7307
  ret i32 %call, !dbg !7308
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7309 dso_local i32 @class_register(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306}
!llvm.ident = !{!5307}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author292", scope: !2, file: !3, line: 40, type: !5296, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pcmcia/.cs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pcmcia/pcmcia_core\22 -D KBUILD_BASENAME=\22cs\22 -D KBUILD_MODNAME=\22pcmcia_core\22 -D __KBUILD_MODNAME=kmod_pcmcia_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pcmcia/cs.ll drivers/pcmcia/cs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !5024, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pcmcia/cs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c713bd08d707a3fd46d082a2d7fe7dc4")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !{!147, !324, !4094, !5017, !5020, !302, !288, !5021, !5023, !961}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !149)
!149 = !{!150, !151, !158, !163, !3770, !3796, !3797, !3798, !3799, !3803, !3806, !3807, !3808, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3875, !3879, !3897, !3914, !3915, !3916, !3917, !3926, !3949, !3950, !3953, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3967, !3968, !4054, !4062, !4063, !4064, !4066, !4070, !4071, !4075, !4076, !4077, !4078, !4080, !4081, !4082, !4089, !4090, !4091, !4093}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !148, file: !6, line: 403, baseType: !5, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !6, line: 406, baseType: !152, size: 128, offset: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !153, line: 190, size: 128, elements: !154)
!153 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !153, line: 191, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !153, line: 191, baseType: !156, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !6, line: 409, baseType: !159, size: 448, offset: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 448, elements: !161)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !{!162}
!162 = !DISubrange(count: 56)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !148, file: !6, line: 417, baseType: !164, size: 768, offset: 640)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !165)
!165 = !{!166, !3764, !3765, !3766, !3769}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !164, file: !6, line: 46, baseType: !167, size: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !168, line: 64, size: 512, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!169 = !{!170, !173, !174, !176, !265, !3651, !3754, !3759, !3760, !3761, !3762, !3763}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 65, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !167, file: !168, line: 66, baseType: !152, size: 128, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !168, line: 67, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !167, file: !168, line: 68, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !168, line: 168, size: 768, elements: !179)
!179 = !{!180, !181, !224, !225}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !178, file: !168, line: 169, baseType: !152, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !178, file: !168, line: 170, baseType: !182, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !183, line: 29, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !183, line: 17, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !183, line: 18, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !183, line: 18, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !187, file: !183, line: 19, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !191, line: 14, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !190, file: !191, line: 15, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !195, line: 44, baseType: !196)
!195 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !195, line: 14, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 15, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 15, size: 32, elements: !200)
!200 = !{!201, !206, !216}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !195, line: 16, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !153, line: 174, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 172, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !203, file: !153, line: 173, baseType: !109, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 24, baseType: !207, size: 16)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 24, size: 16, elements: !208)
!208 = !{!209, !215}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !207, file: !195, line: 25, baseType: !210, size: 8)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !211, line: 17, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !213, line: 21, baseType: !214)
!213 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!214 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !207, file: !195, line: 26, baseType: !210, size: 8, offset: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 28, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 28, size: 32, elements: !218)
!218 = !{!219, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !217, file: !195, line: 29, baseType: !220, size: 16)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !211, line: 19, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !213, line: 24, baseType: !222)
!222 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !217, file: !195, line: 30, baseType: !220, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !178, file: !168, line: 171, baseType: !167, size: 512, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !178, file: !168, line: 172, baseType: !226, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !168, line: 133, size: 192, elements: !229)
!229 = !{!230, !237, !242}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !228, file: !168, line: 134, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!109, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !168, line: 135, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!171, !235}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !168, line: 136, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!109, !235, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !168, line: 125, size: 20736, elements: !249)
!249 = !{!250, !255, !259, !260, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !248, file: !168, line: 126, baseType: !251, size: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 192, elements: !253)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!253 = !{!254}
!254 = !DISubrange(count: 3)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !248, file: !168, line: 127, baseType: !256, size: 4096, offset: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 4096, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !248, file: !168, line: 128, baseType: !109, size: 32, offset: 4288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !168, line: 129, baseType: !261, size: 16384, offset: 4320)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 16384, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 2048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !248, file: !168, line: 130, baseType: !109, size: 32, offset: 20704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !167, file: !168, line: 69, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !168, line: 116, size: 384, elements: !269)
!269 = !{!270, !274, !303, !3613, !3641, !3645}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !268, file: !168, line: 117, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !175}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !268, file: !168, line: 118, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !278, line: 254, size: 128, elements: !279)
!278 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!279 = !{!280, !295}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !277, file: !278, line: 255, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !175, !289, !252}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !153, line: 66, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !286, line: 73, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !286, line: 15, baseType: !288)
!288 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !278, line: 30, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !278, line: 31, baseType: !171, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !290, file: !278, line: 32, baseType: !294, size: 16, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !153, line: 24, baseType: !222)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !277, file: !278, line: 256, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!284, !175, !289, !171, !299}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 61, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !286, line: 72, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !286, line: 16, baseType: !302)
!302 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !268, file: !168, line: 119, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !278, line: 84, size: 320, elements: !308)
!308 = !{!309, !310, !314, !3609, !3611}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !278, line: 85, baseType: !171, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !307, file: !278, line: 86, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!294, !175, !289, !109}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !307, file: !278, line: 88, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!294, !175, !318, !109}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !278, line: 175, size: 512, elements: !320)
!320 = !{!321, !322, !323, !325, !3600, !3604, !3605}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !319, file: !278, line: 176, baseType: !290, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !278, line: 177, baseType: !299, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !319, file: !278, line: 178, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !319, file: !278, line: 179, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !331)
!331 = !{!332, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3594, !3595, !3596, !3597, !3598, !3599}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !330, file: !14, line: 473, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !335)
!335 = !{!336, !337, !338, !346, !347, !354, !355, !358, !359, !3373, !3374, !3375, !3376, !3377, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3417, !3420, !3421, !3422, !3431, !3432, !3433, !3434}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !334, file: !14, line: 642, baseType: !294, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !334, file: !14, line: 643, baseType: !222, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !334, file: !14, line: 644, baseType: !339, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !340, line: 23, baseType: !341)
!340 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 21, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !340, line: 22, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !153, line: 37, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !286, line: 49, baseType: !7)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !334, file: !14, line: 645, baseType: !152, size: 128, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !334, file: !14, line: 646, baseType: !348, size: 32, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !340, line: 28, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 26, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !349, file: !340, line: 27, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !153, line: 38, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !286, line: 50, baseType: !7)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !334, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !334, file: !14, line: 650, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !334, file: !14, line: 651, baseType: !356, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !334, file: !14, line: 654, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !363)
!363 = !{!364, !3198, !3211, !3215, !3219, !3223, !3227, !3231, !3235, !3239, !3243, !3244, !3248, !3252, !3289, !3318, !3322, !3328, !3332, !3336, !3340, !3344, !3348, !3354, !3358}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !362, file: !14, line: 1967, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !333, !368, !7}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !370, line: 82, size: 1536, elements: !371)
!370 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!371 = !{!372, !373, !383, !391, !392, !412, !413, !417, !430, !3181, !3182, !3183, !3184, !3190, !3191, !3192}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !369, file: !370, line: 84, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !369, file: !370, line: 85, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !375, line: 275, baseType: !376)
!375 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !375, line: 275, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !376, file: !375, line: 275, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !375, line: 69, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !375, line: 64, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !380, file: !375, line: 65, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !369, file: !370, line: 86, baseType: !384, size: 128, offset: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !385, line: 38, size: 128, elements: !386)
!385 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 39, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !384, file: !385, line: 39, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !369, file: !370, line: 87, baseType: !368, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !369, file: !370, line: 88, baseType: !393, size: 128, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !370, line: 49, size: 128, elements: !394)
!394 = !{!395, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !370, line: 50, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !370, line: 50, size: 64, elements: !397)
!397 = !{!398, !405}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !370, line: 51, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !370, line: 51, size: 64, elements: !400)
!400 = !{!401, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !399, file: !370, line: 52, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !211, line: 21, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !213, line: 27, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !399, file: !370, line: 52, baseType: !402, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !396, file: !370, line: 54, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !211, line: 23, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !213, line: 31, baseType: !408)
!408 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !370, line: 56, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !369, file: !370, line: 89, baseType: !333, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !369, file: !370, line: 91, baseType: !414, size: 256, offset: 448)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !369, file: !370, line: 94, baseType: !418, size: 64, offset: 704)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !419, line: 25, size: 64, elements: !420)
!419 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !419, line: 26, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !419, line: 26, size: 64, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !422, file: !419, line: 28, baseType: !407, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 30, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !419, line: 30, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !419, line: 31, baseType: !182, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !426, file: !419, line: 32, baseType: !109, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !369, file: !370, line: 95, baseType: !431, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !370, line: 128, size: 1024, align: 512, elements: !434)
!434 = !{!435, !439, !440, !447, !453, !457, !461, !465, !466, !470, !474, !3171, !3175}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !433, file: !370, line: 129, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!109, !368, !7}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !433, file: !370, line: 130, baseType: !436, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !433, file: !370, line: 131, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!109, !444, !446}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !433, file: !370, line: 132, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!109, !444, !7, !171, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !433, file: !370, line: 134, baseType: !454, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!109, !444}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !433, file: !370, line: 135, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !368}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !433, file: !370, line: 136, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !368}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !433, file: !370, line: 137, baseType: !462, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !433, file: !370, line: 138, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !368, !333}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !433, file: !370, line: 139, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!252, !368, !252, !109}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !433, file: !370, line: 140, baseType: !475, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !3170}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !480, line: 70, size: 256, elements: !481)
!480 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!481 = !{!482, !483, !3166, !3167}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !479, file: !480, line: 71, baseType: !368, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !479, file: !480, line: 72, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !486)
!486 = !{!487, !488, !491, !492, !493, !497, !546, !707, !747, !837, !841, !842, !843, !844, !845, !854, !855, !856, !857, !862, !866, !867, !870, !873, !876, !879, !880, !881, !922, !3097, !3098, !3099, !3100, !3101, !3102, !3105, !3107, !3114, !3115, !3116, !3117, !3118, !3133, !3134, !3135, !3136, !3137, !3140, !3141, !3142, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !485, file: !14, line: 1191, baseType: !152, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !485, file: !14, line: 1192, baseType: !489, size: 32, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !153, line: 21, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !153, line: 18, baseType: !402)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !485, file: !14, line: 1193, baseType: !214, size: 8, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !485, file: !14, line: 1194, baseType: !302, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !485, file: !14, line: 1195, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !153, line: 52, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !286, line: 88, baseType: !496)
!496 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !485, file: !14, line: 1196, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !500)
!500 = !{!501, !502, !503, !510, !514, !518, !522, !523, !524, !534, !538, !539, !540, !542, !543, !544, !545}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !14, line: 2367, baseType: !171, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !499, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !499, file: !14, line: 2376, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!109, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !509, line: 32, flags: DIFlagFwdDecl)
!509 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!510 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !499, file: !14, line: 2377, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !499, file: !14, line: 2378, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!368, !498, !109, !171, !324}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !499, file: !14, line: 2380, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !484}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !499, file: !14, line: 2381, baseType: !147, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !14, line: 2382, baseType: !498, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !499, file: !14, line: 2383, baseType: !525, size: 64, offset: 512)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !153, line: 194, size: 64, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !525, file: !153, line: 195, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !153, line: 198, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !153, line: 199, baseType: !528, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !529, file: !153, line: 199, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !499, file: !14, line: 2385, baseType: !535, offset: 576)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !536, line: 206, elements: !537)
!536 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!537 = !{}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !499, file: !14, line: 2386, baseType: !535, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !499, file: !14, line: 2387, baseType: !535, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !499, file: !14, line: 2388, baseType: !541, offset: 576)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, elements: !253)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !499, file: !14, line: 2390, baseType: !535, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !499, file: !14, line: 2391, baseType: !535, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !499, file: !14, line: 2392, baseType: !535, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !499, file: !14, line: 2393, baseType: !535, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !485, file: !14, line: 1197, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !550)
!550 = !{!551, !555, !559, !560, !564, !570, !574, !575, !576, !580, !584, !588, !589, !590, !596, !601, !602, !609, !610, !611, !612, !616, !620, !689, !705, !706}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !549, file: !14, line: 2058, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!333, !484}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !549, file: !14, line: 2059, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !333}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !549, file: !14, line: 2060, baseType: !556, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !549, file: !14, line: 2062, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !333, !109}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !549, file: !14, line: 2063, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!109, !333, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !549, file: !14, line: 2064, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!109, !333}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !549, file: !14, line: 2065, baseType: !556, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !549, file: !14, line: 2066, baseType: !519, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !549, file: !14, line: 2067, baseType: !577, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!109, !484, !109}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !549, file: !14, line: 2068, baseType: !581, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!109, !484, !13}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !549, file: !14, line: 2069, baseType: !585, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!109, !484}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !549, file: !14, line: 2070, baseType: !581, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !549, file: !14, line: 2071, baseType: !585, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !549, file: !14, line: 2072, baseType: !591, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !368, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !549, file: !14, line: 2073, baseType: !597, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!109, !484, !600, !252}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !549, file: !14, line: 2074, baseType: !519, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !549, file: !14, line: 2076, baseType: !603, size: 64, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!109, !606, !368}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !608, line: 66, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !549, file: !14, line: 2077, baseType: !603, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !549, file: !14, line: 2078, baseType: !603, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !549, file: !14, line: 2079, baseType: !603, size: 64, offset: 1216)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !549, file: !14, line: 2081, baseType: !613, size: 64, offset: 1280)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!284, !484, !109, !252, !299, !494}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !549, file: !14, line: 2082, baseType: !617, size: 64, offset: 1344)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!284, !484, !109, !171, !299, !494}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !549, file: !14, line: 2083, baseType: !621, size: 64, offset: 1408)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !333}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !653, !654, !655, !656, !672, !673, !674}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !626, file: !19, line: 297, baseType: !529, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !626, file: !19, line: 298, baseType: !152, size: 128, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !626, file: !19, line: 299, baseType: !152, size: 128, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !626, file: !19, line: 300, baseType: !152, size: 128, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !626, file: !19, line: 301, baseType: !633, size: 256, offset: 512)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !634, line: 66, size: 256, elements: !635)
!634 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!635 = !{!636, !645, !647, !652}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !634, line: 67, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !638, line: 13, baseType: !639)
!638 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !153, line: 181, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 179, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !640, file: !153, line: 180, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !211, line: 22, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !213, line: 30, baseType: !496)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !633, file: !634, line: 68, baseType: !646, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !191, line: 23, baseType: !190)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !633, file: !634, line: 70, baseType: !648, size: 32, offset: 96)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !649, line: 15, size: 32, elements: !650)
!649 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !648, file: !649, line: 20, baseType: !202, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !633, file: !634, line: 72, baseType: !152, size: 128, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !626, file: !19, line: 302, baseType: !182, size: 32, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !626, file: !19, line: 303, baseType: !202, size: 32, offset: 800)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !626, file: !19, line: 304, baseType: !484, size: 64, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !626, file: !19, line: 305, baseType: !657, size: 64, offset: 896)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !658)
!658 = !{!659, !671}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !19, line: 69, baseType: !660, size: 32)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !19, line: 69, size: 32, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !19, line: 70, baseType: !339, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !660, file: !19, line: 71, baseType: !348, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !660, file: !19, line: 72, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !666, line: 24, baseType: !667)
!666 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 22, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !667, file: !666, line: 23, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !666, line: 20, baseType: !345)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !626, file: !19, line: 306, baseType: !494, size: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !626, file: !19, line: 307, baseType: !302, size: 64, offset: 1024)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !626, file: !19, line: 308, baseType: !675, size: 576, offset: 1088)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !676)
!676 = !{!677, !679, !680, !681, !682, !683, !684, !685, !688}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !675, file: !19, line: 206, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !496)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !675, file: !19, line: 207, baseType: !678, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !675, file: !19, line: 208, baseType: !678, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !675, file: !19, line: 209, baseType: !678, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !675, file: !19, line: 210, baseType: !678, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !675, file: !19, line: 211, baseType: !678, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !675, file: !19, line: 212, baseType: !678, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !675, file: !19, line: 213, baseType: !686, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !687, line: 8, baseType: !644)
!687 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !675, file: !19, line: 214, baseType: !686, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !549, file: !14, line: 2085, baseType: !690, size: 64, offset: 1472)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!288, !484, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !695, line: 15, size: 256, elements: !696)
!695 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!696 = !{!697, !699, !700, !701, !702}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !694, file: !695, line: 16, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !153, line: 154, baseType: !7)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !694, file: !695, line: 19, baseType: !109, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !694, file: !695, line: 26, baseType: !302, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !694, file: !695, line: 33, baseType: !302, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !694, file: !695, line: 36, baseType: !703, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !549, file: !14, line: 2087, baseType: !690, size: 64, offset: 1536)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !549, file: !14, line: 2089, baseType: !519, size: 64, offset: 1600)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !485, file: !14, line: 1198, baseType: !708, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !711)
!711 = !{!712, !716, !720, !724, !725, !726, !727, !728, !733, !738, !742}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !710, file: !19, line: 325, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!109, !625}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !710, file: !19, line: 326, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!625, !484, !109}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !710, file: !19, line: 327, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !625}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !710, file: !19, line: 328, baseType: !713, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !710, file: !19, line: 329, baseType: !713, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !710, file: !19, line: 330, baseType: !713, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !710, file: !19, line: 331, baseType: !577, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !710, file: !19, line: 334, baseType: !729, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!732, !333}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !710, file: !19, line: 335, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!109, !333, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !710, file: !19, line: 337, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109, !333, !732}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !710, file: !19, line: 339, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!109, !484, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !485, file: !14, line: 1199, baseType: !748, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !751)
!751 = !{!752, !763, !764, !768, !769, !770, !785, !808, !812, !813, !836}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !750, file: !19, line: 431, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!109, !484, !109, !109, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !759, line: 8, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !758, file: !759, line: 9, baseType: !478, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !758, file: !759, line: 10, baseType: !368, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !750, file: !19, line: 432, baseType: !577, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !750, file: !19, line: 433, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!109, !484, !7}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !750, file: !19, line: 434, baseType: !765, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !750, file: !19, line: 435, baseType: !577, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !750, file: !19, line: 436, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!109, !484, !109, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !775, file: !19, line: 418, baseType: !109, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !775, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !775, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !775, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !775, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !775, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !775, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !775, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !750, file: !19, line: 437, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!109, !484, !657, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !790, file: !19, line: 346, baseType: !109, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !790, file: !19, line: 347, baseType: !406, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !790, file: !19, line: 348, baseType: !406, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !790, file: !19, line: 349, baseType: !406, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !790, file: !19, line: 350, baseType: !406, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !790, file: !19, line: 351, baseType: !406, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !790, file: !19, line: 352, baseType: !406, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !790, file: !19, line: 353, baseType: !643, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !790, file: !19, line: 355, baseType: !643, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !790, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !790, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !790, file: !19, line: 358, baseType: !406, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !790, file: !19, line: 359, baseType: !406, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !790, file: !19, line: 360, baseType: !406, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !790, file: !19, line: 361, baseType: !643, size: 64, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !790, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !750, file: !19, line: 438, baseType: !809, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!109, !484, !746, !789}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !750, file: !19, line: 440, baseType: !786, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !750, file: !19, line: 441, baseType: !814, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!109, !484, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !818, file: !19, line: 412, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !818, file: !19, line: 413, baseType: !822, size: 1344, offset: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 1344, elements: !253)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !19, line: 398, baseType: !7, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !823, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !823, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !823, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !823, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !823, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !823, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !823, file: !19, line: 406, baseType: !408, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !823, file: !19, line: 407, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !153, line: 132, baseType: !406)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !823, file: !19, line: 408, baseType: !834, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !750, file: !19, line: 442, baseType: !765, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !485, file: !14, line: 1200, baseType: !838, size: 64, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !485, file: !14, line: 1201, baseType: !302, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !485, file: !14, line: 1202, baseType: !302, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !485, file: !14, line: 1203, baseType: !302, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !485, file: !14, line: 1204, baseType: !368, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !485, file: !14, line: 1205, baseType: !846, size: 320, offset: 896)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !847, line: 48, size: 320, elements: !848)
!847 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !846, file: !847, line: 49, baseType: !637, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !846, file: !847, line: 55, baseType: !637, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !846, file: !847, line: 57, baseType: !648, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !846, file: !847, line: 59, baseType: !646, size: 32, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !846, file: !847, line: 60, baseType: !152, size: 128, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !485, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !485, file: !14, line: 1207, baseType: !202, size: 32, offset: 1248)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !485, file: !14, line: 1209, baseType: !324, size: 64, offset: 1280)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !485, file: !14, line: 1211, baseType: !858, size: 64, offset: 1344)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !485, file: !14, line: 1223, baseType: !863, size: 64, offset: 1408)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !385, line: 34, size: 64, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !863, file: !385, line: 35, baseType: !388, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !485, file: !14, line: 1224, baseType: !152, size: 128, offset: 1472)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !485, file: !14, line: 1225, baseType: !868, size: 64, offset: 1600)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !485, file: !14, line: 1226, baseType: !871, size: 64, offset: 1664)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !485, file: !14, line: 1227, baseType: !874, size: 64, offset: 1728)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !485, file: !14, line: 1228, baseType: !877, size: 64, offset: 1792)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !485, file: !14, line: 1229, baseType: !529, size: 128, offset: 1856)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !485, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !485, file: !14, line: 1231, baseType: !882, size: 2496, offset: 2048)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !883)
!883 = !{!884, !885, !886, !888, !920}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !19, line: 522, baseType: !7, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !882, file: !19, line: 523, baseType: !846, size: 320, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !882, file: !19, line: 524, baseType: !887, size: 192, offset: 384)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !253)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !882, file: !19, line: 525, baseType: !889, size: 1728, offset: 576)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 1728, elements: !253)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !891)
!891 = !{!892, !912, !913, !914, !915, !916, !917, !918, !919}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !890, file: !19, line: 223, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !895)
!895 = !{!896, !897, !910, !911}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !894, file: !19, line: 446, baseType: !109, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !894, file: !19, line: 447, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !900, file: !19, line: 313, baseType: !577, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !900, file: !19, line: 314, baseType: !577, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !900, file: !19, line: 315, baseType: !577, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !900, file: !19, line: 316, baseType: !577, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !900, file: !19, line: 317, baseType: !713, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !900, file: !19, line: 318, baseType: !713, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !900, file: !19, line: 319, baseType: !713, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !900, file: !19, line: 320, baseType: !743, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !894, file: !19, line: 448, baseType: !147, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !894, file: !19, line: 449, baseType: !893, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !890, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !890, file: !19, line: 226, baseType: !152, size: 128, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !890, file: !19, line: 227, baseType: !302, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !890, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !890, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !890, file: !19, line: 230, baseType: !678, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !890, file: !19, line: 231, baseType: !678, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !890, file: !19, line: 232, baseType: !324, size: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !882, file: !19, line: 526, baseType: !921, size: 192, offset: 2304)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 192, elements: !253)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !485, file: !14, line: 1233, baseType: !923, size: 2368, offset: 4544)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !923, file: !14, line: 1185, baseType: !222, size: 16)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !923, file: !14, line: 1186, baseType: !222, size: 16, offset: 16)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !923, file: !14, line: 1187, baseType: !928, size: 2304, offset: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 2304, elements: !253)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !930, line: 12, size: 768, elements: !931)
!930 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!931 = !{!932, !954, !956, !3095, !3096}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !929, file: !930, line: 13, baseType: !933, size: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !934, line: 17, size: 384, elements: !935)
!934 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!935 = !{!936, !937, !938, !945}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !933, file: !934, line: 18, baseType: !109, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !933, file: !934, line: 19, baseType: !109, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !933, file: !934, line: 20, baseType: !939, size: 192, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !940, line: 41, baseType: !941)
!940 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !940, line: 37, size: 192, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !940, line: 38, baseType: !182, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !941, file: !940, line: 39, baseType: !152, size: 128, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !933, file: !934, line: 22, baseType: !946, size: 128, align: 64, offset: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !153, line: 232, size: 128, align: 64, elements: !947)
!947 = !{!948, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !153, line: 233, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !946, file: !153, line: 234, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !949}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !929, file: !930, line: 14, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !929, file: !930, line: 15, baseType: !957, size: 64, offset: 448)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !958, line: 16, size: 64, elements: !959)
!958 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !957, file: !958, line: 17, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !608, line: 746, size: 58368, elements: !963)
!963 = !{!964, !972, !973, !974, !980, !981, !982, !983, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1061, !1072, !1167, !1171, !1174, !1205, !1206, !1207, !1208, !1219, !1221, !1222, !1223, !1224, !1225, !1226, !1237, !1238, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1255, !1256, !1263, !1264, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2252, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2267, !2268, !2269, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2301, !2307, !2308, !2309, !2310, !2311, !2315, !2318, !2325, !2330, !2333, !2336, !2339, !2343, !2483, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2523, !2524, !2525, !2534, !2542, !2543, !2544, !2545, !2546, !2551, !2552, !2553, !2556, !2557, !2560, !2563, !2566, !2574, !2577, !2578, !2664, !2665, !2666, !2667, !2668, !2674, !2675, !2676, !2677, !2680, !2681, !2684, !2687, !2688, !2691, !2692, !2693, !2696, !2697, !2698, !2699, !2700, !2701, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2733, !2734, !2740, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2752, !2824, !2826, !2827, !2828, !2829, !2830, !2842, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2872, !2873, !2874}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !962, file: !608, line: 752, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !966, line: 56, size: 192, elements: !967)
!966 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !966, line: 57, baseType: !302, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !965, file: !966, line: 58, baseType: !302, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !965, file: !966, line: 59, baseType: !402, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !965, file: !966, line: 61, baseType: !402, size: 32, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !962, file: !608, line: 754, baseType: !7, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !962, file: !608, line: 767, baseType: !324, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !962, file: !608, line: 768, baseType: !975, size: 32, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !976, line: 113, baseType: !977)
!976 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !976, line: 111, size: 32, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !977, file: !976, line: 112, baseType: !202, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !608, line: 770, baseType: !7, size: 32, offset: 352)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !962, file: !608, line: 771, baseType: !7, size: 32, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !962, file: !608, line: 774, baseType: !109, size: 32, offset: 416)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !962, file: !608, line: 775, baseType: !984, size: 128, offset: 448)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !985, line: 58, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!986 = !{!987, !993, !998, !999}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !984, file: !985, line: 59, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !989, line: 60, size: 64, elements: !990)
!989 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !988, file: !989, line: 61, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !985, line: 60, baseType: !994, size: 32, offset: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !985, line: 60, size: 32, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !994, file: !985, line: 61, baseType: !7, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !994, file: !985, line: 62, baseType: !202, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !984, file: !985, line: 65, baseType: !220, size: 16, offset: 96)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !984, file: !985, line: 65, baseType: !220, size: 16, offset: 112)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !962, file: !608, line: 776, baseType: !7, size: 32, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !962, file: !608, line: 777, baseType: !302, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !962, file: !608, line: 778, baseType: !961, size: 64, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !962, file: !608, line: 787, baseType: !109, size: 32, offset: 768)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !962, file: !608, line: 788, baseType: !109, size: 32, offset: 800)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !962, file: !608, line: 790, baseType: !109, size: 32, offset: 832)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !962, file: !608, line: 792, baseType: !109, size: 32, offset: 864)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !962, file: !608, line: 793, baseType: !109, size: 32, offset: 896)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !962, file: !608, line: 794, baseType: !109, size: 32, offset: 928)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !962, file: !608, line: 795, baseType: !7, size: 32, offset: 960)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !962, file: !608, line: 797, baseType: !1011, size: 2048, offset: 1024)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !608, line: 551, size: 2048, elements: !1012)
!1012 = !{!1013, !1018, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1040, !1043, !1044, !1045}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1011, file: !608, line: 553, baseType: !1014, size: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !608, line: 411, size: 128, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1014, file: !608, line: 412, baseType: !302, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1014, file: !608, line: 413, baseType: !402, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1011, file: !608, line: 554, baseType: !1019, size: 192, align: 64, offset: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1020, line: 5, size: 192, align: 64, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1021 = !{!1022, !1023, !1025}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1019, file: !1020, line: 6, baseType: !302, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1019, file: !1020, line: 7, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1019, file: !1020, line: 8, baseType: !1024, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1011, file: !608, line: 555, baseType: !406, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1011, file: !608, line: 556, baseType: !406, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1011, file: !608, line: 558, baseType: !152, size: 128, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1011, file: !608, line: 559, baseType: !7, size: 32, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1011, file: !608, line: 561, baseType: !406, size: 64, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1011, file: !608, line: 562, baseType: !406, size: 64, offset: 704)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1011, file: !608, line: 563, baseType: !406, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1011, file: !608, line: 564, baseType: !406, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1011, file: !608, line: 565, baseType: !643, size: 64, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1011, file: !608, line: 566, baseType: !406, size: 64, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1011, file: !608, line: 568, baseType: !406, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1011, file: !608, line: 571, baseType: !109, size: 32, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1011, file: !608, line: 572, baseType: !1039, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1011, file: !608, line: 574, baseType: !1041, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !608, line: 49, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1011, file: !608, line: 576, baseType: !1041, size: 64, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1011, file: !608, line: 578, baseType: !302, size: 64, offset: 1344)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1011, file: !608, line: 588, baseType: !1046, size: 512, align: 512, offset: 1536)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !608, line: 497, size: 512, align: 512, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1046, file: !608, line: 498, baseType: !406, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1046, file: !608, line: 499, baseType: !406, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1046, file: !608, line: 500, baseType: !406, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1046, file: !608, line: 501, baseType: !402, size: 32, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1046, file: !608, line: 502, baseType: !402, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1046, file: !608, line: 503, baseType: !302, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1046, file: !608, line: 504, baseType: !302, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1046, file: !608, line: 505, baseType: !302, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1046, file: !608, line: 506, baseType: !1057, size: 64, align: 64, offset: 448)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !608, line: 445, size: 64, align: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1057, file: !608, line: 446, baseType: !7, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1057, file: !608, line: 447, baseType: !7, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !962, file: !608, line: 798, baseType: !1062, size: 384, offset: 3072)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !608, line: 592, size: 384, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1062, file: !608, line: 593, baseType: !152, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1062, file: !608, line: 594, baseType: !302, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1062, file: !608, line: 595, baseType: !302, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1062, file: !608, line: 596, baseType: !7, size: 32, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1062, file: !608, line: 597, baseType: !222, size: 16, offset: 288)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1062, file: !608, line: 598, baseType: !222, size: 16, offset: 304)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1062, file: !608, line: 600, baseType: !1071, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !962, file: !608, line: 799, baseType: !1073, size: 1792, offset: 3456)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !608, line: 610, size: 1792, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1164, !1165}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1073, file: !608, line: 611, baseType: !1019, size: 192, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1073, file: !608, line: 618, baseType: !406, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1073, file: !608, line: 619, baseType: !406, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1073, file: !608, line: 620, baseType: !406, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1073, file: !608, line: 621, baseType: !406, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1073, file: !608, line: 622, baseType: !406, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1073, file: !608, line: 629, baseType: !643, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1073, file: !608, line: 630, baseType: !406, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !608, line: 631, baseType: !7, size: 32, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1073, file: !608, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1073, file: !608, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1073, file: !608, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1073, file: !608, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1073, file: !608, line: 662, baseType: !1089, size: 512, offset: 704)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1090)
!1090 = !{!1091, !1099, !1100, !1105, !1160, !1161, !1162, !1163}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !25, line: 119, baseType: !1092, size: 256)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1093, line: 9, size: 256, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1092, file: !1093, line: 10, baseType: !1019, size: 192, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1092, file: !1093, line: 11, baseType: !1097, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1098, line: 29, baseType: !643)
!1098 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1089, file: !25, line: 120, baseType: !1097, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1089, file: !25, line: 121, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!24, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1089, file: !25, line: 122, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1108)
!1108 = !{!1109, !1134, !1135, !1138, !1143, !1144, !1155, !1159}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1107, file: !25, line: 160, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1111, file: !25, line: 216, baseType: !646, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1111, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1111, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1111, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1111, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1111, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1111, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1111, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1111, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1111, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1111, file: !25, line: 227, baseType: !222, size: 16, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1111, file: !25, line: 228, baseType: !222, size: 16, offset: 208)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1111, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1111, file: !25, line: 235, baseType: !1097, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1111, file: !25, line: 236, baseType: !1104, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1111, file: !25, line: 237, baseType: !1097, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1111, file: !25, line: 238, baseType: !1104, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1111, file: !25, line: 239, baseType: !1131, size: 4096, align: 512, offset: 512)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 4096, align: 512, elements: !1132)
!1132 = !{!1133}
!1133 = !DISubrange(count: 8)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1107, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1107, file: !25, line: 162, baseType: !1136, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !153, line: 32, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !286, line: 96, baseType: !109)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1107, file: !25, line: 163, baseType: !1139, size: 32, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !375, line: 274, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !375, line: 274, size: 32, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1140, file: !375, line: 274, baseType: !379, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1107, file: !25, line: 164, baseType: !1104, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1107, file: !25, line: 165, baseType: !1145, size: 128, offset: 256)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1093, line: 14, size: 128, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1145, file: !1093, line: 15, baseType: !1148, size: 128)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1020, line: 26, size: 128, elements: !1149)
!1149 = !{!1150, !1154}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1148, file: !1020, line: 27, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1020, line: 12, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1151, file: !1020, line: 13, baseType: !1024, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1148, file: !1020, line: 28, baseType: !1024, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1107, file: !25, line: 166, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1097}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1107, file: !25, line: 167, baseType: !1097, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1089, file: !25, line: 123, baseType: !210, size: 8, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1089, file: !25, line: 124, baseType: !210, size: 8, offset: 456)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1089, file: !25, line: 125, baseType: !210, size: 8, offset: 464)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1089, file: !25, line: 126, baseType: !210, size: 8, offset: 472)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1073, file: !608, line: 671, baseType: !1089, size: 512, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1073, file: !608, line: 679, baseType: !1166, size: 64, offset: 1728)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !962, file: !608, line: 800, baseType: !1168, size: 64, offset: 5248)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !608, line: 800, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !962, file: !608, line: 809, baseType: !1172, size: 64, offset: 5312)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !608, line: 70, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !962, file: !608, line: 825, baseType: !1175, size: 2048, align: 512, offset: 5632)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !608, line: 509, size: 2048, align: 512, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1175, file: !608, line: 511, baseType: !406, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1175, file: !608, line: 512, baseType: !406, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1175, file: !608, line: 513, baseType: !406, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1175, file: !608, line: 514, baseType: !406, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1175, file: !608, line: 515, baseType: !406, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1175, file: !608, line: 516, baseType: !406, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1175, file: !608, line: 518, baseType: !406, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1175, file: !608, line: 519, baseType: !406, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1175, file: !608, line: 520, baseType: !643, size: 64, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1175, file: !608, line: 522, baseType: !406, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1175, file: !608, line: 523, baseType: !406, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1175, file: !608, line: 524, baseType: !643, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1175, file: !608, line: 526, baseType: !643, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1175, file: !608, line: 527, baseType: !406, size: 64, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1175, file: !608, line: 529, baseType: !406, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1175, file: !608, line: 530, baseType: !406, size: 64, offset: 960)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1175, file: !608, line: 531, baseType: !406, size: 64, offset: 1024)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1175, file: !608, line: 532, baseType: !406, size: 64, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1175, file: !608, line: 533, baseType: !406, size: 64, offset: 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1175, file: !608, line: 535, baseType: !406, size: 64, offset: 1216)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1175, file: !608, line: 536, baseType: !406, size: 64, offset: 1280)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1175, file: !608, line: 537, baseType: !406, size: 64, offset: 1344)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1175, file: !608, line: 538, baseType: !406, size: 64, offset: 1408)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1175, file: !608, line: 539, baseType: !406, size: 64, offset: 1472)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1175, file: !608, line: 540, baseType: !406, size: 64, offset: 1536)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1175, file: !608, line: 541, baseType: !406, size: 64, offset: 1600)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1175, file: !608, line: 542, baseType: !406, size: 64, offset: 1664)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1175, file: !608, line: 543, baseType: !406, size: 64, offset: 1728)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !962, file: !608, line: 833, baseType: !7, size: 32, offset: 7680)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !962, file: !608, line: 836, baseType: !7, size: 32, offset: 7712)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !962, file: !608, line: 837, baseType: !109, size: 32, offset: 7744)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !962, file: !608, line: 838, baseType: !1209, size: 64, offset: 7808)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1212, line: 19, baseType: !1213)
!1212 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1212, line: 19, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1213, file: !1212, line: 19, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 64, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 1)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !962, file: !608, line: 839, baseType: !1220, size: 64, offset: 7872)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !962, file: !608, line: 840, baseType: !1211, size: 64, offset: 7936)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !962, file: !608, line: 841, baseType: !324, size: 64, offset: 8000)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !962, file: !608, line: 843, baseType: !222, size: 16, offset: 8064)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !962, file: !608, line: 845, baseType: !222, size: 16, offset: 8080)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !962, file: !608, line: 848, baseType: !109, size: 32, offset: 8096)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !962, file: !608, line: 849, baseType: !1227, size: 32, offset: 8128)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !608, line: 718, size: 32, elements: !1228)
!1228 = !{!1229, !1236}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1227, file: !608, line: 724, baseType: !1230, size: 32)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1227, file: !608, line: 719, size: 32, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1230, file: !608, line: 720, baseType: !210, size: 8)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1230, file: !608, line: 721, baseType: !210, size: 8, offset: 8)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1230, file: !608, line: 722, baseType: !210, size: 8, offset: 16)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1230, file: !608, line: 723, baseType: !210, size: 8, offset: 24)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1227, file: !608, line: 725, baseType: !402, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !962, file: !608, line: 850, baseType: !152, size: 128, offset: 8192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !962, file: !608, line: 851, baseType: !1239, size: 64, offset: 8320)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !608, line: 60, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !962, file: !608, line: 855, baseType: !302, size: 64, offset: 8384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !962, file: !608, line: 856, baseType: !210, size: 8, offset: 8448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !962, file: !608, line: 857, baseType: !210, size: 8, offset: 8456)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !962, file: !608, line: 858, baseType: !109, size: 32, offset: 8480)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !962, file: !608, line: 859, baseType: !152, size: 128, offset: 8512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !962, file: !608, line: 860, baseType: !109, size: 32, offset: 8640)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !962, file: !608, line: 861, baseType: !152, size: 128, offset: 8704)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !962, file: !608, line: 873, baseType: !1249, size: 256, offset: 8832)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !608, line: 376, size: 256, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1249, file: !608, line: 381, baseType: !302, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1249, file: !608, line: 384, baseType: !408, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1249, file: !608, line: 389, baseType: !408, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1249, file: !608, line: 392, baseType: !408, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !962, file: !608, line: 875, baseType: !152, size: 128, offset: 9088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !962, file: !608, line: 877, baseType: !1257, size: 320, offset: 9216)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1258, line: 86, size: 320, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1257, file: !1258, line: 87, baseType: !109, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1257, file: !1258, line: 88, baseType: !152, size: 128, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1257, file: !1258, line: 89, baseType: !152, size: 128, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !962, file: !608, line: 878, baseType: !1019, size: 192, align: 64, offset: 9536)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !962, file: !608, line: 881, baseType: !1265, size: 64, offset: 9728)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1267)
!1267 = !{!1268, !2171}
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !38, line: 734, baseType: !1269, size: 10240)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !38, line: 734, size: 10240, elements: !1270)
!1270 = !{!1271, !1275, !1288, !2035, !2036, !2037, !2038, !2039, !2040, !2047, !2048, !2049, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2088, !2090, !2093, !2140, !2141, !2142, !2145, !2146, !2147, !2150, !2151, !2152, !2158, !2159}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !38, line: 739, baseType: !1272, size: 512, align: 512)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !38, line: 739, size: 512, align: 512, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1272, file: !38, line: 747, baseType: !202, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1269, file: !38, line: 750, baseType: !1276, size: 128, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1277, line: 218, size: 128, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1278 = !{!1279, !1286, !1287}
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !1277, line: 219, baseType: !1280, size: 32)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !1277, line: 219, size: 32, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1280, file: !1277, line: 220, baseType: !182, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1280, file: !1277, line: 221, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1277, line: 197, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 197, elements: !537)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1276, file: !1277, line: 223, baseType: !7, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1276, file: !1277, line: 224, baseType: !324, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1269, file: !38, line: 752, baseType: !1289, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!302, !1292, !302, !302, !302, !302}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1294)
!1294 = !{!1295, !1301, !1302, !1304, !1305, !1306, !1307, !1308, !1360, !1555, !1564, !1565, !1566, !2025, !2026, !2027, !2028, !2030, !2031, !2034}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !14, line: 995, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !14, line: 995, size: 128, elements: !1297)
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1296, file: !14, line: 996, baseType: !988, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1296, file: !14, line: 997, baseType: !946, size: 128, align: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1296, file: !14, line: 998, baseType: !7, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1293, file: !14, line: 1005, baseType: !182, size: 32, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1293, file: !14, line: 1006, baseType: !1303, size: 32, offset: 160)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !153, line: 156, baseType: !7)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1293, file: !14, line: 1007, baseType: !637, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1293, file: !14, line: 1008, baseType: !633, size: 256, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1293, file: !14, line: 1009, baseType: !494, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1293, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1293, file: !14, line: 1011, baseType: !1309, size: 256, offset: 640)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1310)
!1310 = !{!1311, !1332, !1356, !1357, !1358, !1359}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1309, file: !14, line: 949, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1313, line: 34, baseType: !1314)
!1313 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1313, line: 25, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1314, file: !1313, line: 26, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1318, line: 27, baseType: !1319)
!1318 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1318, line: 13, size: 64, elements: !1320)
!1320 = !{!1321, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1318, line: 14, baseType: !1322, size: 32)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !1318, line: 14, size: 32, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1322, file: !1318, line: 15, baseType: !202, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1318, line: 16, baseType: !1326, size: 32)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1322, file: !1318, line: 16, size: 32, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1326, file: !1318, line: 18, baseType: !210, size: 8)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1326, file: !1318, line: 19, baseType: !1330, size: 24, offset: 8)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 24, elements: !253)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1319, file: !1318, line: 26, baseType: !194, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1309, file: !14, line: 950, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1343, !1344, !1345, !1346}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1334, file: !30, line: 61, baseType: !975, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1334, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !30, line: 63, baseType: !182, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1334, file: !30, line: 65, baseType: !1340, size: 256, offset: 128)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 256, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 4)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1334, file: !30, line: 66, baseType: !525, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1334, file: !30, line: 68, baseType: !939, size: 192, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1334, file: !30, line: 69, baseType: !946, size: 128, align: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1334, file: !30, line: 70, baseType: !1347, offset: 768)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, elements: !1354)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1348, file: !30, line: 55, baseType: !109, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1348, file: !30, line: 56, baseType: !1352, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1354 = !{!1355}
!1355 = !DISubrange(count: -1)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1309, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1309, file: !14, line: 952, baseType: !339, size: 32, offset: 160)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1309, file: !14, line: 952, baseType: !339, size: 32, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1309, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1293, file: !14, line: 1012, baseType: !1361, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1364, line: 110, size: 1472, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1382, !1383, !1384, !1385, !1386, !1387, !1500, !1501, !1502, !1503, !1504, !1535, !1538, !1542, !1550}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1363, file: !1364, line: 111, baseType: !637, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1363, file: !1364, line: 112, baseType: !339, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1363, file: !1364, line: 113, baseType: !348, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1363, file: !1364, line: 114, baseType: !339, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1363, file: !1364, line: 115, baseType: !348, size: 32, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1363, file: !1364, line: 116, baseType: !339, size: 32, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1363, file: !1364, line: 117, baseType: !348, size: 32, offset: 224)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1363, file: !1364, line: 118, baseType: !339, size: 32, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1363, file: !1364, line: 119, baseType: !348, size: 32, offset: 288)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1363, file: !1364, line: 120, baseType: !7, size: 32, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1363, file: !1364, line: 121, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1378, line: 24, baseType: !1379)
!1378 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1378, line: 24, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1379, file: !1378, line: 24, baseType: !406, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1363, file: !1364, line: 122, baseType: !1377, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1363, file: !1364, line: 123, baseType: !1377, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1363, file: !1364, line: 124, baseType: !1377, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1363, file: !1364, line: 125, baseType: !1377, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1363, file: !1364, line: 127, baseType: !214, size: 8, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1363, file: !1364, line: 129, baseType: !1388, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1390, line: 195, size: 1728, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1391 = !{!1392, !1393, !1398, !1403, !1404, !1407, !1408, !1413, !1414, !1415, !1416, !1419, !1420, !1421, !1423, !1424, !1464, !1485}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1389, file: !1390, line: 196, baseType: !975, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1389, file: !1390, line: 197, baseType: !1394, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1390, line: 28, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !153, line: 104, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !211, line: 20, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !213, line: 26, baseType: !109)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 198, baseType: !1399, size: 192, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 198, size: 192, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1399, file: !1390, line: 199, baseType: !152, size: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1399, file: !1390, line: 200, baseType: !1019, size: 192, align: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1389, file: !1390, line: 205, baseType: !846, size: 320, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1389, file: !1390, line: 206, baseType: !1405, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1390, line: 206, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1389, file: !1390, line: 207, baseType: !324, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 208, baseType: !1409, size: 64, offset: 704)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 208, size: 64, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1409, file: !1390, line: 209, baseType: !686, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1409, file: !1390, line: 210, baseType: !686, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1389, file: !1390, line: 212, baseType: !686, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1389, file: !1390, line: 213, baseType: !339, size: 32, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1389, file: !1390, line: 214, baseType: !348, size: 32, offset: 864)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1389, file: !1390, line: 215, baseType: !1417, size: 32, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1390, line: 31, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 110, baseType: !402)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1389, file: !1390, line: 216, baseType: !222, size: 16, offset: 928)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1389, file: !1390, line: 217, baseType: !222, size: 16, offset: 944)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1389, file: !1390, line: 221, baseType: !1422, size: 16, offset: 960)
!1422 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1389, file: !1390, line: 228, baseType: !302, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 245, baseType: !1425, size: 320, offset: 1088)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 245, size: 320, elements: !1426)
!1426 = !{!1427, !1456}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1425, file: !1390, line: 246, baseType: !1428, size: 320)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1390, line: 114, size: 320, elements: !1429)
!1429 = !{!1430, !1431, !1443, !1446, !1455}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1428, file: !1390, line: 116, baseType: !302, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1390, line: 117, baseType: !1432, size: 64, offset: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1390, line: 117, size: 64, elements: !1433)
!1433 = !{!1434, !1442}
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !1390, line: 118, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !1390, line: 118, size: 64, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1435, file: !1390, line: 120, baseType: !220, size: 16)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1435, file: !1390, line: 121, baseType: !1439, size: 48, offset: 16)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 6)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1432, file: !1390, line: 127, baseType: !302, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1428, file: !1390, line: 129, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1390, line: 102, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1428, file: !1390, line: 130, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1390, line: 108, size: 192, elements: !1449)
!1449 = !{!1450, !1451, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1448, file: !1390, line: 109, baseType: !946, size: 128, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1448, file: !1390, line: 110, baseType: !975, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1448, file: !1390, line: 111, baseType: !1453, size: 8, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !153, line: 35, baseType: !1454)
!1454 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1428, file: !1390, line: 131, baseType: !171, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1390, line: 247, baseType: !1457, size: 320)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !1390, line: 247, size: 320, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1457, file: !1390, line: 248, baseType: !302, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1457, file: !1390, line: 249, baseType: !302, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1457, file: !1390, line: 250, baseType: !1444, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1457, file: !1390, line: 251, baseType: !1447, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1457, file: !1390, line: 252, baseType: !252, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 260, baseType: !1465, size: 256, offset: 1408)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 260, size: 256, elements: !1466)
!1466 = !{!1467, !1473}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1465, file: !1390, line: 261, baseType: !1468, size: 256)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1390, line: 134, size: 256, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1468, file: !1390, line: 135, baseType: !324, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1468, file: !1390, line: 136, baseType: !1472, size: 256)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !1341)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1390, line: 262, baseType: !1474, size: 256)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1390, line: 262, size: 256, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1474, file: !1390, line: 264, baseType: !152, size: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1474, file: !1390, line: 265, baseType: !1478, size: 128, offset: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1479, line: 22, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1480 = !{!1481, !1484}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1478, file: !1479, line: 23, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1479, line: 23, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1478, file: !1479, line: 24, baseType: !302, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1389, file: !1390, line: 280, baseType: !1486, size: 64, offset: 1664)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1390, line: 176, size: 192, elements: !1488)
!1488 = !{!1489, !1498, !1499}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1487, file: !1390, line: 177, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1390, line: 171, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!109, !1388, !1494, !1496, !1388}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1487, file: !1390, line: 178, baseType: !1388, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1487, file: !1390, line: 179, baseType: !1444, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1363, file: !1364, line: 130, baseType: !1388, size: 64, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1363, file: !1364, line: 131, baseType: !1388, size: 64, offset: 896)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1363, file: !1364, line: 132, baseType: !1388, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1363, file: !1364, line: 135, baseType: !324, size: 64, offset: 1024)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1363, file: !1364, line: 137, baseType: !1505, size: 64, offset: 1088)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1507, line: 14, size: 1088, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1508 = !{!1509, !1510, !1519, !1520, !1521, !1522, !1523, !1524}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1506, file: !1507, line: 15, baseType: !975, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1506, file: !1507, line: 17, baseType: !1511, size: 320, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1512, line: 22, size: 320, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1513 = !{!1514, !1515, !1516, !1517}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1511, file: !1512, line: 23, baseType: !646, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1511, file: !1512, line: 24, baseType: !643, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1511, file: !1512, line: 26, baseType: !152, size: 128, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1511, file: !1512, line: 28, baseType: !1518, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1506, file: !1507, line: 19, baseType: !302, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1506, file: !1507, line: 20, baseType: !637, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1506, file: !1507, line: 23, baseType: !529, size: 128, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1506, file: !1507, line: 24, baseType: !339, size: 32, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1506, file: !1507, line: 29, baseType: !637, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1506, file: !1507, line: 36, baseType: !1525, size: 320, offset: 768)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1526, line: 15, size: 320, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1526, line: 16, baseType: !646, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1525, file: !1526, line: 18, baseType: !109, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1525, file: !1526, line: 19, baseType: !109, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1525, file: !1526, line: 20, baseType: !109, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1525, file: !1526, line: 21, baseType: !109, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1525, file: !1526, line: 22, baseType: !302, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1525, file: !1526, line: 23, baseType: !302, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1363, file: !1364, line: 138, baseType: !1536, size: 64, offset: 1152)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !340, line: 18, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1363, file: !1364, line: 139, baseType: !1539, size: 64, offset: 1216)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1541, line: 16, flags: DIFlagFwdDecl)
!1541 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1363, file: !1364, line: 140, baseType: !1543, size: 64, offset: 1280)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1364, line: 25, size: 64, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1364, line: 26, baseType: !202, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1544, file: !1364, line: 27, baseType: !109, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1364, line: 28, baseType: !1549, offset: 64)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !1354)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1364, line: 142, baseType: !1551, size: 128, offset: 1344)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !1364, line: 142, size: 128, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1551, file: !1364, line: 143, baseType: !109, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1551, file: !1364, line: 144, baseType: !946, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1293, file: !14, line: 1013, baseType: !1556, size: 256, offset: 960)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1556, file: !14, line: 971, baseType: !302, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1556, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1556, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1556, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1556, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1556, file: !14, line: 976, baseType: !494, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1293, file: !14, line: 1014, baseType: !758, size: 128, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1293, file: !14, line: 1015, baseType: !333, size: 64, offset: 1344)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1293, file: !14, line: 1016, baseType: !1567, size: 64, offset: 1408)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1570)
!1570 = !{!1571, !1572, !1576, !1581, !1585, !1613, !1614, !1620, !1633, !1641, !1645, !1646, !1947, !1948, !1952, !1957, !1958, !1962, !1966, !1972, !1973, !1977, !1978, !1984, !1988, !1992, !1998, !2002, !2006, !2010, !2014, !2015, !2021}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1569, file: !14, line: 1915, baseType: !147, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1569, file: !14, line: 1916, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!494, !1292, !494, !109}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1569, file: !14, line: 1917, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!284, !1292, !252, !299, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1569, file: !14, line: 1918, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!284, !1292, !171, !299, !1580}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1569, file: !14, line: 1919, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!284, !1589, !1611}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1598, !1599, !1600, !1601}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1590, file: !14, line: 374, baseType: !1292, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1590, file: !14, line: 375, baseType: !494, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1590, file: !14, line: 376, baseType: !1595, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1589, !288}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1590, file: !14, line: 377, baseType: !324, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1590, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1590, file: !14, line: 379, baseType: !220, size: 16, offset: 288)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !14, line: 380, baseType: !1602, size: 64, offset: 320)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !14, line: 380, size: 64, elements: !1603)
!1603 = !{!1604, !1607}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1602, file: !14, line: 386, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1602, file: !14, line: 395, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!284, !324}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1569, file: !14, line: 1920, baseType: !1586, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1569, file: !14, line: 1921, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!109, !1589, !1618, !7}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1569, file: !14, line: 1923, baseType: !1621, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!109, !1292, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1626)
!1626 = !{!1627, !1632}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1625, file: !14, line: 1859, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1453, !1624, !171, !109, !494, !406, !7}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1625, file: !14, line: 1860, baseType: !494, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1569, file: !14, line: 1924, baseType: !1634, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1637, !1292, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1638, line: 59, baseType: !7)
!1638 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !509, line: 31, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1569, file: !14, line: 1925, baseType: !1642, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!288, !1292, !7, !302}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1569, file: !14, line: 1926, baseType: !1642, size: 64, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1569, file: !14, line: 1927, baseType: !1647, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!109, !1292, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1652)
!1652 = !{!1653, !1662, !1663, !1671, !1678, !1679, !1684, !1685, !1690, !1691, !1694, !1940, !1941, !1942, !1943, !1944, !1945}
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !38, line: 628, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !38, line: 628, size: 128, elements: !1655)
!1655 = !{!1656, !1661}
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !38, line: 629, baseType: !1657, size: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !38, line: 629, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1657, file: !38, line: 631, baseType: !302, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1657, file: !38, line: 632, baseType: !302, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1654, file: !38, line: 635, baseType: !946, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1651, file: !38, line: 639, baseType: !1265, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1651, file: !38, line: 640, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1665, line: 297, baseType: !1666)
!1665 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1665, line: 297, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1666, file: !1665, line: 297, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1670, line: 19, baseType: !302)
!1670 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !38, line: 646, baseType: !1672, size: 64, offset: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !38, line: 646, size: 64, elements: !1673)
!1673 = !{!1674, !1677}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1672, file: !38, line: 647, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !302)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1672, file: !38, line: 648, baseType: !1676, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1651, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1651, file: !38, line: 667, baseType: !1680, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !38, line: 580, baseType: !846, size: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1651, file: !38, line: 670, baseType: !1453, size: 8, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1651, file: !38, line: 681, baseType: !1686, size: 256, offset: 512)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !38, line: 678, size: 256, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1686, file: !38, line: 679, baseType: !1019, size: 192, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1686, file: !38, line: 680, baseType: !302, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1651, file: !38, line: 689, baseType: !152, size: 128, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1651, file: !38, line: 691, baseType: !1692, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1651, file: !38, line: 694, baseType: !1695, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1698, line: 563, size: 1024, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1699 = !{!1700, !1704, !1705, !1709, !1713, !1717, !1904, !1908, !1912, !1916, !1917, !1918, !1922, !1926, !1932, !1936}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1697, file: !1698, line: 564, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1650}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1697, file: !1698, line: 569, baseType: !1701, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1697, file: !1698, line: 571, baseType: !1706, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!109, !1650, !302}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1697, file: !1698, line: 572, baseType: !1710, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!109, !1650}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1697, file: !1698, line: 578, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!109, !1650, !302, !302, !302}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1697, file: !1698, line: 580, baseType: !1718, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1698, line: 512, size: 896, elements: !1724)
!1724 = !{!1725, !1733, !1734, !1741, !1748, !1758, !1897, !1898, !1900, !1902}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !1698, line: 513, baseType: !1726, size: 320)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1723, file: !1698, line: 513, size: 320, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1726, file: !1698, line: 514, baseType: !1650, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1726, file: !1698, line: 515, baseType: !698, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1726, file: !1698, line: 516, baseType: !302, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1726, file: !1698, line: 517, baseType: !302, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1726, file: !1698, line: 518, baseType: !302, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1698, line: 520, baseType: !37, size: 32, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1723, file: !1698, line: 522, baseType: !1735, size: 64, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1670, line: 22, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 22, size: 64, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1737, file: !1670, line: 22, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1670, line: 15, baseType: !302)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1723, file: !1698, line: 524, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1665, line: 372, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 372, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1744, file: !1665, line: 372, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1670, line: 16, baseType: !302)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !1698, line: 527, baseType: !1749, size: 64, offset: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !1698, line: 527, size: 64, elements: !1750)
!1750 = !{!1751, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1749, file: !1698, line: 528, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1670, line: 21, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 21, size: 64, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1753, file: !1670, line: 21, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1670, line: 14, baseType: !302)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1749, file: !1698, line: 529, baseType: !1736, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1723, file: !1698, line: 534, baseType: !1759, size: 64, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1761)
!1761 = !{!1762, !1763, !1891, !1896}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !38, line: 75, baseType: !302, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !38, line: 83, baseType: !1764, size: 320, offset: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1760, file: !38, line: 83, size: 320, elements: !1765)
!1765 = !{!1766, !1787, !1801, !1805, !1890}
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !38, line: 84, baseType: !1767, size: 320)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !38, line: 84, size: 320, elements: !1768)
!1768 = !{!1769, !1780, !1781, !1786}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !38, line: 90, baseType: !1770, size: 128)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !38, line: 90, size: 128, elements: !1771)
!1771 = !{!1772, !1773, !1778, !1779}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1770, file: !38, line: 91, baseType: !152, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !38, line: 94, baseType: !1774, size: 128)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !38, line: 94, size: 128, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1774, file: !38, line: 96, baseType: !324, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1774, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1770, file: !38, line: 102, baseType: !152, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1770, file: !38, line: 103, baseType: !152, size: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1767, file: !38, line: 106, baseType: !329, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !38, line: 107, baseType: !1782, size: 64, offset: 192)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !38, line: 107, size: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1782, file: !38, line: 108, baseType: !302, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1782, file: !38, line: 109, baseType: !302, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1767, file: !38, line: 117, baseType: !302, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !38, line: 119, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !38, line: 119, size: 320, elements: !1789)
!1789 = !{!1790, !1791, !1794, !1795, !1796}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1788, file: !38, line: 124, baseType: !302, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1788, file: !38, line: 125, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1788, file: !38, line: 126, baseType: !302, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1788, file: !38, line: 127, baseType: !302, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !38, line: 128, baseType: !1797, size: 64, offset: 256)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !38, line: 128, size: 64, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1797, file: !38, line: 133, baseType: !302, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1797, file: !38, line: 138, baseType: !637, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !38, line: 141, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !38, line: 141, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1802, file: !38, line: 142, baseType: !302, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !38, line: 144, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !38, line: 144, size: 128, elements: !1807)
!1807 = !{!1808, !1889}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1806, file: !38, line: 146, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1811)
!1811 = !{!1812, !1822, !1843, !1854, !1855, !1856, !1857, !1871, !1872, !1873}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1810, file: !54, line: 127, baseType: !1813, size: 384)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1814)
!1814 = !{!1815, !1816, !1818, !1819, !1820, !1821}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1813, file: !54, line: 22, baseType: !302, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1813, file: !54, line: 23, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1813, file: !54, line: 24, baseType: !1817, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1813, file: !54, line: 25, baseType: !302, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1813, file: !54, line: 26, baseType: !302, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1813, file: !54, line: 27, baseType: !302, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1810, file: !54, line: 128, baseType: !1823, size: 128, offset: 384)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1824, line: 105, size: 128, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1823, file: !1824, line: 110, baseType: !302, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1823, file: !1824, line: 118, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1824, line: 95, size: 448, elements: !1830)
!1830 = !{!1831, !1832, !1838, !1839, !1840, !1841, !1842}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1829, file: !1824, line: 96, baseType: !637, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1829, file: !1824, line: 97, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1824, line: 60, baseType: !1835)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1829, file: !1824, line: 98, baseType: !1833, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1829, file: !1824, line: 99, baseType: !1453, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1829, file: !1824, line: 100, baseType: !1453, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1829, file: !1824, line: 101, baseType: !946, size: 128, align: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1829, file: !1824, line: 102, baseType: !1837, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1810, file: !54, line: 129, baseType: !1844, size: 256, offset: 512)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1845, line: 26, size: 256, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1844, file: !1845, line: 27, baseType: !7, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1844, file: !1845, line: 28, baseType: !1849, size: 192, offset: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1850, line: 43, size: 192, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !1850, line: 44, baseType: !646, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1849, file: !1850, line: 45, baseType: !152, size: 128, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1810, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1810, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1810, file: !54, line: 132, baseType: !302, size: 64, offset: 832)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1810, file: !54, line: 133, baseType: !1858, size: 64, offset: 896)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1861)
!1861 = !{!1862, !1866, !1867}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1860, file: !54, line: 83, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1759}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1860, file: !54, line: 89, baseType: !1718, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1860, file: !54, line: 100, baseType: !1868, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!109, !1809, !302, !302, !109}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1810, file: !54, line: 134, baseType: !324, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1810, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !54, line: 136, baseType: !1874, size: 128, offset: 1088)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1810, file: !54, line: 136, size: 128, elements: !1875)
!1875 = !{!1876, !1882}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1874, file: !54, line: 137, baseType: !1877, size: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1878, line: 6, size: 128, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1877, file: !1878, line: 7, baseType: !406, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1877, file: !1878, line: 8, baseType: !406, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !54, line: 138, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !54, line: 138, elements: !1884)
!1884 = !{!1885, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1883, file: !54, line: 138, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !54, line: 138, elements: !537)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1883, file: !54, line: 138, baseType: !1888)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1877, elements: !1354)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1806, file: !38, line: 147, baseType: !324, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1764, file: !38, line: 161, baseType: !946, size: 128, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !38, line: 164, baseType: !1892, size: 32, offset: 384)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1760, file: !38, line: 164, size: 32, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1892, file: !38, line: 169, baseType: !202, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1892, file: !38, line: 177, baseType: !7, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1760, file: !38, line: 181, baseType: !202, size: 32, offset: 416)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1723, file: !1698, line: 535, baseType: !1759, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1723, file: !1698, line: 541, baseType: !1899, size: 64, offset: 704)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1723, file: !1698, line: 545, baseType: !1901, size: 64, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1723, file: !1698, line: 549, baseType: !1903, size: 64, offset: 832)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1665, line: 520, baseType: !1759)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1697, file: !1698, line: 581, baseType: !1905, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1721, !1722, !7}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1697, file: !1698, line: 582, baseType: !1909, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1721, !1722, !302, !302}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1697, file: !1698, line: 584, baseType: !1913, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!302, !1650}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1697, file: !1698, line: 588, baseType: !1718, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1697, file: !1698, line: 591, baseType: !1718, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1697, file: !1698, line: 597, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!109, !1650, !302, !324, !109, !109}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1697, file: !1698, line: 603, baseType: !1923, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!171, !1650}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1697, file: !1698, line: 613, baseType: !1927, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!109, !1650, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1697, file: !1698, line: 625, baseType: !1933, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1930, !1650, !302}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1697, file: !1698, line: 633, baseType: !1937, size: 64, offset: 960)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1759, !1650, !302}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1651, file: !38, line: 697, baseType: !302, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1651, file: !38, line: 699, baseType: !1292, size: 64, offset: 1088)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1651, file: !38, line: 700, baseType: !324, size: 64, offset: 1152)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1651, file: !38, line: 711, baseType: !637, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1651, file: !38, line: 717, baseType: !1930, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1651, file: !38, line: 722, baseType: !1946, offset: 1344)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !537)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1569, file: !14, line: 1928, baseType: !302, size: 64, offset: 768)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1569, file: !14, line: 1929, baseType: !1949, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!109, !333, !1292}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1569, file: !14, line: 1930, baseType: !1953, size: 64, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!109, !1292, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !324)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1569, file: !14, line: 1931, baseType: !1949, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1569, file: !14, line: 1932, baseType: !1959, size: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!109, !1292, !494, !494, !109}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1569, file: !14, line: 1933, baseType: !1963, size: 64, offset: 1088)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!109, !109, !1292, !109}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1569, file: !14, line: 1934, baseType: !1967, size: 64, offset: 1152)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!109, !1292, !109, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1569, file: !14, line: 1935, baseType: !1289, size: 64, offset: 1216)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1569, file: !14, line: 1936, baseType: !1974, size: 64, offset: 1280)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!109, !109}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1569, file: !14, line: 1937, baseType: !1967, size: 64, offset: 1344)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1569, file: !14, line: 1938, baseType: !1979, size: 64, offset: 1408)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!284, !1982, !1292, !1580, !299, !7}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !608, line: 59, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1569, file: !14, line: 1939, baseType: !1985, size: 64, offset: 1472)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!284, !1292, !1580, !1982, !299, !7}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1569, file: !14, line: 1940, baseType: !1989, size: 64, offset: 1536)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1292}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1569, file: !14, line: 1941, baseType: !1993, size: 64, offset: 1600)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!109, !1292, !109, !1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1569, file: !14, line: 1942, baseType: !1999, size: 64, offset: 1664)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!288, !1292, !109, !494, !494}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1569, file: !14, line: 1944, baseType: !2003, size: 64, offset: 1728)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !606, !1292}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1569, file: !14, line: 1948, baseType: !2007, size: 64, offset: 1792)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!284, !1292, !494, !1292, !494, !299, !7}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1569, file: !14, line: 1950, baseType: !2011, size: 64, offset: 1856)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!494, !1292, !494, !1292, !494, !494, !7}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1569, file: !14, line: 1953, baseType: !1959, size: 64, offset: 1920)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1569, file: !14, line: 1954, baseType: !2016, size: 64, offset: 1984)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!109, !2019, !7}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1569, file: !14, line: 1955, baseType: !2022, size: 64, offset: 2048)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!109, !2019, !1618, !7}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1293, file: !14, line: 1018, baseType: !406, size: 64, offset: 1472)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1293, file: !14, line: 1020, baseType: !324, size: 64, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1293, file: !14, line: 1023, baseType: !324, size: 64, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1293, file: !14, line: 1027, baseType: !2029, size: 64, offset: 1664)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1293, file: !14, line: 1029, baseType: !329, size: 64, offset: 1728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1293, file: !14, line: 1030, baseType: !2032, size: 32, offset: 1792)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2033, line: 8, baseType: !402)
!2033 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1293, file: !14, line: 1031, baseType: !2032, size: 32, offset: 1824)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1269, file: !38, line: 756, baseType: !302, size: 64, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1269, file: !38, line: 757, baseType: !302, size: 64, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1269, file: !38, line: 760, baseType: !302, size: 64, offset: 832)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1269, file: !38, line: 761, baseType: !302, size: 64, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1269, file: !38, line: 763, baseType: !302, size: 64, offset: 960)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1269, file: !38, line: 764, baseType: !2041, size: 64, offset: 1024)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1665, line: 299, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 299, size: 64, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2043, file: !1665, line: 299, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1670, line: 18, baseType: !302)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1269, file: !38, line: 773, baseType: !202, size: 32, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1269, file: !38, line: 785, baseType: !202, size: 32, offset: 1120)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1269, file: !38, line: 795, baseType: !2050, size: 64, offset: 1152)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2051, file: !38, line: 727, baseType: !406, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2051, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1269, file: !38, line: 801, baseType: !302, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1269, file: !38, line: 804, baseType: !637, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1269, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1269, file: !38, line: 808, baseType: !182, size: 32, offset: 1376)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1269, file: !38, line: 823, baseType: !846, size: 320, offset: 1408)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1269, file: !38, line: 825, baseType: !152, size: 128, offset: 1728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1269, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1269, file: !38, line: 849, baseType: !302, size: 64, offset: 1920)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1269, file: !38, line: 850, baseType: !302, size: 64, offset: 1984)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1269, file: !38, line: 852, baseType: !302, size: 64, offset: 2048)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1269, file: !38, line: 853, baseType: !302, size: 64, offset: 2112)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1269, file: !38, line: 854, baseType: !639, size: 64, offset: 2176)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1269, file: !38, line: 855, baseType: !302, size: 64, offset: 2240)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1269, file: !38, line: 856, baseType: !302, size: 64, offset: 2304)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1269, file: !38, line: 857, baseType: !302, size: 64, offset: 2368)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1269, file: !38, line: 858, baseType: !302, size: 64, offset: 2432)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1269, file: !38, line: 865, baseType: !379, size: 32, offset: 2496)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1269, file: !38, line: 867, baseType: !182, size: 32, offset: 2528)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1269, file: !38, line: 869, baseType: !302, size: 64, offset: 2560)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1269, file: !38, line: 869, baseType: !302, size: 64, offset: 2624)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1269, file: !38, line: 869, baseType: !302, size: 64, offset: 2688)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1269, file: !38, line: 869, baseType: !302, size: 64, offset: 2752)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1269, file: !38, line: 870, baseType: !302, size: 64, offset: 2816)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1269, file: !38, line: 870, baseType: !302, size: 64, offset: 2880)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1269, file: !38, line: 870, baseType: !302, size: 64, offset: 2944)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1269, file: !38, line: 871, baseType: !302, size: 64, offset: 3008)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1269, file: !38, line: 871, baseType: !302, size: 64, offset: 3072)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1269, file: !38, line: 871, baseType: !302, size: 64, offset: 3136)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1269, file: !38, line: 871, baseType: !302, size: 64, offset: 3200)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1269, file: !38, line: 873, baseType: !2085, size: 3328, offset: 3264)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 3328, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 52)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1269, file: !38, line: 875, baseType: !2089, size: 1280, offset: 6592)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 1280, elements: !1341)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1269, file: !38, line: 877, baseType: !2091, size: 64, offset: 7872)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1269, file: !38, line: 880, baseType: !2094, size: 1088, offset: 7936)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2095, line: 72, baseType: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2095, line: 23, size: 1088, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2105, !2106, !2107, !2108, !2135, !2136, !2137}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2096, file: !2095, line: 28, baseType: !406, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2096, file: !2095, line: 38, baseType: !639, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2096, file: !2095, line: 40, baseType: !302, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2096, file: !2095, line: 43, baseType: !846, size: 320, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2096, file: !2095, line: 44, baseType: !2103, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2095, line: 44, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !2095, line: 48, baseType: !302, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2096, file: !2095, line: 59, baseType: !633, size: 256, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2096, file: !2095, line: 60, baseType: !324, size: 64, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2096, file: !2095, line: 61, baseType: !2109, size: 64, offset: 960)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2112, line: 13, size: 1216, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2111, file: !2112, line: 14, baseType: !324, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !2112, line: 15, baseType: !302, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2111, file: !2112, line: 17, baseType: !302, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2111, file: !2112, line: 17, baseType: !302, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2111, file: !2112, line: 18, baseType: !302, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2111, file: !2112, line: 18, baseType: !302, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2111, file: !2112, line: 19, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2111, file: !2112, line: 21, baseType: !288, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2111, file: !2112, line: 23, baseType: !288, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2111, file: !2112, line: 24, baseType: !288, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2111, file: !2112, line: 25, baseType: !288, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2111, file: !2112, line: 26, baseType: !288, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2111, file: !2112, line: 27, baseType: !288, size: 64, offset: 768)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2111, file: !2112, line: 28, baseType: !288, size: 64, offset: 832)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2111, file: !2112, line: 29, baseType: !288, size: 64, offset: 896)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2111, file: !2112, line: 30, baseType: !288, size: 64, offset: 960)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2111, file: !2112, line: 31, baseType: !288, size: 64, offset: 1024)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2111, file: !2112, line: 32, baseType: !288, size: 64, offset: 1088)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2111, file: !2112, line: 33, baseType: !288, size: 64, offset: 1152)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2096, file: !2095, line: 63, baseType: !202, size: 32, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2096, file: !2095, line: 69, baseType: !220, size: 16, offset: 1056)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2096, file: !2095, line: 70, baseType: !2138, size: 16, offset: 1072)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !211, line: 18, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !213, line: 23, baseType: !1422)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1269, file: !38, line: 882, baseType: !302, size: 64, offset: 9024)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1269, file: !38, line: 885, baseType: !182, size: 32, offset: 9088)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1269, file: !38, line: 886, baseType: !2143, size: 64, offset: 9152)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1269, file: !38, line: 901, baseType: !1536, size: 64, offset: 9216)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1269, file: !38, line: 904, baseType: !1292, size: 64, offset: 9280)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1269, file: !38, line: 906, baseType: !2148, size: 64, offset: 9344)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1269, file: !38, line: 930, baseType: !202, size: 32, offset: 9408)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1269, file: !38, line: 933, baseType: !202, size: 32, offset: 9440)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1269, file: !38, line: 935, baseType: !2153, size: 64, offset: 9472)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2154)
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2153, file: !68, line: 104, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1269, file: !38, line: 940, baseType: !637, size: 64, offset: 9536)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1269, file: !38, line: 942, baseType: !2160, size: 256, offset: 9600)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2161, line: 98, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2160, file: !2161, line: 99, baseType: !637, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2160, file: !2161, line: 100, baseType: !152, size: 128, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2160, file: !2161, line: 101, baseType: !2166, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2161, line: 21, baseType: !2167)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1266, file: !38, line: 986, baseType: !2172, offset: 10240)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, elements: !1354)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !962, file: !608, line: 882, baseType: !1265, size: 64, offset: 9792)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !962, file: !608, line: 884, baseType: !109, size: 32, offset: 9856)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !962, file: !608, line: 885, baseType: !109, size: 32, offset: 9888)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !962, file: !608, line: 886, baseType: !109, size: 32, offset: 9920)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !962, file: !608, line: 888, baseType: !109, size: 32, offset: 9952)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !962, file: !608, line: 890, baseType: !302, size: 64, offset: 9984)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !962, file: !608, line: 893, baseType: !7, size: 32, offset: 10048)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !962, file: !608, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !962, file: !608, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !962, file: !608, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !962, file: !608, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !962, file: !608, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !962, file: !608, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !962, file: !608, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !962, file: !608, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !962, file: !608, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !962, file: !608, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !962, file: !608, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !962, file: !608, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !962, file: !608, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !962, file: !608, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !962, file: !608, line: 969, baseType: !302, size: 64, offset: 10176)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !962, file: !608, line: 971, baseType: !2196, size: 448, offset: 10240)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2197)
!2197 = !{!2198, !2199, !2204}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2196, file: !62, line: 26, baseType: !302, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2196, file: !62, line: 27, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!288, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !62, line: 28, baseType: !2205, size: 320, offset: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !62, line: 28, size: 320, elements: !2206)
!2206 = !{!2207, !2217, !2242}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2205, file: !62, line: 37, baseType: !2208, size: 320)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !62, line: 30, size: 320, elements: !2209)
!2209 = !{!2210, !2212, !2213, !2214, !2215, !2216}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2208, file: !62, line: 31, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2208, file: !62, line: 32, baseType: !402, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2208, file: !62, line: 33, baseType: !402, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2208, file: !62, line: 34, baseType: !402, size: 32, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2208, file: !62, line: 35, baseType: !406, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2208, file: !62, line: 36, baseType: !2211, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2205, file: !62, line: 47, baseType: !2218, size: 192)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !62, line: 39, size: 192, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2241}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2218, file: !62, line: 40, baseType: !1136, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2218, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !62, line: 42, baseType: !2223, size: 64, offset: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !62, line: 42, size: 64, elements: !2224)
!2224 = !{!2225, !2233}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2223, file: !62, line: 43, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2228, line: 7, size: 128, elements: !2229)
!2228 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2229 = !{!2230, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2227, file: !2228, line: 8, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !286, line: 93, baseType: !496)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2227, file: !2228, line: 9, baseType: !496, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2223, file: !62, line: 44, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2236, line: 7, size: 64, elements: !2237)
!2236 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2237 = !{!2238, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2235, file: !2236, line: 8, baseType: !2239, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2236, line: 5, baseType: !1396)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2235, file: !2236, line: 9, baseType: !1396, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2218, file: !62, line: 46, baseType: !406, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2205, file: !62, line: 55, baseType: !2243, size: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !62, line: 49, size: 256, elements: !2244)
!2244 = !{!2245, !2248, !2249, !2250, !2251}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2243, file: !62, line: 50, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2243, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2243, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2243, file: !62, line: 53, baseType: !302, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2243, file: !62, line: 54, baseType: !302, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !962, file: !608, line: 973, baseType: !2253, size: 32, offset: 10688)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !153, line: 27, baseType: !2254)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !286, line: 28, baseType: !109)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !962, file: !608, line: 974, baseType: !2253, size: 32, offset: 10720)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !962, file: !608, line: 978, baseType: !302, size: 64, offset: 10752)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !962, file: !608, line: 987, baseType: !961, size: 64, offset: 10816)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !962, file: !608, line: 990, baseType: !961, size: 64, offset: 10880)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !962, file: !608, line: 995, baseType: !152, size: 128, offset: 10944)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !962, file: !608, line: 996, baseType: !152, size: 128, offset: 11072)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !962, file: !608, line: 997, baseType: !961, size: 64, offset: 11200)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !962, file: !608, line: 1005, baseType: !152, size: 128, offset: 11264)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !962, file: !608, line: 1006, baseType: !152, size: 128, offset: 11392)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !962, file: !608, line: 1009, baseType: !1333, size: 64, offset: 11520)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !962, file: !608, line: 1010, baseType: !2266, size: 512, offset: 11584)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 512, elements: !1341)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !962, file: !608, line: 1011, baseType: !152, size: 128, offset: 12096)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !962, file: !608, line: 1012, baseType: !152, size: 128, offset: 12224)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !962, file: !608, line: 1014, baseType: !2270, size: 64, offset: 12352)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !962, file: !608, line: 1017, baseType: !600, size: 64, offset: 12416)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !962, file: !608, line: 1020, baseType: !600, size: 64, offset: 12480)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !962, file: !608, line: 1023, baseType: !324, size: 64, offset: 12544)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !962, file: !608, line: 1025, baseType: !406, size: 64, offset: 12608)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !962, file: !608, line: 1026, baseType: !406, size: 64, offset: 12672)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !962, file: !608, line: 1031, baseType: !406, size: 64, offset: 12736)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !962, file: !608, line: 1032, baseType: !2278, size: 192, offset: 12800)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !608, line: 324, size: 192, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2278, file: !608, line: 326, baseType: !406, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2278, file: !608, line: 327, baseType: !406, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !608, line: 328, baseType: !646, size: 32, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !962, file: !608, line: 1041, baseType: !302, size: 64, offset: 12992)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !962, file: !608, line: 1042, baseType: !302, size: 64, offset: 13056)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !962, file: !608, line: 1045, baseType: !406, size: 64, offset: 13120)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !962, file: !608, line: 1048, baseType: !406, size: 64, offset: 13184)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !962, file: !608, line: 1051, baseType: !302, size: 64, offset: 13248)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !962, file: !608, line: 1052, baseType: !302, size: 64, offset: 13312)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !962, file: !608, line: 1055, baseType: !2290, size: 640, offset: 13376)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2291, line: 132, size: 640, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2292 = !{!2293, !2299, !2300}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2290, file: !2291, line: 133, baseType: !2294, size: 576)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 576, elements: !253)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2291, line: 117, size: 192, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2295, file: !2291, line: 118, baseType: !406, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2295, file: !2291, line: 119, baseType: !1145, size: 128, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2290, file: !2291, line: 134, baseType: !7, size: 32, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2290, file: !2291, line: 135, baseType: !7, size: 32, offset: 608)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !962, file: !608, line: 1058, baseType: !2302, size: 448, offset: 14016)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2291, line: 144, size: 448, elements: !2303)
!2303 = !{!2304, !2305, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2302, file: !2291, line: 145, baseType: !946, size: 128, align: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2302, file: !2291, line: 146, baseType: !633, size: 256, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2302, file: !2291, line: 147, baseType: !7, size: 32, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !962, file: !608, line: 1064, baseType: !1361, size: 64, offset: 14464)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !962, file: !608, line: 1067, baseType: !1361, size: 64, offset: 14528)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !962, file: !608, line: 1070, baseType: !1361, size: 64, offset: 14592)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !962, file: !608, line: 1074, baseType: !1388, size: 64, offset: 14656)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !962, file: !608, line: 1084, baseType: !2312, size: 128, offset: 14720)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !2313)
!2313 = !{!2314}
!2314 = !DISubrange(count: 16)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !962, file: !608, line: 1086, baseType: !2316, size: 64, offset: 14848)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !608, line: 55, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !962, file: !608, line: 1089, baseType: !2319, size: 64, offset: 14912)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2320, line: 12, size: 64, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2321 = !{!2322}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2319, file: !2320, line: 13, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2320, line: 8, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !962, file: !608, line: 1090, baseType: !2326, size: 128, offset: 14976)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2327, line: 13, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2328 = !{!2329}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2326, file: !2327, line: 14, baseType: !152, size: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !962, file: !608, line: 1097, baseType: !2331, size: 64, offset: 15104)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !608, line: 50, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !962, file: !608, line: 1100, baseType: !2334, size: 64, offset: 15168)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !608, line: 1100, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !962, file: !608, line: 1103, baseType: !2337, size: 64, offset: 15232)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !608, line: 53, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !962, file: !608, line: 1107, baseType: !2340, size: 64, offset: 15296)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2342, line: 35, flags: DIFlagFwdDecl)
!2342 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !962, file: !608, line: 1110, baseType: !2344, size: 64, offset: 15360)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2346, line: 93, size: 8768, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2397, !2406, !2407, !2409, !2410, !2411, !2414, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2452, !2453, !2460, !2470, !2473, !2474, !2477, !2478, !2479, !2480, !2481, !2482}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2345, file: !2346, line: 94, baseType: !975, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2345, file: !2346, line: 95, baseType: !202, size: 32, offset: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2345, file: !2346, line: 96, baseType: !109, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2345, file: !2346, line: 97, baseType: !109, size: 32, offset: 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2345, file: !2346, line: 98, baseType: !152, size: 128, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2345, file: !2346, line: 100, baseType: !939, size: 192, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2345, file: !2346, line: 103, baseType: !961, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2345, file: !2346, line: 106, baseType: !2356, size: 192, offset: 512)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1541, line: 32, size: 192, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2356, file: !1541, line: 33, baseType: !152, size: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2356, file: !1541, line: 34, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2361, line: 25, baseType: !2362)
!2361 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2361, line: 23, size: 64, elements: !2363)
!2363 = !{!2364}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2362, file: !2361, line: 24, baseType: !1216, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2345, file: !2346, line: 109, baseType: !525, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2345, file: !2346, line: 112, baseType: !109, size: 32, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2345, file: !2346, line: 114, baseType: !109, size: 32, offset: 800)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2345, file: !2346, line: 115, baseType: !961, size: 64, offset: 832)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2345, file: !2346, line: 118, baseType: !109, size: 32, offset: 896)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !2346, line: 119, baseType: !7, size: 32, offset: 928)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2345, file: !2346, line: 121, baseType: !2372, size: 64, offset: 960)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2346, line: 80, size: 448, elements: !2374)
!2374 = !{!2375, !2376, !2382}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2373, file: !2346, line: 81, baseType: !202, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2373, file: !2346, line: 82, baseType: !2377, size: 128, offset: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2346, line: 75, size: 128, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2377, file: !2346, line: 76, baseType: !961, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2377, file: !2346, line: 77, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2373, file: !2346, line: 83, baseType: !1844, size: 256, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2345, file: !2346, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2345, file: !2346, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2345, file: !2346, line: 138, baseType: !7, size: 32, offset: 1056)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2345, file: !2346, line: 139, baseType: !152, size: 128, offset: 1088)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2345, file: !2346, line: 142, baseType: !1089, size: 512, offset: 1216)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2345, file: !2346, line: 143, baseType: !1097, size: 64, offset: 1728)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2345, file: !2346, line: 150, baseType: !2390, size: 256, offset: 1792)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 256, elements: !2395)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2346, line: 38, size: 128, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2391, file: !2346, line: 39, baseType: !406, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2391, file: !2346, line: 40, baseType: !406, size: 64, offset: 64)
!2395 = !{!2396}
!2396 = !DISubrange(count: 2)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2345, file: !2346, line: 156, baseType: !2398, size: 192, offset: 2048)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2346, line: 66, size: 192, elements: !2399)
!2399 = !{!2400}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2398, file: !2346, line: 67, baseType: !2401, size: 192)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2346, line: 47, size: 192, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2401, file: !2346, line: 48, baseType: !639, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2401, file: !2346, line: 49, baseType: !639, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2401, file: !2346, line: 50, baseType: !639, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2345, file: !2346, line: 160, baseType: !2290, size: 640, offset: 2240)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2345, file: !2346, line: 163, baseType: !2408, size: 256, offset: 2880)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 256, elements: !1341)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2345, file: !2346, line: 169, baseType: !1333, size: 64, offset: 3136)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2345, file: !2346, line: 172, baseType: !109, size: 32, offset: 3200)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2345, file: !2346, line: 174, baseType: !2412, size: 64, offset: 3264)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2346, line: 174, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2345, file: !2346, line: 185, baseType: !2415, size: 64, offset: 3328)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !375, line: 860, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 853, size: 64, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2416, file: !375, line: 858, baseType: !374, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2416, file: !375, line: 859, baseType: !182, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2345, file: !2346, line: 186, baseType: !406, size: 64, offset: 3392)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2345, file: !2346, line: 186, baseType: !406, size: 64, offset: 3456)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2345, file: !2346, line: 186, baseType: !406, size: 64, offset: 3520)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2345, file: !2346, line: 186, baseType: !406, size: 64, offset: 3584)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2345, file: !2346, line: 187, baseType: !406, size: 64, offset: 3648)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2345, file: !2346, line: 188, baseType: !406, size: 64, offset: 3712)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2345, file: !2346, line: 189, baseType: !2278, size: 192, offset: 3776)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2345, file: !2346, line: 190, baseType: !302, size: 64, offset: 3968)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2345, file: !2346, line: 190, baseType: !302, size: 64, offset: 4032)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2345, file: !2346, line: 190, baseType: !302, size: 64, offset: 4096)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2345, file: !2346, line: 190, baseType: !302, size: 64, offset: 4160)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2345, file: !2346, line: 191, baseType: !302, size: 64, offset: 4224)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2345, file: !2346, line: 191, baseType: !302, size: 64, offset: 4288)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2345, file: !2346, line: 191, baseType: !302, size: 64, offset: 4352)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2345, file: !2346, line: 191, baseType: !302, size: 64, offset: 4416)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2345, file: !2346, line: 192, baseType: !302, size: 64, offset: 4480)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2345, file: !2346, line: 192, baseType: !302, size: 64, offset: 4544)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2345, file: !2346, line: 192, baseType: !302, size: 64, offset: 4608)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2345, file: !2346, line: 192, baseType: !302, size: 64, offset: 4672)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2345, file: !2346, line: 193, baseType: !302, size: 64, offset: 4736)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2345, file: !2346, line: 193, baseType: !302, size: 64, offset: 4800)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2345, file: !2346, line: 194, baseType: !2442, size: 448, offset: 4864)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2443, line: 12, size: 448, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2442, file: !2443, line: 15, baseType: !406, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2442, file: !2443, line: 17, baseType: !406, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2442, file: !2443, line: 19, baseType: !406, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2442, file: !2443, line: 21, baseType: !406, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2442, file: !2443, line: 29, baseType: !406, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2442, file: !2443, line: 35, baseType: !406, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2442, file: !2443, line: 44, baseType: !406, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2345, file: !2346, line: 202, baseType: !408, size: 64, offset: 5312)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2345, file: !2346, line: 213, baseType: !2454, size: 2048, offset: 5376)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2455, size: 2048, elements: !2313)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2456, line: 43, size: 128, elements: !2457)
!2456 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2455, file: !2456, line: 44, baseType: !301, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2455, file: !2456, line: 45, baseType: !301, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2345, file: !2346, line: 216, baseType: !2461, size: 448, offset: 7424)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2346, line: 30, size: 448, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2461, file: !2346, line: 31, baseType: !109, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2461, file: !2346, line: 32, baseType: !288, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2461, file: !2346, line: 33, baseType: !302, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2461, file: !2346, line: 34, baseType: !406, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2461, file: !2346, line: 34, baseType: !406, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2461, file: !2346, line: 35, baseType: !302, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2461, file: !2346, line: 35, baseType: !302, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2345, file: !2346, line: 219, baseType: !2471, size: 64, offset: 7872)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2346, line: 219, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2345, file: !2346, line: 222, baseType: !7, size: 32, offset: 7936)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2345, file: !2346, line: 223, baseType: !2475, size: 64, offset: 8000)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2346, line: 223, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2345, file: !2346, line: 230, baseType: !1453, size: 8, offset: 8064)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2345, file: !2346, line: 231, baseType: !1422, size: 16, offset: 8080)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2345, file: !2346, line: 232, baseType: !1422, size: 16, offset: 8096)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2345, file: !2346, line: 234, baseType: !1265, size: 64, offset: 8128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2345, file: !2346, line: 237, baseType: !633, size: 256, offset: 8192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2345, file: !2346, line: 243, baseType: !846, size: 320, offset: 8448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !962, file: !608, line: 1111, baseType: !2484, size: 64, offset: 15424)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2346, line: 20, size: 16640, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2485, file: !2346, line: 21, baseType: !182, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2485, file: !2346, line: 22, baseType: !975, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2485, file: !2346, line: 23, baseType: !939, size: 192, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2485, file: !2346, line: 24, baseType: !2491, size: 16384, offset: 256)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2492, size: 16384, elements: !257)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1541, line: 51, size: 256, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2492, file: !1541, line: 52, baseType: !2495, size: 256)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1541, line: 37, size: 256, elements: !2496)
!2496 = !{!2497, !2504, !2505, !2511}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2495, file: !1541, line: 39, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2499, line: 83, baseType: !2500)
!2499 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2499, line: 82, baseType: !2502)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !109}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2495, file: !1541, line: 40, baseType: !302, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2495, file: !1541, line: 46, baseType: !2506, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2499, line: 86, baseType: !2507)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2499, line: 85, baseType: !2509)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2495, file: !1541, line: 48, baseType: !2360, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !962, file: !608, line: 1112, baseType: !2360, size: 64, offset: 15488)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !962, file: !608, line: 1113, baseType: !2360, size: 64, offset: 15552)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !962, file: !608, line: 1115, baseType: !2360, size: 64, offset: 15616)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !962, file: !608, line: 1116, baseType: !2356, size: 192, offset: 15680)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !962, file: !608, line: 1117, baseType: !302, size: 64, offset: 15872)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !962, file: !608, line: 1118, baseType: !299, size: 64, offset: 15936)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !962, file: !608, line: 1119, baseType: !7, size: 32, offset: 16000)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !962, file: !608, line: 1121, baseType: !949, size: 64, offset: 16064)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !962, file: !608, line: 1125, baseType: !2521, size: 64, offset: 16128)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !608, line: 43, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !962, file: !608, line: 1127, baseType: !339, size: 32, offset: 16192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !962, file: !608, line: 1128, baseType: !7, size: 32, offset: 16224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !962, file: !608, line: 1130, baseType: !2526, size: 128, offset: 16256)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2527, line: 37, size: 128, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2526, file: !2527, line: 38, baseType: !109, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2526, file: !2527, line: 39, baseType: !202, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2526, file: !2527, line: 40, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2527, line: 24, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !962, file: !608, line: 1131, baseType: !2535, size: 256, offset: 16384)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2536, line: 12, size: 256, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2535, file: !2536, line: 13, baseType: !252, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2535, file: !2536, line: 14, baseType: !302, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2535, file: !2536, line: 15, baseType: !302, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2535, file: !2536, line: 16, baseType: !1453, size: 8, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !962, file: !608, line: 1134, baseType: !406, size: 64, offset: 16640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !962, file: !608, line: 1135, baseType: !406, size: 64, offset: 16704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !962, file: !608, line: 1138, baseType: !182, size: 32, offset: 16768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !962, file: !608, line: 1141, baseType: !646, size: 32, offset: 16800)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !962, file: !608, line: 1143, baseType: !2547, size: 64, offset: 16832)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !608, line: 735, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2547, file: !608, line: 736, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !962, file: !608, line: 1147, baseType: !1148, size: 128, offset: 16896)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !962, file: !608, line: 1149, baseType: !961, size: 64, offset: 17024)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !962, file: !608, line: 1151, baseType: !2554, size: 64, offset: 17088)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !608, line: 1151, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !962, file: !608, line: 1188, baseType: !324, size: 64, offset: 17152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !962, file: !608, line: 1191, baseType: !2558, size: 64, offset: 17216)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !608, line: 44, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !962, file: !608, line: 1194, baseType: !2561, size: 64, offset: 17280)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !608, line: 45, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !962, file: !608, line: 1197, baseType: !2564, size: 64, offset: 17344)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !608, line: 61, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !962, file: !608, line: 1199, baseType: !2567, size: 64, offset: 17408)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2569, line: 99, size: 128, elements: !2570)
!2569 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2570 = !{!2571, !2572, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2568, file: !2569, line: 100, baseType: !637, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2568, file: !2569, line: 101, baseType: !202, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2568, file: !2569, line: 103, baseType: !222, size: 16, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !962, file: !608, line: 1202, baseType: !2575, size: 64, offset: 17472)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !608, line: 48, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !962, file: !608, line: 1205, baseType: !302, size: 64, offset: 17536)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !962, file: !608, line: 1206, baseType: !2579, size: 64, offset: 17600)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1541, line: 14, baseType: !2581)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1541, line: 12, size: 384, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !1541, line: 13, baseType: !2584, size: 384)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !1541, line: 13, size: 384, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2584, file: !1541, line: 13, baseType: !109, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2584, file: !1541, line: 13, baseType: !109, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2584, file: !1541, line: 13, baseType: !109, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2584, file: !1541, line: 13, baseType: !2590, size: 256, offset: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2591, line: 37, size: 256, elements: !2592)
!2591 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2592 = !{!2593, !2598, !2611, !2617, !2626, !2653, !2658}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2590, file: !2591, line: 42, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 39, size: 64, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2594, file: !2591, line: 40, baseType: !2254, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2594, file: !2591, line: 41, baseType: !345, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2590, file: !2591, line: 50, baseType: !2599, size: 192)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 45, size: 192, elements: !2600)
!2600 = !{!2601, !2603, !2604, !2610}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2599, file: !2591, line: 46, baseType: !2602, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !286, line: 95, baseType: !109)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2599, file: !2591, line: 47, baseType: !109, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2599, file: !2591, line: 48, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2591, line: 11, baseType: !2606)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2591, line: 8, size: 64, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2606, file: !2591, line: 9, baseType: !109, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2606, file: !2591, line: 10, baseType: !324, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2599, file: !2591, line: 49, baseType: !109, size: 32, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2590, file: !2591, line: 57, baseType: !2612, size: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 53, size: 128, elements: !2613)
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2612, file: !2591, line: 54, baseType: !2254, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2612, file: !2591, line: 55, baseType: !345, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2612, file: !2591, line: 56, baseType: !2605, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2590, file: !2591, line: 66, baseType: !2618, size: 256)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 60, size: 256, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2625}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2618, file: !2591, line: 61, baseType: !2254, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2618, file: !2591, line: 62, baseType: !345, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2618, file: !2591, line: 63, baseType: !109, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2618, file: !2591, line: 64, baseType: !2624, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !286, line: 94, baseType: !287)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2618, file: !2591, line: 65, baseType: !2624, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2590, file: !2591, line: 105, baseType: !2627, size: 256)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 69, size: 256, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2627, file: !2591, line: 70, baseType: !324, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2627, file: !2591, line: 79, baseType: !2631, size: 192, offset: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2627, file: !2591, line: 79, size: 192, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2642, !2647}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2631, file: !2591, line: 81, baseType: !109, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2631, file: !2591, line: 86, baseType: !1422, size: 16)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2631, file: !2591, line: 92, baseType: !2636, size: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !2591, line: 88, size: 192, elements: !2637)
!2637 = !{!2638, !2640, !2641}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2636, file: !2591, line: 89, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !1132)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2636, file: !2591, line: 90, baseType: !324, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2636, file: !2591, line: 91, baseType: !324, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2631, file: !2591, line: 97, baseType: !2643, size: 96)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !2591, line: 94, size: 96, elements: !2644)
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2643, file: !2591, line: 95, baseType: !2639, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2643, file: !2591, line: 96, baseType: !403, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2631, file: !2591, line: 103, baseType: !2648, size: 128)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2631, file: !2591, line: 99, size: 128, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2648, file: !2591, line: 100, baseType: !302, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2648, file: !2591, line: 101, baseType: !403, size: 32, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2648, file: !2591, line: 102, baseType: !403, size: 32, offset: 96)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2590, file: !2591, line: 111, baseType: !2654, size: 128)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 108, size: 128, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2654, file: !2591, line: 109, baseType: !288, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2654, file: !2591, line: 110, baseType: !109, size: 32, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2590, file: !2591, line: 118, baseType: !2659, size: 128)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !2591, line: 114, size: 128, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2659, file: !2591, line: 115, baseType: !324, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2659, file: !2591, line: 116, baseType: !109, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2659, file: !2591, line: 117, baseType: !7, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !962, file: !608, line: 1208, baseType: !2442, size: 448, offset: 17664)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !962, file: !608, line: 1215, baseType: !406, size: 64, offset: 18112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !962, file: !608, line: 1217, baseType: !406, size: 64, offset: 18176)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !962, file: !608, line: 1219, baseType: !406, size: 64, offset: 18240)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !962, file: !608, line: 1223, baseType: !2669, size: 64, offset: 18304)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2670, line: 99, baseType: !2671)
!2670 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2670, line: 99, size: 64, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2671, file: !2670, line: 99, baseType: !1216, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !962, file: !608, line: 1225, baseType: !374, size: 32, offset: 18368)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !962, file: !608, line: 1226, baseType: !109, size: 32, offset: 18400)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !962, file: !608, line: 1227, baseType: !109, size: 32, offset: 18432)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !962, file: !608, line: 1231, baseType: !2678, size: 64, offset: 18496)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !608, line: 1231, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !962, file: !608, line: 1233, baseType: !152, size: 128, offset: 18560)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !962, file: !608, line: 1240, baseType: !2682, size: 64, offset: 18688)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !608, line: 62, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !962, file: !608, line: 1242, baseType: !2685, size: 64, offset: 18752)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !608, line: 1242, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !962, file: !608, line: 1244, baseType: !152, size: 128, offset: 18816)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !962, file: !608, line: 1245, baseType: !2689, size: 64, offset: 18944)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !608, line: 51, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !962, file: !608, line: 1246, baseType: !633, size: 256, offset: 19008)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !962, file: !608, line: 1247, baseType: !7, size: 32, offset: 19264)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !962, file: !608, line: 1250, baseType: !2694, size: 64, offset: 19328)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !608, line: 57, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !962, file: !608, line: 1251, baseType: !633, size: 256, offset: 19392)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !962, file: !608, line: 1252, baseType: !152, size: 128, offset: 19648)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !962, file: !608, line: 1259, baseType: !1930, size: 64, offset: 19776)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !962, file: !608, line: 1260, baseType: !1422, size: 16, offset: 19840)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !962, file: !608, line: 1261, baseType: !1422, size: 16, offset: 19856)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !962, file: !608, line: 1314, baseType: !2702, size: 64, offset: 19904)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2704, line: 62, size: 256, align: 256, elements: !2705)
!2704 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2703, file: !2704, line: 75, baseType: !403, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2703, file: !2704, line: 90, baseType: !403, size: 32, offset: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2703, file: !2704, line: 112, baseType: !407, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2703, file: !2704, line: 132, baseType: !403, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2703, file: !2704, line: 140, baseType: !403, size: 32, offset: 160)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2703, file: !2704, line: 149, baseType: !403, size: 32, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2703, file: !2704, line: 154, baseType: !2713, offset: 224)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !1354)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !962, file: !608, line: 1315, baseType: !402, size: 32, offset: 19968)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !962, file: !608, line: 1316, baseType: !402, size: 32, offset: 20000)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !962, file: !608, line: 1321, baseType: !302, size: 64, offset: 20032)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !962, file: !608, line: 1325, baseType: !109, size: 32, offset: 20096)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !962, file: !608, line: 1326, baseType: !109, size: 32, offset: 20128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !962, file: !608, line: 1327, baseType: !109, size: 32, offset: 20160)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !962, file: !608, line: 1328, baseType: !109, size: 32, offset: 20192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !962, file: !608, line: 1329, baseType: !946, size: 128, align: 64, offset: 20224)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !962, file: !608, line: 1332, baseType: !2723, size: 128, offset: 20352)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2724, line: 51, size: 128, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2725 = !{!2726, !2731, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2723, file: !2724, line: 60, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2728, line: 7, size: 64, elements: !2729)
!2728 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2727, file: !2728, line: 12, baseType: !1213, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2723, file: !2724, line: 63, baseType: !1453, size: 8, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2723, file: !2724, line: 70, baseType: !1453, size: 8, offset: 72)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !962, file: !608, line: 1335, baseType: !1982, size: 64, offset: 20480)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !962, file: !608, line: 1337, baseType: !2735, size: 128, offset: 20544)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2724, line: 39, size: 128, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2735, file: !2724, line: 40, baseType: !1759, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2735, file: !2724, line: 42, baseType: !403, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2735, file: !2724, line: 43, baseType: !403, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !962, file: !608, line: 1340, baseType: !2741, size: 64, offset: 20672)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !608, line: 69, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !962, file: !608, line: 1351, baseType: !109, size: 32, offset: 20736)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !962, file: !608, line: 1352, baseType: !109, size: 32, offset: 20768)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !962, file: !608, line: 1354, baseType: !302, size: 64, offset: 20800)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !962, file: !608, line: 1364, baseType: !406, size: 64, offset: 20864)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !962, file: !608, line: 1365, baseType: !406, size: 64, offset: 20928)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !962, file: !608, line: 1412, baseType: !302, size: 64, offset: 20992)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !962, file: !608, line: 1453, baseType: !2750, size: 64, offset: 21056)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !608, line: 1453, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !962, file: !608, line: 1457, baseType: !2753, size: 64, offset: 21120)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2755)
!2755 = !{!2756, !2757, !2776, !2779, !2780, !2813, !2823}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2754, file: !68, line: 62, baseType: !67, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !68, line: 64, baseType: !2758, size: 192, offset: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2754, file: !68, line: 64, size: 192, elements: !2759)
!2759 = !{!2760, !2771}
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !2758, file: !68, line: 65, baseType: !2761, size: 192)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !68, line: 65, size: 192, elements: !2762)
!2762 = !{!2763, !2770}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2761, file: !68, line: 66, baseType: !2764, size: 128)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2765, line: 50, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2764, file: !2765, line: 52, baseType: !302, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2764, file: !2765, line: 54, baseType: !7, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2764, file: !2765, line: 55, baseType: !7, size: 32, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2761, file: !68, line: 67, baseType: !302, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, scope: !2758, file: !68, line: 70, baseType: !2772, size: 192)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !68, line: 70, size: 192, elements: !2773)
!2773 = !{!2774, !2775}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2772, file: !68, line: 71, baseType: !946, size: 128, align: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2772, file: !68, line: 72, baseType: !302, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2754, file: !68, line: 76, baseType: !2777, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2754, file: !68, line: 77, baseType: !302, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2754, file: !68, line: 79, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2765, line: 25, size: 256, elements: !2783)
!2783 = !{!2784, !2790, !2794}
!2784 = !DIDerivedType(tag: DW_TAG_member, scope: !2782, file: !2765, line: 26, baseType: !2785, size: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2782, file: !2765, line: 26, size: 128, elements: !2786)
!2786 = !{!2787, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2785, file: !2765, line: 27, baseType: !2788, size: 128)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !2313)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2785, file: !2765, line: 28, baseType: !2788, size: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2782, file: !2765, line: 31, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2765, line: 23, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !2782, file: !2765, line: 33, baseType: !2795, size: 64, offset: 192)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2782, file: !2765, line: 33, size: 64, elements: !2796)
!2796 = !{!2797, !2803, !2808}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2795, file: !2765, line: 38, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2795, file: !2765, line: 34, size: 64, elements: !2799)
!2799 = !{!2800, !2801, !2802}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2798, file: !2765, line: 35, baseType: !1396, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2798, file: !2765, line: 36, baseType: !210, size: 8, offset: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2798, file: !2765, line: 37, baseType: !210, size: 8, offset: 40)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2795, file: !2765, line: 42, baseType: !2804, size: 16)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2795, file: !2765, line: 39, size: 16, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2804, file: !2765, line: 40, baseType: !210, size: 8)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2804, file: !2765, line: 41, baseType: !210, size: 8, offset: 8)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2795, file: !2765, line: 46, baseType: !2809, size: 16)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2795, file: !2765, line: 43, size: 16, elements: !2810)
!2810 = !{!2811, !2812}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2809, file: !2765, line: 44, baseType: !210, size: 8)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2809, file: !2765, line: 45, baseType: !210, size: 8, offset: 8)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2754, file: !68, line: 81, baseType: !2814, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2815, file: !68, line: 86, baseType: !2777, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2815, file: !68, line: 87, baseType: !302, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2815, file: !68, line: 88, baseType: !302, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2815, file: !68, line: 89, baseType: !302, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2815, file: !68, line: 90, baseType: !1453, size: 8, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2815, file: !68, line: 92, baseType: !2814, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2754, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !962, file: !608, line: 1463, baseType: !2825, offset: 21184)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !608, line: 739, elements: !537)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !962, file: !608, line: 1470, baseType: !946, size: 128, align: 64, offset: 21184)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !962, file: !608, line: 1471, baseType: !975, size: 32, offset: 21312)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !962, file: !608, line: 1472, baseType: !109, size: 32, offset: 21344)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !962, file: !608, line: 1474, baseType: !961, size: 64, offset: 21376)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !962, file: !608, line: 1475, baseType: !2831, size: 320, offset: 21440)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2832, line: 11, size: 320, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2833 = !{!2834, !2835, !2836, !2841}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2831, file: !2832, line: 16, baseType: !529, size: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2831, file: !2832, line: 17, baseType: !302, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2831, file: !2832, line: 18, baseType: !2837, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !2832, line: 19, baseType: !402, size: 32, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !962, file: !608, line: 1478, baseType: !2843, size: 64, offset: 21760)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2845, line: 49, size: 512, elements: !2846)
!2845 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2853, !2854, !2855, !2857}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2844, file: !2845, line: 50, baseType: !2843, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2844, file: !2845, line: 51, baseType: !324, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2844, file: !2845, line: 52, baseType: !302, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2844, file: !2845, line: 53, baseType: !302, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2844, file: !2845, line: 54, baseType: !2852, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2844, file: !2845, line: 56, baseType: !7, size: 32, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2844, file: !2845, line: 58, baseType: !7, size: 32, offset: 352)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2844, file: !2845, line: 59, baseType: !2856, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !153, line: 159, baseType: !406)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2844, file: !2845, line: 60, baseType: !2121, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !962, file: !608, line: 1482, baseType: !975, size: 32, offset: 21824)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !962, file: !608, line: 1489, baseType: !324, size: 64, offset: 21888)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !962, file: !608, line: 1504, baseType: !324, size: 64, offset: 21952)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !962, file: !608, line: 1505, baseType: !407, size: 64, offset: 22016)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !962, file: !608, line: 1506, baseType: !406, size: 64, offset: 22080)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !962, file: !608, line: 1507, baseType: !407, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !962, file: !608, line: 1508, baseType: !407, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !962, file: !608, line: 1509, baseType: !407, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !962, file: !608, line: 1510, baseType: !946, size: 128, align: 64, offset: 22208)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !962, file: !608, line: 1511, baseType: !109, size: 32, offset: 22336)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !962, file: !608, line: 1515, baseType: !2869, size: 64, offset: 22400)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !989, line: 56, size: 64, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2869, file: !989, line: 57, baseType: !992, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !962, file: !608, line: 1518, baseType: !2869, size: 64, offset: 22464)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !962, file: !608, line: 1528, baseType: !946, size: 128, align: 64, offset: 22528)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !962, file: !608, line: 1552, baseType: !2875, size: 35328, offset: 23040)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2876, line: 430, size: 35328, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2877 = !{!2878, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2907, !2908, !2909, !2910, !2911, !2912, !2915, !2916, !2917, !2918}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2875, file: !2876, line: 432, baseType: !2879, size: 192)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2880, size: 192, elements: !253)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2881, line: 16, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2880, file: !2881, line: 17, baseType: !220, size: 16)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2880, file: !2881, line: 18, baseType: !220, size: 16, offset: 16)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2880, file: !2881, line: 19, baseType: !220, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2880, file: !2881, line: 19, baseType: !220, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2880, file: !2881, line: 19, baseType: !220, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2880, file: !2881, line: 19, baseType: !220, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2880, file: !2881, line: 19, baseType: !220, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2880, file: !2881, line: 20, baseType: !220, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2880, file: !2881, line: 20, baseType: !220, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2880, file: !2881, line: 20, baseType: !220, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2880, file: !2881, line: 20, baseType: !220, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2880, file: !2881, line: 20, baseType: !220, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2880, file: !2881, line: 20, baseType: !220, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2875, file: !2876, line: 436, baseType: !302, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2875, file: !2876, line: 440, baseType: !222, size: 16, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2875, file: !2876, line: 441, baseType: !222, size: 16, offset: 272)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2875, file: !2876, line: 442, baseType: !222, size: 16, offset: 288)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2875, file: !2876, line: 443, baseType: !222, size: 16, offset: 304)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2875, file: !2876, line: 447, baseType: !302, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2875, file: !2876, line: 448, baseType: !302, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2875, file: !2876, line: 459, baseType: !2904, size: 256, offset: 448)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2905, size: 256, elements: !1341)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2876, line: 428, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2875, file: !2876, line: 461, baseType: !302, size: 64, offset: 704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2875, file: !2876, line: 463, baseType: !302, size: 64, offset: 768)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2875, file: !2876, line: 465, baseType: !302, size: 64, offset: 832)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2875, file: !2876, line: 466, baseType: !302, size: 64, offset: 896)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2875, file: !2876, line: 467, baseType: !302, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2875, file: !2876, line: 473, baseType: !2913, size: 64, offset: 1024)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2876, line: 10, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2875, file: !2876, line: 480, baseType: !302, size: 64, offset: 1088)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2875, file: !2876, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2875, file: !2876, line: 491, baseType: !402, size: 32, offset: 1184)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2875, file: !2876, line: 501, baseType: !2919, size: 33792, offset: 1536)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2920, line: 448, size: 33792, elements: !2921)
!2920 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2921 = !{!2922, !2923, !2924, !3086, !3087, !3093, !3094}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2919, file: !2920, line: 461, baseType: !7, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2919, file: !2920, line: 468, baseType: !302, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2919, file: !2920, line: 476, baseType: !2925, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2920, line: 356, size: 33280, align: 512, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2926, file: !2920, line: 358, baseType: !7, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2926, file: !2920, line: 361, baseType: !7, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2926, file: !2920, line: 364, baseType: !406, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2926, file: !2920, line: 367, baseType: !406, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2926, file: !2920, line: 370, baseType: !406, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2926, file: !2920, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2926, file: !2920, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2926, file: !2920, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2926, file: !2920, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2926, file: !2920, line: 397, baseType: !2938, size: 32768, offset: 512)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2920, line: 348, size: 32768, elements: !2939)
!2939 = !{!2940, !2955, !2992, !3069, !3082}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2938, file: !2920, line: 349, baseType: !2941, size: 896)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2920, line: 12, size: 896, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2954}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2941, file: !2920, line: 13, baseType: !402, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2941, file: !2920, line: 14, baseType: !402, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2941, file: !2920, line: 15, baseType: !402, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2941, file: !2920, line: 16, baseType: !402, size: 32, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2941, file: !2920, line: 17, baseType: !402, size: 32, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2941, file: !2920, line: 18, baseType: !402, size: 32, offset: 160)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2941, file: !2920, line: 19, baseType: !402, size: 32, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2941, file: !2920, line: 22, baseType: !2951, size: 640, offset: 224)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 640, elements: !2952)
!2952 = !{!2953}
!2953 = !DISubrange(count: 20)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2941, file: !2920, line: 25, baseType: !402, size: 32, offset: 864)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2938, file: !2920, line: 350, baseType: !2956, size: 4096, align: 128)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2920, line: 34, size: 4096, align: 128, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2977, !2978, !2979, !2981, !2983, !2987}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2956, file: !2920, line: 35, baseType: !220, size: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2956, file: !2920, line: 36, baseType: !220, size: 16, offset: 16)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2956, file: !2920, line: 37, baseType: !220, size: 16, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2956, file: !2920, line: 38, baseType: !220, size: 16, offset: 48)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !2920, line: 39, baseType: !2963, size: 128, offset: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2956, file: !2920, line: 39, size: 128, elements: !2964)
!2964 = !{!2965, !2970}
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2920, line: 40, baseType: !2966, size: 128)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2920, line: 40, size: 128, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2966, file: !2920, line: 41, baseType: !406, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2966, file: !2920, line: 42, baseType: !406, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !2920, line: 44, baseType: !2971, size: 128)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2920, line: 44, size: 128, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2971, file: !2920, line: 45, baseType: !402, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2971, file: !2920, line: 46, baseType: !402, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2971, file: !2920, line: 47, baseType: !402, size: 32, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2971, file: !2920, line: 48, baseType: !402, size: 32, offset: 96)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2956, file: !2920, line: 51, baseType: !402, size: 32, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2956, file: !2920, line: 52, baseType: !402, size: 32, offset: 224)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2956, file: !2920, line: 55, baseType: !2980, size: 1024, offset: 256)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1024, elements: !415)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2956, file: !2920, line: 58, baseType: !2982, size: 2048, offset: 1280)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 2048, elements: !257)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2956, file: !2920, line: 60, baseType: !2984, size: 384, offset: 3328)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 384, elements: !2985)
!2985 = !{!2986}
!2986 = !DISubrange(count: 12)
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !2920, line: 62, baseType: !2988, size: 384, offset: 3712)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2956, file: !2920, line: 62, size: 384, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2988, file: !2920, line: 63, baseType: !2984, size: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2988, file: !2920, line: 64, baseType: !2984, size: 384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2938, file: !2920, line: 351, baseType: !2993, size: 1088)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2920, line: 79, size: 1088, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3068}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2993, file: !2920, line: 80, baseType: !402, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2993, file: !2920, line: 81, baseType: !402, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2993, file: !2920, line: 82, baseType: !402, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2993, file: !2920, line: 83, baseType: !402, size: 32, offset: 96)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2993, file: !2920, line: 84, baseType: !402, size: 32, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2993, file: !2920, line: 85, baseType: !402, size: 32, offset: 160)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2993, file: !2920, line: 86, baseType: !402, size: 32, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2993, file: !2920, line: 88, baseType: !2951, size: 640, offset: 224)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2993, file: !2920, line: 89, baseType: !210, size: 8, offset: 864)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2993, file: !2920, line: 90, baseType: !210, size: 8, offset: 872)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2993, file: !2920, line: 91, baseType: !210, size: 8, offset: 880)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2993, file: !2920, line: 92, baseType: !210, size: 8, offset: 888)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2993, file: !2920, line: 93, baseType: !210, size: 8, offset: 896)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2993, file: !2920, line: 94, baseType: !210, size: 8, offset: 904)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2993, file: !2920, line: 95, baseType: !3010, size: 64, offset: 960)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3012, line: 11, size: 128, elements: !3013)
!3012 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3011, file: !3012, line: 12, baseType: !288, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3011, file: !3012, line: 13, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3018, line: 103, size: 1344, elements: !3019)
!3018 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3048, !3049, !3050}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3017, file: !3018, line: 109, baseType: !302, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3017, file: !3018, line: 110, baseType: !302, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3017, file: !3018, line: 111, baseType: !302, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3017, file: !3018, line: 112, baseType: !302, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3017, file: !3018, line: 113, baseType: !302, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3017, file: !3018, line: 114, baseType: !302, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3017, file: !3018, line: 117, baseType: !302, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3017, file: !3018, line: 118, baseType: !302, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3017, file: !3018, line: 119, baseType: !302, size: 64, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3017, file: !3018, line: 120, baseType: !302, size: 64, offset: 576)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3017, file: !3018, line: 121, baseType: !302, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3017, file: !3018, line: 122, baseType: !302, size: 64, offset: 704)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3017, file: !3018, line: 123, baseType: !302, size: 64, offset: 768)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3017, file: !3018, line: 124, baseType: !302, size: 64, offset: 832)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3017, file: !3018, line: 125, baseType: !302, size: 64, offset: 896)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3017, file: !3018, line: 139, baseType: !302, size: 64, offset: 960)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3017, file: !3018, line: 142, baseType: !302, size: 64, offset: 1024)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3017, file: !3018, line: 144, baseType: !3038, size: 64, offset: 1088)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3017, file: !3018, line: 144, size: 64, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3038, file: !3018, line: 146, baseType: !220, size: 16)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3038, file: !3018, line: 148, baseType: !406, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3038, file: !3018, line: 150, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3018, line: 59, size: 64, elements: !3044)
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3043, file: !3018, line: 61, baseType: !406, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3043, file: !3018, line: 63, baseType: !406, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3043, file: !3018, line: 65, baseType: !406, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3017, file: !3018, line: 153, baseType: !302, size: 64, offset: 1152)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3017, file: !3018, line: 154, baseType: !302, size: 64, offset: 1216)
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3017, file: !3018, line: 156, baseType: !3051, size: 64, offset: 1280)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3017, file: !3018, line: 156, size: 64, elements: !3052)
!3052 = !{!3053, !3054, !3055}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3051, file: !3018, line: 158, baseType: !220, size: 16)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3051, file: !3018, line: 160, baseType: !406, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3051, file: !3018, line: 162, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3018, line: 69, size: 64, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3056, file: !3018, line: 71, baseType: !406, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3056, file: !3018, line: 73, baseType: !406, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3056, file: !3018, line: 75, baseType: !406, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3056, file: !3018, line: 77, baseType: !406, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3056, file: !3018, line: 80, baseType: !406, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3056, file: !3018, line: 83, baseType: !406, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3056, file: !3018, line: 86, baseType: !406, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3056, file: !3018, line: 88, baseType: !406, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3056, file: !3018, line: 93, baseType: !406, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3056, file: !3018, line: 100, baseType: !406, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2993, file: !2920, line: 96, baseType: !402, size: 32, offset: 1024)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2938, file: !2920, line: 352, baseType: !3070, size: 4608, align: 512)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2920, line: 333, size: 4608, align: 512, elements: !3071)
!3071 = !{!3072, !3073, !3080}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3070, file: !2920, line: 334, baseType: !2956, size: 4096, align: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3070, file: !2920, line: 335, baseType: !3074, size: 512, offset: 4096)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2920, line: 312, size: 512, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3074, file: !2920, line: 313, baseType: !406, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3074, file: !2920, line: 314, baseType: !406, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3074, file: !2920, line: 315, baseType: !3079, size: 384, offset: 128)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 384, elements: !1440)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3070, file: !2920, line: 336, baseType: !3081, offset: 4608)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !1354)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2938, file: !2920, line: 353, baseType: !3083, size: 32768)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 32768, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 4096)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2919, file: !2920, line: 484, baseType: !2925, size: 64, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2919, file: !2920, line: 491, baseType: !3088, size: 128, offset: 256)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2920, line: 404, size: 128, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3088, file: !2920, line: 424, baseType: !406, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3088, file: !2920, line: 432, baseType: !7, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3088, file: !2920, line: 440, baseType: !7, size: 32, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2919, file: !2920, line: 498, baseType: !3088, size: 128, offset: 384)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2919, file: !2920, line: 508, baseType: !2926, size: 33280, align: 512, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !929, file: !930, line: 16, baseType: !939, size: 192, offset: 512)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !929, file: !930, line: 17, baseType: !202, size: 32, offset: 704)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !485, file: !14, line: 1240, baseType: !324, size: 64, offset: 6912)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !485, file: !14, line: 1243, baseType: !402, size: 32, offset: 6976)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !485, file: !14, line: 1245, baseType: !686, size: 64, offset: 7040)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !485, file: !14, line: 1246, baseType: !686, size: 64, offset: 7104)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !485, file: !14, line: 1248, baseType: !403, size: 32, offset: 7168)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !485, file: !14, line: 1249, baseType: !3103, size: 64, offset: 7232)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !485, file: !14, line: 1252, baseType: !3106, size: 256, offset: 7296)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !415)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !485, file: !14, line: 1253, baseType: !3108, size: 128, offset: 7552)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3109, line: 21, baseType: !3110)
!3109 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3109, line: 19, size: 128, elements: !3111)
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3110, file: !3109, line: 20, baseType: !3113, size: 128)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !2313)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !485, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !485, file: !14, line: 1261, baseType: !633, size: 256, offset: 7744)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !485, file: !14, line: 1267, baseType: !171, size: 64, offset: 8000)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !485, file: !14, line: 1269, baseType: !431, size: 64, offset: 8064)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !485, file: !14, line: 1271, baseType: !3119, size: 448, offset: 8128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !695, line: 63, size: 448, elements: !3120)
!3120 = !{!3121, !3126, !3127, !3128, !3129, !3130, !3131}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3119, file: !695, line: 64, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!302, !3125, !693}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3119, file: !695, line: 66, baseType: !3122, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3119, file: !695, line: 69, baseType: !288, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3119, file: !695, line: 70, baseType: !109, size: 32, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3119, file: !695, line: 71, baseType: !7, size: 32, offset: 224)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3119, file: !695, line: 74, baseType: !152, size: 128, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3119, file: !695, line: 85, baseType: !3132, size: 64, offset: 384)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !485, file: !14, line: 1274, baseType: !637, size: 64, offset: 8576)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !485, file: !14, line: 1280, baseType: !637, size: 64, offset: 8640)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !485, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !485, file: !14, line: 1286, baseType: !2032, size: 32, offset: 8736)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !485, file: !14, line: 1289, baseType: !3138, size: 64, offset: 8768)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2161, line: 18, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !485, file: !14, line: 1290, baseType: !525, size: 64, offset: 8832)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !485, file: !14, line: 1297, baseType: !1536, size: 64, offset: 8896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !485, file: !14, line: 1304, baseType: !3143, size: 64, offset: 8960)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3144, line: 49, size: 64, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3143, file: !3144, line: 50, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3144, line: 41, size: 512, align: 512, elements: !3149)
!3149 = !{!3150, !3151, !3156}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3148, file: !3144, line: 43, baseType: !182, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3148, file: !3144, line: 45, baseType: !3152, size: 192, offset: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3144, line: 29, size: 192, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3152, file: !3144, line: 30, baseType: !152, size: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3152, file: !3144, line: 32, baseType: !288, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3148, file: !3144, line: 46, baseType: !288, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !485, file: !14, line: 1305, baseType: !3143, size: 64, offset: 9024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !485, file: !14, line: 1306, baseType: !946, size: 128, align: 64, offset: 9088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !485, file: !14, line: 1307, baseType: !2160, size: 256, offset: 9216)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !485, file: !14, line: 1309, baseType: !633, size: 256, offset: 9472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !485, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !485, file: !14, line: 1317, baseType: !182, size: 32, align: 512, offset: 10240)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !485, file: !14, line: 1318, baseType: !152, size: 128, offset: 10304)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !485, file: !14, line: 1320, baseType: !182, size: 32, offset: 10432)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !485, file: !14, line: 1321, baseType: !152, size: 128, offset: 10496)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !479, file: !480, line: 73, baseType: !109, size: 32, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !479, file: !480, line: 74, baseType: !3168, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1378, line: 42, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !433, file: !370, line: 141, baseType: !3172, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!109, !756, !1453}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !433, file: !370, line: 142, baseType: !3176, size: 64, offset: 768)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!368, !368, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !369, file: !370, line: 96, baseType: !484, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !369, file: !370, line: 97, baseType: !302, size: 64, offset: 896)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !369, file: !370, line: 98, baseType: !324, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 100, baseType: !3185, size: 128, offset: 1024)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 100, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3185, file: !370, line: 101, baseType: !152, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3185, file: !370, line: 102, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !369, file: !370, line: 104, baseType: !152, size: 128, offset: 1152)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !369, file: !370, line: 105, baseType: !152, size: 128, offset: 1280)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !369, file: !370, line: 113, baseType: !3193, size: 128, offset: 1408)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 109, size: 128, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3193, file: !370, line: 110, baseType: !529, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3193, file: !370, line: 111, baseType: !384, size: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3193, file: !370, line: 112, baseType: !946, size: 128, align: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !362, file: !14, line: 1968, baseType: !3199, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!171, !368, !333, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3204, line: 10, size: 128, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3205 = !{!3206, !3210}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3203, file: !3204, line: 11, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !324}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3203, file: !3204, line: 12, baseType: !324, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !362, file: !14, line: 1969, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!109, !3168, !333, !109}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !362, file: !14, line: 1970, baseType: !3216, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!356, !333, !109, !1453}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !362, file: !14, line: 1972, baseType: !3220, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!109, !368, !252, !109}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !362, file: !14, line: 1974, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!109, !3168, !333, !368, !294, !1453}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !362, file: !14, line: 1976, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!109, !368, !333, !368}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !362, file: !14, line: 1977, baseType: !3232, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!109, !333, !368}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !362, file: !14, line: 1978, baseType: !3236, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!109, !3168, !333, !368, !171}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !362, file: !14, line: 1980, baseType: !3240, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!109, !3168, !333, !368, !294}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !362, file: !14, line: 1982, baseType: !3232, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !362, file: !14, line: 1983, baseType: !3245, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!109, !3168, !333, !368, !294, !489}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !362, file: !14, line: 1985, baseType: !3249, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!109, !3168, !333, !368, !333, !368, !7}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !362, file: !14, line: 1987, baseType: !3253, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!109, !3168, !368, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3271, !3280, !3281, !3286, !3287, !3288}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3257, file: !14, line: 227, baseType: !7, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3257, file: !14, line: 228, baseType: !294, size: 16, offset: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !14, line: 241, baseType: !3262, size: 32, offset: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !14, line: 241, size: 32, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3262, file: !14, line: 242, baseType: !339, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3262, file: !14, line: 243, baseType: !3266, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3267, line: 16, baseType: !3268)
!3267 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3267, line: 14, size: 32, elements: !3269)
!3269 = !{!3270}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3268, file: !3267, line: 15, baseType: !344, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !14, line: 245, baseType: !3272, size: 32, offset: 96)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !14, line: 245, size: 32, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3272, file: !14, line: 246, baseType: !348, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3272, file: !14, line: 247, baseType: !3276, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3267, line: 20, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3267, line: 18, size: 32, elements: !3278)
!3278 = !{!3279}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3277, file: !3267, line: 19, baseType: !352, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3257, file: !14, line: 249, baseType: !494, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3257, file: !14, line: 250, baseType: !3282, size: 128, offset: 192)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !687, line: 13, size: 128, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3282, file: !687, line: 14, baseType: !686, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3282, file: !687, line: 15, baseType: !288, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3257, file: !14, line: 251, baseType: !3282, size: 128, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3257, file: !14, line: 252, baseType: !3282, size: 128, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3257, file: !14, line: 259, baseType: !1292, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !362, file: !14, line: 1988, baseType: !3290, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!109, !3168, !756, !3293, !402, !7}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3295, line: 22, size: 1280, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3294, file: !3295, line: 23, baseType: !402, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3294, file: !3295, line: 24, baseType: !294, size: 16, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3294, file: !3295, line: 25, baseType: !7, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3294, file: !3295, line: 26, baseType: !1418, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3294, file: !3295, line: 27, baseType: !406, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3294, file: !3295, line: 28, baseType: !406, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3294, file: !3295, line: 41, baseType: !406, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3294, file: !3295, line: 42, baseType: !489, size: 32, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3294, file: !3295, line: 43, baseType: !489, size: 32, offset: 352)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3294, file: !3295, line: 44, baseType: !339, size: 32, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3294, file: !3295, line: 45, baseType: !348, size: 32, offset: 416)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3294, file: !3295, line: 46, baseType: !494, size: 64, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3294, file: !3295, line: 47, baseType: !3282, size: 128, offset: 512)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3294, file: !3295, line: 48, baseType: !3282, size: 128, offset: 640)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3294, file: !3295, line: 49, baseType: !3282, size: 128, offset: 768)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3294, file: !3295, line: 50, baseType: !3282, size: 128, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3294, file: !3295, line: 51, baseType: !406, size: 64, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3294, file: !3295, line: 52, baseType: !406, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3294, file: !3295, line: 53, baseType: !402, size: 32, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3294, file: !3295, line: 54, baseType: !402, size: 32, offset: 1184)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3294, file: !3295, line: 55, baseType: !406, size: 64, offset: 1216)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !362, file: !14, line: 1990, baseType: !3319, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!284, !368, !252, !299}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !362, file: !14, line: 1991, baseType: !3323, size: 64, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!109, !333, !3326, !406, !406}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !362, file: !14, line: 1993, baseType: !3329, size: 64, offset: 1088)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!109, !333, !109}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !362, file: !14, line: 1994, baseType: !3333, size: 64, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!109, !333, !368, !1292, !7, !294}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !362, file: !14, line: 1997, baseType: !3337, size: 64, offset: 1216)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!109, !3168, !333, !1292, !294}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !362, file: !14, line: 1999, baseType: !3341, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!356, !3168, !368, !109}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !362, file: !14, line: 2001, baseType: !3345, size: 64, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!109, !3168, !368, !356, !109}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !362, file: !14, line: 2003, baseType: !3349, size: 64, offset: 1408)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!109, !3168, !368, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !362, file: !14, line: 2005, baseType: !3355, size: 64, offset: 1472)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!109, !368, !3352}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !362, file: !14, line: 2006, baseType: !3359, size: 64, offset: 1536)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!3362, !333}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3364)
!3364 = !{!3365, !3372}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3363, file: !14, line: 3193, baseType: !3366, size: 128)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3367, line: 296, size: 128, elements: !3368)
!3367 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3366, file: !3367, line: 297, baseType: !182, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3366, file: !3367, line: 299, baseType: !698, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3366, file: !3367, line: 300, baseType: !324, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3363, file: !14, line: 3194, baseType: !402, size: 32, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !334, file: !14, line: 655, baseType: !484, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !334, file: !14, line: 656, baseType: !329, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !334, file: !14, line: 659, baseType: !324, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !334, file: !14, line: 663, baseType: !302, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !14, line: 671, baseType: !3378, size: 32, offset: 704)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !14, line: 671, size: 32, elements: !3379)
!3379 = !{!3380, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3378, file: !14, line: 672, baseType: !3381, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3378, file: !14, line: 673, baseType: !7, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !334, file: !14, line: 675, baseType: !489, size: 32, offset: 736)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !334, file: !14, line: 676, baseType: !494, size: 64, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !334, file: !14, line: 677, baseType: !3282, size: 128, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !334, file: !14, line: 678, baseType: !3282, size: 128, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !334, file: !14, line: 679, baseType: !3282, size: 128, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !334, file: !14, line: 680, baseType: !182, size: 32, offset: 1216)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !334, file: !14, line: 681, baseType: !222, size: 16, offset: 1248)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !334, file: !14, line: 682, baseType: !210, size: 8, offset: 1264)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !334, file: !14, line: 683, baseType: !210, size: 8, offset: 1272)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !334, file: !14, line: 684, baseType: !834, size: 64, offset: 1280)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !334, file: !14, line: 691, baseType: !302, size: 64, offset: 1344)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !334, file: !14, line: 692, baseType: !846, size: 320, offset: 1408)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !334, file: !14, line: 694, baseType: !302, size: 64, offset: 1728)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !334, file: !14, line: 695, baseType: !302, size: 64, offset: 1792)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !334, file: !14, line: 697, baseType: !529, size: 128, offset: 1856)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !334, file: !14, line: 698, baseType: !152, size: 128, offset: 1984)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !334, file: !14, line: 707, baseType: !152, size: 128, offset: 2112)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !334, file: !14, line: 708, baseType: !152, size: 128, offset: 2240)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !14, line: 709, baseType: !3402, size: 128, offset: 2368)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !14, line: 709, size: 128, elements: !3403)
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3402, file: !14, line: 710, baseType: !525, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3402, file: !14, line: 711, baseType: !946, size: 128, align: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !334, file: !14, line: 713, baseType: !639, size: 64, offset: 2496)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !334, file: !14, line: 714, baseType: !639, size: 64, offset: 2560)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !334, file: !14, line: 715, baseType: !202, size: 32, offset: 2624)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !334, file: !14, line: 716, baseType: !202, size: 32, offset: 2656)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !334, file: !14, line: 717, baseType: !202, size: 32, offset: 2688)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !334, file: !14, line: 719, baseType: !202, size: 32, offset: 2720)
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !14, line: 721, baseType: !3413, size: 64, offset: 2752)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !14, line: 721, size: 64, elements: !3414)
!3414 = !{!3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3413, file: !14, line: 722, baseType: !1567, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3413, file: !14, line: 723, baseType: !556, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !334, file: !14, line: 725, baseType: !3418, size: 64, offset: 2816)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !334, file: !14, line: 726, baseType: !330, size: 1536, align: 64, offset: 2880)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !334, file: !14, line: 727, baseType: !152, size: 128, offset: 4416)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !14, line: 728, baseType: !3423, size: 64, offset: 4544)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !14, line: 728, size: 64, elements: !3424)
!3424 = !{!3425, !3426, !3429, !3430}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3423, file: !14, line: 729, baseType: !1982, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3423, file: !14, line: 730, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3423, file: !14, line: 731, baseType: !252, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3423, file: !14, line: 732, baseType: !7, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !334, file: !14, line: 735, baseType: !403, size: 32, offset: 4608)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !334, file: !14, line: 738, baseType: !403, size: 32, offset: 4640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !334, file: !14, line: 739, baseType: !3103, size: 64, offset: 4672)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !334, file: !14, line: 750, baseType: !324, size: 64, offset: 4736)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !330, file: !14, line: 474, baseType: !3366, size: 128, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !330, file: !14, line: 475, baseType: !846, size: 320, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !330, file: !14, line: 476, baseType: !698, size: 32, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !330, file: !14, line: 477, baseType: !202, size: 32, offset: 544)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !330, file: !14, line: 482, baseType: !1148, size: 128, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !330, file: !14, line: 483, baseType: !302, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !330, file: !14, line: 484, baseType: !302, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !330, file: !14, line: 485, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3446)
!3446 = !{!3447, !3451, !3521, !3525, !3529, !3535, !3539, !3543, !3548, !3552, !3556, !3560, !3561, !3565, !3569, !3573, !3578, !3582, !3589, !3590}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3445, file: !14, line: 405, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!109, !1759, !568}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3445, file: !14, line: 406, baseType: !3452, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!109, !1292, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3457)
!3457 = !{!3458, !3488, !3502}
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !38, line: 295, baseType: !3459, size: 512)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !38, line: 295, size: 512, elements: !3460)
!3460 = !{!3461, !3487}
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3459, file: !38, line: 296, baseType: !3462, size: 448)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3459, file: !38, line: 296, size: 448, elements: !3463)
!3463 = !{!3464, !3465, !3474, !3475, !3476, !3485, !3486}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3462, file: !38, line: 298, baseType: !302, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !38, line: 299, baseType: !3466, size: 128, offset: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !38, line: 299, size: 128, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3466, file: !38, line: 300, baseType: !152, size: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !38, line: 302, baseType: !3470, size: 128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !38, line: 302, size: 128, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3470, file: !38, line: 303, baseType: !324, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3470, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3462, file: !38, line: 310, baseType: !329, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3462, file: !38, line: 311, baseType: !302, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !38, line: 312, baseType: !3477, size: 64, offset: 320)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !38, line: 312, size: 64, elements: !3478)
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3477, file: !38, line: 313, baseType: !324, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3477, file: !38, line: 314, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3483)
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3482, file: !38, line: 256, baseType: !302, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3462, file: !38, line: 316, baseType: !202, size: 32, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3462, file: !38, line: 317, baseType: !202, size: 32, offset: 416)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3459, file: !38, line: 323, baseType: !1760, size: 512, align: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !38, line: 325, baseType: !3489, size: 512, offset: 512)
!3489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !38, line: 325, size: 512, elements: !3490)
!3490 = !{!3491, !3501}
!3491 = !DIDerivedType(tag: DW_TAG_member, scope: !3489, file: !38, line: 326, baseType: !3492, size: 320)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3489, file: !38, line: 326, size: 320, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3492, file: !38, line: 327, baseType: !302, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3492, file: !38, line: 328, baseType: !302, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3492, file: !38, line: 329, baseType: !302, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3492, file: !38, line: 331, baseType: !202, size: 32, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3492, file: !38, line: 332, baseType: !202, size: 32, offset: 224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3492, file: !38, line: 333, baseType: !202, size: 32, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3492, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3489, file: !38, line: 339, baseType: !1760, size: 512, align: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !38, line: 341, baseType: !3503, size: 512, offset: 1024)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !38, line: 341, size: 512, elements: !3504)
!3504 = !{!3505, !3514, !3520}
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !38, line: 342, baseType: !3506, size: 384)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3503, file: !38, line: 342, size: 384, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3506, file: !38, line: 343, baseType: !302, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3506, file: !38, line: 344, baseType: !302, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3506, file: !38, line: 346, baseType: !324, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3506, file: !38, line: 347, baseType: !324, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3506, file: !38, line: 348, baseType: !324, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3506, file: !38, line: 349, baseType: !324, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !38, line: 352, baseType: !3515, size: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3503, file: !38, line: 352, size: 256, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3515, file: !38, line: 353, baseType: !302, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3515, file: !38, line: 354, baseType: !302, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3515, file: !38, line: 356, baseType: !152, size: 128, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3503, file: !38, line: 359, baseType: !1760, size: 512, align: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3445, file: !14, line: 409, baseType: !3522, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!109, !329, !568}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3445, file: !14, line: 412, baseType: !3526, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!1453, !329, !3455}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3445, file: !14, line: 414, baseType: !3530, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3445, file: !14, line: 416, baseType: !3536, size: 64, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!109, !1292, !329, !494, !7, !2852, !1997}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3445, file: !14, line: 419, baseType: !3540, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!109, !1292, !329, !494, !7, !7, !1759, !324}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3445, file: !14, line: 424, baseType: !3544, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!3547, !329, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !153, line: 131, baseType: !406)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3445, file: !14, line: 425, baseType: !3549, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3455, !299, !299}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3445, file: !14, line: 426, baseType: !3553, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!1453, !3455, !698}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3445, file: !14, line: 427, baseType: !3557, size: 64, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3455}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3445, file: !14, line: 428, baseType: !1586, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3445, file: !14, line: 433, baseType: !3562, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!109, !329, !3455, !3455, !74}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3445, file: !14, line: 435, baseType: !3566, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!109, !3455}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3445, file: !14, line: 436, baseType: !3570, size: 64, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!1453, !3455, !299, !299}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3445, file: !14, line: 438, baseType: !3574, size: 64, offset: 960)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !3455, !3577, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3445, file: !14, line: 439, baseType: !3579, size: 64, offset: 1024)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!109, !329, !1759}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3445, file: !14, line: 442, baseType: !3583, size: 64, offset: 1088)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!109, !3586, !1292, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3445, file: !14, line: 444, baseType: !1989, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3445, file: !14, line: 445, baseType: !3591, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!109, !1589, !1611}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !14, line: 486, baseType: !302, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !330, file: !14, line: 487, baseType: !846, size: 320, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !330, file: !14, line: 488, baseType: !2032, size: 32, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !330, file: !14, line: 489, baseType: !182, size: 32, offset: 1312)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !330, file: !14, line: 490, baseType: !152, size: 128, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !330, file: !14, line: 491, baseType: !324, size: 64, offset: 1472)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !319, file: !278, line: 180, baseType: !3601, size: 64, offset: 320)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!284, !1292, !175, !318, !252, !494, !299}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !319, file: !278, line: 182, baseType: !3601, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !278, line: 184, baseType: !3606, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!109, !1292, !175, !318, !1650}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !307, file: !278, line: 90, baseType: !3610, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !307, file: !278, line: 91, baseType: !3612, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !268, file: !168, line: 120, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!3617, !235}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3620)
!3620 = !{!3621, !3622, !3626, !3630, !3636, !3640}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3619, file: !82, line: 40, baseType: !81, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3619, file: !82, line: 41, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!1453}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3619, file: !82, line: 42, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!324}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3619, file: !82, line: 43, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!2121, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3619, file: !82, line: 44, baseType: !3637, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!2121}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3619, file: !82, line: 45, baseType: !3207, size: 64, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !268, file: !168, line: 121, baseType: !3642, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!2121, !235}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !268, file: !168, line: 122, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !235, !3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !167, file: !168, line: 70, baseType: !3652, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !509, line: 190, size: 1152, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3746, !3747, !3748, !3749, !3750, !3753}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3653, file: !509, line: 191, baseType: !202, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3653, file: !509, line: 192, baseType: !202, size: 32, offset: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3653, file: !509, line: 202, baseType: !3652, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3653, file: !509, line: 203, baseType: !171, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3653, file: !509, line: 205, baseType: !1019, size: 192, align: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3653, file: !509, line: 207, baseType: !2121, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3653, file: !509, line: 208, baseType: !7, size: 32, offset: 448)
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3653, file: !509, line: 209, baseType: !3663, size: 256, offset: 512)
!3663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3653, file: !509, line: 209, size: 256, elements: !3664)
!3664 = !{!3665, !3674, !3678}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3663, file: !509, line: 210, baseType: !3666, size: 256)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !509, line: 153, size: 256, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3673}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3666, file: !509, line: 154, baseType: !302, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3666, file: !509, line: 156, baseType: !1151, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3666, file: !509, line: 162, baseType: !3671, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !509, line: 162, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3666, file: !509, line: 167, baseType: !302, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3663, file: !509, line: 211, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !509, line: 170, size: 64, elements: !3676)
!3676 = !{!3677}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3675, file: !509, line: 171, baseType: !3652, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3663, file: !509, line: 212, baseType: !3679, size: 256)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !509, line: 174, size: 256, elements: !3680)
!3680 = !{!3681, !3741, !3744, !3745}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3679, file: !509, line: 175, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !509, line: 271, size: 768, elements: !3685)
!3685 = !{!3686, !3706, !3710, !3714, !3718, !3722, !3726, !3730, !3731, !3732, !3733, !3737}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3684, file: !509, line: 276, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!109, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !509, line: 251, size: 1216, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3691, file: !509, line: 253, baseType: !3652, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3691, file: !509, line: 254, baseType: !1292, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3691, file: !509, line: 255, baseType: !606, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3691, file: !509, line: 256, baseType: !324, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3691, file: !509, line: 259, baseType: !633, size: 256, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3691, file: !509, line: 260, baseType: !633, size: 256, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3691, file: !509, line: 261, baseType: !109, size: 32, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3691, file: !509, line: 262, baseType: !152, size: 128, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3691, file: !509, line: 263, baseType: !252, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3691, file: !509, line: 265, baseType: !299, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3691, file: !509, line: 266, baseType: !1453, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3691, file: !509, line: 267, baseType: !1453, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3691, file: !509, line: 268, baseType: !1695, size: 64, offset: 1152)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3684, file: !509, line: 277, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3690}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3684, file: !509, line: 290, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!109, !606, !324}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3684, file: !509, line: 292, baseType: !3715, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!324, !606, !1580}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3684, file: !509, line: 293, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!324, !606, !324, !1580}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3684, file: !509, line: 294, baseType: !3723, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !606, !324}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3684, file: !509, line: 296, baseType: !3727, size: 64, offset: 384)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!284, !3690, !252, !299, !494}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3684, file: !509, line: 306, baseType: !299, size: 64, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3684, file: !509, line: 313, baseType: !1453, size: 8, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3684, file: !509, line: 314, baseType: !3727, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3684, file: !509, line: 317, baseType: !3734, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!1637, !3690, !1639}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3684, file: !509, line: 320, baseType: !3738, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!109, !3690, !1650}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3679, file: !509, line: 176, baseType: !3742, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !509, line: 35, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3679, file: !509, line: 177, baseType: !494, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3679, file: !509, line: 178, baseType: !3652, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3653, file: !509, line: 215, baseType: !324, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3653, file: !509, line: 221, baseType: !406, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3653, file: !509, line: 223, baseType: !222, size: 16, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3653, file: !509, line: 224, baseType: !294, size: 16, offset: 912)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3653, file: !509, line: 225, baseType: !3751, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !509, line: 36, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3653, file: !509, line: 227, baseType: !946, size: 128, align: 64, offset: 1024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !167, file: !168, line: 71, baseType: !3755, size: 32, offset: 448)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3756, line: 19, size: 32, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3755, file: !3756, line: 20, baseType: !975, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !167, file: !168, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !167, file: !168, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !167, file: !168, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !167, file: !168, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !167, file: !168, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !164, file: !6, line: 47, baseType: !147, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !164, file: !6, line: 48, baseType: !175, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !164, file: !6, line: 49, baseType: !3767, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !164, file: !6, line: 50, baseType: !2270, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !148, file: !6, line: 418, baseType: !3771, size: 64, offset: 1408)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3773)
!3773 = !{!3774, !3775, !3780, !3784, !3788, !3792}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3772, file: !6, line: 54, baseType: !290, size: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3772, file: !6, line: 55, baseType: !3776, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!284, !3771, !3779, !252}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3772, file: !6, line: 57, baseType: !3781, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!284, !3771, !3779, !171, !299}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3772, file: !6, line: 59, baseType: !3785, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !147, !171}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3772, file: !6, line: 60, baseType: !3789, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !147}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3772, file: !6, line: 61, baseType: !3793, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !147}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !148, file: !6, line: 419, baseType: !171, size: 64, offset: 1472)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !148, file: !6, line: 420, baseType: !171, size: 64, offset: 1536)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !148, file: !6, line: 421, baseType: !175, size: 64, offset: 1600)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !148, file: !6, line: 424, baseType: !3800, size: 64, offset: 1664)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !148, file: !6, line: 425, baseType: !3804, size: 64, offset: 1728)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !148, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !148, file: !6, line: 435, baseType: !633, size: 256, offset: 1856)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !148, file: !6, line: 437, baseType: !3809, size: 64, offset: 2112)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3811, line: 69, size: 320, elements: !3812)
!3811 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3812 = !{!3813, !3814, !3815, !3832, !3834, !3838, !3839}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3810, file: !3811, line: 70, baseType: !171, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3810, file: !3811, line: 71, baseType: !147, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3810, file: !3811, line: 72, baseType: !3816, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3811, line: 47, size: 256, elements: !3819)
!3819 = !{!3820, !3821, !3827, !3831}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3818, file: !3811, line: 49, baseType: !7, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3818, file: !3811, line: 51, baseType: !3822, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!109, !171, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3818, file: !3811, line: 53, baseType: !3828, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!109, !252, !3825}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3818, file: !3811, line: 55, baseType: !3207, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3810, file: !3811, line: 73, baseType: !3833, size: 16, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3810, file: !3811, line: 74, baseType: !3835, size: 8, offset: 208)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !211, line: 16, baseType: !3836)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !213, line: 20, baseType: !3837)
!3837 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3810, file: !3811, line: 75, baseType: !210, size: 8, offset: 216)
!3839 = !DIDerivedType(tag: DW_TAG_member, scope: !3810, file: !3811, line: 76, baseType: !3840, size: 64, offset: 256)
!3840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3810, file: !3811, line: 76, size: 64, elements: !3841)
!3841 = !{!3842, !3843, !3850}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3840, file: !3811, line: 77, baseType: !324, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3840, file: !3811, line: 78, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3811, line: 86, size: 128, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3846, file: !3811, line: 87, baseType: !7, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3846, file: !3811, line: 88, baseType: !252, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3840, file: !3811, line: 79, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3811, line: 92, size: 256, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3853, file: !3811, line: 94, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3853, file: !3811, line: 95, baseType: !7, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3853, file: !3811, line: 96, baseType: !955, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3853, file: !3811, line: 97, baseType: !3816, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3853, file: !3811, line: 98, baseType: !324, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !148, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !148, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !148, file: !6, line: 442, baseType: !3800, size: 64, offset: 2240)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !148, file: !6, line: 443, baseType: !3804, size: 64, offset: 2304)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !148, file: !6, line: 444, baseType: !1453, size: 8, offset: 2368)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !148, file: !6, line: 451, baseType: !1453, size: 8, offset: 2376)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !148, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !148, file: !6, line: 455, baseType: !3868, size: 64, offset: 2432)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3870, line: 23, size: 96, elements: !3871)
!3870 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3869, file: !3870, line: 24, baseType: !109, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3869, file: !3870, line: 24, baseType: !109, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3869, file: !3870, line: 24, baseType: !109, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !148, file: !6, line: 458, baseType: !3876, size: 64, offset: 2496)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!109}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !148, file: !6, line: 460, baseType: !3880, size: 4032, align: 512, offset: 2560)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3881, size: 4032, elements: !3895)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3881, file: !6, line: 363, baseType: !324, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3881, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3881, file: !6, line: 367, baseType: !3886, size: 448, offset: 128)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3886, file: !6, line: 320, baseType: !147, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3886, file: !6, line: 321, baseType: !3890, size: 384, offset: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3891, line: 40, size: 384, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3890, file: !3891, line: 41, baseType: !3894, size: 384, align: 64)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 384, align: 64, elements: !2395)
!3895 = !{!3896}
!3896 = !DISubrange(count: 7)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !148, file: !6, line: 463, baseType: !3898, size: 192, offset: 6592)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3899, line: 8, size: 192, elements: !3900)
!3899 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3898, file: !3899, line: 10, baseType: !7, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3898, file: !3899, line: 11, baseType: !600, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3898, file: !3899, line: 12, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3906, line: 59, size: 48, elements: !3907)
!3906 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3905, file: !3906, line: 60, baseType: !2138, size: 16)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3905, file: !3906, line: 61, baseType: !2138, size: 16, offset: 16)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3905, file: !3906, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3905, file: !3906, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3905, file: !3906, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3905, file: !3906, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !148, file: !6, line: 465, baseType: !302, size: 64, offset: 6784)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !148, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !148, file: !6, line: 470, baseType: !152, size: 128, offset: 6912)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !148, file: !6, line: 471, baseType: !3918, size: 64, offset: 7040)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3920, line: 33, size: 96, elements: !3921)
!3920 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3919, file: !3920, line: 37, baseType: !109, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3919, file: !3920, line: 43, baseType: !109, size: 32, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3919, file: !3920, line: 45, baseType: !222, size: 16, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3919, file: !3920, line: 47, baseType: !222, size: 16, offset: 80)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !148, file: !6, line: 476, baseType: !3927, size: 64, offset: 7104)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3929)
!3929 = !{!3930, !3946, !3947, !3948}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3928, file: !6, line: 379, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3933, line: 204, baseType: !3934)
!3933 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3933, line: 197, size: 192, elements: !3935)
!3935 = !{!3936, !3938, !3939, !3940, !3942, !3944}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3934, file: !3933, line: 198, baseType: !3937, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3933, line: 21, baseType: !403)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3934, file: !3933, line: 199, baseType: !214, size: 8, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3934, file: !3933, line: 200, baseType: !214, size: 8, offset: 40)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3934, file: !3933, line: 201, baseType: !3941, size: 16, offset: 48)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3933, line: 17, baseType: !221)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3934, file: !3933, line: 202, baseType: !3943, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3933, line: 16, baseType: !407)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3934, file: !3933, line: 203, baseType: !3945, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3933, line: 22, baseType: !407)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3928, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3928, file: !6, line: 381, baseType: !252, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3928, file: !6, line: 382, baseType: !252, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !148, file: !6, line: 477, baseType: !3928, size: 256, offset: 7168)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !148, file: !6, line: 480, baseType: !3951, size: 64, offset: 7424)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !148, file: !6, line: 483, baseType: !3954, size: 64, offset: 7488)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !148, file: !6, line: 488, baseType: !252, size: 64, offset: 7552)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !148, file: !6, line: 492, baseType: !324, size: 64, offset: 7616)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !148, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !148, file: !6, line: 495, baseType: !324, size: 64, offset: 7744)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !148, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !148, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !148, file: !6, line: 500, baseType: !3963, size: 64, offset: 7872)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3965, line: 45, baseType: !3966)
!3965 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !148, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !148, file: !6, line: 504, baseType: !3969, size: 64, offset: 8000)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3972, line: 96, size: 192, elements: !3973)
!3972 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3973 = !{!3974, !3975, !4018, !4020}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3971, file: !3972, line: 97, baseType: !7, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3971, file: !3972, line: 98, baseType: !3976, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3972, line: 24, size: 3072, elements: !3978)
!3978 = !{!3979, !3981, !3982, !3983, !3984, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4015, !4016, !4017}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3977, file: !3972, line: 26, baseType: !3980, size: 128)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !2395)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3977, file: !3972, line: 27, baseType: !3980, size: 128, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3977, file: !3972, line: 28, baseType: !109, size: 32, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3977, file: !3972, line: 31, baseType: !182, size: 32, align: 512, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3977, file: !3972, line: 32, baseType: !3985, size: 960, offset: 576)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3986, line: 206, size: 960, elements: !3987)
!3986 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3987 = !{!3988, !3989, !3992, !3994, !3995, !3997}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3985, file: !3986, line: 207, baseType: !949, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3985, file: !3986, line: 208, baseType: !3990, size: 256, offset: 64)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3991, size: 256, elements: !1341)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3985, file: !3986, line: 209, baseType: !3993, size: 256, offset: 320)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !1341)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3985, file: !3986, line: 213, baseType: !288, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3985, file: !3986, line: 215, baseType: !3996, size: 256, offset: 640)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !1341)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3985, file: !3986, line: 216, baseType: !210, size: 8, offset: 896)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3977, file: !3972, line: 33, baseType: !302, size: 64, offset: 1536)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3977, file: !3972, line: 34, baseType: !302, size: 64, offset: 1600)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3977, file: !3972, line: 35, baseType: !1453, size: 8, offset: 1664)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3977, file: !3972, line: 36, baseType: !2831, size: 320, offset: 1728)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3977, file: !3972, line: 37, baseType: !2160, size: 256, offset: 2048)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3977, file: !3972, line: 38, baseType: !946, size: 128, align: 64, offset: 2304)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3977, file: !3972, line: 39, baseType: !4005, size: 64, offset: 2432)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3972, line: 49, size: 768, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011, !4012, !4013, !4014}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4006, file: !3972, line: 50, baseType: !182, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4006, file: !3972, line: 51, baseType: !3993, size: 256, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4006, file: !3972, line: 53, baseType: !3993, size: 256, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4006, file: !3972, line: 54, baseType: !302, size: 64, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4006, file: !3972, line: 55, baseType: !4005, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4006, file: !3972, line: 56, baseType: !109, size: 32, offset: 704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4006, file: !3972, line: 57, baseType: !109, size: 32, offset: 736)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3977, file: !3972, line: 40, baseType: !302, size: 64, offset: 2496)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3977, file: !3972, line: 42, baseType: !109, size: 32, offset: 2560)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3977, file: !3972, line: 43, baseType: !3970, size: 64, offset: 2624)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3971, file: !3972, line: 99, baseType: !4019, offset: 128)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !536, line: 211, elements: !537)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3971, file: !3972, line: 100, baseType: !4021, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3972, line: 63, size: 3008, elements: !4023)
!4023 = !{!4024, !4025, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4053}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4022, file: !3972, line: 64, baseType: !4005, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4022, file: !3972, line: 65, baseType: !4026, size: 192, offset: 64)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 192, elements: !253)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4022, file: !3972, line: 67, baseType: !109, size: 32, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4022, file: !3972, line: 68, baseType: !633, size: 256, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4022, file: !3972, line: 69, baseType: !182, size: 32, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4022, file: !3972, line: 70, baseType: !633, size: 256, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4022, file: !3972, line: 71, baseType: !302, size: 64, offset: 896)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4022, file: !3972, line: 72, baseType: !302, size: 64, offset: 960)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4022, file: !3972, line: 73, baseType: !302, size: 64, offset: 1024)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4022, file: !3972, line: 74, baseType: !302, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4022, file: !3972, line: 75, baseType: !302, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4022, file: !3972, line: 76, baseType: !302, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4022, file: !3972, line: 77, baseType: !302, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4022, file: !3972, line: 78, baseType: !302, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4022, file: !3972, line: 79, baseType: !1453, size: 8, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4022, file: !3972, line: 80, baseType: !302, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4022, file: !3972, line: 81, baseType: !633, size: 256, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4022, file: !3972, line: 82, baseType: !1844, size: 256, offset: 1792)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4022, file: !3972, line: 84, baseType: !202, size: 32, offset: 2048)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4022, file: !3972, line: 87, baseType: !302, size: 64, offset: 2112)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4022, file: !3972, line: 88, baseType: !302, size: 64, offset: 2176)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4022, file: !3972, line: 89, baseType: !4047, size: 704, offset: 2240)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2161, line: 111, size: 704, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4047, file: !2161, line: 112, baseType: !2160, size: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4047, file: !2161, line: 113, baseType: !2831, size: 320, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4047, file: !2161, line: 116, baseType: !3138, size: 64, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4047, file: !2161, line: 117, baseType: !109, size: 32, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4022, file: !3972, line: 90, baseType: !3970, size: 64, offset: 2944)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !148, file: !6, line: 515, baseType: !4055, size: 64, offset: 8064)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4057, line: 117, size: 128, elements: !4058)
!4057 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4056, file: !4057, line: 118, baseType: !1396, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4056, file: !4057, line: 119, baseType: !1396, size: 32, offset: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4056, file: !4057, line: 120, baseType: !288, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !148, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !148, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !148, file: !6, line: 520, baseType: !4065, size: 64, offset: 8192)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !148, file: !6, line: 523, baseType: !4067, size: 64, offset: 8256)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !148, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !148, file: !6, line: 525, baseType: !4072, size: 64, offset: 8384)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !148, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !148, file: !6, line: 533, baseType: !324, size: 64, offset: 8512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !148, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !148, file: !6, line: 535, baseType: !4079, size: 64, offset: 8640)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !148, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !148, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !148, file: !6, line: 540, baseType: !4083, size: 64, offset: 8768)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4085, line: 32, size: 64, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4084, file: !4085, line: 33, baseType: !1396, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4084, file: !4085, line: 34, baseType: !1396, size: 32, offset: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !148, file: !6, line: 563, baseType: !152, size: 128, offset: 8832)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !148, file: !6, line: 565, baseType: !152, size: 128, offset: 8960)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !148, file: !6, line: 568, baseType: !4092, size: 64, offset: 9088)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !148, file: !6, line: 570, baseType: !202, size: 32, offset: 9152)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_socket", file: !4096, line: 130, size: 10432, elements: !4097)
!4096 = !DIFile(filename: "./include/pcmcia/ss.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8aeaa2af48f74c5b0b58b19fd709cb94")
!4097 = !{!4098, !4099, !4110, !4111, !4112, !4114, !4115, !4138, !4139, !4147, !4149, !4150, !4151, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4917, !4918, !4954, !4974, !4975, !4979, !4983, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4095, file: !4096, line: 131, baseType: !147, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !4095, file: !4096, line: 132, baseType: !4100, size: 96, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "socket_state_t", file: !4096, line: 55, baseType: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_state_t", file: !4096, line: 50, size: 96, elements: !4102)
!4102 = !{!4103, !4105, !4106, !4108, !4109}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4101, file: !4096, line: 51, baseType: !4104, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !153, line: 87, baseType: !7)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "csc_mask", scope: !4101, file: !4096, line: 52, baseType: !4104, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "Vcc", scope: !4101, file: !4096, line: 53, baseType: !4107, size: 8, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !153, line: 85, baseType: !214)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "Vpp", scope: !4101, file: !4096, line: 53, baseType: !4107, size: 8, offset: 72)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "io_irq", scope: !4101, file: !4096, line: 54, baseType: !4107, size: 8, offset: 80)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4095, file: !4096, line: 133, baseType: !4104, size: 32, offset: 160)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !4095, file: !4096, line: 134, baseType: !4104, size: 32, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !4095, file: !4096, line: 135, baseType: !4113, size: 16, offset: 224)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !153, line: 86, baseType: !222)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4095, file: !4096, line: 136, baseType: !4113, size: 16, offset: 240)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "cis_mem", scope: !4095, file: !4096, line: 137, baseType: !4116, size: 256, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pccard_mem_map", file: !4096, line: 98, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_mem_map", file: !4096, line: 91, size: 256, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4117, file: !4096, line: 92, baseType: !4107, size: 8)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4117, file: !4096, line: 93, baseType: !4107, size: 8, offset: 8)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4117, file: !4096, line: 94, baseType: !4113, size: 16, offset: 16)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "static_start", scope: !4117, file: !4096, line: 95, baseType: !2856, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "card_start", scope: !4117, file: !4096, line: 96, baseType: !4104, size: 32, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4117, file: !4096, line: 97, baseType: !4125, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4127, line: 21, size: 512, elements: !4128)
!4127 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4128 = !{!4129, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4126, file: !4127, line: 22, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !153, line: 164, baseType: !2856)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4126, file: !4127, line: 23, baseType: !4130, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4126, file: !4127, line: 24, baseType: !171, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !4127, line: 25, baseType: !302, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4126, file: !4127, line: 26, baseType: !302, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4126, file: !4127, line: 27, baseType: !4125, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4126, file: !4127, line: 27, baseType: !4125, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4126, file: !4127, line: 27, baseType: !4125, size: 64, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "cis_virt", scope: !4095, file: !4096, line: 138, baseType: !324, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !4095, file: !4096, line: 139, baseType: !4140, size: 256, offset: 576)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4141, size: 256, elements: !2395)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_window_t", file: !4096, line: 103, baseType: !4142)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_window_t", file: !4096, line: 100, size: 128, elements: !4143)
!4143 = !{!4144, !4145, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "InUse", scope: !4142, file: !4096, line: 101, baseType: !4104, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "Config", scope: !4142, file: !4096, line: 101, baseType: !4104, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4142, file: !4096, line: 102, baseType: !4125, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !4095, file: !4096, line: 140, baseType: !4148, size: 1024, offset: 832)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4116, size: 1024, elements: !1341)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cis_cache", scope: !4095, file: !4096, line: 141, baseType: !152, size: 128, offset: 1856)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis_len", scope: !4095, file: !4096, line: 142, baseType: !299, size: 64, offset: 1984)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis", scope: !4095, file: !4096, line: 143, baseType: !4152, size: 64, offset: 2048)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "socket_list", scope: !4095, file: !4096, line: 145, baseType: !152, size: 128, offset: 2112)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "socket_released", scope: !4095, file: !4096, line: 146, baseType: !1844, size: 256, offset: 2240)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !4095, file: !4096, line: 149, baseType: !7, size: 32, offset: 2496)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4095, file: !4096, line: 153, baseType: !4104, size: 32, offset: 2528)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4095, file: !4096, line: 154, baseType: !4104, size: 32, offset: 2560)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !4095, file: !4096, line: 155, baseType: !4104, size: 32, offset: 2592)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "io_offset", scope: !4095, file: !4096, line: 156, baseType: !4104, size: 32, offset: 2624)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pci_irq", scope: !4095, file: !4096, line: 157, baseType: !4104, size: 32, offset: 2656)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "cb_dev", scope: !4095, file: !4096, line: 158, baseType: !4162, size: 64, offset: 2688)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4164, line: 322, size: 16640, elements: !4165)
!4164 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4165 = !{!4166, !4167, !4692, !4693, !4694, !4695, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4801, !4802, !4803, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4880, !4881, !4882, !4884, !4885, !4887, !4888, !4889, !4890, !4896, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4163, file: !4164, line: 323, baseType: !152, size: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4163, file: !4164, line: 324, baseType: !4168, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4164, line: 647, size: 8256, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4179, !4180, !4181, !4205, !4206, !4210, !4211, !4212, !4213, !4214, !4218, !4219, !4221, !4687, !4688, !4689, !4690, !4691}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4169, file: !4164, line: 648, baseType: !152, size: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4169, file: !4164, line: 649, baseType: !4168, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4169, file: !4164, line: 650, baseType: !152, size: 128, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4169, file: !4164, line: 651, baseType: !152, size: 128, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4169, file: !4164, line: 652, baseType: !4162, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4169, file: !4164, line: 653, baseType: !152, size: 128, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4169, file: !4164, line: 655, baseType: !4178, size: 256, offset: 640)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4125, size: 256, elements: !1341)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4169, file: !4164, line: 656, baseType: !152, size: 128, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4169, file: !4164, line: 657, baseType: !4126, size: 512, offset: 1024)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4169, file: !4164, line: 659, baseType: !4182, size: 64, offset: 1536)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4164, line: 773, size: 320, elements: !4184)
!4184 = !{!4185, !4189, !4193, !4197, !4201}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4183, file: !4164, line: 774, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!109, !4168}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4183, file: !4164, line: 775, baseType: !4190, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4168}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4183, file: !4164, line: 776, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!324, !4168, !7, !109}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4183, file: !4164, line: 777, baseType: !4198, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!109, !4168, !7, !109, !109, !2211}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4183, file: !4164, line: 778, baseType: !4202, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!109, !4168, !7, !109, !109, !402}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4169, file: !4164, line: 660, baseType: !324, size: 64, offset: 1600)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4169, file: !4164, line: 661, baseType: !4207, size: 64, offset: 1664)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4209, line: 131, flags: DIFlagFwdDecl)
!4209 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4169, file: !4164, line: 663, baseType: !214, size: 8, offset: 1728)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4169, file: !4164, line: 664, baseType: !214, size: 8, offset: 1736)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4169, file: !4164, line: 665, baseType: !214, size: 8, offset: 1744)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4169, file: !4164, line: 666, baseType: !214, size: 8, offset: 1752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4169, file: !4164, line: 671, baseType: !4215, size: 384, offset: 1760)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 384, elements: !4216)
!4216 = !{!4217}
!4217 = !DISubrange(count: 48)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4169, file: !4164, line: 673, baseType: !222, size: 16, offset: 2144)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4169, file: !4164, line: 674, baseType: !4220, size: 16, offset: 2160)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4164, line: 255, baseType: !222)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4169, file: !4164, line: 675, baseType: !4222, size: 64, offset: 2176)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4230, !4231, !4284, !4369, !4370, !4371, !4372, !4373, !4380, !4472, !4485, !4495, !4499, !4501, !4502, !4503, !4507, !4514, !4515, !4518, !4521, !4525, !4629, !4630, !4631, !4632, !4633, !4634, !4664, !4665, !4666, !4669, !4672, !4681, !4682, !4683, !4684, !4685, !4686}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4223, file: !94, line: 706, baseType: !167, size: 512)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4223, file: !94, line: 707, baseType: !4222, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4223, file: !94, line: 709, baseType: !4228, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4223, file: !94, line: 711, baseType: !171, size: 64, offset: 640)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4223, file: !94, line: 712, baseType: !4232, size: 64, offset: 704)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4244, !4249, !4253}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4234, file: !94, line: 90, baseType: !171, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4234, file: !94, line: 91, baseType: !304, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4234, file: !94, line: 92, baseType: !4239, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!109, !4242, !247}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4234, file: !94, line: 93, baseType: !4245, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!252, !4242, !4248, !3649, !3650}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4234, file: !94, line: 95, baseType: !4250, size: 64, offset: 256)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4222}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4234, file: !94, line: 97, baseType: !4254, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4257)
!4257 = !{!4258, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4256, file: !101, line: 287, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!109, !4222}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4256, file: !101, line: 288, baseType: !4250, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4256, file: !101, line: 289, baseType: !4259, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4256, file: !101, line: 290, baseType: !4259, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4256, file: !101, line: 291, baseType: !4259, size: 64, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4256, file: !101, line: 292, baseType: !4259, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4256, file: !101, line: 293, baseType: !4259, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4256, file: !101, line: 294, baseType: !4259, size: 64, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4256, file: !101, line: 295, baseType: !4259, size: 64, offset: 512)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4256, file: !101, line: 296, baseType: !4259, size: 64, offset: 576)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4256, file: !101, line: 297, baseType: !4259, size: 64, offset: 640)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4256, file: !101, line: 298, baseType: !4259, size: 64, offset: 704)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4256, file: !101, line: 299, baseType: !4259, size: 64, offset: 768)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4256, file: !101, line: 300, baseType: !4259, size: 64, offset: 832)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4256, file: !101, line: 301, baseType: !4259, size: 64, offset: 896)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4256, file: !101, line: 302, baseType: !4259, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4256, file: !101, line: 303, baseType: !4259, size: 64, offset: 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4256, file: !101, line: 304, baseType: !4259, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4256, file: !101, line: 305, baseType: !4259, size: 64, offset: 1152)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4256, file: !101, line: 306, baseType: !4259, size: 64, offset: 1216)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4256, file: !101, line: 307, baseType: !4259, size: 64, offset: 1280)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4256, file: !101, line: 308, baseType: !4259, size: 64, offset: 1344)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4256, file: !101, line: 309, baseType: !4259, size: 64, offset: 1408)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4223, file: !94, line: 714, baseType: !4285, size: 64, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4288, line: 80, size: 1344, elements: !4289)
!4288 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4368}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4287, file: !4288, line: 81, baseType: !171, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4287, file: !4288, line: 82, baseType: !171, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4287, file: !4288, line: 83, baseType: !304, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4287, file: !4288, line: 84, baseType: !304, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4287, file: !4288, line: 85, baseType: !304, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4287, file: !4288, line: 87, baseType: !4296, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!109, !4222, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4301)
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4307, !4308, !4321, !4331, !4332, !4333, !4334, !4335, !4343, !4344, !4345, !4346, !4347, !4348}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4300, file: !88, line: 97, baseType: !171, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4300, file: !88, line: 98, baseType: !4285, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4300, file: !88, line: 100, baseType: !147, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4300, file: !88, line: 101, baseType: !171, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4300, file: !88, line: 103, baseType: !1453, size: 8, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4300, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4300, file: !88, line: 106, baseType: !4309, size: 64, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4312, line: 282, size: 1600, elements: !4313)
!4312 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4313 = !{!4314, !4315, !4316, !4320}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4311, file: !4312, line: 283, baseType: !3106, size: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4311, file: !4312, line: 284, baseType: !3106, size: 256, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4311, file: !4312, line: 285, baseType: !4317, size: 1024, offset: 512)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1024, elements: !4318)
!4318 = !{!4319}
!4319 = !DISubrange(count: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4311, file: !4312, line: 286, baseType: !2121, size: 64, offset: 1536)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4300, file: !88, line: 107, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4312, line: 217, size: 256, elements: !4325)
!4325 = !{!4326, !4327, !4329, !4330}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4324, file: !4312, line: 218, baseType: !3113, size: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4324, file: !4312, line: 219, baseType: !4328, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4312, line: 15, baseType: !302)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4324, file: !4312, line: 220, baseType: !403, size: 32, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4324, file: !4312, line: 221, baseType: !403, size: 32, offset: 224)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4300, file: !88, line: 109, baseType: !4259, size: 64, offset: 448)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4300, file: !88, line: 110, baseType: !4250, size: 64, offset: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4300, file: !88, line: 111, baseType: !4259, size: 64, offset: 576)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4300, file: !88, line: 112, baseType: !4250, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4300, file: !88, line: 113, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!109, !4222, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4340)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4341)
!4341 = !{!4342}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4340, file: !101, line: 59, baseType: !109, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4300, file: !88, line: 114, baseType: !4259, size: 64, offset: 768)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4300, file: !88, line: 115, baseType: !304, size: 64, offset: 832)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4300, file: !88, line: 116, baseType: !304, size: 64, offset: 896)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4300, file: !88, line: 118, baseType: !4254, size: 64, offset: 960)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4300, file: !88, line: 119, baseType: !4250, size: 64, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4300, file: !88, line: 121, baseType: !4349, size: 64, offset: 1088)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4287, file: !4288, line: 88, baseType: !4239, size: 64, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4287, file: !4288, line: 89, baseType: !4259, size: 64, offset: 448)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4287, file: !4288, line: 90, baseType: !4250, size: 64, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4287, file: !4288, line: 91, baseType: !4250, size: 64, offset: 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4287, file: !4288, line: 92, baseType: !4250, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4287, file: !4288, line: 94, baseType: !4259, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4287, file: !4288, line: 95, baseType: !4259, size: 64, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4287, file: !4288, line: 97, baseType: !4336, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4287, file: !4288, line: 98, baseType: !4259, size: 64, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4287, file: !4288, line: 100, baseType: !4259, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4287, file: !4288, line: 102, baseType: !4259, size: 64, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4287, file: !4288, line: 103, baseType: !4250, size: 64, offset: 1088)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4287, file: !4288, line: 105, baseType: !4254, size: 64, offset: 1152)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4287, file: !4288, line: 107, baseType: !4365, size: 64, offset: 1216)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4367)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4288, line: 107, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4287, file: !4288, line: 109, baseType: !1453, size: 8, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4223, file: !94, line: 715, baseType: !4299, size: 64, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4223, file: !94, line: 717, baseType: !324, size: 64, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4223, file: !94, line: 719, baseType: !324, size: 64, offset: 960)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4223, file: !94, line: 721, baseType: !633, size: 256, offset: 1024)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4223, file: !94, line: 725, baseType: !4374, size: 448, offset: 1280)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4374, file: !94, line: 518, baseType: !152, size: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4374, file: !94, line: 519, baseType: !152, size: 128, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4374, file: !94, line: 520, baseType: !152, size: 128, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4374, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4223, file: !94, line: 726, baseType: !4381, size: 2496, offset: 1728)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4465, !4469}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4381, file: !101, line: 664, baseType: !4339, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4381, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4381, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4381, file: !101, line: 667, baseType: !1453, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4381, file: !101, line: 668, baseType: !1453, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4381, file: !101, line: 669, baseType: !1453, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4381, file: !101, line: 670, baseType: !1453, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4381, file: !101, line: 671, baseType: !1453, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4381, file: !101, line: 672, baseType: !1453, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4381, file: !101, line: 673, baseType: !1453, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4381, file: !101, line: 674, baseType: !1453, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4381, file: !101, line: 675, baseType: !402, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4381, file: !101, line: 676, baseType: !182, size: 32, offset: 96)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4381, file: !101, line: 678, baseType: !152, size: 128, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4381, file: !101, line: 679, baseType: !1844, size: 256, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4381, file: !101, line: 680, baseType: !4399, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4401, line: 43, size: 1536, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4400, file: !4401, line: 44, baseType: !171, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4400, file: !4401, line: 45, baseType: !109, size: 32, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4400, file: !4401, line: 46, baseType: !152, size: 128, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4400, file: !4401, line: 47, baseType: !182, size: 32, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4400, file: !4401, line: 48, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4400, file: !4401, line: 49, baseType: !2831, size: 320, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4400, file: !4401, line: 50, baseType: !302, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4400, file: !4401, line: 51, baseType: !1097, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4400, file: !4401, line: 52, baseType: !1097, size: 64, offset: 832)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4400, file: !4401, line: 53, baseType: !1097, size: 64, offset: 896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4400, file: !4401, line: 54, baseType: !1097, size: 64, offset: 960)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4400, file: !4401, line: 55, baseType: !1097, size: 64, offset: 1024)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4400, file: !4401, line: 56, baseType: !302, size: 64, offset: 1088)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4400, file: !4401, line: 57, baseType: !302, size: 64, offset: 1152)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4400, file: !4401, line: 58, baseType: !302, size: 64, offset: 1216)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4400, file: !4401, line: 59, baseType: !302, size: 64, offset: 1280)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4400, file: !4401, line: 60, baseType: !302, size: 64, offset: 1344)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4400, file: !4401, line: 61, baseType: !4222, size: 64, offset: 1408)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4400, file: !4401, line: 62, baseType: !1453, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4400, file: !4401, line: 63, baseType: !1453, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4381, file: !101, line: 681, baseType: !1453, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4381, file: !101, line: 682, baseType: !1453, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4381, file: !101, line: 683, baseType: !1453, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4381, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4381, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4381, file: !101, line: 690, baseType: !1089, size: 512, offset: 640)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4381, file: !101, line: 691, baseType: !406, size: 64, offset: 1152)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4381, file: !101, line: 692, baseType: !2160, size: 256, offset: 1216)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4381, file: !101, line: 693, baseType: !939, size: 192, offset: 1472)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4381, file: !101, line: 694, baseType: !4408, size: 64, offset: 1664)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4381, file: !101, line: 695, baseType: !202, size: 32, offset: 1728)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4381, file: !101, line: 696, baseType: !202, size: 32, offset: 1760)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4381, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4381, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4381, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4381, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4381, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4381, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4381, file: !101, line: 703, baseType: !1453, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4381, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4381, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4381, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4381, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4381, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4381, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4381, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4381, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4381, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4381, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4381, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4381, file: !101, line: 715, baseType: !406, size: 64, offset: 2048)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4381, file: !101, line: 716, baseType: !406, size: 64, offset: 2112)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4381, file: !101, line: 717, baseType: !406, size: 64, offset: 2176)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4381, file: !101, line: 718, baseType: !406, size: 64, offset: 2240)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4381, file: !101, line: 720, baseType: !4460, size: 64, offset: 2304)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4462)
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4461, file: !101, line: 633, baseType: !182, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4461, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4381, file: !101, line: 721, baseType: !4466, size: 64, offset: 2368)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !4222, !1396}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4381, file: !101, line: 722, baseType: !4470, size: 64, offset: 2432)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4223, file: !94, line: 727, baseType: !4473, size: 64, offset: 4224)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4482, !4483, !4484}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4474, file: !101, line: 743, baseType: !4256, size: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4474, file: !101, line: 744, baseType: !4259, size: 64, offset: 1472)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4474, file: !101, line: 745, baseType: !4479, size: 64, offset: 1536)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4222, !1453}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4474, file: !101, line: 746, baseType: !4259, size: 64, offset: 1600)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4474, file: !101, line: 747, baseType: !4250, size: 64, offset: 1664)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4474, file: !101, line: 748, baseType: !4250, size: 64, offset: 1728)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4223, file: !94, line: 736, baseType: !4486, size: 128, offset: 4288)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4487)
!4487 = !{!4488, !4492}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4486, file: !94, line: 531, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4491, line: 13, flags: DIFlagFwdDecl)
!4491 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4486, file: !94, line: 532, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4223, file: !94, line: 738, baseType: !4496, size: 64, offset: 4416)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4223, file: !94, line: 740, baseType: !4500, size: 64, offset: 4480)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4223, file: !94, line: 741, baseType: !406, size: 64, offset: 4544)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4223, file: !94, line: 746, baseType: !406, size: 64, offset: 4608)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4223, file: !94, line: 747, baseType: !4504, size: 64, offset: 4672)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4223, file: !94, line: 749, baseType: !4508, size: 64, offset: 4736)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4510)
!4510 = !{!4511, !4512, !4513}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4509, file: !94, line: 433, baseType: !7, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4509, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4509, file: !94, line: 435, baseType: !302, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4223, file: !94, line: 751, baseType: !152, size: 128, offset: 4800)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4223, file: !94, line: 762, baseType: !4516, size: 64, offset: 4928)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4223, file: !94, line: 770, baseType: !4519, offset: 4992)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4520, line: 5, elements: !537)
!4520 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4223, file: !94, line: 772, baseType: !4522, size: 64, offset: 4992)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4524, line: 18, flags: DIFlagFwdDecl)
!4524 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4223, file: !94, line: 773, baseType: !4526, size: 64, offset: 5056)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4528, line: 41, size: 512, elements: !4529)
!4528 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4529 = !{!4530, !4531, !4625, !4626, !4627, !4628}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4527, file: !4528, line: 42, baseType: !4526, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4527, file: !4528, line: 43, baseType: !4532, size: 64, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4534)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4528, line: 125, size: 1408, elements: !4535)
!4535 = !{!4536, !4540, !4544, !4550, !4554, !4555, !4560, !4564, !4568, !4572, !4576, !4577, !4581, !4585, !4589, !4600, !4601, !4602, !4603, !4613, !4617, !4621}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4534, file: !4528, line: 126, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!4526, !4526}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4534, file: !4528, line: 127, baseType: !4541, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4526}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4534, file: !4528, line: 128, baseType: !4545, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!1453, !4548}
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4527)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4534, file: !4528, line: 129, baseType: !4551, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!2121, !4548, !4242}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4534, file: !4528, line: 131, baseType: !4545, size: 64, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4534, file: !4528, line: 133, baseType: !4556, size: 64, offset: 320)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4559, !4548}
!4559 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4528, line: 132, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4534, file: !4528, line: 134, baseType: !4561, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!1453, !4548, !171}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4534, file: !4528, line: 136, baseType: !4565, size: 64, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!109, !4548, !171, !7, !324, !299}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4534, file: !4528, line: 141, baseType: !4569, size: 64, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!109, !4548, !171, !4065, !299}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4534, file: !4528, line: 144, baseType: !4573, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!171, !4548}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4534, file: !4528, line: 145, baseType: !4573, size: 64, offset: 640)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4534, file: !4528, line: 146, baseType: !4578, size: 64, offset: 704)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!4526, !4548}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4534, file: !4528, line: 148, baseType: !4582, size: 64, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!4526, !4548, !4526}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4534, file: !4528, line: 151, baseType: !4586, size: 64, offset: 832)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!4526, !4548, !171}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4534, file: !4528, line: 153, baseType: !4590, size: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!109, !4548, !171, !171, !7, !7, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4528, line: 94, size: 640, elements: !4595)
!4595 = !{!4596, !4597, !4598}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4594, file: !4528, line: 95, baseType: !4526, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4594, file: !4528, line: 96, baseType: !7, size: 32, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4594, file: !4528, line: 97, baseType: !4599, size: 512, offset: 128)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, elements: !1132)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4534, file: !4528, line: 158, baseType: !4582, size: 64, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4534, file: !4528, line: 161, baseType: !4578, size: 64, offset: 1024)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4534, file: !4528, line: 163, baseType: !4537, size: 64, offset: 1088)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4534, file: !4528, line: 164, baseType: !4604, size: 64, offset: 1152)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!109, !4548, !4607}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4528, line: 73, size: 128, elements: !4609)
!4609 = !{!4610, !4611, !4612}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4608, file: !4528, line: 74, baseType: !7, size: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4608, file: !4528, line: 75, baseType: !7, size: 32, offset: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4608, file: !4528, line: 76, baseType: !4548, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4534, file: !4528, line: 166, baseType: !4614, size: 64, offset: 1216)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!324, !4526, !109}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4534, file: !4528, line: 167, baseType: !4618, size: 64, offset: 1280)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!109, !4548, !7}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4534, file: !4528, line: 168, baseType: !4622, size: 64, offset: 1344)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!109, !4526}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4527, file: !4528, line: 44, baseType: !4222, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4527, file: !4528, line: 45, baseType: !152, size: 128, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4527, file: !4528, line: 46, baseType: !152, size: 128, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4527, file: !4528, line: 47, baseType: !210, size: 8, offset: 448)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4223, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4223, file: !94, line: 778, baseType: !489, size: 32, offset: 5152)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4223, file: !94, line: 779, baseType: !402, size: 32, offset: 5184)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4223, file: !94, line: 781, baseType: !182, size: 32, offset: 5216)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4223, file: !94, line: 782, baseType: !152, size: 128, offset: 5248)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4223, file: !94, line: 784, baseType: !4635, size: 64, offset: 5376)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4637)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4638, line: 52, size: 768, elements: !4639)
!4638 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4639 = !{!4640, !4641, !4642, !4643, !4644, !4648, !4652, !4653, !4654, !4655, !4659, !4663}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4637, file: !4638, line: 53, baseType: !171, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4637, file: !4638, line: 55, baseType: !304, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4637, file: !4638, line: 56, baseType: !304, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4637, file: !4638, line: 58, baseType: !4239, size: 64, offset: 192)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4637, file: !4638, line: 59, baseType: !4645, size: 64, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!252, !4242, !4248}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4637, file: !4638, line: 61, baseType: !4649, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !4635}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4637, file: !4638, line: 62, baseType: !4250, size: 64, offset: 384)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4637, file: !4638, line: 64, baseType: !4259, size: 64, offset: 448)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4637, file: !4638, line: 66, baseType: !3617, size: 64, offset: 512)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4637, file: !4638, line: 67, baseType: !4656, size: 64, offset: 576)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!2121, !4242}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4637, file: !4638, line: 69, baseType: !4660, size: 64, offset: 640)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4242, !3649, !3650}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4637, file: !4638, line: 71, baseType: !4254, size: 64, offset: 704)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4223, file: !94, line: 785, baseType: !304, size: 64, offset: 5440)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4223, file: !94, line: 787, baseType: !4250, size: 64, offset: 5504)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4223, file: !94, line: 788, baseType: !4667, size: 64, offset: 5568)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4223, file: !94, line: 789, baseType: !4670, size: 64, offset: 5632)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4223, file: !94, line: 791, baseType: !4673, size: 64, offset: 5696)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4679, !4680}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4674, file: !94, line: 598, baseType: !116, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4674, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4674, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4674, file: !94, line: 601, baseType: !1453, size: 8, offset: 96)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4674, file: !94, line: 602, baseType: !1453, size: 8, offset: 104)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4223, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4223, file: !94, line: 795, baseType: !1453, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4223, file: !94, line: 796, baseType: !1453, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4223, file: !94, line: 797, baseType: !1453, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4223, file: !94, line: 798, baseType: !1453, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4223, file: !94, line: 799, baseType: !1453, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4169, file: !4164, line: 676, baseType: !4223, size: 5824, offset: 2240)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4169, file: !4164, line: 677, baseType: !318, size: 64, offset: 8064)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4169, file: !4164, line: 678, baseType: !318, size: 64, offset: 8128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4169, file: !4164, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4169, file: !4164, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4163, file: !4164, line: 325, baseType: !4168, size: 64, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4163, file: !4164, line: 327, baseType: !324, size: 64, offset: 256)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4163, file: !4164, line: 328, baseType: !4207, size: 64, offset: 320)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4163, file: !4164, line: 329, baseType: !4696, size: 64, offset: 384)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4164, line: 76, size: 832, elements: !4698)
!4698 = !{!4699, !4700, !4701, !4704, !4705}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4697, file: !4164, line: 77, baseType: !4168, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4697, file: !4164, line: 78, baseType: !152, size: 128, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4697, file: !4164, line: 79, baseType: !4702, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4164, line: 79, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4697, file: !4164, line: 80, baseType: !214, size: 8, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4697, file: !4164, line: 81, baseType: !167, size: 512, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4163, file: !4164, line: 331, baseType: !7, size: 32, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4163, file: !4164, line: 332, baseType: !222, size: 16, offset: 480)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4163, file: !4164, line: 333, baseType: !222, size: 16, offset: 496)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4163, file: !4164, line: 334, baseType: !222, size: 16, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4163, file: !4164, line: 335, baseType: !222, size: 16, offset: 528)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4163, file: !4164, line: 336, baseType: !7, size: 32, offset: 544)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4163, file: !4164, line: 337, baseType: !210, size: 8, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4163, file: !4164, line: 338, baseType: !210, size: 8, offset: 584)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4163, file: !4164, line: 344, baseType: !4715, size: 64, offset: 640)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4164, line: 319, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4163, file: !4164, line: 345, baseType: !4162, size: 64, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4163, file: !4164, line: 347, baseType: !402, size: 32, offset: 768)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4163, file: !4164, line: 348, baseType: !210, size: 8, offset: 800)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4163, file: !4164, line: 349, baseType: !210, size: 8, offset: 808)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4163, file: !4164, line: 350, baseType: !210, size: 8, offset: 816)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4163, file: !4164, line: 351, baseType: !210, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4163, file: !4164, line: 352, baseType: !210, size: 8, offset: 832)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4163, file: !4164, line: 353, baseType: !210, size: 8, offset: 840)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4163, file: !4164, line: 354, baseType: !220, size: 16, offset: 848)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4163, file: !4164, line: 355, baseType: !4079, size: 64, offset: 896)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4163, file: !4164, line: 357, baseType: !4728, size: 64, offset: 960)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4164, line: 918, size: 2368, elements: !4730)
!4730 = !{!4731, !4732, !4733, !4746, !4750, !4754, !4758, !4762, !4763, !4767, !4768, !4772, !4792, !4793, !4794, !4795, !4800}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4729, file: !4164, line: 919, baseType: !152, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4729, file: !4164, line: 920, baseType: !171, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4729, file: !4164, line: 921, baseType: !4734, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4736)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4312, line: 44, size: 320, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4736, file: !4312, line: 45, baseType: !403, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4736, file: !4312, line: 45, baseType: !403, size: 32, offset: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4736, file: !4312, line: 46, baseType: !403, size: 32, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4736, file: !4312, line: 46, baseType: !403, size: 32, offset: 96)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4736, file: !4312, line: 47, baseType: !403, size: 32, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4736, file: !4312, line: 47, baseType: !403, size: 32, offset: 160)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4736, file: !4312, line: 48, baseType: !4328, size: 64, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4736, file: !4312, line: 49, baseType: !403, size: 32, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4729, file: !4164, line: 922, baseType: !4747, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!109, !4162, !4734}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4729, file: !4164, line: 923, baseType: !4751, size: 64, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !4162}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4729, file: !4164, line: 924, baseType: !4755, size: 64, offset: 384)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!109, !4162, !4339}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4729, file: !4164, line: 925, baseType: !4759, size: 64, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!109, !4162}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4729, file: !4164, line: 926, baseType: !4751, size: 64, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4729, file: !4164, line: 927, baseType: !4764, size: 64, offset: 576)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!109, !4162, !109}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4729, file: !4164, line: 928, baseType: !4764, size: 64, offset: 640)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4729, file: !4164, line: 929, baseType: !4769, size: 64, offset: 704)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!402, !4162}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4729, file: !4164, line: 930, baseType: !4773, size: 64, offset: 768)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4775)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4164, line: 837, size: 448, elements: !4776)
!4776 = !{!4777, !4783, !4787, !4788, !4789, !4790, !4791}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4775, file: !4164, line: 839, baseType: !4778, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!4781, !4162, !4782}
!4781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4164, line: 814, baseType: !7)
!4782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4164, line: 196, baseType: !7)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4775, file: !4164, line: 843, baseType: !4784, size: 64, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!4781, !4162}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4775, file: !4164, line: 846, baseType: !4784, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4775, file: !4164, line: 849, baseType: !4751, size: 64, offset: 192)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4775, file: !4164, line: 850, baseType: !4751, size: 64, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4775, file: !4164, line: 853, baseType: !4751, size: 64, offset: 320)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4775, file: !4164, line: 856, baseType: !4751, size: 64, offset: 384)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4729, file: !4164, line: 931, baseType: !304, size: 64, offset: 832)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4729, file: !4164, line: 932, baseType: !304, size: 64, offset: 896)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4729, file: !4164, line: 933, baseType: !4300, size: 1152, offset: 960)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4729, file: !4164, line: 934, baseType: !4796, size: 192, offset: 2112)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4164, line: 801, size: 192, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4796, file: !4164, line: 802, baseType: !182, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4796, file: !4164, line: 803, baseType: !152, size: 128, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4729, file: !4164, line: 935, baseType: !1453, size: 8, offset: 2304)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4163, file: !4164, line: 358, baseType: !406, size: 64, offset: 1024)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4163, file: !4164, line: 364, baseType: !4509, size: 128, offset: 1088)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4163, file: !4164, line: 366, baseType: !4804, size: 32, offset: 1216)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4164, line: 171, baseType: !109)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4163, file: !4164, line: 369, baseType: !210, size: 8, offset: 1248)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4163, file: !4164, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4163, file: !4164, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4163, file: !4164, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4163, file: !4164, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4163, file: !4164, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4163, file: !4164, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4163, file: !4164, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4163, file: !4164, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4163, file: !4164, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4163, file: !4164, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4163, file: !4164, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4163, file: !4164, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4163, file: !4164, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4163, file: !4164, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4163, file: !4164, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4163, file: !4164, line: 390, baseType: !7, size: 32, offset: 1280)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4163, file: !4164, line: 391, baseType: !7, size: 32, offset: 1312)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4163, file: !4164, line: 394, baseType: !4824, size: 64, offset: 1344)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4164, line: 316, flags: DIFlagFwdDecl)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4163, file: !4164, line: 395, baseType: !220, size: 16, offset: 1408)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4163, file: !4164, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4163, file: !4164, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4163, file: !4164, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4163, file: !4164, line: 402, baseType: !4782, size: 32, offset: 1440)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4163, file: !4164, line: 403, baseType: !4223, size: 5824, offset: 1472)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4163, file: !4164, line: 405, baseType: !109, size: 32, offset: 7296)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4163, file: !4164, line: 411, baseType: !7, size: 32, offset: 7328)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4163, file: !4164, line: 412, baseType: !4835, size: 5632, offset: 7360)
!4835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4126, size: 5632, elements: !4836)
!4836 = !{!4837}
!4837 = !DISubrange(count: 11)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4163, file: !4164, line: 413, baseType: !4126, size: 512, offset: 12992)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4163, file: !4164, line: 415, baseType: !1453, size: 8, offset: 13504)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4163, file: !4164, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4163, file: !4164, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4163, file: !4164, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4163, file: !4164, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4163, file: !4164, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4163, file: !4164, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4163, file: !4164, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4163, file: !4164, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4163, file: !4164, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4163, file: !4164, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4163, file: !4164, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4163, file: !4164, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4163, file: !4164, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4163, file: !4164, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4163, file: !4164, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4163, file: !4164, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4163, file: !4164, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4163, file: !4164, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4163, file: !4164, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4163, file: !4164, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4163, file: !4164, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4163, file: !4164, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4163, file: !4164, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4163, file: !4164, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4163, file: !4164, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4163, file: !4164, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4163, file: !4164, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4163, file: !4164, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4163, file: !4164, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4163, file: !4164, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4163, file: !4164, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4163, file: !4164, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4163, file: !4164, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4163, file: !4164, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4163, file: !4164, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4163, file: !4164, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4163, file: !4164, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4163, file: !4164, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4163, file: !4164, line: 468, baseType: !4879, size: 16, offset: 13552)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4164, line: 222, baseType: !222)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4163, file: !4164, line: 469, baseType: !202, size: 32, offset: 13568)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4163, file: !4164, line: 471, baseType: !182, size: 32, offset: 13600)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4163, file: !4164, line: 472, baseType: !4883, size: 512, offset: 13632)
!4883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 512, elements: !2313)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4163, file: !4164, line: 473, baseType: !525, size: 64, offset: 14144)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4163, file: !4164, line: 474, baseType: !4886, size: 704, offset: 14208)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 704, elements: !4836)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4163, file: !4164, line: 475, baseType: !4886, size: 704, offset: 14912)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4163, file: !4164, line: 487, baseType: !324, size: 64, offset: 15616)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4163, file: !4164, line: 488, baseType: !646, size: 32, offset: 15680)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4163, file: !4164, line: 490, baseType: !4891, size: 320, offset: 15744)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4164, line: 309, size: 320, elements: !4892)
!4892 = !{!4893, !4894, !4895}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4891, file: !4164, line: 310, baseType: !633, size: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4891, file: !4164, line: 311, baseType: !7, size: 32, offset: 256)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4891, file: !4164, line: 312, baseType: !210, size: 8, offset: 288)
!4896 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !4164, line: 497, baseType: !4897, size: 64, offset: 16064)
!4897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4163, file: !4164, line: 497, size: 64, elements: !4898)
!4898 = !{!4899, !4902}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4897, file: !4164, line: 498, baseType: !4900, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4164, line: 317, flags: DIFlagFwdDecl)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4897, file: !4164, line: 499, baseType: !4162, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4163, file: !4164, line: 501, baseType: !220, size: 16, offset: 16128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4163, file: !4164, line: 502, baseType: !210, size: 8, offset: 16144)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4163, file: !4164, line: 505, baseType: !220, size: 16, offset: 16160)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4163, file: !4164, line: 506, baseType: !402, size: 32, offset: 16192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4163, file: !4164, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4163, file: !4164, line: 510, baseType: !220, size: 16, offset: 16240)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4163, file: !4164, line: 511, baseType: !220, size: 16, offset: 16256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4163, file: !4164, line: 519, baseType: !220, size: 16, offset: 16272)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4163, file: !4164, line: 520, baseType: !2856, size: 64, offset: 16320)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4163, file: !4164, line: 521, baseType: !299, size: 64, offset: 16384)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4163, file: !4164, line: 526, baseType: !171, size: 64, offset: 16448)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4163, file: !4164, line: 528, baseType: !302, size: 64, offset: 16512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4163, file: !4164, line: 531, baseType: !4916, size: 56, offset: 16576)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 56, elements: !3895)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "resource_setup_done", scope: !4095, file: !4096, line: 163, baseType: !210, size: 8, offset: 2752)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4095, file: !4096, line: 166, baseType: !4919, size: 64, offset: 2816)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_operations", file: !4096, line: 121, size: 384, elements: !4921)
!4921 = !{!4922, !4926, !4927, !4932, !4937, !4949}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4920, file: !4096, line: 122, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!109, !4094}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4920, file: !4096, line: 123, baseType: !4923, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4920, file: !4096, line: 124, baseType: !4928, size: 64, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!109, !4094, !4931}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "set_socket", scope: !4920, file: !4096, line: 125, baseType: !4933, size: 64, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!109, !4094, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "set_io_map", scope: !4920, file: !4096, line: 126, baseType: !4938, size: 64, offset: 256)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!109, !4094, !4941}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_io_map", file: !4096, line: 84, size: 192, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4947, !4948}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4942, file: !4096, line: 85, baseType: !4107, size: 8)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4942, file: !4096, line: 86, baseType: !4107, size: 8, offset: 8)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4942, file: !4096, line: 87, baseType: !4113, size: 16, offset: 16)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4942, file: !4096, line: 88, baseType: !2856, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4942, file: !4096, line: 88, baseType: !2856, size: 64, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem_map", scope: !4920, file: !4096, line: 127, baseType: !4950, size: 64, offset: 320)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!109, !4094, !4953}
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ops", scope: !4095, file: !4096, line: 167, baseType: !4955, size: 64, offset: 2880)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_resource_ops", file: !4957, line: 46, size: 320, elements: !4958)
!4957 = !DIFile(filename: "drivers/pcmcia/cs_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa10cd0acf8f1a671c53cf79b958ae8a")
!4958 = !{!4959, !4960, !4965, !4969, !4970}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "validate_mem", scope: !4956, file: !4957, line: 47, baseType: !4923, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "find_io", scope: !4956, file: !4957, line: 48, baseType: !4961, size: 64, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!109, !4094, !7, !955, !7, !7, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "find_mem", scope: !4956, file: !4957, line: 54, baseType: !4966, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!4125, !302, !302, !302, !109, !4094}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4956, file: !4957, line: 57, baseType: !4923, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4956, file: !4957, line: 58, baseType: !4971, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{null, !4094}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "resource_data", scope: !4095, file: !4096, line: 168, baseType: !324, size: 64, offset: 2944)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "zoom_video", scope: !4095, file: !4096, line: 172, baseType: !4976, size: 64, offset: 3008)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{null, !4094, !109}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "power_hook", scope: !4095, file: !4096, line: 176, baseType: !4980, size: 64, offset: 3072)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!109, !4094, !109}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "tune_bridge", scope: !4095, file: !4096, line: 180, baseType: !4984, size: 64, offset: 3136)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !4094, !4168}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4095, file: !4096, line: 184, baseType: !961, size: 64, offset: 3200)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_done", scope: !4095, file: !4096, line: 185, baseType: !1844, size: 256, offset: 3264)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "thread_events", scope: !4095, file: !4096, line: 186, baseType: !7, size: 32, offset: 3520)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_events", scope: !4095, file: !4096, line: 187, baseType: !7, size: 32, offset: 3552)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "skt_mutex", scope: !4095, file: !4096, line: 191, baseType: !633, size: 256, offset: 3584)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "ops_mutex", scope: !4095, file: !4096, line: 192, baseType: !633, size: 256, offset: 3840)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "thread_lock", scope: !4095, file: !4096, line: 195, baseType: !182, size: 32, offset: 4096)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4095, file: !4096, line: 198, baseType: !4995, size: 64, offset: 4160)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_callback", file: !4957, line: 102, size: 512, elements: !4997)
!4997 = !{!4998, !4999, !5000, !5001, !5002, !5006, !5007, !5008}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4996, file: !4957, line: 103, baseType: !147, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4996, file: !4957, line: 104, baseType: !4923, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4996, file: !4957, line: 105, baseType: !4923, size: 64, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "requery", scope: !4996, file: !4957, line: 106, baseType: !4971, size: 64, offset: 192)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4996, file: !4957, line: 107, baseType: !5003, size: 64, offset: 256)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!109, !4094, !955}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4996, file: !4957, line: 108, baseType: !4923, size: 64, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "early_resume", scope: !4996, file: !4957, line: 109, baseType: !4923, size: 64, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4996, file: !4957, line: 110, baseType: !4923, size: 64, offset: 448)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "devices_list", scope: !4095, file: !4096, line: 203, baseType: !152, size: 128, offset: 4224)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !4095, file: !4096, line: 207, baseType: !210, size: 8, offset: 4352)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_pfc", scope: !4095, file: !4096, line: 210, baseType: !210, size: 8, offset: 4360)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4095, file: !4096, line: 213, baseType: !202, size: 32, offset: 4384)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_irq", scope: !4095, file: !4096, line: 216, baseType: !7, size: 32, offset: 4416)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4095, file: !4096, line: 221, baseType: !4223, size: 5824, offset: 4480)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4095, file: !4096, line: 223, baseType: !324, size: 64, offset: 10304)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "resume_status", scope: !4095, file: !4096, line: 225, baseType: !109, size: 32, offset: 10368)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5019)
!5019 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!5024 = !{!0, !5025, !5030, !5035, !5040, !5042, !5047, !5049, !5054, !5056, !5061, !5063, !5068, !5070, !5072, !5074, !5079, !5081, !5083, !5085, !5087, !5089, !5094, !5096, !5098, !5100, !5102, !5104, !5106, !5108, !5110, !5112, !5134, !5139, !5141, !5143, !5145, !5150, !5153, !5155, !5157, !5159, !5161, !5163, !5165, !5167, !5172, !5175, !5180, !5182, !5184, !5186, !5190, !5192, !5194, !5196, !5201, !5203, !5208, !5210, !5215, !5217, !5219, !5221, !5224, !5226, !5228, !5230, !5232, !5234, !5239, !5241, !5248, !5253, !5256, !5261, !5263, !5265, !5268, !5270, !5272, !5274, !5276, !5279, !5282, !5286, !5289, !5294}
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description293", scope: !2, file: !3, line: 41, type: !5027, isLocal: true, isDefinition: true, align: 8)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 408, elements: !5028)
!5028 = !{!5029}
!5029 = !DISubrange(count: 51)
!5030 = !DIGlobalVariableExpression(var: !5031, expr: !DIExpression())
!5031 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file294", scope: !2, file: !3, line: 42, type: !5032, isLocal: true, isDefinition: true, align: 8)
!5032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 352, elements: !5033)
!5033 = !{!5034}
!5034 = !DISubrange(count: 44)
!5035 = !DIGlobalVariableExpression(var: !5036, expr: !DIExpression())
!5036 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license295", scope: !2, file: !3, line: 42, type: !5037, isLocal: true, isDefinition: true, align: 8)
!5037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 192, elements: !5038)
!5038 = !{!5039}
!5039 = !DISubrange(count: 24)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(name: "__param_setup_delay", scope: !2, file: !3, line: 46, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_setup_delaytype296", scope: !2, file: !3, line: 46, type: !5044, isLocal: true, isDefinition: true, align: 8)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 296, elements: !5045)
!5045 = !{!5046}
!5046 = !DISubrange(count: 37)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "__param_resume_delay", scope: !2, file: !3, line: 47, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_resume_delaytype297", scope: !2, file: !3, line: 47, type: !5051, isLocal: true, isDefinition: true, align: 8)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 304, elements: !5052)
!5052 = !{!5053}
!5053 = !DISubrange(count: 38)
!5054 = !DIGlobalVariableExpression(var: !5055, expr: !DIExpression())
!5055 = distinct !DIGlobalVariable(name: "__param_shutdown_delay", scope: !2, file: !3, line: 48, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_shutdown_delaytype298", scope: !2, file: !3, line: 48, type: !5058, isLocal: true, isDefinition: true, align: 8)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 320, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 40)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(name: "__param_vcc_settle", scope: !2, file: !3, line: 49, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_vcc_settletype299", scope: !2, file: !3, line: 49, type: !5065, isLocal: true, isDefinition: true, align: 8)
!5065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 288, elements: !5066)
!5066 = !{!5067}
!5067 = !DISubrange(count: 36)
!5068 = !DIGlobalVariableExpression(var: !5069, expr: !DIExpression())
!5069 = distinct !DIGlobalVariable(name: "__param_reset_time", scope: !2, file: !3, line: 50, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5070 = !DIGlobalVariableExpression(var: !5071, expr: !DIExpression())
!5071 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_reset_timetype300", scope: !2, file: !3, line: 50, type: !5065, isLocal: true, isDefinition: true, align: 8)
!5072 = !DIGlobalVariableExpression(var: !5073, expr: !DIExpression())
!5073 = distinct !DIGlobalVariable(name: "__param_unreset_delay", scope: !2, file: !3, line: 51, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5074 = !DIGlobalVariableExpression(var: !5075, expr: !DIExpression())
!5075 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_delaytype301", scope: !2, file: !3, line: 51, type: !5076, isLocal: true, isDefinition: true, align: 8)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 312, elements: !5077)
!5077 = !{!5078}
!5078 = !DISubrange(count: 39)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "__param_unreset_check", scope: !2, file: !3, line: 52, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_checktype302", scope: !2, file: !3, line: 52, type: !5076, isLocal: true, isDefinition: true, align: 8)
!5083 = !DIGlobalVariableExpression(var: !5084, expr: !DIExpression())
!5084 = distinct !DIGlobalVariable(name: "__param_unreset_limit", scope: !2, file: !3, line: 53, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5085 = !DIGlobalVariableExpression(var: !5086, expr: !DIExpression())
!5086 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_limittype303", scope: !2, file: !3, line: 53, type: !5076, isLocal: true, isDefinition: true, align: 8)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "__param_cis_speed", scope: !2, file: !3, line: 56, type: !3826, isLocal: true, isDefinition: true, align: 64)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_cis_speedtype304", scope: !2, file: !3, line: 56, type: !5091, isLocal: true, isDefinition: true, align: 8)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 280, elements: !5092)
!5092 = !{!5093}
!5093 = !DISubrange(count: 35)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "dead_socket", scope: !2, file: !3, line: 59, type: !4100, isLocal: false, isDefinition: true)
!5096 = !DIGlobalVariableExpression(var: !5097, expr: !DIExpression())
!5097 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dead_socket305", scope: !2, file: !3, line: 62, type: !324, isLocal: true, isDefinition: true)
!5098 = !DIGlobalVariableExpression(var: !5099, expr: !DIExpression())
!5099 = distinct !DIGlobalVariable(name: "pcmcia_socket_list", scope: !2, file: !3, line: 66, type: !152, isLocal: false, isDefinition: true)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_socket_list306", scope: !2, file: !3, line: 67, type: !324, isLocal: true, isDefinition: true)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(name: "pcmcia_socket_list_rwsem", scope: !2, file: !3, line: 69, type: !846, isLocal: false, isDefinition: true)
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_socket_list_rwsem307", scope: !2, file: !3, line: 70, type: !324, isLocal: true, isDefinition: true)
!5106 = !DIGlobalVariableExpression(var: !5107, expr: !DIExpression())
!5107 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_get_socket308", scope: !2, file: !3, line: 80, type: !324, isLocal: true, isDefinition: true)
!5108 = !DIGlobalVariableExpression(var: !5109, expr: !DIExpression())
!5109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_put_socket309", scope: !2, file: !3, line: 87, type: !324, isLocal: true, isDefinition: true)
!5110 = !DIGlobalVariableExpression(var: !5111, expr: !DIExpression())
!5111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !2312, isLocal: true, isDefinition: true)
!5112 = !DIGlobalVariableExpression(var: !5113, expr: !DIExpression())
!5113 = distinct !DIGlobalVariable(name: "__key", scope: !5114, file: !3, line: 157, type: !535, isLocal: true, isDefinition: true)
!5114 = distinct !DISubprogram(name: "pcmcia_register_socket", scope: !3, file: !3, line: 103, type: !4924, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5115)
!5115 = !{!5116, !5117, !5118, !5119, !5122, !5123, !5124, !5128, !5131, !5133}
!5116 = !DILocalVariable(name: "socket", arg: 1, scope: !5114, file: !3, line: 103, type: !4094)
!5117 = !DILocalVariable(name: "tsk", scope: !5114, file: !3, line: 105, type: !961)
!5118 = !DILocalVariable(name: "ret", scope: !5114, file: !3, line: 106, type: !109)
!5119 = !DILocalVariable(name: "found", scope: !5120, file: !3, line: 121, type: !7)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 120, column: 7)
!5121 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 118, column: 6)
!5122 = !DILocalVariable(name: "i", scope: !5120, file: !3, line: 121, type: !7)
!5123 = !DILocalVariable(name: "tmp", scope: !5120, file: !3, line: 122, type: !4094)
!5124 = !DILocalVariable(name: "__mptr", scope: !5125, file: !3, line: 125, type: !324)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 125, column: 4)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 125, column: 4)
!5127 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 123, column: 6)
!5128 = !DILocalVariable(name: "__mptr", scope: !5129, file: !3, line: 125, type: !324)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 125, column: 4)
!5130 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 125, column: 4)
!5131 = !DILocalVariable(name: "__k", scope: !5132, file: !3, line: 169, type: !961)
!5132 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 169, column: 8)
!5133 = !DILabel(scope: !5114, name: "err", file: !3, line: 193)
!5134 = !DIGlobalVariableExpression(var: !5135, expr: !DIExpression())
!5135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !5136, isLocal: true, isDefinition: true)
!5136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 152, elements: !5137)
!5137 = !{!5138}
!5138 = !DISubrange(count: 19)
!5139 = !DIGlobalVariableExpression(var: !5140, expr: !DIExpression())
!5140 = distinct !DIGlobalVariable(name: "__key", scope: !5114, file: !3, line: 158, type: !535, isLocal: true, isDefinition: true)
!5141 = !DIGlobalVariableExpression(var: !5142, expr: !DIExpression())
!5142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !5136, isLocal: true, isDefinition: true)
!5143 = !DIGlobalVariableExpression(var: !5144, expr: !DIExpression())
!5144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !2639, isLocal: true, isDefinition: true)
!5145 = !DIGlobalVariableExpression(var: !5146, expr: !DIExpression())
!5146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !5147, isLocal: true, isDefinition: true)
!5147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 368, elements: !5148)
!5148 = !{!5149}
!5149 = !DISubrange(count: 46)
!5150 = !DIGlobalVariableExpression(var: !5151, expr: !DIExpression())
!5151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !5152, isLocal: true, isDefinition: true)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 56, elements: !3895)
!5153 = !DIGlobalVariableExpression(var: !5154, expr: !DIExpression())
!5154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_register_socket310", scope: !2, file: !3, line: 199, type: !324, isLocal: true, isDefinition: true)
!5155 = !DIGlobalVariableExpression(var: !5156, expr: !DIExpression())
!5156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_unregister_socket311", scope: !2, file: !3, line: 229, type: !324, isLocal: true, isDefinition: true)
!5157 = !DIGlobalVariableExpression(var: !5158, expr: !DIExpression())
!5158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_get_socket_by_nr312", scope: !2, file: !3, line: 247, type: !324, isLocal: true, isDefinition: true)
!5159 = !DIGlobalVariableExpression(var: !5160, expr: !DIExpression())
!5160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_parse_events314", scope: !2, file: !3, line: 711, type: !324, isLocal: true, isDefinition: true)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_parse_uevents315", scope: !2, file: !3, line: 736, type: !324, isLocal: true, isDefinition: true)
!5163 = !DIGlobalVariableExpression(var: !5164, expr: !DIExpression())
!5164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pccard_register_pcmcia316", scope: !2, file: !3, line: 765, type: !324, isLocal: true, isDefinition: true)
!5165 = !DIGlobalVariableExpression(var: !5166, expr: !DIExpression())
!5166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_reset_card317", scope: !2, file: !3, line: 811, type: !324, isLocal: true, isDefinition: true)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 866, type: !5169, isLocal: true, isDefinition: true)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 208, elements: !5170)
!5170 = !{!5171}
!5171 = !DISubrange(count: 26)
!5172 = !DIGlobalVariableExpression(var: !5173, expr: !DIExpression())
!5173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 866, type: !5174, isLocal: true, isDefinition: true)
!5174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 160, elements: !2952)
!5175 = !DIGlobalVariableExpression(var: !5176, expr: !DIExpression())
!5176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 896, type: !5177, isLocal: true, isDefinition: true)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 112, elements: !5178)
!5178 = !{!5179}
!5179 = !DISubrange(count: 14)
!5180 = !DIGlobalVariableExpression(var: !5181, expr: !DIExpression())
!5181 = distinct !DIGlobalVariable(name: "pcmcia_socket_class", scope: !2, file: !3, line: 895, type: !4637, isLocal: false, isDefinition: true)
!5182 = !DIGlobalVariableExpression(var: !5183, expr: !DIExpression())
!5183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcmcia_socket_class318", scope: !2, file: !3, line: 902, type: !324, isLocal: true, isDefinition: true)
!5184 = !DIGlobalVariableExpression(var: !5185, expr: !DIExpression())
!5185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4320", scope: !2, file: !3, line: 917, type: !324, isLocal: true, isDefinition: true)
!5186 = !DIGlobalVariableExpression(var: !5187, expr: !DIExpression())
!5187 = distinct !DIGlobalVariable(name: "__exitcall_exit_pcmcia_cs", scope: !2, file: !3, line: 918, type: !5188, isLocal: true, isDefinition: true)
!5188 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5189, line: 120, baseType: !4092)
!5189 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5190 = !DIGlobalVariableExpression(var: !5191, expr: !DIExpression())
!5191 = distinct !DIGlobalVariable(name: "pcmcia_unload", scope: !2, file: !3, line: 826, type: !1844, isLocal: true, isDefinition: true)
!5192 = !DIGlobalVariableExpression(var: !5193, expr: !DIExpression())
!5193 = distinct !DIGlobalVariable(name: "__param_str_setup_delay", scope: !2, file: !3, line: 46, type: !5037, isLocal: true, isDefinition: true)
!5194 = !DIGlobalVariableExpression(var: !5195, expr: !DIExpression())
!5195 = distinct !DIGlobalVariable(name: "setup_delay", scope: !2, file: !3, line: 46, type: !109, isLocal: true, isDefinition: true)
!5196 = !DIGlobalVariableExpression(var: !5197, expr: !DIExpression())
!5197 = distinct !DIGlobalVariable(name: "__param_str_resume_delay", scope: !2, file: !3, line: 47, type: !5198, isLocal: true, isDefinition: true)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 200, elements: !5199)
!5199 = !{!5200}
!5200 = !DISubrange(count: 25)
!5201 = !DIGlobalVariableExpression(var: !5202, expr: !DIExpression())
!5202 = distinct !DIGlobalVariable(name: "resume_delay", scope: !2, file: !3, line: 47, type: !109, isLocal: true, isDefinition: true)
!5203 = !DIGlobalVariableExpression(var: !5204, expr: !DIExpression())
!5204 = distinct !DIGlobalVariable(name: "__param_str_shutdown_delay", scope: !2, file: !3, line: 48, type: !5205, isLocal: true, isDefinition: true)
!5205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 216, elements: !5206)
!5206 = !{!5207}
!5207 = !DISubrange(count: 27)
!5208 = !DIGlobalVariableExpression(var: !5209, expr: !DIExpression())
!5209 = distinct !DIGlobalVariable(name: "shutdown_delay", scope: !2, file: !3, line: 48, type: !109, isLocal: true, isDefinition: true)
!5210 = !DIGlobalVariableExpression(var: !5211, expr: !DIExpression())
!5211 = distinct !DIGlobalVariable(name: "__param_str_vcc_settle", scope: !2, file: !3, line: 49, type: !5212, isLocal: true, isDefinition: true)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 184, elements: !5213)
!5213 = !{!5214}
!5214 = !DISubrange(count: 23)
!5215 = !DIGlobalVariableExpression(var: !5216, expr: !DIExpression())
!5216 = distinct !DIGlobalVariable(name: "vcc_settle", scope: !2, file: !3, line: 49, type: !109, isLocal: true, isDefinition: true)
!5217 = !DIGlobalVariableExpression(var: !5218, expr: !DIExpression())
!5218 = distinct !DIGlobalVariable(name: "__param_str_reset_time", scope: !2, file: !3, line: 50, type: !5212, isLocal: true, isDefinition: true)
!5219 = !DIGlobalVariableExpression(var: !5220, expr: !DIExpression())
!5220 = distinct !DIGlobalVariable(name: "reset_time", scope: !2, file: !3, line: 50, type: !109, isLocal: true, isDefinition: true)
!5221 = !DIGlobalVariableExpression(var: !5222, expr: !DIExpression())
!5222 = distinct !DIGlobalVariable(name: "__param_str_unreset_delay", scope: !2, file: !3, line: 51, type: !5223, isLocal: true, isDefinition: true)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 208, elements: !5170)
!5224 = !DIGlobalVariableExpression(var: !5225, expr: !DIExpression())
!5225 = distinct !DIGlobalVariable(name: "unreset_delay", scope: !2, file: !3, line: 51, type: !109, isLocal: true, isDefinition: true)
!5226 = !DIGlobalVariableExpression(var: !5227, expr: !DIExpression())
!5227 = distinct !DIGlobalVariable(name: "__param_str_unreset_check", scope: !2, file: !3, line: 52, type: !5223, isLocal: true, isDefinition: true)
!5228 = !DIGlobalVariableExpression(var: !5229, expr: !DIExpression())
!5229 = distinct !DIGlobalVariable(name: "unreset_check", scope: !2, file: !3, line: 52, type: !109, isLocal: true, isDefinition: true)
!5230 = !DIGlobalVariableExpression(var: !5231, expr: !DIExpression())
!5231 = distinct !DIGlobalVariable(name: "__param_str_unreset_limit", scope: !2, file: !3, line: 53, type: !5223, isLocal: true, isDefinition: true)
!5232 = !DIGlobalVariableExpression(var: !5233, expr: !DIExpression())
!5233 = distinct !DIGlobalVariable(name: "unreset_limit", scope: !2, file: !3, line: 53, type: !109, isLocal: true, isDefinition: true)
!5234 = !DIGlobalVariableExpression(var: !5235, expr: !DIExpression())
!5235 = distinct !DIGlobalVariable(name: "__param_str_cis_speed", scope: !2, file: !3, line: 56, type: !5236, isLocal: true, isDefinition: true)
!5236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 176, elements: !5237)
!5237 = !{!5238}
!5238 = !DISubrange(count: 22)
!5239 = !DIGlobalVariableExpression(var: !5240, expr: !DIExpression())
!5240 = distinct !DIGlobalVariable(name: "cis_speed", scope: !2, file: !3, line: 56, type: !109, isLocal: true, isDefinition: true)
!5241 = !DIGlobalVariableExpression(var: !5242, expr: !DIExpression())
!5242 = distinct !DIGlobalVariable(name: "__key", scope: !5243, file: !1845, line: 87, type: !535, isLocal: true, isDefinition: true)
!5243 = distinct !DISubprogram(name: "init_completion", scope: !1845, file: !1845, line: 84, type: !5244, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5246)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{null, !2270}
!5246 = !{!5247}
!5247 = !DILocalVariable(name: "x", arg: 1, scope: !5243, file: !1845, line: 84, type: !2270)
!5248 = !DIGlobalVariableExpression(var: !5249, expr: !DIExpression())
!5249 = distinct !DIGlobalVariable(scope: null, file: !1845, line: 87, type: !5250, isLocal: true, isDefinition: true)
!5250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 72, elements: !5251)
!5251 = !{!5252}
!5252 = !DISubrange(count: 9)
!5253 = !DIGlobalVariableExpression(var: !5254, expr: !DIExpression())
!5254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 605, type: !5255, isLocal: true, isDefinition: true)
!5255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 280, elements: !5092)
!5256 = !DIGlobalVariableExpression(var: !5257, expr: !DIExpression())
!5257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 613, type: !5258, isLocal: true, isDefinition: true)
!5258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 264, elements: !5259)
!5259 = !{!5260}
!5260 = !DISubrange(count: 33)
!5261 = !DIGlobalVariableExpression(var: !5262, expr: !DIExpression())
!5262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 559, type: !5255, isLocal: true, isDefinition: true)
!5263 = !DIGlobalVariableExpression(var: !5264, expr: !DIExpression())
!5264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !5147, isLocal: true, isDefinition: true)
!5265 = !DIGlobalVariableExpression(var: !5266, expr: !DIExpression())
!5266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !5267, isLocal: true, isDefinition: true)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 312, elements: !5077)
!5268 = !DIGlobalVariableExpression(var: !5269, expr: !DIExpression())
!5269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !2639, isLocal: true, isDefinition: true)
!5270 = !DIGlobalVariableExpression(var: !5271, expr: !DIExpression())
!5271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !5152, isLocal: true, isDefinition: true)
!5272 = !DIGlobalVariableExpression(var: !5273, expr: !DIExpression())
!5273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !5258, isLocal: true, isDefinition: true)
!5274 = !DIGlobalVariableExpression(var: !5275, expr: !DIExpression())
!5275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !5258, isLocal: true, isDefinition: true)
!5276 = !DIGlobalVariableExpression(var: !5277, expr: !DIExpression())
!5277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !5278, isLocal: true, isDefinition: true)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 200, elements: !5199)
!5279 = !DIGlobalVariableExpression(var: !5280, expr: !DIExpression())
!5280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !5281, isLocal: true, isDefinition: true)
!5281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 184, elements: !5213)
!5282 = !DIGlobalVariableExpression(var: !5283, expr: !DIExpression())
!5283 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5284, file: !5285, line: 112, type: !324, isLocal: true, isDefinition: true)
!5284 = distinct !DISubprogram(name: "might_resched", scope: !5285, file: !5285, line: 110, type: !2509, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5285 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5286 = !DIGlobalVariableExpression(var: !5287, expr: !DIExpression())
!5287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !5288, isLocal: true, isDefinition: true)
!5288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 176, elements: !5237)
!5289 = !DIGlobalVariableExpression(var: !5290, expr: !DIExpression())
!5290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 819, type: !5291, isLocal: true, isDefinition: true)
!5291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 104, elements: !5292)
!5292 = !{!5293}
!5293 = !DISubrange(count: 13)
!5294 = !DIGlobalVariableExpression(var: !5295, expr: !DIExpression())
!5295 = distinct !DIGlobalVariable(name: "pcmcia_socket_pm_ops", scope: !2, file: !3, line: 870, type: !4255, isLocal: true, isDefinition: true)
!5296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 504, elements: !5297)
!5297 = !{!5298}
!5298 = !DISubrange(count: 63)
!5299 = !{i32 7, !"Dwarf Version", i32 5}
!5300 = !{i32 2, !"Debug Info Version", i32 3}
!5301 = !{i32 1, !"wchar_size", i32 2}
!5302 = !{i32 8, !"cf-protection-branch", i32 1}
!5303 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5304 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5305 = !{i32 1, !"Code Model", i32 2}
!5306 = !{i32 1, !"override-stack-alignment", i32 8}
!5307 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5308 = distinct !DISubprogram(name: "pcmcia_get_socket", scope: !3, file: !3, line: 73, type: !5309, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!4094, !4094}
!5311 = !{!5312, !5313}
!5312 = !DILocalVariable(name: "skt", arg: 1, scope: !5308, file: !3, line: 73, type: !4094)
!5313 = !DILocalVariable(name: "dev", scope: !5308, file: !3, line: 75, type: !4222)
!5314 = !DILocation(line: 73, column: 63, scope: !5308)
!5315 = !DILocation(line: 75, column: 2, scope: !5308)
!5316 = !DILocation(line: 75, column: 17, scope: !5308)
!5317 = !DILocation(line: 75, column: 35, scope: !5308)
!5318 = !DILocation(line: 75, column: 40, scope: !5308)
!5319 = !DILocation(line: 75, column: 23, scope: !5308)
!5320 = !DILocation(line: 76, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 76, column: 6)
!5322 = !DILocation(line: 76, column: 6, scope: !5308)
!5323 = !DILocation(line: 77, column: 3, scope: !5321)
!5324 = !DILocation(line: 78, column: 25, scope: !5308)
!5325 = !DILocation(line: 78, column: 9, scope: !5308)
!5326 = !DILocation(line: 78, column: 2, scope: !5308)
!5327 = !DILocation(line: 79, column: 1, scope: !5308)
!5328 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !5329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!4222, !4222}
!5331 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !5332, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5334)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!324, !4242}
!5334 = !{!5335}
!5335 = !DILocalVariable(name: "dev", arg: 1, scope: !5331, file: !94, line: 916, type: !4242)
!5336 = !DILocation(line: 916, column: 58, scope: !5331)
!5337 = !DILocation(line: 918, column: 9, scope: !5331)
!5338 = !DILocation(line: 918, column: 14, scope: !5331)
!5339 = !DILocation(line: 918, column: 2, scope: !5331)
!5340 = distinct !DISubprogram(name: "pcmcia_put_socket", scope: !3, file: !3, line: 83, type: !4972, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5341 = !{!5342}
!5342 = !DILocalVariable(name: "skt", arg: 1, scope: !5340, file: !3, line: 83, type: !4094)
!5343 = !DILocation(line: 83, column: 46, scope: !5340)
!5344 = !DILocation(line: 85, column: 14, scope: !5340)
!5345 = !DILocation(line: 85, column: 19, scope: !5340)
!5346 = !DILocation(line: 85, column: 2, scope: !5340)
!5347 = !DILocation(line: 86, column: 1, scope: !5340)
!5348 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5349 = !DILocation(line: 103, column: 50, scope: !5114)
!5350 = !DILocation(line: 105, column: 2, scope: !5114)
!5351 = !DILocation(line: 105, column: 22, scope: !5114)
!5352 = !DILocation(line: 106, column: 2, scope: !5114)
!5353 = !DILocation(line: 106, column: 6, scope: !5114)
!5354 = !DILocation(line: 108, column: 7, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 108, column: 6)
!5356 = !DILocation(line: 108, column: 14, scope: !5355)
!5357 = !DILocation(line: 108, column: 18, scope: !5355)
!5358 = !DILocation(line: 108, column: 26, scope: !5355)
!5359 = !DILocation(line: 108, column: 30, scope: !5355)
!5360 = !DILocation(line: 108, column: 34, scope: !5355)
!5361 = !DILocation(line: 108, column: 42, scope: !5355)
!5362 = !DILocation(line: 108, column: 46, scope: !5355)
!5363 = !DILocation(line: 108, column: 53, scope: !5355)
!5364 = !DILocation(line: 108, column: 57, scope: !5355)
!5365 = !DILocation(line: 108, column: 65, scope: !5355)
!5366 = !DILocation(line: 108, column: 6, scope: !5114)
!5367 = !DILocation(line: 109, column: 3, scope: !5355)
!5368 = !DILocation(line: 117, column: 2, scope: !5114)
!5369 = !DILocation(line: 118, column: 6, scope: !5121)
!5370 = !DILocation(line: 118, column: 6, scope: !5114)
!5371 = !DILocation(line: 119, column: 3, scope: !5121)
!5372 = !DILocation(line: 119, column: 11, scope: !5121)
!5373 = !DILocation(line: 119, column: 16, scope: !5121)
!5374 = !DILocation(line: 121, column: 3, scope: !5120)
!5375 = !DILocation(line: 121, column: 16, scope: !5120)
!5376 = !DILocation(line: 121, column: 23, scope: !5120)
!5377 = !DILocation(line: 122, column: 3, scope: !5120)
!5378 = !DILocation(line: 122, column: 25, scope: !5120)
!5379 = !DILocation(line: 123, column: 3, scope: !5120)
!5380 = !DILocation(line: 124, column: 10, scope: !5127)
!5381 = !DILocation(line: 125, column: 4, scope: !5125)
!5382 = !DILocation(line: 125, column: 4, scope: !5126)
!5383 = !DILocation(line: 125, column: 4, scope: !5130)
!5384 = !DILocation(line: 126, column: 9, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 126, column: 9)
!5386 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 125, column: 63)
!5387 = !DILocation(line: 126, column: 14, scope: !5385)
!5388 = !DILocation(line: 126, column: 22, scope: !5385)
!5389 = !DILocation(line: 126, column: 19, scope: !5385)
!5390 = !DILocation(line: 126, column: 9, scope: !5386)
!5391 = !DILocation(line: 127, column: 12, scope: !5385)
!5392 = !DILocation(line: 127, column: 6, scope: !5385)
!5393 = !DILocation(line: 128, column: 4, scope: !5386)
!5394 = !DILocation(line: 125, column: 4, scope: !5129)
!5395 = distinct !{!5395, !5382, !5396, !5397, !5398}
!5396 = !DILocation(line: 128, column: 4, scope: !5126)
!5397 = !{!"llvm.loop.mustprogress"}
!5398 = !{!"llvm.loop.unroll.disable"}
!5399 = !DILocation(line: 129, column: 5, scope: !5127)
!5400 = !DILocation(line: 130, column: 3, scope: !5127)
!5401 = !DILocation(line: 130, column: 13, scope: !5120)
!5402 = !DILocation(line: 130, column: 12, scope: !5120)
!5403 = distinct !{!5403, !5379, !5404, !5397, !5398}
!5404 = !DILocation(line: 130, column: 18, scope: !5120)
!5405 = !DILocation(line: 131, column: 18, scope: !5120)
!5406 = !DILocation(line: 131, column: 20, scope: !5120)
!5407 = !DILocation(line: 131, column: 3, scope: !5120)
!5408 = !DILocation(line: 131, column: 11, scope: !5120)
!5409 = !DILocation(line: 131, column: 16, scope: !5120)
!5410 = !DILocation(line: 132, column: 2, scope: !5121)
!5411 = !DILocation(line: 133, column: 17, scope: !5114)
!5412 = !DILocation(line: 133, column: 25, scope: !5114)
!5413 = !DILocation(line: 133, column: 2, scope: !5114)
!5414 = !DILocation(line: 134, column: 2, scope: !5114)
!5415 = !DILocation(line: 145, column: 19, scope: !5114)
!5416 = !DILocation(line: 145, column: 27, scope: !5114)
!5417 = !DILocation(line: 145, column: 32, scope: !5114)
!5418 = !DILocation(line: 145, column: 2, scope: !5114)
!5419 = !DILocation(line: 146, column: 2, scope: !5114)
!5420 = !DILocation(line: 146, column: 10, scope: !5114)
!5421 = !DILocation(line: 146, column: 14, scope: !5114)
!5422 = !DILocation(line: 146, column: 20, scope: !5114)
!5423 = !DILocation(line: 147, column: 16, scope: !5114)
!5424 = !DILocation(line: 147, column: 24, scope: !5114)
!5425 = !DILocation(line: 147, column: 48, scope: !5114)
!5426 = !DILocation(line: 147, column: 56, scope: !5114)
!5427 = !DILocation(line: 147, column: 2, scope: !5114)
!5428 = !DILocation(line: 150, column: 2, scope: !5114)
!5429 = !DILocation(line: 150, column: 10, scope: !5114)
!5430 = !DILocation(line: 150, column: 18, scope: !5114)
!5431 = !DILocation(line: 150, column: 24, scope: !5114)
!5432 = !DILocation(line: 151, column: 26, scope: !5114)
!5433 = !DILocation(line: 151, column: 2, scope: !5114)
!5434 = !DILocation(line: 151, column: 10, scope: !5114)
!5435 = !DILocation(line: 151, column: 18, scope: !5114)
!5436 = !DILocation(line: 151, column: 24, scope: !5114)
!5437 = !DILocation(line: 153, column: 18, scope: !5114)
!5438 = !DILocation(line: 153, column: 26, scope: !5114)
!5439 = !DILocation(line: 153, column: 2, scope: !5114)
!5440 = !DILocation(line: 155, column: 19, scope: !5114)
!5441 = !DILocation(line: 155, column: 27, scope: !5114)
!5442 = !DILocation(line: 155, column: 2, scope: !5114)
!5443 = !DILocation(line: 156, column: 19, scope: !5114)
!5444 = !DILocation(line: 156, column: 27, scope: !5114)
!5445 = !DILocation(line: 156, column: 2, scope: !5114)
!5446 = !DILocation(line: 157, column: 2, scope: !5114)
!5447 = !DILocation(line: 157, column: 2, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 157, column: 2)
!5449 = !DILocation(line: 158, column: 2, scope: !5114)
!5450 = !DILocation(line: 158, column: 2, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 158, column: 2)
!5452 = !DILocation(line: 159, column: 2, scope: !5114)
!5453 = !DILocation(line: 159, column: 2, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 159, column: 2)
!5455 = !DILocation(line: 161, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 161, column: 6)
!5457 = !DILocation(line: 161, column: 14, scope: !5456)
!5458 = !DILocation(line: 161, column: 28, scope: !5456)
!5459 = !DILocation(line: 161, column: 6, scope: !5114)
!5460 = !DILocation(line: 162, column: 15, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 161, column: 34)
!5462 = !DILocation(line: 162, column: 23, scope: !5461)
!5463 = !DILocation(line: 162, column: 3, scope: !5461)
!5464 = !DILocation(line: 163, column: 9, scope: !5461)
!5465 = !DILocation(line: 163, column: 17, scope: !5461)
!5466 = !DILocation(line: 163, column: 31, scope: !5461)
!5467 = !DILocation(line: 163, column: 36, scope: !5461)
!5468 = !DILocation(line: 163, column: 7, scope: !5461)
!5469 = !DILocation(line: 164, column: 17, scope: !5461)
!5470 = !DILocation(line: 164, column: 25, scope: !5461)
!5471 = !DILocation(line: 164, column: 3, scope: !5461)
!5472 = !DILocation(line: 165, column: 7, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 165, column: 7)
!5474 = !DILocation(line: 165, column: 7, scope: !5461)
!5475 = !DILocation(line: 166, column: 4, scope: !5473)
!5476 = !DILocation(line: 167, column: 2, scope: !5461)
!5477 = !DILocation(line: 169, column: 8, scope: !5132)
!5478 = !DILocation(line: 169, column: 8, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 169, column: 8)
!5480 = !DILocation(line: 169, column: 8, scope: !5114)
!5481 = !DILocation(line: 169, column: 6, scope: !5114)
!5482 = !DILocation(line: 170, column: 13, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 170, column: 6)
!5484 = !DILocation(line: 170, column: 6, scope: !5483)
!5485 = !DILocation(line: 170, column: 6, scope: !5114)
!5486 = !DILocation(line: 171, column: 17, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 170, column: 19)
!5488 = !DILocation(line: 171, column: 9, scope: !5487)
!5489 = !DILocation(line: 171, column: 7, scope: !5487)
!5490 = !DILocation(line: 172, column: 3, scope: !5487)
!5491 = !DILocation(line: 175, column: 23, scope: !5114)
!5492 = !DILocation(line: 175, column: 31, scope: !5114)
!5493 = !DILocation(line: 175, column: 2, scope: !5114)
!5494 = !DILocation(line: 176, column: 7, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 176, column: 6)
!5496 = !DILocation(line: 176, column: 15, scope: !5495)
!5497 = !DILocation(line: 176, column: 6, scope: !5114)
!5498 = !DILocation(line: 177, column: 3, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 177, column: 3)
!5500 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 176, column: 23)
!5501 = !DILocation(line: 177, column: 3, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 177, column: 3)
!5503 = !DILocation(line: 179, column: 3, scope: !5500)
!5504 = !DILocation(line: 182, column: 22, scope: !5114)
!5505 = !DILocation(line: 182, column: 2, scope: !5114)
!5506 = !DILocation(line: 189, column: 2, scope: !5114)
!5507 = !DILocation(line: 191, column: 2, scope: !5114)
!5508 = !DILocation(line: 193, column: 2, scope: !5114)
!5509 = !DILocation(line: 194, column: 2, scope: !5114)
!5510 = !DILocation(line: 195, column: 12, scope: !5114)
!5511 = !DILocation(line: 195, column: 20, scope: !5114)
!5512 = !DILocation(line: 195, column: 2, scope: !5114)
!5513 = !DILocation(line: 196, column: 2, scope: !5114)
!5514 = !DILocation(line: 197, column: 9, scope: !5114)
!5515 = !DILocation(line: 197, column: 2, scope: !5114)
!5516 = !DILocation(line: 198, column: 1, scope: !5114)
!5517 = !DISubprogram(name: "down_write", scope: !847, file: !847, line: 187, type: !5518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{null, !5520}
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!5521 = distinct !DISubprogram(name: "list_empty", scope: !5522, file: !5522, line: 371, type: !5523, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5527)
!5522 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!109, !5525}
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!5527 = !{!5528}
!5528 = !DILocalVariable(name: "head", arg: 1, scope: !5521, file: !5522, line: 371, type: !5525)
!5529 = !DILocation(line: 371, column: 54, scope: !5521)
!5530 = !DILocation(line: 373, column: 9, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5521, file: !5522, line: 373, column: 9)
!5532 = !DILocation(line: 373, column: 9, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5531, file: !5522, line: 373, column: 9)
!5534 = !DILocation(line: 373, column: 34, scope: !5521)
!5535 = !DILocation(line: 373, column: 31, scope: !5521)
!5536 = !DILocation(line: 373, column: 2, scope: !5521)
!5537 = distinct !DISubprogram(name: "list_add_tail", scope: !5522, file: !5522, line: 181, type: !5538, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !156, !156}
!5540 = !{!5541, !5542}
!5541 = !DILocalVariable(name: "new", arg: 1, scope: !5537, file: !5522, line: 181, type: !156)
!5542 = !DILocalVariable(name: "head", arg: 2, scope: !5537, file: !5522, line: 181, type: !156)
!5543 = !DILocation(line: 181, column: 52, scope: !5537)
!5544 = !DILocation(line: 181, column: 75, scope: !5537)
!5545 = !DILocation(line: 183, column: 13, scope: !5537)
!5546 = !DILocation(line: 183, column: 18, scope: !5537)
!5547 = !DILocation(line: 183, column: 24, scope: !5537)
!5548 = !DILocation(line: 183, column: 30, scope: !5537)
!5549 = !DILocation(line: 183, column: 2, scope: !5537)
!5550 = !DILocation(line: 184, column: 1, scope: !5537)
!5551 = !DISubprogram(name: "up_write", scope: !847, file: !847, line: 203, type: !5518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !94, file: !94, line: 921, type: !5553, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !4222, !324}
!5555 = !{!5556, !5557}
!5556 = !DILocalVariable(name: "dev", arg: 1, scope: !5552, file: !94, line: 921, type: !4222)
!5557 = !DILocalVariable(name: "data", arg: 2, scope: !5552, file: !94, line: 921, type: !324)
!5558 = !DILocation(line: 921, column: 51, scope: !5552)
!5559 = !DILocation(line: 921, column: 62, scope: !5552)
!5560 = !DILocation(line: 923, column: 21, scope: !5552)
!5561 = !DILocation(line: 923, column: 2, scope: !5552)
!5562 = !DILocation(line: 923, column: 7, scope: !5552)
!5563 = !DILocation(line: 923, column: 19, scope: !5552)
!5564 = !DILocation(line: 924, column: 1, scope: !5552)
!5565 = !DISubprogram(name: "dev_set_name", scope: !94, file: !94, line: 879, type: !5566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!109, !4222, !171, null}
!5568 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5522, file: !5522, line: 35, type: !5569, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{null, !156}
!5571 = !{!5572}
!5572 = !DILocalVariable(name: "list", arg: 1, scope: !5568, file: !5522, line: 35, type: !156)
!5573 = !DILocation(line: 35, column: 53, scope: !5568)
!5574 = !DILocation(line: 37, column: 2, scope: !5568)
!5575 = !DILocation(line: 37, column: 2, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5568, file: !5522, line: 37, column: 2)
!5577 = !DILocation(line: 37, column: 2, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5576, file: !5522, line: 37, column: 2)
!5579 = !DILocation(line: 37, column: 2, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5576, file: !5522, line: 37, column: 2)
!5581 = !DILocation(line: 38, column: 2, scope: !5568)
!5582 = !DILocation(line: 38, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5568, file: !5522, line: 38, column: 2)
!5584 = !DILocation(line: 38, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5583, file: !5522, line: 38, column: 2)
!5586 = !DILocation(line: 38, column: 2, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !5522, line: 38, column: 2)
!5588 = !DILocation(line: 39, column: 1, scope: !5568)
!5589 = !DILocation(line: 84, column: 55, scope: !5243)
!5590 = !DILocation(line: 86, column: 2, scope: !5243)
!5591 = !DILocation(line: 86, column: 5, scope: !5243)
!5592 = !DILocation(line: 86, column: 10, scope: !5243)
!5593 = !DILocation(line: 87, column: 2, scope: !5243)
!5594 = !DILocation(line: 87, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5243, file: !1845, line: 87, column: 2)
!5596 = !DILocation(line: 88, column: 1, scope: !5243)
!5597 = !DISubprogram(name: "__mutex_init", scope: !634, file: !634, line: 121, type: !5598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{null, !5600, !171, !5601}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!5602 = distinct !DISubprogram(name: "spinlock_check", scope: !5603, file: !5603, line: 324, type: !5604, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5607)
!5603 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!5606, !1901}
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!5607 = !{!5608}
!5608 = !DILocalVariable(name: "lock", arg: 1, scope: !5602, file: !5603, line: 324, type: !1901)
!5609 = !DILocation(line: 324, column: 67, scope: !5602)
!5610 = !DILocation(line: 326, column: 10, scope: !5602)
!5611 = !DILocation(line: 326, column: 16, scope: !5602)
!5612 = !DILocation(line: 326, column: 2, scope: !5602)
!5613 = !DISubprogram(name: "mutex_lock", scope: !634, file: !634, line: 227, type: !5614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !5600}
!5616 = !DISubprogram(name: "mutex_unlock", scope: !634, file: !634, line: 246, type: !5614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5617 = !DISubprogram(name: "kthread_create_on_node", scope: !5618, file: !5618, line: 11, type: !5619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5618 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!961, !5621, !324, !109, !171, null}
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!109, !324}
!5624 = distinct !DISubprogram(name: "pccardd", scope: !3, file: !3, line: 592, type: !5622, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5625)
!5625 = !{!5626, !5627, !5628, !5629, !5633, !5634, !5635, !5639, !5640, !5645}
!5626 = !DILocalVariable(name: "__skt", arg: 1, scope: !5624, file: !3, line: 592, type: !324)
!5627 = !DILocalVariable(name: "skt", scope: !5624, file: !3, line: 594, type: !4094)
!5628 = !DILocalVariable(name: "ret", scope: !5624, file: !3, line: 595, type: !109)
!5629 = !DILocalVariable(name: "flags", scope: !5630, file: !3, line: 622, type: !302)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 621, column: 11)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 621, column: 2)
!5632 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 621, column: 2)
!5633 = !DILocalVariable(name: "events", scope: !5630, file: !3, line: 623, type: !7)
!5634 = !DILocalVariable(name: "sysfs_events", scope: !5630, file: !3, line: 624, type: !7)
!5635 = !DILocalVariable(name: "__dummy", scope: !5636, file: !3, line: 626, type: !302)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 626, column: 3)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 626, column: 3)
!5638 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 626, column: 3)
!5639 = !DILocalVariable(name: "__dummy2", scope: !5636, file: !3, line: 626, type: !302)
!5640 = !DILocalVariable(name: "__ai_ptr", scope: !5641, file: !3, line: 670, type: !955)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 670, column: 3)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 670, column: 3)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 670, column: 3)
!5644 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 670, column: 3)
!5645 = !DILocalVariable(name: "__ret", scope: !5646, file: !3, line: 670, type: !7)
!5646 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 670, column: 3)
!5647 = !DILocation(line: 592, column: 26, scope: !5624)
!5648 = !DILocation(line: 594, column: 2, scope: !5624)
!5649 = !DILocation(line: 594, column: 24, scope: !5624)
!5650 = !DILocation(line: 594, column: 30, scope: !5624)
!5651 = !DILocation(line: 595, column: 2, scope: !5624)
!5652 = !DILocation(line: 595, column: 6, scope: !5624)
!5653 = !DILocation(line: 597, column: 16, scope: !5624)
!5654 = !DILocation(line: 597, column: 2, scope: !5624)
!5655 = !DILocation(line: 597, column: 7, scope: !5624)
!5656 = !DILocation(line: 597, column: 14, scope: !5624)
!5657 = !DILocation(line: 598, column: 2, scope: !5624)
!5658 = !DILocation(line: 598, column: 7, scope: !5624)
!5659 = !DILocation(line: 598, column: 16, scope: !5624)
!5660 = !DILocation(line: 599, column: 2, scope: !5624)
!5661 = !DILocation(line: 599, column: 7, scope: !5624)
!5662 = !DILocation(line: 599, column: 12, scope: !5624)
!5663 = !DILocation(line: 599, column: 17, scope: !5624)
!5664 = !DILocation(line: 600, column: 2, scope: !5624)
!5665 = !DILocation(line: 600, column: 7, scope: !5624)
!5666 = !DILocation(line: 600, column: 12, scope: !5624)
!5667 = !DILocation(line: 600, column: 23, scope: !5624)
!5668 = !DILocation(line: 600, column: 29, scope: !5624)
!5669 = !DILocation(line: 600, column: 34, scope: !5624)
!5670 = !DILocation(line: 603, column: 25, scope: !5624)
!5671 = !DILocation(line: 603, column: 30, scope: !5624)
!5672 = !DILocation(line: 603, column: 8, scope: !5624)
!5673 = !DILocation(line: 603, column: 6, scope: !5624)
!5674 = !DILocation(line: 604, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 604, column: 6)
!5676 = !DILocation(line: 604, column: 6, scope: !5624)
!5677 = !DILocation(line: 605, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 605, column: 3)
!5679 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 604, column: 11)
!5680 = !DILocation(line: 605, column: 3, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 605, column: 3)
!5682 = !DILocation(line: 606, column: 3, scope: !5679)
!5683 = !DILocation(line: 606, column: 8, scope: !5679)
!5684 = !DILocation(line: 606, column: 15, scope: !5679)
!5685 = !DILocation(line: 607, column: 13, scope: !5679)
!5686 = !DILocation(line: 607, column: 18, scope: !5679)
!5687 = !DILocation(line: 607, column: 3, scope: !5679)
!5688 = !DILocation(line: 608, column: 15, scope: !5679)
!5689 = !DILocation(line: 608, column: 20, scope: !5679)
!5690 = !DILocation(line: 608, column: 3, scope: !5679)
!5691 = !DILocation(line: 609, column: 3, scope: !5679)
!5692 = !DILocation(line: 611, column: 33, scope: !5624)
!5693 = !DILocation(line: 611, column: 38, scope: !5624)
!5694 = !DILocation(line: 611, column: 8, scope: !5624)
!5695 = !DILocation(line: 611, column: 6, scope: !5624)
!5696 = !DILocation(line: 612, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 612, column: 6)
!5698 = !DILocation(line: 612, column: 6, scope: !5624)
!5699 = !DILocation(line: 613, column: 3, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 613, column: 3)
!5701 = !DILocation(line: 613, column: 3, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 613, column: 3)
!5703 = !DILocation(line: 613, column: 3, scope: !5697)
!5704 = !DILocation(line: 615, column: 12, scope: !5624)
!5705 = !DILocation(line: 615, column: 17, scope: !5624)
!5706 = !DILocation(line: 615, column: 2, scope: !5624)
!5707 = !DILocation(line: 618, column: 2, scope: !5624)
!5708 = !DILocation(line: 620, column: 2, scope: !5624)
!5709 = !DILocation(line: 621, column: 2, scope: !5624)
!5710 = !DILocation(line: 622, column: 3, scope: !5630)
!5711 = !DILocation(line: 622, column: 17, scope: !5630)
!5712 = !DILocation(line: 623, column: 3, scope: !5630)
!5713 = !DILocation(line: 623, column: 16, scope: !5630)
!5714 = !DILocation(line: 624, column: 3, scope: !5630)
!5715 = !DILocation(line: 624, column: 16, scope: !5630)
!5716 = !DILocation(line: 626, column: 3, scope: !5630)
!5717 = !DILocation(line: 626, column: 3, scope: !5638)
!5718 = !DILocation(line: 626, column: 3, scope: !5636)
!5719 = !DILocation(line: 626, column: 3, scope: !5637)
!5720 = !DILocation(line: 627, column: 12, scope: !5630)
!5721 = !DILocation(line: 627, column: 17, scope: !5630)
!5722 = !DILocation(line: 627, column: 10, scope: !5630)
!5723 = !DILocation(line: 628, column: 3, scope: !5630)
!5724 = !DILocation(line: 628, column: 8, scope: !5630)
!5725 = !DILocation(line: 628, column: 22, scope: !5630)
!5726 = !DILocation(line: 629, column: 18, scope: !5630)
!5727 = !DILocation(line: 629, column: 23, scope: !5630)
!5728 = !DILocation(line: 629, column: 16, scope: !5630)
!5729 = !DILocation(line: 630, column: 3, scope: !5630)
!5730 = !DILocation(line: 630, column: 8, scope: !5630)
!5731 = !DILocation(line: 630, column: 21, scope: !5630)
!5732 = !DILocation(line: 631, column: 27, scope: !5630)
!5733 = !DILocation(line: 631, column: 32, scope: !5630)
!5734 = !DILocation(line: 631, column: 45, scope: !5630)
!5735 = !DILocation(line: 631, column: 3, scope: !5630)
!5736 = !DILocation(line: 633, column: 15, scope: !5630)
!5737 = !DILocation(line: 633, column: 20, scope: !5630)
!5738 = !DILocation(line: 633, column: 3, scope: !5630)
!5739 = !DILocation(line: 634, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 634, column: 7)
!5741 = !DILocation(line: 634, column: 14, scope: !5740)
!5742 = !DILocation(line: 634, column: 7, scope: !5630)
!5743 = !DILocation(line: 635, column: 25, scope: !5740)
!5744 = !DILocation(line: 635, column: 4, scope: !5740)
!5745 = !DILocation(line: 637, column: 7, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 637, column: 7)
!5747 = !DILocation(line: 637, column: 7, scope: !5630)
!5748 = !DILocation(line: 638, column: 8, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 638, column: 8)
!5750 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 637, column: 21)
!5751 = !DILocation(line: 638, column: 21, scope: !5749)
!5752 = !DILocation(line: 638, column: 8, scope: !5750)
!5753 = !DILocation(line: 639, column: 19, scope: !5749)
!5754 = !DILocation(line: 639, column: 5, scope: !5749)
!5755 = !DILocation(line: 640, column: 8, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 640, column: 8)
!5757 = !DILocation(line: 640, column: 21, scope: !5756)
!5758 = !DILocation(line: 640, column: 8, scope: !5750)
!5759 = !DILocation(line: 641, column: 19, scope: !5756)
!5760 = !DILocation(line: 641, column: 5, scope: !5756)
!5761 = !DILocation(line: 642, column: 9, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 642, column: 8)
!5763 = !DILocation(line: 642, column: 22, scope: !5762)
!5764 = !DILocation(line: 642, column: 47, scope: !5762)
!5765 = !DILocation(line: 643, column: 7, scope: !5762)
!5766 = !DILocation(line: 643, column: 12, scope: !5762)
!5767 = !DILocation(line: 643, column: 18, scope: !5762)
!5768 = !DILocation(line: 642, column: 8, scope: !5750)
!5769 = !DILocation(line: 644, column: 9, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 644, column: 9)
!5771 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 643, column: 37)
!5772 = !DILocation(line: 644, column: 14, scope: !5770)
!5773 = !DILocation(line: 644, column: 9, scope: !5771)
!5774 = !DILocation(line: 645, column: 12, scope: !5770)
!5775 = !DILocation(line: 645, column: 17, scope: !5770)
!5776 = !DILocation(line: 645, column: 27, scope: !5770)
!5777 = !DILocation(line: 645, column: 35, scope: !5770)
!5778 = !DILocation(line: 645, column: 10, scope: !5770)
!5779 = !DILocation(line: 645, column: 6, scope: !5770)
!5780 = !DILocation(line: 647, column: 10, scope: !5770)
!5781 = !DILocation(line: 648, column: 10, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 648, column: 9)
!5783 = !DILocation(line: 648, column: 9, scope: !5771)
!5784 = !DILocation(line: 649, column: 21, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 648, column: 15)
!5786 = !DILocation(line: 649, column: 6, scope: !5785)
!5787 = !DILocation(line: 650, column: 6, scope: !5785)
!5788 = !DILocation(line: 651, column: 5, scope: !5785)
!5789 = !DILocation(line: 652, column: 4, scope: !5771)
!5790 = !DILocation(line: 653, column: 9, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 653, column: 8)
!5792 = !DILocation(line: 653, column: 22, scope: !5791)
!5793 = !DILocation(line: 653, column: 46, scope: !5791)
!5794 = !DILocation(line: 654, column: 7, scope: !5791)
!5795 = !DILocation(line: 654, column: 12, scope: !5791)
!5796 = !DILocation(line: 654, column: 18, scope: !5791)
!5797 = !DILocation(line: 653, column: 8, scope: !5750)
!5798 = !DILocation(line: 655, column: 25, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 654, column: 37)
!5800 = !DILocation(line: 655, column: 11, scope: !5799)
!5801 = !DILocation(line: 655, column: 9, scope: !5799)
!5802 = !DILocation(line: 656, column: 10, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 656, column: 9)
!5804 = !DILocation(line: 656, column: 14, scope: !5803)
!5805 = !DILocation(line: 656, column: 17, scope: !5803)
!5806 = !DILocation(line: 656, column: 22, scope: !5803)
!5807 = !DILocation(line: 656, column: 9, scope: !5799)
!5808 = !DILocation(line: 657, column: 6, scope: !5803)
!5809 = !DILocation(line: 657, column: 11, scope: !5803)
!5810 = !DILocation(line: 657, column: 21, scope: !5803)
!5811 = !DILocation(line: 657, column: 28, scope: !5803)
!5812 = !DILocation(line: 658, column: 4, scope: !5799)
!5813 = !DILocation(line: 659, column: 9, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 659, column: 8)
!5815 = !DILocation(line: 659, column: 22, scope: !5814)
!5816 = !DILocation(line: 659, column: 47, scope: !5814)
!5817 = !DILocation(line: 660, column: 7, scope: !5814)
!5818 = !DILocation(line: 660, column: 12, scope: !5814)
!5819 = !DILocation(line: 660, column: 18, scope: !5814)
!5820 = !DILocation(line: 659, column: 8, scope: !5750)
!5821 = !DILocation(line: 661, column: 10, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 661, column: 9)
!5823 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 660, column: 37)
!5824 = !DILocation(line: 661, column: 14, scope: !5822)
!5825 = !DILocation(line: 661, column: 17, scope: !5822)
!5826 = !DILocation(line: 661, column: 22, scope: !5822)
!5827 = !DILocation(line: 661, column: 9, scope: !5823)
!5828 = !DILocation(line: 662, column: 6, scope: !5822)
!5829 = !DILocation(line: 662, column: 11, scope: !5822)
!5830 = !DILocation(line: 662, column: 21, scope: !5822)
!5831 = !DILocation(line: 662, column: 29, scope: !5822)
!5832 = !DILocation(line: 663, column: 4, scope: !5823)
!5833 = !DILocation(line: 664, column: 3, scope: !5750)
!5834 = !DILocation(line: 665, column: 17, scope: !5630)
!5835 = !DILocation(line: 665, column: 22, scope: !5630)
!5836 = !DILocation(line: 665, column: 3, scope: !5630)
!5837 = !DILocation(line: 667, column: 7, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 667, column: 7)
!5839 = !DILocation(line: 667, column: 14, scope: !5838)
!5840 = !DILocation(line: 667, column: 17, scope: !5838)
!5841 = !DILocation(line: 667, column: 7, scope: !5630)
!5842 = !DILocation(line: 668, column: 4, scope: !5838)
!5843 = distinct !{!5843, !5844, !5845, !5398}
!5844 = !DILocation(line: 621, column: 2, scope: !5632)
!5845 = !DILocation(line: 677, column: 2, scope: !5632)
!5846 = !DILocation(line: 670, column: 3, scope: !5630)
!5847 = !DILocation(line: 670, column: 3, scope: !5644)
!5848 = !DILocation(line: 670, column: 3, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 670, column: 3)
!5850 = !DILocation(line: 670, column: 3, scope: !5643)
!5851 = !DILocation(line: 670, column: 3, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 670, column: 3)
!5853 = !DILocation(line: 670, column: 3, scope: !5641)
!5854 = !DILocation(line: 670, column: 3, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 670, column: 3)
!5856 = !DILocation(line: 670, column: 3, scope: !5646)
!5857 = !{i64 2155158331}
!5858 = !DILocation(line: 670, column: 3, scope: !5642)
!5859 = !DILocation(line: 671, column: 7, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 671, column: 7)
!5861 = !DILocation(line: 671, column: 7, scope: !5630)
!5862 = !DILocation(line: 672, column: 4, scope: !5860)
!5863 = !DILocation(line: 674, column: 3, scope: !5630)
!5864 = !DILocation(line: 676, column: 3, scope: !5630)
!5865 = !DILocation(line: 677, column: 2, scope: !5631)
!5866 = !DILocation(line: 621, column: 2, scope: !5631)
!5867 = !DILocation(line: 679, column: 2, scope: !5624)
!5868 = !DILocation(line: 679, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 679, column: 2)
!5870 = !DILocation(line: 679, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 679, column: 2)
!5872 = !DILocation(line: 679, column: 2, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 679, column: 2)
!5874 = !DILocation(line: 679, column: 2, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 679, column: 2)
!5876 = !DILocation(line: 679, column: 2, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 679, column: 2)
!5878 = !DILocation(line: 682, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 682, column: 6)
!5880 = !DILocation(line: 682, column: 11, scope: !5879)
!5881 = !DILocation(line: 682, column: 17, scope: !5879)
!5882 = !DILocation(line: 682, column: 6, scope: !5624)
!5883 = !DILocation(line: 683, column: 15, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 682, column: 35)
!5885 = !DILocation(line: 683, column: 20, scope: !5884)
!5886 = !DILocation(line: 683, column: 3, scope: !5884)
!5887 = !DILocation(line: 684, column: 17, scope: !5884)
!5888 = !DILocation(line: 684, column: 3, scope: !5884)
!5889 = !DILocation(line: 685, column: 17, scope: !5884)
!5890 = !DILocation(line: 685, column: 22, scope: !5884)
!5891 = !DILocation(line: 685, column: 3, scope: !5884)
!5892 = !DILocation(line: 686, column: 2, scope: !5884)
!5893 = !DILocation(line: 689, column: 30, scope: !5624)
!5894 = !DILocation(line: 689, column: 35, scope: !5624)
!5895 = !DILocation(line: 689, column: 2, scope: !5624)
!5896 = !DILocation(line: 690, column: 21, scope: !5624)
!5897 = !DILocation(line: 690, column: 26, scope: !5624)
!5898 = !DILocation(line: 690, column: 2, scope: !5624)
!5899 = !DILocation(line: 692, column: 2, scope: !5624)
!5900 = !DILocation(line: 693, column: 1, scope: !5624)
!5901 = distinct !DISubprogram(name: "IS_ERR", scope: !5902, file: !5902, line: 59, type: !5903, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5905)
!5902 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!1453, !2121}
!5905 = !{!5906}
!5906 = !DILocalVariable(name: "ptr", arg: 1, scope: !5901, file: !5902, line: 59, type: !2121)
!5907 = !DILocation(line: 59, column: 60, scope: !5901)
!5908 = !DILocation(line: 61, column: 9, scope: !5901)
!5909 = !DILocation(line: 61, column: 2, scope: !5901)
!5910 = !DISubprogram(name: "wake_up_process", scope: !608, file: !608, line: 1998, type: !5911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!109, !961}
!5913 = distinct !DISubprogram(name: "PTR_ERR", scope: !5902, file: !5902, line: 49, type: !5914, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!288, !2121}
!5916 = !{!5917}
!5917 = !DILocalVariable(name: "ptr", arg: 1, scope: !5913, file: !5902, line: 49, type: !2121)
!5918 = !DILocation(line: 49, column: 61, scope: !5913)
!5919 = !DILocation(line: 51, column: 16, scope: !5913)
!5920 = !DILocation(line: 51, column: 9, scope: !5913)
!5921 = !DILocation(line: 51, column: 2, scope: !5913)
!5922 = !DISubprogram(name: "wait_for_completion", scope: !1845, file: !1845, line: 102, type: !5244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5923 = !DISubprogram(name: "_dev_warn", scope: !5924, file: !5924, line: 52, type: !5925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5924 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5925 = !DISubroutineType(types: !5926)
!5926 = !{null, !4242, !171, null}
!5927 = distinct !DISubprogram(name: "pcmcia_parse_events", scope: !3, file: !3, line: 699, type: !5928, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !4094, !4104}
!5930 = !{!5931, !5932, !5933, !5934, !5940}
!5931 = !DILocalVariable(name: "s", arg: 1, scope: !5927, file: !3, line: 699, type: !4094)
!5932 = !DILocalVariable(name: "events", arg: 2, scope: !5927, file: !3, line: 699, type: !4104)
!5933 = !DILocalVariable(name: "flags", scope: !5927, file: !3, line: 701, type: !302)
!5934 = !DILocalVariable(name: "__dummy", scope: !5935, file: !3, line: 704, type: !302)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 704, column: 3)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 704, column: 3)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 704, column: 3)
!5938 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 703, column: 17)
!5939 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 703, column: 6)
!5940 = !DILocalVariable(name: "__dummy2", scope: !5935, file: !3, line: 704, type: !302)
!5941 = !DILocation(line: 699, column: 48, scope: !5927)
!5942 = !DILocation(line: 699, column: 57, scope: !5927)
!5943 = !DILocation(line: 701, column: 2, scope: !5927)
!5944 = !DILocation(line: 701, column: 16, scope: !5927)
!5945 = !DILocation(line: 703, column: 6, scope: !5939)
!5946 = !DILocation(line: 703, column: 9, scope: !5939)
!5947 = !DILocation(line: 703, column: 6, scope: !5927)
!5948 = !DILocation(line: 704, column: 3, scope: !5938)
!5949 = !DILocation(line: 704, column: 3, scope: !5937)
!5950 = !DILocation(line: 704, column: 3, scope: !5935)
!5951 = !DILocation(line: 704, column: 3, scope: !5936)
!5952 = !DILocation(line: 705, column: 23, scope: !5938)
!5953 = !DILocation(line: 705, column: 3, scope: !5938)
!5954 = !DILocation(line: 705, column: 6, scope: !5938)
!5955 = !DILocation(line: 705, column: 20, scope: !5938)
!5956 = !DILocation(line: 706, column: 27, scope: !5938)
!5957 = !DILocation(line: 706, column: 30, scope: !5938)
!5958 = !DILocation(line: 706, column: 43, scope: !5938)
!5959 = !DILocation(line: 706, column: 3, scope: !5938)
!5960 = !DILocation(line: 708, column: 19, scope: !5938)
!5961 = !DILocation(line: 708, column: 22, scope: !5938)
!5962 = !DILocation(line: 708, column: 3, scope: !5938)
!5963 = !DILocation(line: 709, column: 2, scope: !5938)
!5964 = !DILocation(line: 710, column: 1, scope: !5927)
!5965 = !DISubprogram(name: "__request_module", scope: !5966, file: !5966, line: 24, type: !5967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5966 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!109, !1453, !171, null}
!5969 = distinct !DISubprogram(name: "list_del", scope: !5522, file: !5522, line: 227, type: !5569, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5970 = !{!5971}
!5971 = !DILocalVariable(name: "entry", arg: 1, scope: !5969, file: !5522, line: 227, type: !156)
!5972 = !DILocation(line: 227, column: 47, scope: !5969)
!5973 = !DILocation(line: 229, column: 19, scope: !5969)
!5974 = !DILocation(line: 229, column: 2, scope: !5969)
!5975 = !DILocation(line: 230, column: 2, scope: !5969)
!5976 = !DILocation(line: 230, column: 9, scope: !5969)
!5977 = !DILocation(line: 230, column: 14, scope: !5969)
!5978 = !DILocation(line: 231, column: 2, scope: !5969)
!5979 = !DILocation(line: 231, column: 9, scope: !5969)
!5980 = !DILocation(line: 231, column: 14, scope: !5969)
!5981 = !DILocation(line: 232, column: 1, scope: !5969)
!5982 = distinct !DISubprogram(name: "pcmcia_unregister_socket", scope: !3, file: !3, line: 206, type: !4972, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5983)
!5983 = !{!5984}
!5984 = !DILocalVariable(name: "socket", arg: 1, scope: !5982, file: !3, line: 206, type: !4094)
!5985 = !DILocation(line: 206, column: 53, scope: !5982)
!5986 = !DILocation(line: 208, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 208, column: 6)
!5988 = !DILocation(line: 208, column: 6, scope: !5982)
!5989 = !DILocation(line: 209, column: 3, scope: !5987)
!5990 = !DILocation(line: 213, column: 6, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 213, column: 6)
!5992 = !DILocation(line: 213, column: 14, scope: !5991)
!5993 = !DILocation(line: 213, column: 6, scope: !5982)
!5994 = !DILocation(line: 214, column: 16, scope: !5991)
!5995 = !DILocation(line: 214, column: 24, scope: !5991)
!5996 = !DILocation(line: 214, column: 3, scope: !5991)
!5997 = !DILocation(line: 217, column: 2, scope: !5982)
!5998 = !DILocation(line: 218, column: 12, scope: !5982)
!5999 = !DILocation(line: 218, column: 20, scope: !5982)
!6000 = !DILocation(line: 218, column: 2, scope: !5982)
!6001 = !DILocation(line: 219, column: 2, scope: !5982)
!6002 = !DILocation(line: 222, column: 6, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 222, column: 6)
!6004 = !DILocation(line: 222, column: 14, scope: !6003)
!6005 = !DILocation(line: 222, column: 28, scope: !6003)
!6006 = !DILocation(line: 222, column: 6, scope: !5982)
!6007 = !DILocation(line: 223, column: 15, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 222, column: 34)
!6009 = !DILocation(line: 223, column: 23, scope: !6008)
!6010 = !DILocation(line: 223, column: 3, scope: !6008)
!6011 = !DILocation(line: 224, column: 3, scope: !6008)
!6012 = !DILocation(line: 224, column: 11, scope: !6008)
!6013 = !DILocation(line: 224, column: 25, scope: !6008)
!6014 = !DILocation(line: 224, column: 30, scope: !6008)
!6015 = !DILocation(line: 225, column: 17, scope: !6008)
!6016 = !DILocation(line: 225, column: 25, scope: !6008)
!6017 = !DILocation(line: 225, column: 3, scope: !6008)
!6018 = !DILocation(line: 226, column: 2, scope: !6008)
!6019 = !DILocation(line: 227, column: 23, scope: !5982)
!6020 = !DILocation(line: 227, column: 31, scope: !5982)
!6021 = !DILocation(line: 227, column: 2, scope: !5982)
!6022 = !DILocation(line: 228, column: 1, scope: !5982)
!6023 = !DISubprogram(name: "kthread_stop", scope: !5618, file: !5618, line: 88, type: !5911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = distinct !DISubprogram(name: "pcmcia_get_socket_by_nr", scope: !3, file: !3, line: 232, type: !6025, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6027)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!4094, !7}
!6027 = !{!6028, !6029, !6030, !6033}
!6028 = !DILocalVariable(name: "nr", arg: 1, scope: !6024, file: !3, line: 232, type: !7)
!6029 = !DILocalVariable(name: "s", scope: !6024, file: !3, line: 234, type: !4094)
!6030 = !DILocalVariable(name: "__mptr", scope: !6031, file: !3, line: 237, type: !324)
!6031 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 237, column: 2)
!6032 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 237, column: 2)
!6033 = !DILocalVariable(name: "__mptr", scope: !6034, file: !3, line: 237, type: !324)
!6034 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 237, column: 2)
!6035 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 237, column: 2)
!6036 = !DILocation(line: 232, column: 60, scope: !6024)
!6037 = !DILocation(line: 234, column: 2, scope: !6024)
!6038 = !DILocation(line: 234, column: 24, scope: !6024)
!6039 = !DILocation(line: 236, column: 2, scope: !6024)
!6040 = !DILocation(line: 237, column: 2, scope: !6031)
!6041 = !DILocation(line: 237, column: 2, scope: !6032)
!6042 = !DILocation(line: 237, column: 2, scope: !6035)
!6043 = !DILocation(line: 238, column: 7, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 238, column: 7)
!6045 = !DILocation(line: 238, column: 10, scope: !6044)
!6046 = !DILocation(line: 238, column: 18, scope: !6044)
!6047 = !DILocation(line: 238, column: 15, scope: !6044)
!6048 = !DILocation(line: 238, column: 7, scope: !6035)
!6049 = !DILocation(line: 239, column: 4, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 238, column: 22)
!6051 = !DILocation(line: 240, column: 11, scope: !6050)
!6052 = !DILocation(line: 240, column: 4, scope: !6050)
!6053 = !DILocation(line: 237, column: 2, scope: !6034)
!6054 = distinct !{!6054, !6041, !6055, !5397, !5398}
!6055 = !DILocation(line: 241, column: 3, scope: !6032)
!6056 = !DILocation(line: 242, column: 2, scope: !6024)
!6057 = !DILocation(line: 244, column: 2, scope: !6024)
!6058 = !DILocation(line: 246, column: 1, scope: !6024)
!6059 = !DISubprogram(name: "down_read", scope: !847, file: !847, line: 175, type: !5518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = !DISubprogram(name: "up_read", scope: !847, file: !847, line: 198, type: !5518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6061 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6062, file: !6062, line: 32, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!302, !5606}
!6065 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5603, file: !5603, line: 404, type: !6066, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !1901, !302}
!6068 = !{!6069, !6070, !6071, !6074}
!6069 = !DILocalVariable(name: "lock", arg: 1, scope: !6065, file: !5603, line: 404, type: !1901)
!6070 = !DILocalVariable(name: "flags", arg: 2, scope: !6065, file: !5603, line: 404, type: !302)
!6071 = !DILocalVariable(name: "__dummy", scope: !6072, file: !5603, line: 406, type: !302)
!6072 = distinct !DILexicalBlock(scope: !6073, file: !5603, line: 406, column: 2)
!6073 = distinct !DILexicalBlock(scope: !6065, file: !5603, line: 406, column: 2)
!6074 = !DILocalVariable(name: "__dummy2", scope: !6072, file: !5603, line: 406, type: !302)
!6075 = !DILocation(line: 404, column: 64, scope: !6065)
!6076 = !DILocation(line: 404, column: 84, scope: !6065)
!6077 = !DILocation(line: 406, column: 2, scope: !6065)
!6078 = !DILocation(line: 406, column: 2, scope: !6072)
!6079 = !DILocation(line: 406, column: 2, scope: !6073)
!6080 = !DILocation(line: 407, column: 1, scope: !6065)
!6081 = distinct !DISubprogram(name: "pcmcia_parse_uevents", scope: !3, file: !3, line: 724, type: !5928, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6082)
!6082 = !{!6083, !6084, !6085, !6086, !6092}
!6083 = !DILocalVariable(name: "s", arg: 1, scope: !6081, file: !3, line: 724, type: !4094)
!6084 = !DILocalVariable(name: "events", arg: 2, scope: !6081, file: !3, line: 724, type: !4104)
!6085 = !DILocalVariable(name: "flags", scope: !6081, file: !3, line: 726, type: !302)
!6086 = !DILocalVariable(name: "__dummy", scope: !6087, file: !3, line: 729, type: !302)
!6087 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 729, column: 3)
!6088 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 729, column: 3)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 729, column: 3)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 728, column: 17)
!6091 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 728, column: 6)
!6092 = !DILocalVariable(name: "__dummy2", scope: !6087, file: !3, line: 729, type: !302)
!6093 = !DILocation(line: 724, column: 49, scope: !6081)
!6094 = !DILocation(line: 724, column: 58, scope: !6081)
!6095 = !DILocation(line: 726, column: 2, scope: !6081)
!6096 = !DILocation(line: 726, column: 16, scope: !6081)
!6097 = !DILocation(line: 728, column: 6, scope: !6091)
!6098 = !DILocation(line: 728, column: 9, scope: !6091)
!6099 = !DILocation(line: 728, column: 6, scope: !6081)
!6100 = !DILocation(line: 729, column: 3, scope: !6090)
!6101 = !DILocation(line: 729, column: 3, scope: !6089)
!6102 = !DILocation(line: 729, column: 3, scope: !6087)
!6103 = !DILocation(line: 729, column: 3, scope: !6088)
!6104 = !DILocation(line: 730, column: 22, scope: !6090)
!6105 = !DILocation(line: 730, column: 3, scope: !6090)
!6106 = !DILocation(line: 730, column: 6, scope: !6090)
!6107 = !DILocation(line: 730, column: 19, scope: !6090)
!6108 = !DILocation(line: 731, column: 27, scope: !6090)
!6109 = !DILocation(line: 731, column: 30, scope: !6090)
!6110 = !DILocation(line: 731, column: 43, scope: !6090)
!6111 = !DILocation(line: 731, column: 3, scope: !6090)
!6112 = !DILocation(line: 733, column: 19, scope: !6090)
!6113 = !DILocation(line: 733, column: 22, scope: !6090)
!6114 = !DILocation(line: 733, column: 3, scope: !6090)
!6115 = !DILocation(line: 734, column: 2, scope: !6090)
!6116 = !DILocation(line: 735, column: 1, scope: !6081)
!6117 = distinct !DISubprogram(name: "pccard_register_pcmcia", scope: !3, file: !3, line: 740, type: !6118, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6120)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!109, !4094, !4995}
!6120 = !{!6121, !6122, !6123, !6124}
!6121 = !DILocalVariable(name: "s", arg: 1, scope: !6117, file: !3, line: 740, type: !4094)
!6122 = !DILocalVariable(name: "c", arg: 2, scope: !6117, file: !3, line: 740, type: !4995)
!6123 = !DILocalVariable(name: "ret", scope: !6117, file: !3, line: 742, type: !109)
!6124 = !DILabel(scope: !6117, name: "err", file: !3, line: 760)
!6125 = !DILocation(line: 740, column: 50, scope: !6117)
!6126 = !DILocation(line: 740, column: 77, scope: !6117)
!6127 = !DILocation(line: 742, column: 2, scope: !6117)
!6128 = !DILocation(line: 742, column: 6, scope: !6117)
!6129 = !DILocation(line: 745, column: 14, scope: !6117)
!6130 = !DILocation(line: 745, column: 17, scope: !6117)
!6131 = !DILocation(line: 745, column: 2, scope: !6117)
!6132 = !DILocation(line: 747, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 747, column: 6)
!6134 = !DILocation(line: 747, column: 6, scope: !6117)
!6135 = !DILocation(line: 749, column: 7, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 749, column: 7)
!6137 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 747, column: 9)
!6138 = !DILocation(line: 749, column: 10, scope: !6136)
!6139 = !DILocation(line: 749, column: 7, scope: !6137)
!6140 = !DILocation(line: 750, column: 8, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 749, column: 20)
!6142 = !DILocation(line: 751, column: 4, scope: !6141)
!6143 = !DILocation(line: 754, column: 17, scope: !6137)
!6144 = !DILocation(line: 754, column: 3, scope: !6137)
!6145 = !DILocation(line: 754, column: 6, scope: !6137)
!6146 = !DILocation(line: 754, column: 15, scope: !6137)
!6147 = !DILocation(line: 756, column: 8, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 756, column: 7)
!6149 = !DILocation(line: 756, column: 11, scope: !6148)
!6150 = !DILocation(line: 756, column: 17, scope: !6148)
!6151 = !DILocation(line: 756, column: 52, scope: !6148)
!6152 = !DILocation(line: 756, column: 7, scope: !6137)
!6153 = !DILocation(line: 757, column: 4, scope: !6148)
!6154 = !DILocation(line: 757, column: 7, scope: !6148)
!6155 = !DILocation(line: 757, column: 17, scope: !6148)
!6156 = !DILocation(line: 757, column: 21, scope: !6148)
!6157 = !DILocation(line: 758, column: 2, scope: !6137)
!6158 = !DILocation(line: 759, column: 3, scope: !6133)
!6159 = !DILocation(line: 759, column: 6, scope: !6133)
!6160 = !DILocation(line: 759, column: 15, scope: !6133)
!6161 = !DILocation(line: 760, column: 2, scope: !6117)
!6162 = !DILocation(line: 761, column: 16, scope: !6117)
!6163 = !DILocation(line: 761, column: 19, scope: !6117)
!6164 = !DILocation(line: 761, column: 2, scope: !6117)
!6165 = !DILocation(line: 763, column: 9, scope: !6117)
!6166 = !DILocation(line: 764, column: 1, scope: !6117)
!6167 = !DILocation(line: 763, column: 2, scope: !6117)
!6168 = distinct !DISubprogram(name: "pcmcia_reset_card", scope: !3, file: !3, line: 773, type: !4924, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6169 = !{!6170, !6171}
!6170 = !DILocalVariable(name: "skt", arg: 1, scope: !6168, file: !3, line: 773, type: !4094)
!6171 = !DILocalVariable(name: "ret", scope: !6168, file: !3, line: 775, type: !109)
!6172 = !DILocation(line: 773, column: 45, scope: !6168)
!6173 = !DILocation(line: 775, column: 2, scope: !6168)
!6174 = !DILocation(line: 775, column: 6, scope: !6168)
!6175 = !DILocation(line: 779, column: 14, scope: !6168)
!6176 = !DILocation(line: 779, column: 19, scope: !6168)
!6177 = !DILocation(line: 779, column: 2, scope: !6168)
!6178 = !DILocation(line: 780, column: 2, scope: !6168)
!6179 = !DILocation(line: 781, column: 9, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 781, column: 7)
!6181 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 780, column: 5)
!6182 = !DILocation(line: 781, column: 14, scope: !6180)
!6183 = !DILocation(line: 781, column: 20, scope: !6180)
!6184 = !DILocation(line: 781, column: 7, scope: !6181)
!6185 = !DILocation(line: 783, column: 8, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 781, column: 39)
!6187 = !DILocation(line: 784, column: 4, scope: !6186)
!6188 = !DILocation(line: 786, column: 7, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 786, column: 7)
!6190 = !DILocation(line: 786, column: 12, scope: !6189)
!6191 = !DILocation(line: 786, column: 18, scope: !6189)
!6192 = !DILocation(line: 786, column: 7, scope: !6181)
!6193 = !DILocation(line: 788, column: 8, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 786, column: 36)
!6195 = !DILocation(line: 789, column: 4, scope: !6194)
!6196 = !DILocation(line: 791, column: 7, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 791, column: 7)
!6198 = !DILocation(line: 791, column: 12, scope: !6197)
!6199 = !DILocation(line: 791, column: 18, scope: !6197)
!6200 = !DILocation(line: 791, column: 7, scope: !6181)
!6201 = !DILocation(line: 793, column: 8, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 791, column: 36)
!6203 = !DILocation(line: 794, column: 4, scope: !6202)
!6204 = !DILocation(line: 797, column: 7, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 797, column: 7)
!6206 = !DILocation(line: 797, column: 12, scope: !6205)
!6207 = !DILocation(line: 797, column: 7, scope: !6181)
!6208 = !DILocation(line: 798, column: 4, scope: !6205)
!6209 = !DILocation(line: 798, column: 9, scope: !6205)
!6210 = !DILocation(line: 798, column: 19, scope: !6205)
!6211 = !DILocation(line: 798, column: 27, scope: !6205)
!6212 = !DILocation(line: 799, column: 15, scope: !6181)
!6213 = !DILocation(line: 799, column: 20, scope: !6181)
!6214 = !DILocation(line: 799, column: 3, scope: !6181)
!6215 = !DILocation(line: 800, column: 22, scope: !6181)
!6216 = !DILocation(line: 800, column: 9, scope: !6181)
!6217 = !DILocation(line: 800, column: 7, scope: !6181)
!6218 = !DILocation(line: 801, column: 17, scope: !6181)
!6219 = !DILocation(line: 801, column: 22, scope: !6181)
!6220 = !DILocation(line: 801, column: 3, scope: !6181)
!6221 = !DILocation(line: 802, column: 8, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 802, column: 7)
!6223 = !DILocation(line: 802, column: 12, scope: !6222)
!6224 = !DILocation(line: 802, column: 18, scope: !6222)
!6225 = !DILocation(line: 802, column: 22, scope: !6222)
!6226 = !DILocation(line: 802, column: 27, scope: !6222)
!6227 = !DILocation(line: 802, column: 21, scope: !6222)
!6228 = !DILocation(line: 802, column: 7, scope: !6181)
!6229 = !DILocation(line: 803, column: 4, scope: !6222)
!6230 = !DILocation(line: 803, column: 9, scope: !6222)
!6231 = !DILocation(line: 803, column: 19, scope: !6222)
!6232 = !DILocation(line: 803, column: 26, scope: !6222)
!6233 = !DILocation(line: 805, column: 7, scope: !6181)
!6234 = !DILocation(line: 806, column: 2, scope: !6181)
!6235 = !DILocation(line: 807, column: 16, scope: !6168)
!6236 = !DILocation(line: 807, column: 21, scope: !6168)
!6237 = !DILocation(line: 807, column: 2, scope: !6168)
!6238 = !DILocation(line: 809, column: 9, scope: !6168)
!6239 = !DILocation(line: 810, column: 1, scope: !6168)
!6240 = !DILocation(line: 809, column: 2, scope: !6168)
!6241 = distinct !DISubprogram(name: "socket_reset", scope: !3, file: !3, line: 249, type: !4924, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243, !6244, !6245}
!6243 = !DILocalVariable(name: "skt", arg: 1, scope: !6241, file: !3, line: 249, type: !4094)
!6244 = !DILocalVariable(name: "status", scope: !6241, file: !3, line: 251, type: !109)
!6245 = !DILocalVariable(name: "i", scope: !6241, file: !3, line: 251, type: !109)
!6246 = !DILocation(line: 249, column: 47, scope: !6241)
!6247 = !DILocation(line: 251, column: 2, scope: !6241)
!6248 = !DILocation(line: 251, column: 6, scope: !6241)
!6249 = !DILocation(line: 251, column: 14, scope: !6241)
!6250 = !DILocation(line: 255, column: 2, scope: !6241)
!6251 = !DILocation(line: 255, column: 7, scope: !6241)
!6252 = !DILocation(line: 255, column: 14, scope: !6241)
!6253 = !DILocation(line: 255, column: 20, scope: !6241)
!6254 = !DILocation(line: 256, column: 2, scope: !6241)
!6255 = !DILocation(line: 256, column: 7, scope: !6241)
!6256 = !DILocation(line: 256, column: 12, scope: !6241)
!6257 = !DILocation(line: 256, column: 23, scope: !6241)
!6258 = !DILocation(line: 256, column: 29, scope: !6241)
!6259 = !DILocation(line: 256, column: 34, scope: !6241)
!6260 = !DILocation(line: 257, column: 2, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 257, column: 2)
!6262 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 257, column: 2)
!6263 = !DILocation(line: 257, column: 2, scope: !6262)
!6264 = !DILocation(line: 257, column: 2, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 257, column: 2)
!6266 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 257, column: 2)
!6267 = !DILocation(line: 257, column: 2, scope: !6266)
!6268 = !DILocation(line: 257, column: 2, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 257, column: 2)
!6270 = !DILocation(line: 259, column: 2, scope: !6241)
!6271 = !DILocation(line: 259, column: 7, scope: !6241)
!6272 = !DILocation(line: 259, column: 14, scope: !6241)
!6273 = !DILocation(line: 259, column: 20, scope: !6241)
!6274 = !DILocation(line: 260, column: 2, scope: !6241)
!6275 = !DILocation(line: 260, column: 7, scope: !6241)
!6276 = !DILocation(line: 260, column: 12, scope: !6241)
!6277 = !DILocation(line: 260, column: 23, scope: !6241)
!6278 = !DILocation(line: 260, column: 29, scope: !6241)
!6279 = !DILocation(line: 260, column: 34, scope: !6241)
!6280 = !DILocation(line: 262, column: 9, scope: !6241)
!6281 = !DILocation(line: 262, column: 23, scope: !6241)
!6282 = !DILocation(line: 262, column: 2, scope: !6241)
!6283 = !DILocation(line: 263, column: 9, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 263, column: 2)
!6285 = !DILocation(line: 263, column: 7, scope: !6284)
!6286 = !DILocation(line: 263, column: 14, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 263, column: 2)
!6288 = !DILocation(line: 263, column: 18, scope: !6287)
!6289 = !DILocation(line: 263, column: 16, scope: !6287)
!6290 = !DILocation(line: 263, column: 2, scope: !6284)
!6291 = !DILocation(line: 264, column: 3, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 263, column: 38)
!6293 = !DILocation(line: 264, column: 8, scope: !6292)
!6294 = !DILocation(line: 264, column: 13, scope: !6292)
!6295 = !DILocation(line: 264, column: 24, scope: !6292)
!6296 = !DILocation(line: 266, column: 9, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 266, column: 7)
!6298 = !DILocation(line: 266, column: 16, scope: !6297)
!6299 = !DILocation(line: 266, column: 7, scope: !6292)
!6300 = !DILocation(line: 267, column: 4, scope: !6297)
!6301 = !DILocation(line: 269, column: 7, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 269, column: 7)
!6303 = !DILocation(line: 269, column: 14, scope: !6302)
!6304 = !DILocation(line: 269, column: 7, scope: !6292)
!6305 = !DILocation(line: 270, column: 4, scope: !6302)
!6306 = !DILocation(line: 272, column: 10, scope: !6292)
!6307 = !DILocation(line: 272, column: 24, scope: !6292)
!6308 = !DILocation(line: 272, column: 3, scope: !6292)
!6309 = !DILocation(line: 273, column: 2, scope: !6292)
!6310 = !DILocation(line: 263, column: 34, scope: !6287)
!6311 = !DILocation(line: 263, column: 2, scope: !6287)
!6312 = distinct !{!6312, !6290, !6313, !5397, !5398}
!6313 = !DILocation(line: 273, column: 2, scope: !6284)
!6314 = !DILocation(line: 275, column: 2, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 275, column: 2)
!6316 = !DILocation(line: 275, column: 2, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 275, column: 2)
!6318 = !DILocation(line: 276, column: 2, scope: !6241)
!6319 = !DILocation(line: 277, column: 1, scope: !6241)
!6320 = distinct !DISubprogram(name: "pcmcia_socket_dev_resume", scope: !3, file: !3, line: 859, type: !4260, scopeLine: 860, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6321)
!6321 = !{!6322}
!6322 = !DILocalVariable(name: "dev", arg: 1, scope: !6320, file: !3, line: 859, type: !4222)
!6323 = !DILocation(line: 859, column: 59, scope: !6320)
!6324 = !DILocation(line: 861, column: 24, scope: !6320)
!6325 = !DILocation(line: 861, column: 9, scope: !6320)
!6326 = !DILocation(line: 861, column: 2, scope: !6320)
!6327 = distinct !DISubprogram(name: "__pcmcia_pm_op", scope: !3, file: !3, line: 836, type: !6328, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6330)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!109, !4222, !4923}
!6330 = !{!6331, !6332, !6333, !6334, !6336}
!6331 = !DILocalVariable(name: "dev", arg: 1, scope: !6327, file: !3, line: 836, type: !4222)
!6332 = !DILocalVariable(name: "callback", arg: 2, scope: !6327, file: !3, line: 837, type: !4923)
!6333 = !DILocalVariable(name: "s", scope: !6327, file: !3, line: 839, type: !4094)
!6334 = !DILocalVariable(name: "__mptr", scope: !6335, file: !3, line: 839, type: !324)
!6335 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 839, column: 28)
!6336 = !DILocalVariable(name: "ret", scope: !6327, file: !3, line: 840, type: !109)
!6337 = !DILocation(line: 836, column: 42, scope: !6327)
!6338 = !DILocation(line: 837, column: 12, scope: !6327)
!6339 = !DILocation(line: 839, column: 2, scope: !6327)
!6340 = !DILocation(line: 839, column: 24, scope: !6327)
!6341 = !DILocation(line: 839, column: 28, scope: !6335)
!6342 = !DILocation(line: 839, column: 28, scope: !6327)
!6343 = !DILocation(line: 840, column: 2, scope: !6327)
!6344 = !DILocation(line: 840, column: 6, scope: !6327)
!6345 = !DILocation(line: 842, column: 14, scope: !6327)
!6346 = !DILocation(line: 842, column: 17, scope: !6327)
!6347 = !DILocation(line: 842, column: 2, scope: !6327)
!6348 = !DILocation(line: 843, column: 8, scope: !6327)
!6349 = !DILocation(line: 843, column: 17, scope: !6327)
!6350 = !DILocation(line: 843, column: 6, scope: !6327)
!6351 = !DILocation(line: 844, column: 16, scope: !6327)
!6352 = !DILocation(line: 844, column: 19, scope: !6327)
!6353 = !DILocation(line: 844, column: 2, scope: !6327)
!6354 = !DILocation(line: 846, column: 9, scope: !6327)
!6355 = !DILocation(line: 847, column: 1, scope: !6327)
!6356 = !DILocation(line: 846, column: 2, scope: !6327)
!6357 = distinct !DISubprogram(name: "socket_late_resume", scope: !3, file: !3, line: 483, type: !4924, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6358)
!6358 = !{!6359, !6360}
!6359 = !DILocalVariable(name: "skt", arg: 1, scope: !6357, file: !3, line: 483, type: !4094)
!6360 = !DILocalVariable(name: "ret", scope: !6357, file: !3, line: 485, type: !109)
!6361 = !DILocation(line: 483, column: 53, scope: !6357)
!6362 = !DILocation(line: 485, column: 2, scope: !6357)
!6363 = !DILocation(line: 485, column: 6, scope: !6357)
!6364 = !DILocation(line: 487, column: 14, scope: !6357)
!6365 = !DILocation(line: 487, column: 19, scope: !6357)
!6366 = !DILocation(line: 487, column: 2, scope: !6357)
!6367 = !DILocation(line: 488, column: 2, scope: !6357)
!6368 = !DILocation(line: 488, column: 7, scope: !6357)
!6369 = !DILocation(line: 488, column: 13, scope: !6357)
!6370 = !DILocation(line: 489, column: 16, scope: !6357)
!6371 = !DILocation(line: 489, column: 21, scope: !6357)
!6372 = !DILocation(line: 489, column: 2, scope: !6357)
!6373 = !DILocation(line: 491, column: 8, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 491, column: 6)
!6375 = !DILocation(line: 491, column: 13, scope: !6374)
!6376 = !DILocation(line: 491, column: 19, scope: !6374)
!6377 = !DILocation(line: 491, column: 6, scope: !6357)
!6378 = !DILocation(line: 492, column: 23, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 491, column: 38)
!6380 = !DILocation(line: 492, column: 9, scope: !6379)
!6381 = !DILocation(line: 492, column: 7, scope: !6379)
!6382 = !DILocation(line: 493, column: 7, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 493, column: 7)
!6384 = !DILocation(line: 493, column: 11, scope: !6383)
!6385 = !DILocation(line: 493, column: 7, scope: !6379)
!6386 = !DILocation(line: 494, column: 8, scope: !6383)
!6387 = !DILocation(line: 494, column: 4, scope: !6383)
!6388 = !DILocation(line: 495, column: 10, scope: !6379)
!6389 = !DILocation(line: 495, column: 3, scope: !6379)
!6390 = !DILocation(line: 498, column: 6, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 498, column: 6)
!6392 = !DILocation(line: 498, column: 11, scope: !6391)
!6393 = !DILocation(line: 498, column: 6, scope: !6357)
!6394 = !DILocation(line: 499, column: 19, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 498, column: 26)
!6396 = !DILocation(line: 499, column: 3, scope: !6395)
!6397 = !DILocation(line: 500, column: 3, scope: !6395)
!6398 = !DILocation(line: 503, column: 6, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 503, column: 6)
!6400 = !DILocation(line: 503, column: 11, scope: !6399)
!6401 = !DILocation(line: 503, column: 30, scope: !6399)
!6402 = !DILocation(line: 503, column: 35, scope: !6399)
!6403 = !DILocation(line: 503, column: 27, scope: !6399)
!6404 = !DILocation(line: 503, column: 6, scope: !6357)
!6405 = !DILocation(line: 508, column: 19, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 503, column: 42)
!6407 = !DILocation(line: 508, column: 3, scope: !6406)
!6408 = !DILocation(line: 509, column: 24, scope: !6406)
!6409 = !DILocation(line: 509, column: 10, scope: !6406)
!6410 = !DILocation(line: 509, column: 3, scope: !6406)
!6411 = !DILocation(line: 512, column: 8, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 512, column: 6)
!6413 = !DILocation(line: 512, column: 13, scope: !6412)
!6414 = !DILocation(line: 512, column: 19, scope: !6412)
!6415 = !DILocation(line: 512, column: 37, scope: !6412)
!6416 = !DILocation(line: 512, column: 41, scope: !6412)
!6417 = !DILocation(line: 512, column: 46, scope: !6412)
!6418 = !DILocation(line: 512, column: 40, scope: !6412)
!6419 = !DILocation(line: 512, column: 6, scope: !6357)
!6420 = !DILocation(line: 513, column: 9, scope: !6412)
!6421 = !DILocation(line: 513, column: 14, scope: !6412)
!6422 = !DILocation(line: 513, column: 24, scope: !6412)
!6423 = !DILocation(line: 513, column: 37, scope: !6412)
!6424 = !DILocation(line: 513, column: 7, scope: !6412)
!6425 = !DILocation(line: 513, column: 3, scope: !6412)
!6426 = !DILocation(line: 514, column: 9, scope: !6357)
!6427 = !DILocation(line: 514, column: 2, scope: !6357)
!6428 = !DILocation(line: 515, column: 1, scope: !6357)
!6429 = distinct !DISubprogram(name: "pcmcia_socket_dev_complete", scope: !3, file: !3, line: 864, type: !4251, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6430 = !{!6431, !6432, !6434}
!6431 = !DILocalVariable(name: "dev", arg: 1, scope: !6429, file: !3, line: 864, type: !4222)
!6432 = !DILocalVariable(name: "__ret_warn_on", scope: !6433, file: !3, line: 866, type: !109)
!6433 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 866, column: 2)
!6434 = !DILocalVariable(name: "__flags", scope: !6435, file: !3, line: 866, type: !109)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 866, column: 2)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 866, column: 2)
!6437 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 866, column: 2)
!6438 = !DILocation(line: 864, column: 62, scope: !6429)
!6439 = !DILocation(line: 866, column: 2, scope: !6433)
!6440 = !DILocation(line: 866, column: 2, scope: !6437)
!6441 = !DILocation(line: 866, column: 2, scope: !6436)
!6442 = !DILocation(line: 866, column: 2, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 866, column: 2)
!6444 = !DILocation(line: 866, column: 2, scope: !6435)
!6445 = !DILocation(line: 866, column: 2, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 866, column: 2)
!6447 = !DILocation(line: 866, column: 2, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 866, column: 2)
!6449 = !{i64 2155178005, i64 2155178034, i64 2155178080, i64 2155178138, i64 2155178192, i64 2155178246, i64 2155178301, i64 2155178332, i64 2155178640, i64 2155178646, i64 2155178693, i64 2155178716, i64 2155178742}
!6450 = !DILocation(line: 866, column: 2, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 866, column: 2)
!6452 = !DILocation(line: 866, column: 2, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 866, column: 2)
!6454 = !DILocation(line: 866, column: 2, scope: !6429)
!6455 = !DILocation(line: 868, column: 1, scope: !6429)
!6456 = distinct !DISubprogram(name: "socket_complete_resume", scope: !3, file: !3, line: 522, type: !4924, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6457 = !{!6458, !6459}
!6458 = !DILocalVariable(name: "skt", arg: 1, scope: !6456, file: !3, line: 522, type: !4094)
!6459 = !DILocalVariable(name: "ret", scope: !6456, file: !3, line: 524, type: !109)
!6460 = !DILocation(line: 522, column: 57, scope: !6456)
!6461 = !DILocation(line: 524, column: 2, scope: !6456)
!6462 = !DILocation(line: 524, column: 6, scope: !6456)
!6463 = !DILocation(line: 526, column: 6, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 526, column: 6)
!6465 = !DILocation(line: 526, column: 11, scope: !6464)
!6466 = !DILocation(line: 526, column: 17, scope: !6464)
!6467 = !DILocation(line: 526, column: 6, scope: !6456)
!6468 = !DILocation(line: 530, column: 11, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 526, column: 35)
!6470 = !DILocation(line: 530, column: 3, scope: !6469)
!6471 = !DILocation(line: 531, column: 18, scope: !6469)
!6472 = !DILocation(line: 531, column: 9, scope: !6469)
!6473 = !DILocation(line: 531, column: 7, scope: !6469)
!6474 = !DILocation(line: 532, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 532, column: 7)
!6476 = !DILocation(line: 532, column: 7, scope: !6469)
!6477 = !DILocation(line: 533, column: 12, scope: !6475)
!6478 = !DILocation(line: 533, column: 4, scope: !6475)
!6479 = !DILocation(line: 534, column: 2, scope: !6469)
!6480 = !DILocation(line: 536, column: 9, scope: !6456)
!6481 = !DILocation(line: 537, column: 1, scope: !6456)
!6482 = !DILocation(line: 536, column: 2, scope: !6456)
!6483 = !DISubprogram(name: "__warn_printk", scope: !3920, file: !3920, line: 93, type: !6484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{null, !171, null}
!6486 = distinct !DISubprogram(name: "pcmcia_socket_uevent", scope: !3, file: !3, line: 814, type: !4240, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6487)
!6487 = !{!6488, !6489, !6490, !6493}
!6488 = !DILocalVariable(name: "dev", arg: 1, scope: !6486, file: !3, line: 814, type: !4242)
!6489 = !DILocalVariable(name: "env", arg: 2, scope: !6486, file: !3, line: 815, type: !247)
!6490 = !DILocalVariable(name: "s", scope: !6486, file: !3, line: 817, type: !6491)
!6491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6492, size: 64)
!6492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4095)
!6493 = !DILocalVariable(name: "__mptr", scope: !6494, file: !3, line: 817, type: !324)
!6494 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 817, column: 34)
!6495 = !DILocation(line: 814, column: 54, scope: !6486)
!6496 = !DILocation(line: 815, column: 29, scope: !6486)
!6497 = !DILocation(line: 817, column: 2, scope: !6486)
!6498 = !DILocation(line: 817, column: 30, scope: !6486)
!6499 = !DILocation(line: 817, column: 34, scope: !6494)
!6500 = !DILocation(line: 817, column: 34, scope: !6486)
!6501 = !DILocation(line: 819, column: 21, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 819, column: 6)
!6503 = !DILocation(line: 819, column: 42, scope: !6502)
!6504 = !DILocation(line: 819, column: 45, scope: !6502)
!6505 = !DILocation(line: 819, column: 6, scope: !6502)
!6506 = !DILocation(line: 819, column: 6, scope: !6486)
!6507 = !DILocation(line: 820, column: 3, scope: !6502)
!6508 = !DILocation(line: 822, column: 2, scope: !6486)
!6509 = !DILocation(line: 823, column: 1, scope: !6486)
!6510 = distinct !DISubprogram(name: "pcmcia_release_socket_class", scope: !3, file: !3, line: 828, type: !4650, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6511)
!6511 = !{!6512}
!6512 = !DILocalVariable(name: "data", arg: 1, scope: !6510, file: !3, line: 828, type: !4635)
!6513 = !DILocation(line: 828, column: 61, scope: !6510)
!6514 = !DILocation(line: 830, column: 2, scope: !6510)
!6515 = !DILocation(line: 831, column: 1, scope: !6510)
!6516 = distinct !DISubprogram(name: "pcmcia_release_socket", scope: !3, file: !3, line: 90, type: !4251, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "dev", arg: 1, scope: !6516, file: !3, line: 90, type: !4222)
!6519 = !DILocalVariable(name: "socket", scope: !6516, file: !3, line: 92, type: !4094)
!6520 = !DILocation(line: 90, column: 50, scope: !6516)
!6521 = !DILocation(line: 92, column: 2, scope: !6516)
!6522 = !DILocation(line: 92, column: 24, scope: !6516)
!6523 = !DILocation(line: 92, column: 49, scope: !6516)
!6524 = !DILocation(line: 92, column: 33, scope: !6516)
!6525 = !DILocation(line: 94, column: 12, scope: !6516)
!6526 = !DILocation(line: 94, column: 20, scope: !6516)
!6527 = !DILocation(line: 94, column: 2, scope: !6516)
!6528 = !DILocation(line: 95, column: 1, scope: !6516)
!6529 = distinct !DISubprogram(name: "exit_pcmcia_cs", scope: !3, file: !3, line: 911, type: !2509, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6530 = !DILocation(line: 913, column: 2, scope: !6529)
!6531 = !DILocation(line: 914, column: 2, scope: !6529)
!6532 = !DILocation(line: 915, column: 1, scope: !6529)
!6533 = !DISubprogram(name: "class_unregister", scope: !4638, file: !4638, line: 81, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6534 = distinct !DISubprogram(name: "__initstub__kmod_pcmcia_core__319_917_init_pcmcia_cs4", scope: !3, file: !3, line: 917, type: !3877, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6535 = !DILocation(line: 917, column: 1, scope: !6534)
!6536 = distinct !DISubprogram(name: "init_pcmcia_cs", scope: !3, file: !3, line: 905, type: !3877, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6537 = !DILocation(line: 907, column: 2, scope: !6536)
!6538 = !DILocation(line: 908, column: 9, scope: !6536)
!6539 = !DILocation(line: 908, column: 2, scope: !6536)
!6540 = distinct !DISubprogram(name: "__list_add", scope: !5522, file: !5522, line: 146, type: !6541, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6543)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{null, !156, !156, !156}
!6543 = !{!6544, !6545, !6546}
!6544 = !DILocalVariable(name: "new", arg: 1, scope: !6540, file: !5522, line: 146, type: !156)
!6545 = !DILocalVariable(name: "prev", arg: 2, scope: !6540, file: !5522, line: 147, type: !156)
!6546 = !DILocalVariable(name: "next", arg: 3, scope: !6540, file: !5522, line: 148, type: !156)
!6547 = !DILocation(line: 146, column: 49, scope: !6540)
!6548 = !DILocation(line: 147, column: 28, scope: !6540)
!6549 = !DILocation(line: 148, column: 28, scope: !6540)
!6550 = !DILocation(line: 150, column: 24, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6540, file: !5522, line: 150, column: 6)
!6552 = !DILocation(line: 150, column: 29, scope: !6551)
!6553 = !DILocation(line: 150, column: 35, scope: !6551)
!6554 = !DILocation(line: 150, column: 7, scope: !6551)
!6555 = !DILocation(line: 150, column: 6, scope: !6540)
!6556 = !DILocation(line: 151, column: 3, scope: !6551)
!6557 = !DILocation(line: 153, column: 15, scope: !6540)
!6558 = !DILocation(line: 153, column: 2, scope: !6540)
!6559 = !DILocation(line: 153, column: 8, scope: !6540)
!6560 = !DILocation(line: 153, column: 13, scope: !6540)
!6561 = !DILocation(line: 154, column: 14, scope: !6540)
!6562 = !DILocation(line: 154, column: 2, scope: !6540)
!6563 = !DILocation(line: 154, column: 7, scope: !6540)
!6564 = !DILocation(line: 154, column: 12, scope: !6540)
!6565 = !DILocation(line: 155, column: 14, scope: !6540)
!6566 = !DILocation(line: 155, column: 2, scope: !6540)
!6567 = !DILocation(line: 155, column: 7, scope: !6540)
!6568 = !DILocation(line: 155, column: 12, scope: !6540)
!6569 = !DILocation(line: 156, column: 2, scope: !6540)
!6570 = !DILocation(line: 156, column: 2, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6540, file: !5522, line: 156, column: 2)
!6572 = !DILocation(line: 156, column: 2, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6571, file: !5522, line: 156, column: 2)
!6574 = !DILocation(line: 156, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !5522, line: 156, column: 2)
!6576 = !DILocation(line: 157, column: 1, scope: !6540)
!6577 = distinct !DISubprogram(name: "__list_add_valid", scope: !5522, file: !5522, line: 128, type: !6578, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{!1453, !156, !156, !156}
!6580 = !{!6581, !6582, !6583}
!6581 = !DILocalVariable(name: "new", arg: 1, scope: !6577, file: !5522, line: 128, type: !156)
!6582 = !DILocalVariable(name: "prev", arg: 2, scope: !6577, file: !5522, line: 129, type: !156)
!6583 = !DILocalVariable(name: "next", arg: 3, scope: !6577, file: !5522, line: 130, type: !156)
!6584 = !DILocation(line: 128, column: 55, scope: !6577)
!6585 = !DILocation(line: 129, column: 23, scope: !6577)
!6586 = !DILocation(line: 130, column: 23, scope: !6577)
!6587 = !DILocation(line: 132, column: 2, scope: !6577)
!6588 = !DISubprogram(name: "__init_swait_queue_head", scope: !1850, file: !1850, line: 69, type: !6589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{null, !6591, !171, !5601}
!6591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!6592 = distinct !DISubprogram(name: "__list_del_entry", scope: !5522, file: !5522, line: 213, type: !5569, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6593)
!6593 = !{!6594}
!6594 = !DILocalVariable(name: "entry", arg: 1, scope: !6592, file: !5522, line: 213, type: !156)
!6595 = !DILocation(line: 213, column: 55, scope: !6592)
!6596 = !DILocation(line: 215, column: 30, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6592, file: !5522, line: 215, column: 6)
!6598 = !DILocation(line: 215, column: 7, scope: !6597)
!6599 = !DILocation(line: 215, column: 6, scope: !6592)
!6600 = !DILocation(line: 216, column: 3, scope: !6597)
!6601 = !DILocation(line: 218, column: 13, scope: !6592)
!6602 = !DILocation(line: 218, column: 20, scope: !6592)
!6603 = !DILocation(line: 218, column: 26, scope: !6592)
!6604 = !DILocation(line: 218, column: 33, scope: !6592)
!6605 = !DILocation(line: 218, column: 2, scope: !6592)
!6606 = !DILocation(line: 219, column: 1, scope: !6592)
!6607 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5522, file: !5522, line: 134, type: !6608, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!1453, !156}
!6610 = !{!6611}
!6611 = !DILocalVariable(name: "entry", arg: 1, scope: !6607, file: !5522, line: 134, type: !156)
!6612 = !DILocation(line: 134, column: 61, scope: !6607)
!6613 = !DILocation(line: 136, column: 2, scope: !6607)
!6614 = distinct !DISubprogram(name: "__list_del", scope: !5522, file: !5522, line: 193, type: !5538, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6615)
!6615 = !{!6616, !6617}
!6616 = !DILocalVariable(name: "prev", arg: 1, scope: !6614, file: !5522, line: 193, type: !156)
!6617 = !DILocalVariable(name: "next", arg: 2, scope: !6614, file: !5522, line: 193, type: !156)
!6618 = !DILocation(line: 193, column: 50, scope: !6614)
!6619 = !DILocation(line: 193, column: 75, scope: !6614)
!6620 = !DILocation(line: 195, column: 15, scope: !6614)
!6621 = !DILocation(line: 195, column: 2, scope: !6614)
!6622 = !DILocation(line: 195, column: 8, scope: !6614)
!6623 = !DILocation(line: 195, column: 13, scope: !6614)
!6624 = !DILocation(line: 196, column: 2, scope: !6614)
!6625 = !DILocation(line: 196, column: 2, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6614, file: !5522, line: 196, column: 2)
!6627 = !DILocation(line: 196, column: 2, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6626, file: !5522, line: 196, column: 2)
!6629 = !DILocation(line: 196, column: 2, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6626, file: !5522, line: 196, column: 2)
!6631 = !DILocation(line: 197, column: 1, scope: !6614)
!6632 = distinct !DISubprogram(name: "get_current", scope: !6633, file: !6633, line: 39, type: !6634, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6636)
!6633 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!961}
!6636 = !{!6637, !6639, !6641}
!6637 = !DILocalVariable(name: "pscr_ret__", scope: !6638, file: !6633, line: 41, type: !961)
!6638 = distinct !DILexicalBlock(scope: !6632, file: !6633, line: 41, column: 9)
!6639 = !DILocalVariable(name: "__vpp_verify", scope: !6640, file: !6633, line: 41, type: !2121)
!6640 = distinct !DILexicalBlock(scope: !6638, file: !6633, line: 41, column: 9)
!6641 = !DILocalVariable(name: "pfo_val__", scope: !6642, file: !6633, line: 41, type: !406)
!6642 = distinct !DILexicalBlock(scope: !6638, file: !6633, line: 41, column: 9)
!6643 = !DILocation(line: 41, column: 9, scope: !6638)
!6644 = !DILocation(line: 41, column: 9, scope: !6640)
!6645 = !DILocation(line: 41, column: 9, scope: !6642)
!6646 = !{i64 2148552908}
!6647 = !DILocation(line: 41, column: 9, scope: !6632)
!6648 = !DILocation(line: 41, column: 2, scope: !6632)
!6649 = !DISubprogram(name: "device_register", scope: !94, file: !94, line: 1054, type: !4260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6650 = !DISubprogram(name: "complete", scope: !1845, file: !1845, line: 118, type: !5244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = !DISubprogram(name: "pccard_sysfs_add_socket", scope: !4957, file: !4957, line: 89, type: !4260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6652 = !DISubprogram(name: "msleep", scope: !6653, file: !6653, line: 61, type: !6654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6653 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6654 = !DISubroutineType(types: !6655)
!6655 = !{null, !7}
!6656 = !DISubprogram(name: "set_freezable", scope: !6657, file: !6657, line: 62, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6657 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!6658 = distinct !DISubprogram(name: "socket_detect_change", scope: !3, file: !3, line: 574, type: !4972, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "skt", arg: 1, scope: !6658, file: !3, line: 574, type: !4094)
!6661 = !DILocalVariable(name: "status", scope: !6662, file: !3, line: 577, type: !109)
!6662 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 576, column: 38)
!6663 = distinct !DILexicalBlock(scope: !6658, file: !3, line: 576, column: 6)
!6664 = !DILocation(line: 574, column: 56, scope: !6658)
!6665 = !DILocation(line: 576, column: 8, scope: !6663)
!6666 = !DILocation(line: 576, column: 13, scope: !6663)
!6667 = !DILocation(line: 576, column: 19, scope: !6663)
!6668 = !DILocation(line: 576, column: 6, scope: !6658)
!6669 = !DILocation(line: 577, column: 3, scope: !6662)
!6670 = !DILocation(line: 577, column: 7, scope: !6662)
!6671 = !DILocation(line: 579, column: 9, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 579, column: 7)
!6673 = !DILocation(line: 579, column: 14, scope: !6672)
!6674 = !DILocation(line: 579, column: 20, scope: !6672)
!6675 = !DILocation(line: 579, column: 7, scope: !6662)
!6676 = !DILocation(line: 580, column: 4, scope: !6672)
!6677 = !DILocation(line: 582, column: 3, scope: !6662)
!6678 = !DILocation(line: 582, column: 8, scope: !6662)
!6679 = !DILocation(line: 582, column: 13, scope: !6662)
!6680 = !DILocation(line: 582, column: 24, scope: !6662)
!6681 = !DILocation(line: 583, column: 8, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 583, column: 7)
!6683 = !DILocation(line: 583, column: 13, scope: !6682)
!6684 = !DILocation(line: 583, column: 19, scope: !6682)
!6685 = !DILocation(line: 583, column: 37, scope: !6682)
!6686 = !DILocation(line: 584, column: 10, scope: !6682)
!6687 = !DILocation(line: 584, column: 17, scope: !6682)
!6688 = !DILocation(line: 583, column: 7, scope: !6662)
!6689 = !DILocation(line: 585, column: 18, scope: !6682)
!6690 = !DILocation(line: 585, column: 4, scope: !6682)
!6691 = !DILocation(line: 586, column: 9, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 586, column: 7)
!6693 = !DILocation(line: 586, column: 14, scope: !6692)
!6694 = !DILocation(line: 586, column: 20, scope: !6692)
!6695 = !DILocation(line: 586, column: 38, scope: !6692)
!6696 = !DILocation(line: 587, column: 8, scope: !6692)
!6697 = !DILocation(line: 587, column: 15, scope: !6692)
!6698 = !DILocation(line: 586, column: 7, scope: !6662)
!6699 = !DILocation(line: 588, column: 18, scope: !6692)
!6700 = !DILocation(line: 588, column: 4, scope: !6692)
!6701 = !DILocation(line: 589, column: 2, scope: !6663)
!6702 = !DILocation(line: 589, column: 2, scope: !6662)
!6703 = !DILocation(line: 590, column: 1, scope: !6658)
!6704 = distinct !DISubprogram(name: "socket_remove", scope: !3, file: !3, line: 557, type: !4972, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6705)
!6705 = !{!6706}
!6706 = !DILocalVariable(name: "skt", arg: 1, scope: !6704, file: !3, line: 557, type: !4094)
!6707 = !DILocation(line: 557, column: 49, scope: !6704)
!6708 = !DILocation(line: 559, column: 2, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6704, file: !3, line: 559, column: 2)
!6710 = !DILocation(line: 559, column: 2, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 559, column: 2)
!6712 = !DILocation(line: 560, column: 18, scope: !6704)
!6713 = !DILocation(line: 560, column: 2, scope: !6704)
!6714 = !DILocation(line: 561, column: 1, scope: !6704)
!6715 = distinct !DISubprogram(name: "socket_insert", scope: !3, file: !3, line: 410, type: !4924, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6716 = !{!6717, !6718}
!6717 = !DILocalVariable(name: "skt", arg: 1, scope: !6715, file: !3, line: 410, type: !4094)
!6718 = !DILocalVariable(name: "ret", scope: !6715, file: !3, line: 412, type: !109)
!6719 = !DILocation(line: 410, column: 48, scope: !6715)
!6720 = !DILocation(line: 412, column: 2, scope: !6715)
!6721 = !DILocation(line: 412, column: 6, scope: !6715)
!6722 = !DILocation(line: 416, column: 14, scope: !6715)
!6723 = !DILocation(line: 416, column: 19, scope: !6715)
!6724 = !DILocation(line: 416, column: 2, scope: !6715)
!6725 = !DILocation(line: 417, column: 6, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 417, column: 6)
!6727 = !DILocation(line: 417, column: 11, scope: !6726)
!6728 = !DILocation(line: 417, column: 17, scope: !6726)
!6729 = !DILocation(line: 417, column: 6, scope: !6715)
!6730 = !DILocation(line: 418, column: 17, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6726, file: !3, line: 417, column: 33)
!6732 = !DILocation(line: 418, column: 22, scope: !6731)
!6733 = !DILocation(line: 418, column: 3, scope: !6731)
!6734 = !DILocation(line: 419, column: 3, scope: !6731)
!6735 = !DILocation(line: 421, column: 2, scope: !6715)
!6736 = !DILocation(line: 421, column: 7, scope: !6715)
!6737 = !DILocation(line: 421, column: 13, scope: !6715)
!6738 = !DILocation(line: 423, column: 21, scope: !6715)
!6739 = !DILocation(line: 423, column: 26, scope: !6715)
!6740 = !DILocation(line: 423, column: 8, scope: !6715)
!6741 = !DILocation(line: 423, column: 6, scope: !6715)
!6742 = !DILocation(line: 424, column: 6, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 424, column: 6)
!6744 = !DILocation(line: 424, column: 10, scope: !6743)
!6745 = !DILocation(line: 424, column: 6, scope: !6715)
!6746 = !DILocation(line: 425, column: 3, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 424, column: 16)
!6748 = !DILocation(line: 425, column: 8, scope: !6747)
!6749 = !DILocation(line: 425, column: 14, scope: !6747)
!6750 = !DILocation(line: 427, column: 3, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 427, column: 3)
!6752 = !DILocation(line: 427, column: 3, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6751, file: !3, line: 427, column: 3)
!6754 = !DILocation(line: 432, column: 7, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 432, column: 7)
!6756 = !DILocation(line: 432, column: 12, scope: !6755)
!6757 = !DILocation(line: 432, column: 18, scope: !6755)
!6758 = !DILocation(line: 432, column: 7, scope: !6747)
!6759 = !DILocation(line: 433, column: 13, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 432, column: 36)
!6761 = !DILocation(line: 433, column: 4, scope: !6760)
!6762 = !DILocation(line: 434, column: 4, scope: !6760)
!6763 = !DILocation(line: 434, column: 9, scope: !6760)
!6764 = !DILocation(line: 434, column: 15, scope: !6760)
!6765 = !DILocation(line: 435, column: 3, scope: !6760)
!6766 = !DILocation(line: 438, column: 17, scope: !6747)
!6767 = !DILocation(line: 438, column: 22, scope: !6747)
!6768 = !DILocation(line: 438, column: 3, scope: !6747)
!6769 = !DILocation(line: 440, column: 9, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 440, column: 7)
!6771 = !DILocation(line: 440, column: 14, scope: !6770)
!6772 = !DILocation(line: 440, column: 20, scope: !6770)
!6773 = !DILocation(line: 440, column: 38, scope: !6770)
!6774 = !DILocation(line: 440, column: 42, scope: !6770)
!6775 = !DILocation(line: 440, column: 47, scope: !6770)
!6776 = !DILocation(line: 440, column: 41, scope: !6770)
!6777 = !DILocation(line: 440, column: 7, scope: !6747)
!6778 = !DILocation(line: 441, column: 4, scope: !6770)
!6779 = !DILocation(line: 441, column: 9, scope: !6770)
!6780 = !DILocation(line: 441, column: 19, scope: !6770)
!6781 = !DILocation(line: 441, column: 23, scope: !6770)
!6782 = !DILocation(line: 442, column: 2, scope: !6747)
!6783 = !DILocation(line: 443, column: 17, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 442, column: 9)
!6785 = !DILocation(line: 443, column: 22, scope: !6784)
!6786 = !DILocation(line: 443, column: 3, scope: !6784)
!6787 = !DILocation(line: 444, column: 19, scope: !6784)
!6788 = !DILocation(line: 444, column: 3, scope: !6784)
!6789 = !DILocation(line: 447, column: 9, scope: !6715)
!6790 = !DILocation(line: 447, column: 2, scope: !6715)
!6791 = !DILocation(line: 448, column: 1, scope: !6715)
!6792 = distinct !DISubprogram(name: "socket_suspend", scope: !3, file: !3, line: 450, type: !4924, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6793)
!6793 = !{!6794}
!6794 = !DILocalVariable(name: "skt", arg: 1, scope: !6792, file: !3, line: 450, type: !4094)
!6795 = !DILocation(line: 450, column: 49, scope: !6792)
!6796 = !DILocation(line: 452, column: 7, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 452, column: 6)
!6798 = !DILocation(line: 452, column: 12, scope: !6797)
!6799 = !DILocation(line: 452, column: 18, scope: !6797)
!6800 = !DILocation(line: 452, column: 36, scope: !6797)
!6801 = !DILocation(line: 452, column: 41, scope: !6797)
!6802 = !DILocation(line: 452, column: 46, scope: !6797)
!6803 = !DILocation(line: 452, column: 52, scope: !6797)
!6804 = !DILocation(line: 452, column: 6, scope: !6792)
!6805 = !DILocation(line: 453, column: 3, scope: !6797)
!6806 = !DILocation(line: 455, column: 14, scope: !6792)
!6807 = !DILocation(line: 455, column: 19, scope: !6792)
!6808 = !DILocation(line: 455, column: 2, scope: !6792)
!6809 = !DILocation(line: 457, column: 8, scope: !6810)
!6810 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 457, column: 6)
!6811 = !DILocation(line: 457, column: 13, scope: !6810)
!6812 = !DILocation(line: 457, column: 19, scope: !6810)
!6813 = !DILocation(line: 457, column: 6, scope: !6792)
!6814 = !DILocation(line: 458, column: 26, scope: !6810)
!6815 = !DILocation(line: 458, column: 31, scope: !6810)
!6816 = !DILocation(line: 458, column: 3, scope: !6810)
!6817 = !DILocation(line: 458, column: 8, scope: !6810)
!6818 = !DILocation(line: 458, column: 24, scope: !6810)
!6819 = !DILocation(line: 460, column: 2, scope: !6792)
!6820 = !DILocation(line: 460, column: 7, scope: !6792)
!6821 = !DILocation(line: 460, column: 16, scope: !6792)
!6822 = !DILocation(line: 461, column: 2, scope: !6792)
!6823 = !DILocation(line: 461, column: 7, scope: !6792)
!6824 = !DILocation(line: 461, column: 12, scope: !6792)
!6825 = !DILocation(line: 461, column: 23, scope: !6792)
!6826 = !DILocation(line: 461, column: 29, scope: !6792)
!6827 = !DILocation(line: 461, column: 34, scope: !6792)
!6828 = !DILocation(line: 462, column: 6, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 462, column: 6)
!6830 = !DILocation(line: 462, column: 11, scope: !6829)
!6831 = !DILocation(line: 462, column: 16, scope: !6829)
!6832 = !DILocation(line: 462, column: 6, scope: !6792)
!6833 = !DILocation(line: 463, column: 3, scope: !6829)
!6834 = !DILocation(line: 463, column: 8, scope: !6829)
!6835 = !DILocation(line: 463, column: 13, scope: !6829)
!6836 = !DILocation(line: 463, column: 21, scope: !6829)
!6837 = !DILocation(line: 464, column: 2, scope: !6792)
!6838 = !DILocation(line: 464, column: 7, scope: !6792)
!6839 = !DILocation(line: 464, column: 13, scope: !6792)
!6840 = !DILocation(line: 465, column: 2, scope: !6792)
!6841 = !DILocation(line: 465, column: 7, scope: !6792)
!6842 = !DILocation(line: 465, column: 13, scope: !6792)
!6843 = !DILocation(line: 466, column: 16, scope: !6792)
!6844 = !DILocation(line: 466, column: 21, scope: !6792)
!6845 = !DILocation(line: 466, column: 2, scope: !6792)
!6846 = !DILocation(line: 467, column: 2, scope: !6792)
!6847 = !DILocation(line: 468, column: 1, scope: !6792)
!6848 = distinct !DISubprogram(name: "socket_resume", scope: !3, file: !3, line: 544, type: !4924, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6849)
!6849 = !{!6850, !6851}
!6850 = !DILocalVariable(name: "skt", arg: 1, scope: !6848, file: !3, line: 544, type: !4094)
!6851 = !DILocalVariable(name: "err", scope: !6848, file: !3, line: 546, type: !109)
!6852 = !DILocation(line: 544, column: 48, scope: !6848)
!6853 = !DILocation(line: 546, column: 2, scope: !6848)
!6854 = !DILocation(line: 546, column: 6, scope: !6848)
!6855 = !DILocation(line: 547, column: 8, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 547, column: 6)
!6857 = !DILocation(line: 547, column: 13, scope: !6856)
!6858 = !DILocation(line: 547, column: 19, scope: !6856)
!6859 = !DILocation(line: 547, column: 6, scope: !6848)
!6860 = !DILocation(line: 548, column: 3, scope: !6856)
!6861 = !DILocation(line: 550, column: 22, scope: !6848)
!6862 = !DILocation(line: 550, column: 2, scope: !6848)
!6863 = !DILocation(line: 551, column: 27, scope: !6848)
!6864 = !DILocation(line: 551, column: 8, scope: !6848)
!6865 = !DILocation(line: 551, column: 6, scope: !6848)
!6866 = !DILocation(line: 552, column: 7, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 552, column: 6)
!6868 = !DILocation(line: 552, column: 6, scope: !6848)
!6869 = !DILocation(line: 553, column: 32, scope: !6867)
!6870 = !DILocation(line: 553, column: 9, scope: !6867)
!6871 = !DILocation(line: 553, column: 7, scope: !6867)
!6872 = !DILocation(line: 553, column: 3, scope: !6867)
!6873 = !DILocation(line: 554, column: 9, scope: !6848)
!6874 = !DILocation(line: 554, column: 2, scope: !6848)
!6875 = !DILocation(line: 555, column: 1, scope: !6848)
!6876 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6877, file: !6877, line: 94, type: !6878, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6877 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6878 = !DISubroutineType(types: !6879)
!6879 = !{null, !6880, !299}
!6880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6881, size: 64)
!6881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6882)
!6882 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6883 = !{!6884, !6885}
!6884 = !DILocalVariable(name: "v", arg: 1, scope: !6876, file: !6877, line: 94, type: !6880)
!6885 = !DILocalVariable(name: "size", arg: 2, scope: !6876, file: !6877, line: 94, type: !299)
!6886 = !DILocation(line: 94, column: 79, scope: !6876)
!6887 = !DILocation(line: 94, column: 89, scope: !6876)
!6888 = !DILocation(line: 96, column: 20, scope: !6876)
!6889 = !DILocation(line: 96, column: 23, scope: !6876)
!6890 = !DILocation(line: 96, column: 2, scope: !6876)
!6891 = !DILocation(line: 97, column: 2, scope: !6876)
!6892 = !DILocation(line: 98, column: 1, scope: !6876)
!6893 = !DISubprogram(name: "kthread_should_stop", scope: !5618, file: !5618, line: 90, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6894 = !DISubprogram(name: "schedule", scope: !608, file: !608, line: 303, type: !2509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6895 = distinct !DISubprogram(name: "try_to_freeze", scope: !6657, file: !6657, line: 51, type: !3624, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6896 = !DILocation(line: 53, column: 2, scope: !6895)
!6897 = !DILocation(line: 53, column: 2, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6895, file: !6657, line: 53, column: 2)
!6899 = !DILocation(line: 54, column: 6, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6895, file: !6657, line: 54, column: 6)
!6901 = !DILocation(line: 54, column: 6, scope: !6895)
!6902 = !DILocation(line: 55, column: 3, scope: !6900)
!6903 = !DILocation(line: 56, column: 8, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6895, file: !6657, line: 56, column: 6)
!6905 = !DILocation(line: 56, column: 17, scope: !6904)
!6906 = !DILocation(line: 56, column: 23, scope: !6904)
!6907 = !DILocation(line: 56, column: 6, scope: !6895)
!6908 = !DILocation(line: 57, column: 3, scope: !6904)
!6909 = !DILocation(line: 58, column: 9, scope: !6895)
!6910 = !DILocation(line: 58, column: 2, scope: !6895)
!6911 = !DILocation(line: 59, column: 1, scope: !6895)
!6912 = !DISubprogram(name: "pccard_sysfs_remove_socket", scope: !4957, file: !4957, line: 90, type: !4251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6913 = !DISubprogram(name: "device_unregister", scope: !94, file: !94, line: 1055, type: !4251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6914 = !DISubprogram(name: "_dev_notice", scope: !5924, file: !5924, line: 54, type: !5925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6915 = distinct !DISubprogram(name: "socket_shutdown", scope: !3, file: !3, line: 285, type: !4972, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6916)
!6916 = !{!6917, !6918}
!6917 = !DILocalVariable(name: "s", arg: 1, scope: !6915, file: !3, line: 285, type: !4094)
!6918 = !DILocalVariable(name: "status", scope: !6915, file: !3, line: 287, type: !109)
!6919 = !DILocation(line: 285, column: 51, scope: !6915)
!6920 = !DILocation(line: 287, column: 2, scope: !6915)
!6921 = !DILocation(line: 287, column: 6, scope: !6915)
!6922 = !DILocation(line: 291, column: 6, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6915, file: !3, line: 291, column: 6)
!6924 = !DILocation(line: 291, column: 9, scope: !6923)
!6925 = !DILocation(line: 291, column: 6, scope: !6915)
!6926 = !DILocation(line: 292, column: 3, scope: !6923)
!6927 = !DILocation(line: 292, column: 6, scope: !6923)
!6928 = !DILocation(line: 292, column: 16, scope: !6923)
!6929 = !DILocation(line: 292, column: 23, scope: !6923)
!6930 = !DILocation(line: 294, column: 14, scope: !6915)
!6931 = !DILocation(line: 294, column: 17, scope: !6915)
!6932 = !DILocation(line: 294, column: 2, scope: !6915)
!6933 = !DILocation(line: 295, column: 2, scope: !6915)
!6934 = !DILocation(line: 295, column: 5, scope: !6915)
!6935 = !DILocation(line: 295, column: 11, scope: !6915)
!6936 = !DILocation(line: 296, column: 9, scope: !6915)
!6937 = !DILocation(line: 296, column: 24, scope: !6915)
!6938 = !DILocation(line: 296, column: 2, scope: !6915)
!6939 = !DILocation(line: 297, column: 2, scope: !6915)
!6940 = !DILocation(line: 297, column: 5, scope: !6915)
!6941 = !DILocation(line: 297, column: 11, scope: !6915)
!6942 = !DILocation(line: 300, column: 2, scope: !6915)
!6943 = !DILocation(line: 300, column: 5, scope: !6915)
!6944 = !DILocation(line: 300, column: 14, scope: !6915)
!6945 = !DILocation(line: 301, column: 2, scope: !6915)
!6946 = !DILocation(line: 301, column: 5, scope: !6915)
!6947 = !DILocation(line: 301, column: 10, scope: !6915)
!6948 = !DILocation(line: 301, column: 15, scope: !6915)
!6949 = !DILocation(line: 302, column: 2, scope: !6915)
!6950 = !DILocation(line: 302, column: 5, scope: !6915)
!6951 = !DILocation(line: 302, column: 10, scope: !6915)
!6952 = !DILocation(line: 302, column: 21, scope: !6915)
!6953 = !DILocation(line: 302, column: 25, scope: !6915)
!6954 = !DILocation(line: 302, column: 28, scope: !6915)
!6955 = !DILocation(line: 303, column: 2, scope: !6915)
!6956 = !DILocation(line: 303, column: 5, scope: !6915)
!6957 = !DILocation(line: 303, column: 16, scope: !6915)
!6958 = !DILocation(line: 304, column: 8, scope: !6915)
!6959 = !DILocation(line: 304, column: 11, scope: !6915)
!6960 = !DILocation(line: 304, column: 2, scope: !6915)
!6961 = !DILocation(line: 305, column: 2, scope: !6915)
!6962 = !DILocation(line: 305, column: 5, scope: !6915)
!6963 = !DILocation(line: 305, column: 14, scope: !6915)
!6964 = !DILocation(line: 306, column: 2, scope: !6915)
!6965 = !DILocation(line: 306, column: 5, scope: !6915)
!6966 = !DILocation(line: 306, column: 15, scope: !6915)
!6967 = !DILocation(line: 314, column: 16, scope: !6915)
!6968 = !DILocation(line: 314, column: 19, scope: !6915)
!6969 = !DILocation(line: 314, column: 2, scope: !6915)
!6970 = !DILocation(line: 317, column: 10, scope: !6915)
!6971 = !DILocation(line: 317, column: 2, scope: !6915)
!6972 = !DILocation(line: 321, column: 2, scope: !6915)
!6973 = !DILocation(line: 323, column: 2, scope: !6915)
!6974 = !DILocation(line: 323, column: 5, scope: !6915)
!6975 = !DILocation(line: 323, column: 10, scope: !6915)
!6976 = !DILocation(line: 323, column: 21, scope: !6915)
!6977 = !DILocation(line: 324, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6915, file: !3, line: 324, column: 6)
!6979 = !DILocation(line: 324, column: 13, scope: !6978)
!6980 = !DILocation(line: 324, column: 6, scope: !6915)
!6981 = !DILocation(line: 325, column: 3, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6983, file: !3, line: 325, column: 3)
!6983 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 324, column: 27)
!6984 = !DILocation(line: 325, column: 3, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6982, file: !3, line: 325, column: 3)
!6986 = !DILocation(line: 327, column: 2, scope: !6983)
!6987 = !DILocation(line: 329, column: 2, scope: !6915)
!6988 = !DILocation(line: 329, column: 5, scope: !6915)
!6989 = !DILocation(line: 329, column: 11, scope: !6915)
!6990 = !DILocation(line: 330, column: 1, scope: !6915)
!6991 = !DISubprogram(name: "kfree", scope: !6992, file: !6992, line: 227, type: !6993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6992 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6993 = !DISubroutineType(types: !6994)
!6994 = !{null, !2121}
!6995 = !DISubprogram(name: "cb_free", scope: !4957, file: !4957, line: 94, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6996 = !DISubprogram(name: "_dev_err", scope: !5924, file: !5924, line: 50, type: !5925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6997 = distinct !DISubprogram(name: "socket_setup", scope: !3, file: !3, line: 332, type: !4981, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6998)
!6998 = !{!6999, !7000, !7001, !7002}
!6999 = !DILocalVariable(name: "skt", arg: 1, scope: !6997, file: !3, line: 332, type: !4094)
!7000 = !DILocalVariable(name: "initial_delay", arg: 2, scope: !6997, file: !3, line: 332, type: !109)
!7001 = !DILocalVariable(name: "status", scope: !6997, file: !3, line: 334, type: !109)
!7002 = !DILocalVariable(name: "i", scope: !6997, file: !3, line: 334, type: !109)
!7003 = !DILocation(line: 332, column: 47, scope: !6997)
!7004 = !DILocation(line: 332, column: 56, scope: !6997)
!7005 = !DILocation(line: 334, column: 2, scope: !6997)
!7006 = !DILocation(line: 334, column: 6, scope: !6997)
!7007 = !DILocation(line: 334, column: 14, scope: !6997)
!7008 = !DILocation(line: 338, column: 2, scope: !6997)
!7009 = !DILocation(line: 338, column: 7, scope: !6997)
!7010 = !DILocation(line: 338, column: 12, scope: !6997)
!7011 = !DILocation(line: 338, column: 23, scope: !6997)
!7012 = !DILocation(line: 339, column: 8, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 339, column: 6)
!7014 = !DILocation(line: 339, column: 15, scope: !7013)
!7015 = !DILocation(line: 339, column: 6, scope: !6997)
!7016 = !DILocation(line: 340, column: 3, scope: !7013)
!7017 = !DILocation(line: 342, column: 9, scope: !6997)
!7018 = !DILocation(line: 342, column: 23, scope: !6997)
!7019 = !DILocation(line: 342, column: 2, scope: !6997)
!7020 = !DILocation(line: 344, column: 9, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 344, column: 2)
!7022 = !DILocation(line: 344, column: 7, scope: !7021)
!7023 = !DILocation(line: 344, column: 14, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 344, column: 2)
!7025 = !DILocation(line: 344, column: 16, scope: !7024)
!7026 = !DILocation(line: 344, column: 2, scope: !7021)
!7027 = !DILocation(line: 345, column: 3, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7024, file: !3, line: 344, column: 28)
!7029 = !DILocation(line: 345, column: 8, scope: !7028)
!7030 = !DILocation(line: 345, column: 13, scope: !7028)
!7031 = !DILocation(line: 345, column: 24, scope: !7028)
!7032 = !DILocation(line: 346, column: 9, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 346, column: 7)
!7034 = !DILocation(line: 346, column: 16, scope: !7033)
!7035 = !DILocation(line: 346, column: 7, scope: !7028)
!7036 = !DILocation(line: 347, column: 4, scope: !7033)
!7037 = !DILocation(line: 349, column: 9, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7028, file: !3, line: 349, column: 7)
!7039 = !DILocation(line: 349, column: 16, scope: !7038)
!7040 = !DILocation(line: 349, column: 7, scope: !7028)
!7041 = !DILocation(line: 350, column: 4, scope: !7038)
!7042 = !DILocation(line: 352, column: 3, scope: !7028)
!7043 = !DILocation(line: 353, column: 2, scope: !7028)
!7044 = !DILocation(line: 344, column: 24, scope: !7024)
!7045 = !DILocation(line: 344, column: 2, scope: !7024)
!7046 = distinct !{!7046, !7026, !7047, !5397, !5398}
!7047 = !DILocation(line: 353, column: 2, scope: !7021)
!7048 = !DILocation(line: 355, column: 6, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 355, column: 6)
!7050 = !DILocation(line: 355, column: 13, scope: !7049)
!7051 = !DILocation(line: 355, column: 6, scope: !6997)
!7052 = !DILocation(line: 356, column: 3, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 356, column: 3)
!7054 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 355, column: 27)
!7055 = !DILocation(line: 356, column: 3, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !7053, file: !3, line: 356, column: 3)
!7057 = !DILocation(line: 357, column: 3, scope: !7054)
!7058 = !DILocation(line: 360, column: 6, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 360, column: 6)
!7060 = !DILocation(line: 360, column: 13, scope: !7059)
!7061 = !DILocation(line: 360, column: 6, scope: !6997)
!7062 = !DILocation(line: 361, column: 9, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7064, file: !3, line: 361, column: 7)
!7064 = distinct !DILexicalBlock(scope: !7059, file: !3, line: 360, column: 27)
!7065 = !DILocation(line: 361, column: 14, scope: !7063)
!7066 = !DILocation(line: 361, column: 23, scope: !7063)
!7067 = !DILocation(line: 361, column: 7, scope: !7064)
!7068 = !DILocation(line: 362, column: 4, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7070, file: !3, line: 362, column: 4)
!7070 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 361, column: 42)
!7071 = !DILocation(line: 362, column: 4, scope: !7072)
!7072 = distinct !DILexicalBlock(scope: !7069, file: !3, line: 362, column: 4)
!7073 = !DILocation(line: 363, column: 4, scope: !7070)
!7074 = !DILocation(line: 365, column: 3, scope: !7064)
!7075 = !DILocation(line: 365, column: 8, scope: !7064)
!7076 = !DILocation(line: 365, column: 14, scope: !7064)
!7077 = !DILocation(line: 366, column: 2, scope: !7064)
!7078 = !DILocation(line: 367, column: 3, scope: !7059)
!7079 = !DILocation(line: 367, column: 8, scope: !7059)
!7080 = !DILocation(line: 367, column: 14, scope: !7059)
!7081 = !DILocation(line: 372, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 372, column: 6)
!7083 = !DILocation(line: 372, column: 13, scope: !7082)
!7084 = !DILocation(line: 372, column: 6, scope: !6997)
!7085 = !DILocation(line: 373, column: 21, scope: !7082)
!7086 = !DILocation(line: 373, column: 26, scope: !7082)
!7087 = !DILocation(line: 373, column: 33, scope: !7082)
!7088 = !DILocation(line: 373, column: 37, scope: !7082)
!7089 = !DILocation(line: 373, column: 3, scope: !7082)
!7090 = !DILocation(line: 373, column: 8, scope: !7082)
!7091 = !DILocation(line: 373, column: 15, scope: !7082)
!7092 = !DILocation(line: 373, column: 19, scope: !7082)
!7093 = !DILocation(line: 374, column: 13, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 374, column: 11)
!7095 = !DILocation(line: 374, column: 20, scope: !7094)
!7096 = !DILocation(line: 374, column: 11, scope: !7082)
!7097 = !DILocation(line: 375, column: 21, scope: !7094)
!7098 = !DILocation(line: 375, column: 26, scope: !7094)
!7099 = !DILocation(line: 375, column: 33, scope: !7094)
!7100 = !DILocation(line: 375, column: 37, scope: !7094)
!7101 = !DILocation(line: 375, column: 3, scope: !7094)
!7102 = !DILocation(line: 375, column: 8, scope: !7094)
!7103 = !DILocation(line: 375, column: 15, scope: !7094)
!7104 = !DILocation(line: 375, column: 19, scope: !7094)
!7105 = !DILocation(line: 377, column: 3, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7107, file: !3, line: 377, column: 3)
!7107 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 376, column: 7)
!7108 = !DILocation(line: 377, column: 3, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7106, file: !3, line: 377, column: 3)
!7110 = !DILocation(line: 378, column: 3, scope: !7107)
!7111 = !DILocation(line: 381, column: 6, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 381, column: 6)
!7113 = !DILocation(line: 381, column: 11, scope: !7112)
!7114 = !DILocation(line: 381, column: 6, scope: !6997)
!7115 = !DILocation(line: 382, column: 3, scope: !7112)
!7116 = !DILocation(line: 382, column: 8, scope: !7112)
!7117 = !DILocation(line: 382, column: 19, scope: !7112)
!7118 = !DILocation(line: 384, column: 2, scope: !6997)
!7119 = !DILocation(line: 384, column: 7, scope: !6997)
!7120 = !DILocation(line: 384, column: 14, scope: !6997)
!7121 = !DILocation(line: 384, column: 20, scope: !6997)
!7122 = !DILocation(line: 385, column: 2, scope: !6997)
!7123 = !DILocation(line: 385, column: 7, scope: !6997)
!7124 = !DILocation(line: 385, column: 12, scope: !6997)
!7125 = !DILocation(line: 385, column: 23, scope: !6997)
!7126 = !DILocation(line: 385, column: 29, scope: !6997)
!7127 = !DILocation(line: 385, column: 34, scope: !6997)
!7128 = !DILocation(line: 390, column: 9, scope: !6997)
!7129 = !DILocation(line: 390, column: 20, scope: !6997)
!7130 = !DILocation(line: 390, column: 2, scope: !6997)
!7131 = !DILocation(line: 392, column: 2, scope: !6997)
!7132 = !DILocation(line: 392, column: 7, scope: !6997)
!7133 = !DILocation(line: 392, column: 12, scope: !6997)
!7134 = !DILocation(line: 392, column: 23, scope: !6997)
!7135 = !DILocation(line: 393, column: 8, scope: !7136)
!7136 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 393, column: 6)
!7137 = !DILocation(line: 393, column: 15, scope: !7136)
!7138 = !DILocation(line: 393, column: 6, scope: !6997)
!7139 = !DILocation(line: 394, column: 3, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7141, file: !3, line: 394, column: 3)
!7141 = distinct !DILexicalBlock(scope: !7136, file: !3, line: 393, column: 30)
!7142 = !DILocation(line: 394, column: 3, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7140, file: !3, line: 394, column: 3)
!7144 = !DILocation(line: 395, column: 3, scope: !7141)
!7145 = !DILocation(line: 398, column: 24, scope: !6997)
!7146 = !DILocation(line: 398, column: 11, scope: !6997)
!7147 = !DILocation(line: 398, column: 9, scope: !6997)
!7148 = !DILocation(line: 400, column: 6, scope: !7149)
!7149 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 400, column: 6)
!7150 = !DILocation(line: 400, column: 11, scope: !7149)
!7151 = !DILocation(line: 400, column: 6, scope: !6997)
!7152 = !DILocation(line: 401, column: 3, scope: !7149)
!7153 = !DILocation(line: 401, column: 8, scope: !7149)
!7154 = !DILocation(line: 401, column: 19, scope: !7149)
!7155 = !DILocation(line: 403, column: 9, scope: !6997)
!7156 = !DILocation(line: 403, column: 2, scope: !6997)
!7157 = !DILocation(line: 404, column: 1, scope: !6997)
!7158 = !DISubprogram(name: "cb_alloc", scope: !4957, file: !4957, line: 93, type: !4924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7159 = distinct !DISubprogram(name: "socket_early_resume", scope: !3, file: !3, line: 470, type: !4924, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7160)
!7160 = !{!7161}
!7161 = !DILocalVariable(name: "skt", arg: 1, scope: !7159, file: !3, line: 470, type: !4094)
!7162 = !DILocation(line: 470, column: 54, scope: !7159)
!7163 = !DILocation(line: 472, column: 14, scope: !7159)
!7164 = !DILocation(line: 472, column: 19, scope: !7159)
!7165 = !DILocation(line: 472, column: 2, scope: !7159)
!7166 = !DILocation(line: 473, column: 2, scope: !7159)
!7167 = !DILocation(line: 473, column: 7, scope: !7159)
!7168 = !DILocation(line: 473, column: 16, scope: !7159)
!7169 = !DILocation(line: 474, column: 2, scope: !7159)
!7170 = !DILocation(line: 474, column: 7, scope: !7159)
!7171 = !DILocation(line: 474, column: 12, scope: !7159)
!7172 = !DILocation(line: 474, column: 17, scope: !7159)
!7173 = !DILocation(line: 475, column: 2, scope: !7159)
!7174 = !DILocation(line: 475, column: 7, scope: !7159)
!7175 = !DILocation(line: 475, column: 12, scope: !7159)
!7176 = !DILocation(line: 475, column: 23, scope: !7159)
!7177 = !DILocation(line: 475, column: 29, scope: !7159)
!7178 = !DILocation(line: 475, column: 34, scope: !7159)
!7179 = !DILocation(line: 476, column: 6, scope: !7180)
!7180 = distinct !DILexicalBlock(scope: !7159, file: !3, line: 476, column: 6)
!7181 = !DILocation(line: 476, column: 11, scope: !7180)
!7182 = !DILocation(line: 476, column: 17, scope: !7180)
!7183 = !DILocation(line: 476, column: 6, scope: !7159)
!7184 = !DILocation(line: 477, column: 37, scope: !7180)
!7185 = !DILocation(line: 477, column: 42, scope: !7180)
!7186 = !DILocation(line: 477, column: 24, scope: !7180)
!7187 = !DILocation(line: 477, column: 3, scope: !7180)
!7188 = !DILocation(line: 477, column: 8, scope: !7180)
!7189 = !DILocation(line: 477, column: 22, scope: !7180)
!7190 = !DILocation(line: 478, column: 2, scope: !7159)
!7191 = !DILocation(line: 478, column: 7, scope: !7159)
!7192 = !DILocation(line: 478, column: 13, scope: !7159)
!7193 = !DILocation(line: 479, column: 16, scope: !7159)
!7194 = !DILocation(line: 479, column: 21, scope: !7159)
!7195 = !DILocation(line: 479, column: 2, scope: !7159)
!7196 = !DILocation(line: 480, column: 2, scope: !7159)
!7197 = distinct !DISubprogram(name: "kasan_check_write", scope: !7198, file: !7198, line: 44, type: !7199, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7201)
!7198 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7199 = !DISubroutineType(types: !7200)
!7200 = !{!1453, !6880, !7}
!7201 = !{!7202, !7203}
!7202 = !DILocalVariable(name: "p", arg: 1, scope: !7197, file: !7198, line: 44, type: !6880)
!7203 = !DILocalVariable(name: "size", arg: 2, scope: !7197, file: !7198, line: 44, type: !7)
!7204 = !DILocation(line: 44, column: 59, scope: !7197)
!7205 = !DILocation(line: 44, column: 75, scope: !7197)
!7206 = !DILocation(line: 46, column: 2, scope: !7197)
!7207 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7208, file: !7208, line: 229, type: !7209, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7211)
!7208 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7209 = !DISubroutineType(types: !7210)
!7210 = !{null, !6880, !299, !109}
!7211 = !{!7212, !7213, !7214}
!7212 = !DILocalVariable(name: "ptr", arg: 1, scope: !7207, file: !7208, line: 229, type: !6880)
!7213 = !DILocalVariable(name: "size", arg: 2, scope: !7207, file: !7208, line: 229, type: !299)
!7214 = !DILocalVariable(name: "type", arg: 3, scope: !7207, file: !7208, line: 230, type: !109)
!7215 = !DILocation(line: 229, column: 60, scope: !7207)
!7216 = !DILocation(line: 229, column: 72, scope: !7207)
!7217 = !DILocation(line: 230, column: 15, scope: !7207)
!7218 = !DILocation(line: 230, column: 23, scope: !7207)
!7219 = !DILocation(line: 112, column: 2, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !5284, file: !5285, line: 112, column: 2)
!7221 = !DILocation(line: 112, column: 2, scope: !5284)
!7222 = !DILocation(line: 113, column: 1, scope: !5284)
!7223 = distinct !DISubprogram(name: "freezing", scope: !6657, file: !6657, line: 34, type: !7224, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7226)
!7224 = !DISubroutineType(types: !7225)
!7225 = !{!1453, !961}
!7226 = !{!7227, !7228}
!7227 = !DILocalVariable(name: "p", arg: 1, scope: !7223, file: !6657, line: 34, type: !961)
!7228 = !DILocalVariable(name: "branch", scope: !7229, file: !6657, line: 36, type: !1453)
!7229 = distinct !DILexicalBlock(scope: !7230, file: !6657, line: 36, column: 6)
!7230 = distinct !DILexicalBlock(scope: !7223, file: !6657, line: 36, column: 6)
!7231 = !DILocation(line: 34, column: 49, scope: !7223)
!7232 = !DILocation(line: 36, column: 6, scope: !7229)
!7233 = !DILocation(line: 36, column: 6, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7235, file: !6657, line: 36, column: 6)
!7235 = distinct !DILexicalBlock(scope: !7229, file: !6657, line: 36, column: 6)
!7236 = !{i8 0, i8 2}
!7237 = !DILocation(line: 36, column: 6, scope: !7235)
!7238 = !DILocation(line: 36, column: 6, scope: !7230)
!7239 = !DILocation(line: 36, column: 6, scope: !7223)
!7240 = !DILocation(line: 37, column: 29, scope: !7230)
!7241 = !DILocation(line: 37, column: 10, scope: !7230)
!7242 = !DILocation(line: 37, column: 3, scope: !7230)
!7243 = !DILocation(line: 39, column: 2, scope: !7223)
!7244 = !DILocation(line: 40, column: 1, scope: !7223)
!7245 = distinct !DISubprogram(name: "debug_check_no_locks_held", scope: !7246, file: !7246, line: 70, type: !2509, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7246 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!7247 = !DILocation(line: 72, column: 1, scope: !7245)
!7248 = !DISubprogram(name: "__refrigerator", scope: !6657, file: !6657, line: 45, type: !7249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7249 = !DISubroutineType(types: !7250)
!7250 = !{!1453, !1453}
!7251 = distinct !DISubprogram(name: "arch_static_branch", scope: !7252, file: !7252, line: 25, type: !7253, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7267)
!7252 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7253 = !DISubroutineType(types: !7254)
!7254 = !{!1453, !7255, !1453}
!7255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7256, size: 64)
!7256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4057, line: 85, size: 128, elements: !7257)
!7257 = !{!7258, !7259}
!7258 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7256, file: !4057, line: 86, baseType: !202, size: 32)
!7259 = !DIDerivedType(tag: DW_TAG_member, scope: !7256, file: !4057, line: 101, baseType: !7260, size: 64, offset: 64)
!7260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7256, file: !4057, line: 101, size: 64, elements: !7261)
!7261 = !{!7262, !7263, !7264}
!7262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7260, file: !4057, line: 102, baseType: !302, size: 64)
!7263 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7260, file: !4057, line: 103, baseType: !4055, size: 64)
!7264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7260, file: !4057, line: 104, baseType: !7265, size: 64)
!7265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7266, size: 64)
!7266 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4057, line: 104, flags: DIFlagFwdDecl)
!7267 = !{!7268, !7269, !7270}
!7268 = !DILocalVariable(name: "key", arg: 1, scope: !7251, file: !7252, line: 25, type: !7255)
!7269 = !DILocalVariable(name: "branch", arg: 2, scope: !7251, file: !7252, line: 25, type: !1453)
!7270 = !DILabel(scope: !7251, name: "l_yes", file: !7252, line: 33)
!7271 = !DILocation(line: 25, column: 67, scope: !7251)
!7272 = !DILocation(line: 25, column: 77, scope: !7251)
!7273 = !DILocation(line: 30, column: 13, scope: !7251)
!7274 = !DILocation(line: 30, column: 28, scope: !7251)
!7275 = !DILocation(line: 30, column: 26, scope: !7251)
!7276 = !DILocation(line: 27, column: 2, scope: !7251)
!7277 = !{i64 660472, i64 660516, i64 2148145199, i64 2148145220, i64 2148145246, i64 2148145279, i64 2148145313, i64 2148145337}
!7278 = !DILocation(line: 32, column: 2, scope: !7251)
!7279 = !DILocation(line: 33, column: 1, scope: !7251)
!7280 = !DILocation(line: 34, column: 2, scope: !7251)
!7281 = !DILocation(line: 35, column: 1, scope: !7251)
!7282 = !DISubprogram(name: "freezing_slow_path", scope: !6657, file: !6657, line: 29, type: !7224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7283 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6062, file: !6062, line: 43, type: !7284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7284 = !DISubroutineType(types: !7285)
!7285 = !{null, !5606, !302}
!7286 = !DISubprogram(name: "__bad_udelay", scope: !7287, file: !7287, line: 6, type: !2509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7287 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!7288 = !DISubprogram(name: "__const_udelay", scope: !7287, file: !7287, line: 11, type: !7289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7289 = !DISubroutineType(types: !7290)
!7290 = !{null, !302}
!7291 = !DISubprogram(name: "__udelay", scope: !7287, file: !7287, line: 9, type: !7289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7292 = !DISubprogram(name: "add_uevent_var", scope: !168, file: !168, line: 220, type: !7293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7293 = !DISubroutineType(types: !7294)
!7294 = !{!109, !247, !171, null}
!7295 = distinct !DISubprogram(name: "pcmcia_socket_dev_suspend_noirq", scope: !3, file: !3, line: 849, type: !4260, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7296)
!7296 = !{!7297}
!7297 = !DILocalVariable(name: "dev", arg: 1, scope: !7295, file: !3, line: 849, type: !4222)
!7298 = !DILocation(line: 849, column: 59, scope: !7295)
!7299 = !DILocation(line: 851, column: 24, scope: !7295)
!7300 = !DILocation(line: 851, column: 9, scope: !7295)
!7301 = !DILocation(line: 851, column: 2, scope: !7295)
!7302 = distinct !DISubprogram(name: "pcmcia_socket_dev_resume_noirq", scope: !3, file: !3, line: 854, type: !4260, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7303)
!7303 = !{!7304}
!7304 = !DILocalVariable(name: "dev", arg: 1, scope: !7302, file: !3, line: 854, type: !4222)
!7305 = !DILocation(line: 854, column: 58, scope: !7302)
!7306 = !DILocation(line: 856, column: 24, scope: !7302)
!7307 = !DILocation(line: 856, column: 9, scope: !7302)
!7308 = !DILocation(line: 856, column: 2, scope: !7302)
!7309 = !DISubprogram(name: "class_register", scope: !4638, file: !4638, line: 80, type: !7310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{!109, !4635}
