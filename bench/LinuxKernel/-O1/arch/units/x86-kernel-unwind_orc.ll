; ModuleID = 'arch/x86/kernel/unwind_orc.c'
source_filename = "arch/x86/kernel/unwind_orc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unwind_get_return_address: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unwind_get_return_address ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unwind_next_frame: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unwind_next_frame ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___unwind_start: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __unwind_start ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.orc_entry = type { i16, i16, i16 }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.unwind_state = type { %struct.stack_info, i64, ptr, i32, ptr, i8, i8, i8, i64, i64, i64, ptr, ptr }
%struct.stack_info = type { i32, ptr, ptr, ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.13, i64, i64, %union.anon.14 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
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
%struct.inactive_task_frame = type { i64, i64, i64, i64, i64, i64, i64 }

@orc_header = internal constant [20 x i8] c"\FE]2\BFX\1B\D6;,\A9\A5\C6[\A5\A6%\EA\B3\FE$", section ".orc_header", align 4, !dbg !0
@__setup_str_unwind_debug_cmdline = internal constant [13 x i8] c"unwind_debug\00", section ".init.rodata", align 1, !dbg !4395
@__setup_unwind_debug_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_unwind_debug_cmdline, ptr @unwind_debug_cmdline, i32 1 }, section ".init.setup", align 8, !dbg !4102
@.str = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/unwind_orc.c\00", align 1, !dbg !4113
@sort_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sort_mutex, i64 16), ptr getelementptr (i8, ptr @sort_mutex, i64 16) } }, align 8, !dbg !4400
@cur_orc_ip_table = internal global ptr @__start_orc_unwind_ip, align 8, !dbg !4402
@cur_orc_table = internal global ptr @__start_orc_unwind, align 8, !dbg !4404
@__stop_orc_unwind_ip = external dso_local global [0 x i32], align 4
@__start_orc_unwind_ip = external dso_local global [0 x i32], align 4
@__stop_orc_unwind = external dso_local global [0 x %struct.orc_entry], align 1
@__start_orc_unwind = external dso_local global [0 x %struct.orc_entry], align 1
@unwind_init.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4118
@.str.1 = private unnamed_addr constant [76 x i8] c"\014WARNING: WARNING: Bad or missing .orc_unwind table.  Disabling unwinder.\0A\00", align 1, !dbg !4154
@orc_lookup_end = external dso_local global [0 x i32], align 4
@orc_lookup = external dso_local global [0 x i32], align 4
@lookup_num_blocks = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !4393
@_stext = external dso_local global [0 x i8], align 1
@unwind_init.__already_done.2 = internal global i8 0, section ".data..once", align 1, !dbg !4159
@.str.3 = private unnamed_addr constant [69 x i8] c"\014WARNING: WARNING: Corrupt .orc_unwind table.  Disabling unwinder.\0A\00", align 1, !dbg !4161
@_etext = external dso_local global [0 x i8], align 1
@unwind_init.__already_done.4 = internal global i8 0, section ".data..once", align 1, !dbg !4166
@orc_init = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !4389
@__UNIQUE_ID___addressable_unwind_get_return_address304 = internal global ptr @unwind_get_return_address, section ".discard.addressable", align 8, !dbg !4168
@unwind_next_frame.dumped_before = internal global i8 0, align 1, !dbg !4170
@unwind_next_frame.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4308
@.str.5 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing R10 value at %pB\0A\00", align 1, !dbg !4310
@unwind_debug = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !4391
@unwind_next_frame.dumped_before.6 = internal global i8 0, align 1, !dbg !4315
@unwind_next_frame.__already_done.7 = internal global i8 0, section ".data..once", align 1, !dbg !4317
@.str.8 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing R13 value at %pB\0A\00", align 1, !dbg !4319
@unwind_next_frame.dumped_before.9 = internal global i8 0, align 1, !dbg !4321
@unwind_next_frame.__already_done.10 = internal global i8 0, section ".data..once", align 1, !dbg !4323
@.str.11 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing RDI value at %pB\0A\00", align 1, !dbg !4325
@unwind_next_frame.dumped_before.12 = internal global i8 0, align 1, !dbg !4327
@unwind_next_frame.__already_done.13 = internal global i8 0, section ".data..once", align 1, !dbg !4329
@.str.14 = private unnamed_addr constant [36 x i8] c"\014WARNING: missing DX value at %pB\0A\00", align 1, !dbg !4331
@unwind_next_frame.__already_done.15 = internal global i8 0, section ".data..once", align 1, !dbg !4336
@.str.16 = private unnamed_addr constant [42 x i8] c"\014WARNING: unknown SP base reg %d at %pB\0A\00", align 1, !dbg !4338
@unwind_next_frame.dumped_before.17 = internal global i8 0, align 1, !dbg !4343
@unwind_next_frame.__already_done.18 = internal global i8 0, section ".data..once", align 1, !dbg !4345
@.str.19 = private unnamed_addr constant [42 x i8] c"\014WARNING: can't access registers at %pB\0A\00", align 1, !dbg !4347
@unwind_next_frame.dumped_before.20 = internal global i8 0, align 1, !dbg !4349
@unwind_next_frame.__already_done.21 = internal global i8 0, section ".data..once", align 1, !dbg !4351
@.str.22 = private unnamed_addr constant [47 x i8] c"\014WARNING: can't access iret registers at %pB\0A\00", align 1, !dbg !4353
@unwind_next_frame.__already_done.23 = internal global i8 0, section ".data..once", align 1, !dbg !4358
@.str.24 = private unnamed_addr constant [53 x i8] c"\014WARNING: unknown .orc_unwind entry type %d at %pB\0A\00", align 1, !dbg !4360
@unwind_next_frame.__already_done.25 = internal global i8 0, section ".data..once", align 1, !dbg !4365
@.str.26 = private unnamed_addr constant [46 x i8] c"\014WARNING: unknown BP base reg %d for ip %pB\0A\00", align 1, !dbg !4367
@unwind_next_frame.dumped_before.27 = internal global i8 0, align 1, !dbg !4372
@unwind_next_frame.__already_done.28 = internal global i8 0, section ".data..once", align 1, !dbg !4374
@.str.29 = private unnamed_addr constant [55 x i8] c"\014WARNING: stack going in the wrong direction? at %pB\0A\00", align 1, !dbg !4376
@unwind_next_frame.__UNIQUE_ID___addressable___SCK__preempt_schedule313 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4381
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@unwind_next_frame.__UNIQUE_ID___addressable___SCK__preempt_schedule314 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4383
@__UNIQUE_ID___addressable_unwind_next_frame315 = internal global ptr @unwind_next_frame, section ".discard.addressable", align 8, !dbg !4385
@__UNIQUE_ID___addressable___unwind_start318 = internal global ptr @__unwind_start, section ".discard.addressable", align 8, !dbg !4387
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@orc_find.orc = internal global ptr null, align 8, !dbg !4406
@orc_find.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4434
@.str.30 = private unnamed_addr constant [58 x i8] c"\014WARNING: WARNING: bad lookup idx: idx=%u num=%u ip=%pB\0A\00", align 1, !dbg !4436
@orc_find.__already_done.31 = internal global i8 0, section ".data..once", align 1, !dbg !4441
@.str.32 = private unnamed_addr constant [77 x i8] c"\014WARNING: WARNING: bad lookup value: idx=%u num=%u start=%u stop=%u ip=%pB\0A\00", align 1, !dbg !4443
@null_orc_entry = internal global { i16, i16, i8, i8 } { i16 8, i16 0, i8 5, i8 2 }, align 1, !dbg !4448
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@orc_fp_entry = internal global { i16, i16, i8, i8 } { i16 16, i16 -16, i8 20, i8 2 }, align 1, !dbg !4450
@unwind_dump.dumped_before = internal global i8 0, align 1, !dbg !4452
@.str.35 = private unnamed_addr constant [57 x i8] c"unwind stack type:%d next_sp:%p mask:0x%lx graph_idx:%d\0A\00", align 1, !dbg !4463
@.str.36 = private unnamed_addr constant [20 x i8] c"%0*lx: %0*lx (%pB)\0A\00", align 1, !dbg !4468
@llvm.compiler.used = appending global [7 x ptr] [ptr @orc_header, ptr @__setup_unwind_debug_cmdline, ptr @__UNIQUE_ID___addressable_unwind_get_return_address304, ptr @unwind_next_frame.__UNIQUE_ID___addressable___SCK__preempt_schedule313, ptr @unwind_next_frame.__UNIQUE_ID___addressable___SCK__preempt_schedule314, ptr @__UNIQUE_ID___addressable_unwind_next_frame315, ptr @__UNIQUE_ID___addressable___unwind_start318], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @unwind_debug_cmdline(ptr noundef %str) #0 section ".init.text" align 16 !dbg !4483 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store i8 1, ptr @unwind_debug, align 1, !dbg !4487
  ret i32 0, !dbg !4488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unwind_module_init(ptr noundef %mod, ptr noundef %_orc_ip, i64 noundef %orc_ip_size, ptr noundef %_orc, i64 noundef %orc_size) #1 align 16 !dbg !4489 {
entry:
  %mod.addr = alloca ptr, align 8
  %_orc_ip.addr = alloca ptr, align 8
  %orc_ip_size.addr = alloca i64, align 8
  %_orc.addr = alloca ptr, align 8
  %orc_size.addr = alloca i64, align 8
  %orc_ip = alloca ptr, align 8
  %orc = alloca ptr, align 8
  %num_entries = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4493, metadata !DIExpression()), !dbg !4506
  store ptr %_orc_ip, ptr %_orc_ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_orc_ip.addr, metadata !4494, metadata !DIExpression()), !dbg !4507
  store i64 %orc_ip_size, ptr %orc_ip_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orc_ip_size.addr, metadata !4495, metadata !DIExpression()), !dbg !4508
  store ptr %_orc, ptr %_orc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_orc.addr, metadata !4496, metadata !DIExpression()), !dbg !4509
  store i64 %orc_size, ptr %orc_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orc_size.addr, metadata !4497, metadata !DIExpression()), !dbg !4510
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_ip) #15, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %orc_ip, metadata !4498, metadata !DIExpression()), !dbg !4512
  %0 = load ptr, ptr %_orc_ip.addr, align 8, !dbg !4513
  store ptr %0, ptr %orc_ip, align 8, !dbg !4512
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc) #15, !dbg !4514
  call void @llvm.dbg.declare(metadata ptr %orc, metadata !4499, metadata !DIExpression()), !dbg !4515
  %1 = load ptr, ptr %_orc.addr, align 8, !dbg !4516
  store ptr %1, ptr %orc, align 8, !dbg !4515
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_entries) #15, !dbg !4517
  call void @llvm.dbg.declare(metadata ptr %num_entries, metadata !4500, metadata !DIExpression()), !dbg !4518
  %2 = load i64, ptr %orc_ip_size.addr, align 8, !dbg !4519
  %div = udiv i64 %2, 4, !dbg !4520
  %conv = trunc i64 %div to i32, !dbg !4519
  store i32 %conv, ptr %num_entries, align 4, !dbg !4518
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4521
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4501, metadata !DIExpression()), !dbg !4521
  %3 = load i64, ptr %orc_ip_size.addr, align 8, !dbg !4521
  %rem = urem i64 %3, 4, !dbg !4521
  %cmp = icmp ne i64 %rem, 0, !dbg !4521
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4521

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %orc_size.addr, align 8, !dbg !4521
  %rem2 = urem i64 %4, 6, !dbg !4521
  %cmp3 = icmp ne i64 %rem2, 0, !dbg !4521
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !4521

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr %num_entries, align 4, !dbg !4521
  %conv5 = zext i32 %5 to i64, !dbg !4521
  %6 = load i64, ptr %orc_size.addr, align 8, !dbg !4521
  %div6 = udiv i64 %6, 6, !dbg !4521
  %cmp7 = icmp ne i64 %conv5, %div6, !dbg !4521
  br label %lor.end, !dbg !4521

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lnot = xor i1 %7, true, !dbg !4521
  %lnot9 = xor i1 %lnot, true, !dbg !4521
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4521
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4521
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4522
  %tobool = icmp ne i32 %8, 0, !dbg !4522
  %lnot10 = xor i1 %tobool, true, !dbg !4522
  %lnot12 = xor i1 %lnot10, true, !dbg !4522
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4522
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !4522
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4522
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4522
  br i1 %tobool15, label %if.then, label %if.end, !dbg !4521

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4522

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4523
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4503, metadata !DIExpression()), !dbg !4523
  store i32 2307, ptr %__flags, align 4, !dbg !4523
  br label %do.body16, !dbg !4523

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !4524

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !4524

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !4523

do.body17:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !4526
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 298, i32 %9, i64 12) #15, !dbg !4526, !srcloc !4528
  br label %do.cond18, !dbg !4526

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4526

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !4523

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !4529

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4529

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4522
  br label %do.cond23, !dbg !4523

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !4523

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !4523

if.end:                                           ; preds = %do.end24, %lor.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4521
  %tobool25 = icmp ne i32 %10, 0, !dbg !4521
  %lnot26 = xor i1 %tobool25, true, !dbg !4521
  %lnot28 = xor i1 %lnot26, true, !dbg !4521
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4521
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4521
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !4521
  store i64 %expval31, ptr %tmp, align 8, !dbg !4522
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4531
  %11 = load i64, ptr %tmp, align 8, !dbg !4521
  call void @mutex_lock(ptr noundef @sort_mutex) #16, !dbg !4532
  %12 = load ptr, ptr %orc_ip, align 8, !dbg !4533
  store ptr %12, ptr @cur_orc_ip_table, align 8, !dbg !4534
  %13 = load ptr, ptr %orc, align 8, !dbg !4535
  store ptr %13, ptr @cur_orc_table, align 8, !dbg !4536
  %14 = load ptr, ptr %orc_ip, align 8, !dbg !4537
  %15 = load i32, ptr %num_entries, align 4, !dbg !4538
  %conv32 = zext i32 %15 to i64, !dbg !4538
  call void @sort(ptr noundef %14, i64 noundef %conv32, i64 noundef 4, ptr noundef @orc_sort_cmp, ptr noundef @orc_sort_swap) #16, !dbg !4539
  call void @mutex_unlock(ptr noundef @sort_mutex) #16, !dbg !4540
  %16 = load ptr, ptr %orc_ip, align 8, !dbg !4541
  %17 = load ptr, ptr %mod.addr, align 8, !dbg !4542
  %arch = getelementptr inbounds %struct.module, ptr %17, i32 0, i32 23, !dbg !4543
  %orc_unwind_ip = getelementptr inbounds %struct.mod_arch_specific, ptr %arch, i32 0, i32 1, !dbg !4544
  store ptr %16, ptr %orc_unwind_ip, align 8, !dbg !4545
  %18 = load ptr, ptr %orc, align 8, !dbg !4546
  %19 = load ptr, ptr %mod.addr, align 8, !dbg !4547
  %arch33 = getelementptr inbounds %struct.module, ptr %19, i32 0, i32 23, !dbg !4548
  %orc_unwind = getelementptr inbounds %struct.mod_arch_specific, ptr %arch33, i32 0, i32 2, !dbg !4549
  store ptr %18, ptr %orc_unwind, align 8, !dbg !4550
  %20 = load i32, ptr %num_entries, align 4, !dbg !4551
  %21 = load ptr, ptr %mod.addr, align 8, !dbg !4552
  %arch34 = getelementptr inbounds %struct.module, ptr %21, i32 0, i32 23, !dbg !4553
  %num_orcs = getelementptr inbounds %struct.mod_arch_specific, ptr %arch34, i32 0, i32 0, !dbg !4554
  store i32 %20, ptr %num_orcs, align 8, !dbg !4555
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_entries) #15, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc) #15, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_ip) #15, !dbg !4556
  ret void, !dbg !4556
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4557 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4561 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @orc_sort_cmp(ptr noundef %_a, ptr noundef %_b) #1 align 16 !dbg !4573 {
entry:
  %retval = alloca i32, align 4
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %orc_a = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a_val = alloca i64, align 8
  %b_val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !4575, metadata !DIExpression()), !dbg !4583
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !4576, metadata !DIExpression()), !dbg !4584
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_a) #15, !dbg !4585
  call void @llvm.dbg.declare(metadata ptr %orc_a, metadata !4577, metadata !DIExpression()), !dbg !4586
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %a, metadata !4578, metadata !DIExpression()), !dbg !4588
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !4589
  store ptr %0, ptr %a, align 8, !dbg !4588
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %b, metadata !4580, metadata !DIExpression()), !dbg !4590
  %1 = load ptr, ptr %_b.addr, align 8, !dbg !4591
  store ptr %1, ptr %b, align 8, !dbg !4590
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_val) #15, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %a_val, metadata !4581, metadata !DIExpression()), !dbg !4593
  %2 = load ptr, ptr %a, align 8, !dbg !4594
  %call = call i64 @orc_ip(ptr noundef %2) #16, !dbg !4595
  store i64 %call, ptr %a_val, align 8, !dbg !4593
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_val) #15, !dbg !4596
  call void @llvm.dbg.declare(metadata ptr %b_val, metadata !4582, metadata !DIExpression()), !dbg !4597
  %3 = load ptr, ptr %b, align 8, !dbg !4598
  %call1 = call i64 @orc_ip(ptr noundef %3) #16, !dbg !4599
  store i64 %call1, ptr %b_val, align 8, !dbg !4597
  %4 = load i64, ptr %a_val, align 8, !dbg !4600
  %5 = load i64, ptr %b_val, align 8, !dbg !4602
  %cmp = icmp ugt i64 %4, %5, !dbg !4603
  br i1 %cmp, label %if.then, label %if.end, !dbg !4604

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4605

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %a_val, align 8, !dbg !4606
  %7 = load i64, ptr %b_val, align 8, !dbg !4608
  %cmp2 = icmp ult i64 %6, %7, !dbg !4609
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4610

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !4611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4611

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr @cur_orc_table, align 8, !dbg !4612
  %9 = load ptr, ptr %a, align 8, !dbg !4613
  %10 = load ptr, ptr @cur_orc_ip_table, align 8, !dbg !4614
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !4615
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !4615
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4615
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !4615
  %add.ptr = getelementptr %struct.orc_entry, ptr %8, i64 %sub.ptr.div, !dbg !4616
  store ptr %add.ptr, ptr %orc_a, align 8, !dbg !4617
  %11 = load ptr, ptr %orc_a, align 8, !dbg !4618
  %type = getelementptr inbounds %struct.orc_entry, ptr %11, i32 0, i32 2, !dbg !4619
  %bf.load = load i16, ptr %type, align 1, !dbg !4619
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !4619
  %bf.clear = and i16 %bf.lshr, 7, !dbg !4619
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4619
  %cmp5 = icmp eq i32 %bf.cast, 0, !dbg !4620
  %12 = zext i1 %cmp5 to i64, !dbg !4618
  %cond = select i1 %cmp5, i32 -1, i32 1, !dbg !4618
  store i32 %cond, ptr %retval, align 4, !dbg !4621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4621

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_val) #15, !dbg !4622
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_val) #15, !dbg !4622
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !4622
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !4622
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_a) #15, !dbg !4622
  %13 = load i32, ptr %retval, align 4, !dbg !4622
  ret i32 %13, !dbg !4622
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @orc_sort_swap(ptr noundef %_a, ptr noundef %_b, i32 noundef %size) #1 align 16 !dbg !4623 {
entry:
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %orc_a = alloca ptr, align 8
  %orc_b = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %delta = alloca i32, align 4
  %__tmp = alloca %struct.orc_entry, align 1
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !4625, metadata !DIExpression()), !dbg !4636
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !4626, metadata !DIExpression()), !dbg !4637
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4627, metadata !DIExpression()), !dbg !4638
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_a) #15, !dbg !4639
  call void @llvm.dbg.declare(metadata ptr %orc_a, metadata !4628, metadata !DIExpression()), !dbg !4640
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_b) #15, !dbg !4639
  call void @llvm.dbg.declare(metadata ptr %orc_b, metadata !4629, metadata !DIExpression()), !dbg !4641
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %a, metadata !4630, metadata !DIExpression()), !dbg !4643
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !4644
  store ptr %0, ptr %a, align 8, !dbg !4643
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %b, metadata !4631, metadata !DIExpression()), !dbg !4645
  %1 = load ptr, ptr %_b.addr, align 8, !dbg !4646
  store ptr %1, ptr %b, align 8, !dbg !4645
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #15, !dbg !4642
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4632, metadata !DIExpression()), !dbg !4647
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #15, !dbg !4648
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !4633, metadata !DIExpression()), !dbg !4649
  %2 = load ptr, ptr %_b.addr, align 8, !dbg !4650
  %3 = load ptr, ptr %_a.addr, align 8, !dbg !4651
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !4652
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !4652
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4652
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !4650
  store i32 %conv, ptr %delta, align 4, !dbg !4649
  %4 = load ptr, ptr %a, align 8, !dbg !4653
  %5 = load i32, ptr %4, align 4, !dbg !4654
  store i32 %5, ptr %tmp, align 4, !dbg !4655
  %6 = load ptr, ptr %b, align 8, !dbg !4656
  %7 = load i32, ptr %6, align 4, !dbg !4657
  %8 = load i32, ptr %delta, align 4, !dbg !4658
  %add = add i32 %7, %8, !dbg !4659
  %9 = load ptr, ptr %a, align 8, !dbg !4660
  store i32 %add, ptr %9, align 4, !dbg !4661
  %10 = load i32, ptr %tmp, align 4, !dbg !4662
  %11 = load i32, ptr %delta, align 4, !dbg !4663
  %sub = sub i32 %10, %11, !dbg !4664
  %12 = load ptr, ptr %b, align 8, !dbg !4665
  store i32 %sub, ptr %12, align 4, !dbg !4666
  %13 = load ptr, ptr @cur_orc_table, align 8, !dbg !4667
  %14 = load ptr, ptr %a, align 8, !dbg !4668
  %15 = load ptr, ptr @cur_orc_ip_table, align 8, !dbg !4669
  %sub.ptr.lhs.cast1 = ptrtoint ptr %14 to i64, !dbg !4670
  %sub.ptr.rhs.cast2 = ptrtoint ptr %15 to i64, !dbg !4670
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !4670
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub3, 4, !dbg !4670
  %add.ptr = getelementptr %struct.orc_entry, ptr %13, i64 %sub.ptr.div, !dbg !4671
  store ptr %add.ptr, ptr %orc_a, align 8, !dbg !4672
  %16 = load ptr, ptr @cur_orc_table, align 8, !dbg !4673
  %17 = load ptr, ptr %b, align 8, !dbg !4674
  %18 = load ptr, ptr @cur_orc_ip_table, align 8, !dbg !4675
  %sub.ptr.lhs.cast4 = ptrtoint ptr %17 to i64, !dbg !4676
  %sub.ptr.rhs.cast5 = ptrtoint ptr %18 to i64, !dbg !4676
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !4676
  %sub.ptr.div7 = sdiv exact i64 %sub.ptr.sub6, 4, !dbg !4676
  %add.ptr8 = getelementptr %struct.orc_entry, ptr %16, i64 %sub.ptr.div7, !dbg !4677
  store ptr %add.ptr8, ptr %orc_b, align 8, !dbg !4678
  br label %do.body, !dbg !4679

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr %__tmp) #15, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4634, metadata !DIExpression()), !dbg !4680
  %19 = load ptr, ptr %orc_a, align 8, !dbg !4680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %__tmp, ptr align 1 %19, i64 6, i1 false), !dbg !4680
  %20 = load ptr, ptr %orc_a, align 8, !dbg !4680
  %21 = load ptr, ptr %orc_b, align 8, !dbg !4680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 6, i1 false), !dbg !4680
  %22 = load ptr, ptr %orc_b, align 8, !dbg !4680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %__tmp, i64 6, i1 false), !dbg !4680
  call void @llvm.lifetime.end.p0(i64 6, ptr %__tmp) #15, !dbg !4679
  br label %do.cond, !dbg !4680

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4680

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #15, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #15, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_b) #15, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_a) #15, !dbg !4681
  ret void, !dbg !4681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4682 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @unwind_init() #0 section ".init.text" align 16 !dbg !4120 {
entry:
  %orc_ip_size = alloca i64, align 8
  %orc_size = alloca i64, align 8
  %num_entries = alloca i64, align 8
  %orc = alloca ptr, align 8
  %i = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once44 = alloca i8, align 1
  %__ret_cond45 = alloca i8, align 1
  %__ret_once52 = alloca i8, align 1
  %tmp69 = alloca i64, align 8
  %tmp82 = alloca i32, align 4
  %tmp85 = alloca i64, align 8
  %__ret_do_once100 = alloca i8, align 1
  %__ret_cond101 = alloca i8, align 1
  %__ret_once108 = alloca i8, align 1
  %tmp125 = alloca i64, align 8
  %tmp138 = alloca i32, align 4
  %tmp141 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_ip_size) #15, !dbg !4683
  call void @llvm.dbg.declare(metadata ptr %orc_ip_size, metadata !4122, metadata !DIExpression()), !dbg !4684
  store i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind_ip to i64), i64 ptrtoint (ptr @__start_orc_unwind_ip to i64)), ptr %orc_ip_size, align 8, !dbg !4684
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_size) #15, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %orc_size, metadata !4123, metadata !DIExpression()), !dbg !4686
  store i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind to i64), i64 ptrtoint (ptr @__start_orc_unwind to i64)), ptr %orc_size, align 8, !dbg !4686
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_entries) #15, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %num_entries, metadata !4124, metadata !DIExpression()), !dbg !4688
  %0 = load i64, ptr %orc_ip_size, align 8, !dbg !4689
  %div = udiv i64 %0, 4, !dbg !4690
  store i64 %div, ptr %num_entries, align 8, !dbg !4688
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc) #15, !dbg !4691
  call void @llvm.dbg.declare(metadata ptr %orc, metadata !4125, metadata !DIExpression()), !dbg !4692
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4126, metadata !DIExpression()), !dbg !4694
  %1 = load i64, ptr %num_entries, align 8, !dbg !4695
  %tobool = icmp ne i64 %1, 0, !dbg !4695
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4696

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %orc_ip_size, align 8, !dbg !4697
  %rem = urem i64 %2, 4, !dbg !4698
  %cmp = icmp ne i64 %rem, 0, !dbg !4699
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !4700

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %orc_size, align 8, !dbg !4701
  %rem2 = urem i64 %3, 6, !dbg !4702
  %cmp3 = icmp ne i64 %rem2, 0, !dbg !4703
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4704

lor.lhs.false4:                                   ; preds = %lor.lhs.false1
  %4 = load i64, ptr %num_entries, align 8, !dbg !4705
  %5 = load i64, ptr %orc_size, align 8, !dbg !4706
  %div5 = udiv i64 %5, 6, !dbg !4707
  %cmp6 = icmp ne i64 %4, %div5, !dbg !4708
  br i1 %cmp6, label %if.then, label %if.end35, !dbg !4709

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false1, %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4710
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4127, metadata !DIExpression()), !dbg !4710
  store i8 1, ptr %__ret_do_once, align 1, !dbg !4710
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4131, metadata !DIExpression()), !dbg !4711
  %6 = load i8, ptr %__ret_do_once, align 1, !dbg !4711, !range !4712, !noundef !549
  %tobool7 = trunc i8 %6 to i1, !dbg !4711
  %lnot = xor i1 %tobool7, true, !dbg !4711
  %lnot8 = xor i1 %lnot, true, !dbg !4711
  %frombool = zext i1 %lnot8 to i8, !dbg !4711
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !4711
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4134, metadata !DIExpression()), !dbg !4711
  store i8 0, ptr %__ret_once, align 1, !dbg !4711
  %7 = load i8, ptr %__ret_cond, align 1, !dbg !4713, !range !4712, !noundef !549
  %tobool9 = trunc i8 %7 to i1, !dbg !4713
  br i1 %tobool9, label %land.rhs, label %land.end, !dbg !4713

land.rhs:                                         ; preds = %if.then
  %8 = load i8, ptr @unwind_init.__already_done, align 1, !dbg !4713, !range !4712, !noundef !549
  %tobool10 = trunc i8 %8 to i1, !dbg !4713
  %lnot11 = xor i1 %tobool10, true, !dbg !4713
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %lnot11, %land.rhs ], !dbg !4715
  %lnot12 = xor i1 %9, true, !dbg !4713
  %lnot13 = xor i1 %lnot12, true, !dbg !4713
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4713
  %conv = sext i32 %lnot.ext to i64, !dbg !4713
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4713
  %tobool14 = icmp ne i64 %expval, 0, !dbg !4713
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !4711

if.then15:                                        ; preds = %land.end
  store i8 1, ptr @unwind_init.__already_done, align 1, !dbg !4716
  store i8 1, ptr %__ret_once, align 1, !dbg !4716
  br label %if.end, !dbg !4716

if.end:                                           ; preds = %if.then15, %land.end
  %10 = load i8, ptr %__ret_once, align 1, !dbg !4711, !range !4712, !noundef !549
  %tobool16 = trunc i8 %10 to i1, !dbg !4711
  %lnot17 = xor i1 %tobool16, true, !dbg !4711
  %lnot19 = xor i1 %lnot17, true, !dbg !4711
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4711
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4711
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4711
  store i64 %expval22, ptr %tmp, align 8, !dbg !4713
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !4718
  %11 = load i64, ptr %tmp, align 8, !dbg !4711
  %tobool23 = icmp ne i64 %11, 0, !dbg !4718
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !4710

if.then24:                                        ; preds = %if.end
  br label %do.body, !dbg !4719

do.body:                                          ; preds = %if.then24
  br label %do.cond, !dbg !4721

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4721

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.1) #17, !dbg !4719
  store i32 %call, ptr %tmp25, align 4, !dbg !4721
  %12 = load i32, ptr %tmp25, align 4, !dbg !4719
  br label %if.end26, !dbg !4718

if.end26:                                         ; preds = %do.end, %if.end
  %13 = load i8, ptr %__ret_do_once, align 1, !dbg !4710, !range !4712, !noundef !549
  %tobool28 = trunc i8 %13 to i1, !dbg !4710
  %lnot29 = xor i1 %tobool28, true, !dbg !4710
  %lnot31 = xor i1 %lnot29, true, !dbg !4710
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !4710
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !4710
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !4710
  store i64 %expval34, ptr %tmp27, align 8, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4723
  %14 = load i64, ptr %tmp27, align 8, !dbg !4710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4724

if.end35:                                         ; preds = %lor.lhs.false4
  %sub.ptr.div = sdiv exact i64 sub (i64 ptrtoint (ptr @orc_lookup_end to i64), i64 ptrtoint (ptr @orc_lookup to i64)), 4, !dbg !4725
  %conv36 = trunc i64 %sub.ptr.div to i32, !dbg !4726
  store i32 %conv36, ptr @lookup_num_blocks, align 4, !dbg !4727
  store i32 0, ptr %i, align 4, !dbg !4728
  br label %for.cond, !dbg !4729

for.cond:                                         ; preds = %for.inc, %if.end35
  %15 = load i32, ptr %i, align 4, !dbg !4730
  %16 = load i32, ptr @lookup_num_blocks, align 4, !dbg !4731
  %sub = sub i32 %16, 1, !dbg !4732
  %cmp37 = icmp ult i32 %15, %sub, !dbg !4733
  br i1 %cmp37, label %for.body, label %for.end, !dbg !4734

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %num_entries, align 8, !dbg !4735
  %conv39 = trunc i64 %17 to i32, !dbg !4735
  %18 = load i32, ptr %i, align 4, !dbg !4736
  %mul = mul i32 256, %18, !dbg !4737
  %conv40 = sext i32 %mul to i64, !dbg !4738
  %add = add i64 ptrtoint (ptr @_stext to i64), %conv40, !dbg !4739
  %call41 = call ptr @__orc_find(ptr noundef @__start_orc_unwind_ip, ptr noundef @__start_orc_unwind, i32 noundef %conv39, i64 noundef %add) #16, !dbg !4740
  store ptr %call41, ptr %orc, align 8, !dbg !4741
  %19 = load ptr, ptr %orc, align 8, !dbg !4742
  %tobool42 = icmp ne ptr %19, null, !dbg !4742
  br i1 %tobool42, label %if.end93, label %if.then43, !dbg !4743

if.then43:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once44) #15, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once44, metadata !4135, metadata !DIExpression()), !dbg !4744
  store i8 1, ptr %__ret_do_once44, align 1, !dbg !4744
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond45) #15, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %__ret_cond45, metadata !4142, metadata !DIExpression()), !dbg !4745
  %20 = load i8, ptr %__ret_do_once44, align 1, !dbg !4745, !range !4712, !noundef !549
  %tobool46 = trunc i8 %20 to i1, !dbg !4745
  %lnot47 = xor i1 %tobool46, true, !dbg !4745
  %lnot49 = xor i1 %lnot47, true, !dbg !4745
  %frombool51 = zext i1 %lnot49 to i8, !dbg !4745
  store i8 %frombool51, ptr %__ret_cond45, align 1, !dbg !4745
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once52) #15, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %__ret_once52, metadata !4145, metadata !DIExpression()), !dbg !4745
  store i8 0, ptr %__ret_once52, align 1, !dbg !4745
  %21 = load i8, ptr %__ret_cond45, align 1, !dbg !4746, !range !4712, !noundef !549
  %tobool53 = trunc i8 %21 to i1, !dbg !4746
  br i1 %tobool53, label %land.rhs55, label %land.end59, !dbg !4746

land.rhs55:                                       ; preds = %if.then43
  %22 = load i8, ptr @unwind_init.__already_done.2, align 1, !dbg !4746, !range !4712, !noundef !549
  %tobool56 = trunc i8 %22 to i1, !dbg !4746
  %lnot57 = xor i1 %tobool56, true, !dbg !4746
  br label %land.end59

land.end59:                                       ; preds = %land.rhs55, %if.then43
  %23 = phi i1 [ false, %if.then43 ], [ %lnot57, %land.rhs55 ], !dbg !4748
  %lnot60 = xor i1 %23, true, !dbg !4746
  %lnot62 = xor i1 %lnot60, true, !dbg !4746
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !4746
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !4746
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !4746
  %tobool66 = icmp ne i64 %expval65, 0, !dbg !4746
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4745

if.then67:                                        ; preds = %land.end59
  store i8 1, ptr @unwind_init.__already_done.2, align 1, !dbg !4749
  store i8 1, ptr %__ret_once52, align 1, !dbg !4749
  br label %if.end68, !dbg !4749

if.end68:                                         ; preds = %if.then67, %land.end59
  %24 = load i8, ptr %__ret_once52, align 1, !dbg !4745, !range !4712, !noundef !549
  %tobool70 = trunc i8 %24 to i1, !dbg !4745
  %lnot71 = xor i1 %tobool70, true, !dbg !4745
  %lnot73 = xor i1 %lnot71, true, !dbg !4745
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !4745
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !4745
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !4745
  store i64 %expval76, ptr %tmp69, align 8, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once52) #15, !dbg !4751
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond45) #15, !dbg !4751
  %25 = load i64, ptr %tmp69, align 8, !dbg !4745
  %tobool77 = icmp ne i64 %25, 0, !dbg !4751
  br i1 %tobool77, label %if.then78, label %if.end84, !dbg !4744

if.then78:                                        ; preds = %if.end68
  br label %do.body79, !dbg !4752

do.body79:                                        ; preds = %if.then78
  br label %do.cond80, !dbg !4754

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !4754

do.end81:                                         ; preds = %do.cond80
  %call83 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.3) #17, !dbg !4752
  store i32 %call83, ptr %tmp82, align 4, !dbg !4754
  %26 = load i32, ptr %tmp82, align 4, !dbg !4752
  br label %if.end84, !dbg !4751

if.end84:                                         ; preds = %do.end81, %if.end68
  %27 = load i8, ptr %__ret_do_once44, align 1, !dbg !4744, !range !4712, !noundef !549
  %tobool86 = trunc i8 %27 to i1, !dbg !4744
  %lnot87 = xor i1 %tobool86, true, !dbg !4744
  %lnot89 = xor i1 %lnot87, true, !dbg !4744
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !4744
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !4744
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !4744
  store i64 %expval92, ptr %tmp85, align 8, !dbg !4751
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once44) #15, !dbg !4756
  %28 = load i64, ptr %tmp85, align 8, !dbg !4744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4757

if.end93:                                         ; preds = %for.body
  %29 = load ptr, ptr %orc, align 8, !dbg !4758
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i64, !dbg !4759
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @__start_orc_unwind to i64), !dbg !4759
  %sub.ptr.div94 = sdiv exact i64 %sub.ptr.sub, 6, !dbg !4759
  %conv95 = trunc i64 %sub.ptr.div94 to i32, !dbg !4758
  %30 = load i32, ptr %i, align 4, !dbg !4760
  %idxprom = sext i32 %30 to i64, !dbg !4761
  %arrayidx = getelementptr [0 x i32], ptr @orc_lookup, i64 0, i64 %idxprom, !dbg !4761
  store i32 %conv95, ptr %arrayidx, align 4, !dbg !4762
  br label %for.inc, !dbg !4763

for.inc:                                          ; preds = %if.end93
  %31 = load i32, ptr %i, align 4, !dbg !4764
  %inc = add i32 %31, 1, !dbg !4764
  store i32 %inc, ptr %i, align 4, !dbg !4764
  br label %for.cond, !dbg !4765, !llvm.loop !4766

for.end:                                          ; preds = %for.cond
  %32 = load i64, ptr %num_entries, align 8, !dbg !4770
  %conv96 = trunc i64 %32 to i32, !dbg !4770
  %call97 = call ptr @__orc_find(ptr noundef @__start_orc_unwind_ip, ptr noundef @__start_orc_unwind, i32 noundef %conv96, i64 noundef ptrtoint (ptr @_etext to i64)) #16, !dbg !4771
  store ptr %call97, ptr %orc, align 8, !dbg !4772
  %33 = load ptr, ptr %orc, align 8, !dbg !4773
  %tobool98 = icmp ne ptr %33, null, !dbg !4773
  br i1 %tobool98, label %if.end149, label %if.then99, !dbg !4774

if.then99:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once100) #15, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once100, metadata !4146, metadata !DIExpression()), !dbg !4775
  store i8 1, ptr %__ret_do_once100, align 1, !dbg !4775
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond101) #15, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %__ret_cond101, metadata !4150, metadata !DIExpression()), !dbg !4776
  %34 = load i8, ptr %__ret_do_once100, align 1, !dbg !4776, !range !4712, !noundef !549
  %tobool102 = trunc i8 %34 to i1, !dbg !4776
  %lnot103 = xor i1 %tobool102, true, !dbg !4776
  %lnot105 = xor i1 %lnot103, true, !dbg !4776
  %frombool107 = zext i1 %lnot105 to i8, !dbg !4776
  store i8 %frombool107, ptr %__ret_cond101, align 1, !dbg !4776
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once108) #15, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %__ret_once108, metadata !4153, metadata !DIExpression()), !dbg !4776
  store i8 0, ptr %__ret_once108, align 1, !dbg !4776
  %35 = load i8, ptr %__ret_cond101, align 1, !dbg !4777, !range !4712, !noundef !549
  %tobool109 = trunc i8 %35 to i1, !dbg !4777
  br i1 %tobool109, label %land.rhs111, label %land.end115, !dbg !4777

land.rhs111:                                      ; preds = %if.then99
  %36 = load i8, ptr @unwind_init.__already_done.4, align 1, !dbg !4777, !range !4712, !noundef !549
  %tobool112 = trunc i8 %36 to i1, !dbg !4777
  %lnot113 = xor i1 %tobool112, true, !dbg !4777
  br label %land.end115

land.end115:                                      ; preds = %land.rhs111, %if.then99
  %37 = phi i1 [ false, %if.then99 ], [ %lnot113, %land.rhs111 ], !dbg !4779
  %lnot116 = xor i1 %37, true, !dbg !4777
  %lnot118 = xor i1 %lnot116, true, !dbg !4777
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !4777
  %conv120 = sext i32 %lnot.ext119 to i64, !dbg !4777
  %expval121 = call i64 @llvm.expect.i64(i64 %conv120, i64 0), !dbg !4777
  %tobool122 = icmp ne i64 %expval121, 0, !dbg !4777
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !4776

if.then123:                                       ; preds = %land.end115
  store i8 1, ptr @unwind_init.__already_done.4, align 1, !dbg !4780
  store i8 1, ptr %__ret_once108, align 1, !dbg !4780
  br label %if.end124, !dbg !4780

if.end124:                                        ; preds = %if.then123, %land.end115
  %38 = load i8, ptr %__ret_once108, align 1, !dbg !4776, !range !4712, !noundef !549
  %tobool126 = trunc i8 %38 to i1, !dbg !4776
  %lnot127 = xor i1 %tobool126, true, !dbg !4776
  %lnot129 = xor i1 %lnot127, true, !dbg !4776
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !4776
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !4776
  %expval132 = call i64 @llvm.expect.i64(i64 %conv131, i64 0), !dbg !4776
  store i64 %expval132, ptr %tmp125, align 8, !dbg !4777
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once108) #15, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond101) #15, !dbg !4782
  %39 = load i64, ptr %tmp125, align 8, !dbg !4776
  %tobool133 = icmp ne i64 %39, 0, !dbg !4782
  br i1 %tobool133, label %if.then134, label %if.end140, !dbg !4775

if.then134:                                       ; preds = %if.end124
  br label %do.body135, !dbg !4783

do.body135:                                       ; preds = %if.then134
  br label %do.cond136, !dbg !4785

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !4785

do.end137:                                        ; preds = %do.cond136
  %call139 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.3) #17, !dbg !4783
  store i32 %call139, ptr %tmp138, align 4, !dbg !4785
  %40 = load i32, ptr %tmp138, align 4, !dbg !4783
  br label %if.end140, !dbg !4782

if.end140:                                        ; preds = %do.end137, %if.end124
  %41 = load i8, ptr %__ret_do_once100, align 1, !dbg !4775, !range !4712, !noundef !549
  %tobool142 = trunc i8 %41 to i1, !dbg !4775
  %lnot143 = xor i1 %tobool142, true, !dbg !4775
  %lnot145 = xor i1 %lnot143, true, !dbg !4775
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !4775
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !4775
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 0), !dbg !4775
  store i64 %expval148, ptr %tmp141, align 8, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once100) #15, !dbg !4787
  %42 = load i64, ptr %tmp141, align 8, !dbg !4775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4788

if.end149:                                        ; preds = %for.end
  %43 = load ptr, ptr %orc, align 8, !dbg !4789
  %sub.ptr.lhs.cast150 = ptrtoint ptr %43 to i64, !dbg !4790
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast150, ptrtoint (ptr @__start_orc_unwind to i64), !dbg !4790
  %sub.ptr.div152 = sdiv exact i64 %sub.ptr.sub151, 6, !dbg !4790
  %conv153 = trunc i64 %sub.ptr.div152 to i32, !dbg !4789
  %44 = load i32, ptr @lookup_num_blocks, align 4, !dbg !4791
  %sub154 = sub i32 %44, 1, !dbg !4792
  %idxprom155 = zext i32 %sub154 to i64, !dbg !4793
  %arrayidx156 = getelementptr [0 x i32], ptr @orc_lookup, i64 0, i64 %idxprom155, !dbg !4793
  store i32 %conv153, ptr %arrayidx156, align 4, !dbg !4794
  store i8 1, ptr @orc_init, align 1, !dbg !4795
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4796
  br label %cleanup, !dbg !4796

cleanup:                                          ; preds = %if.end149, %if.end140, %if.end84, %if.end26
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc) #15, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_entries) #15, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_size) #15, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_ip_size) #15, !dbg !4796
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4796

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4797 dso_local i32 @_printk_deferred(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__orc_find(ptr noundef %ip_table, ptr noundef %u_table, i32 noundef %num_entries, i64 noundef %ip) #1 align 16 !dbg !4801 {
entry:
  %retval = alloca ptr, align 8
  %ip_table.addr = alloca ptr, align 8
  %u_table.addr = alloca ptr, align 8
  %num_entries.addr = alloca i32, align 4
  %ip.addr = alloca i64, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %found = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ip_table, ptr %ip_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip_table.addr, metadata !4805, metadata !DIExpression()), !dbg !4813
  store ptr %u_table, ptr %u_table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_table.addr, metadata !4806, metadata !DIExpression()), !dbg !4814
  store i32 %num_entries, ptr %num_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_entries.addr, metadata !4807, metadata !DIExpression()), !dbg !4815
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !4808, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #15, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4809, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %ip_table.addr, align 8, !dbg !4819
  store ptr %0, ptr %first, align 8, !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #15, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %last, metadata !4810, metadata !DIExpression()), !dbg !4821
  %1 = load ptr, ptr %ip_table.addr, align 8, !dbg !4822
  %2 = load i32, ptr %num_entries.addr, align 4, !dbg !4823
  %idx.ext = zext i32 %2 to i64, !dbg !4824
  %add.ptr = getelementptr i32, ptr %1, i64 %idx.ext, !dbg !4824
  %add.ptr1 = getelementptr i32, ptr %add.ptr, i64 -1, !dbg !4825
  store ptr %add.ptr1, ptr %last, align 8, !dbg !4821
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #15, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %mid, metadata !4811, metadata !DIExpression()), !dbg !4827
  %3 = load ptr, ptr %first, align 8, !dbg !4828
  store ptr %3, ptr %mid, align 8, !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #15, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4812, metadata !DIExpression()), !dbg !4829
  %4 = load ptr, ptr %first, align 8, !dbg !4830
  store ptr %4, ptr %found, align 8, !dbg !4829
  %5 = load i32, ptr %num_entries.addr, align 4, !dbg !4831
  %tobool = icmp ne i32 %5, 0, !dbg !4831
  br i1 %tobool, label %if.end, label %if.then, !dbg !4833

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4834

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !4835

while.cond:                                       ; preds = %if.end7, %if.end
  %6 = load ptr, ptr %first, align 8, !dbg !4836
  %7 = load ptr, ptr %last, align 8, !dbg !4837
  %cmp = icmp ule ptr %6, %7, !dbg !4838
  br i1 %cmp, label %while.body, label %while.end, !dbg !4835

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %first, align 8, !dbg !4839
  %9 = load ptr, ptr %last, align 8, !dbg !4841
  %10 = load ptr, ptr %first, align 8, !dbg !4842
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !4843
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !4843
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4843
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !4843
  %div = sdiv i64 %sub.ptr.div, 2, !dbg !4844
  %add.ptr2 = getelementptr i32, ptr %8, i64 %div, !dbg !4845
  store ptr %add.ptr2, ptr %mid, align 8, !dbg !4846
  %11 = load ptr, ptr %mid, align 8, !dbg !4847
  %call = call i64 @orc_ip(ptr noundef %11) #16, !dbg !4849
  %12 = load i64, ptr %ip.addr, align 8, !dbg !4850
  %cmp3 = icmp ule i64 %call, %12, !dbg !4851
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !4852

if.then4:                                         ; preds = %while.body
  %13 = load ptr, ptr %mid, align 8, !dbg !4853
  store ptr %13, ptr %found, align 8, !dbg !4855
  %14 = load ptr, ptr %mid, align 8, !dbg !4856
  %add.ptr5 = getelementptr i32, ptr %14, i64 1, !dbg !4857
  store ptr %add.ptr5, ptr %first, align 8, !dbg !4858
  br label %if.end7, !dbg !4859

if.else:                                          ; preds = %while.body
  %15 = load ptr, ptr %mid, align 8, !dbg !4860
  %add.ptr6 = getelementptr i32, ptr %15, i64 -1, !dbg !4861
  store ptr %add.ptr6, ptr %last, align 8, !dbg !4862
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  br label %while.cond, !dbg !4835, !llvm.loop !4863

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %u_table.addr, align 8, !dbg !4865
  %17 = load ptr, ptr %found, align 8, !dbg !4866
  %18 = load ptr, ptr %ip_table.addr, align 8, !dbg !4867
  %sub.ptr.lhs.cast8 = ptrtoint ptr %17 to i64, !dbg !4868
  %sub.ptr.rhs.cast9 = ptrtoint ptr %18 to i64, !dbg !4868
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9, !dbg !4868
  %sub.ptr.div11 = sdiv exact i64 %sub.ptr.sub10, 4, !dbg !4868
  %add.ptr12 = getelementptr %struct.orc_entry, ptr %16, i64 %sub.ptr.div11, !dbg !4869
  store ptr %add.ptr12, ptr %retval, align 8, !dbg !4870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4870

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #15, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #15, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #15, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #15, !dbg !4871
  %19 = load ptr, ptr %retval, align 8, !dbg !4871
  ret ptr %19, !dbg !4871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @unwind_get_return_address(ptr noundef %state) #1 align 16 !dbg !4872 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  %0 = load ptr, ptr %state.addr, align 8, !dbg !4878
  %call = call zeroext i1 @unwind_done(ptr noundef %0) #16, !dbg !4880
  br i1 %call, label %if.then, label %if.end, !dbg !4881

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !4882
  br label %return, !dbg !4882

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !4883
  %ip = getelementptr inbounds %struct.unwind_state, ptr %1, i32 0, i32 10, !dbg !4884
  %2 = load i64, ptr %ip, align 8, !dbg !4884
  %call1 = call i32 @__kernel_text_address(i64 noundef %2) #16, !dbg !4885
  %tobool = icmp ne i32 %call1, 0, !dbg !4885
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4885

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %state.addr, align 8, !dbg !4886
  %ip2 = getelementptr inbounds %struct.unwind_state, ptr %3, i32 0, i32 10, !dbg !4887
  %4 = load i64, ptr %ip2, align 8, !dbg !4887
  br label %cond.end, !dbg !4885

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4885

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4885
  store i64 %cond, ptr %retval, align 8, !dbg !4888
  br label %return, !dbg !4888

return:                                           ; preds = %cond.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !4889
  ret i64 %5, !dbg !4889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unwind_done(ptr noundef %state) #7 align 16 !dbg !4890 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = load ptr, ptr %state.addr, align 8, !dbg !4894
  %stack_info = getelementptr inbounds %struct.unwind_state, ptr %0, i32 0, i32 0, !dbg !4895
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 0, !dbg !4896
  %1 = load i32, ptr %type, align 8, !dbg !4896
  %cmp = icmp eq i32 %1, 0, !dbg !4897
  ret i1 %cmp, !dbg !4898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4899 dso_local i32 @__kernel_text_address(i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @unwind_get_return_address_ptr(ptr noundef %state) #1 align 16 !dbg !4903 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load ptr, ptr %state.addr, align 8, !dbg !4909
  %call = call zeroext i1 @unwind_done(ptr noundef %0) #16, !dbg !4911
  br i1 %call, label %if.then, label %if.end, !dbg !4912

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4913
  br label %return, !dbg !4913

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !4914
  %regs = getelementptr inbounds %struct.unwind_state, ptr %1, i32 0, i32 11, !dbg !4916
  %2 = load ptr, ptr %regs, align 8, !dbg !4916
  %tobool = icmp ne ptr %2, null, !dbg !4914
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4917

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %state.addr, align 8, !dbg !4918
  %regs2 = getelementptr inbounds %struct.unwind_state, ptr %3, i32 0, i32 11, !dbg !4919
  %4 = load ptr, ptr %regs2, align 8, !dbg !4919
  %ip = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 16, !dbg !4920
  store ptr %ip, ptr %retval, align 8, !dbg !4921
  br label %return, !dbg !4921

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %state.addr, align 8, !dbg !4922
  %sp = getelementptr inbounds %struct.unwind_state, ptr %5, i32 0, i32 8, !dbg !4924
  %6 = load i64, ptr %sp, align 8, !dbg !4924
  %tobool4 = icmp ne i64 %6, 0, !dbg !4922
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !4925

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %state.addr, align 8, !dbg !4926
  %sp6 = getelementptr inbounds %struct.unwind_state, ptr %7, i32 0, i32 8, !dbg !4927
  %8 = load i64, ptr %sp6, align 8, !dbg !4927
  %9 = inttoptr i64 %8 to ptr, !dbg !4928
  %add.ptr = getelementptr i64, ptr %9, i64 -1, !dbg !4929
  store ptr %add.ptr, ptr %retval, align 8, !dbg !4930
  br label %return, !dbg !4930

if.end7:                                          ; preds = %if.end3
  store ptr null, ptr %retval, align 8, !dbg !4931
  br label %return, !dbg !4931

return:                                           ; preds = %if.end7, %if.then5, %if.then1, %if.then
  %10 = load ptr, ptr %retval, align 8, !dbg !4932
  ret ptr %10, !dbg !4932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @unwind_next_frame(ptr noundef %state) #1 align 16 !dbg !4172 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %ip_p = alloca i64, align 8
  %sp = alloca i64, align 8
  %tmp = alloca i64, align 8
  %orig_ip = alloca i64, align 8
  %prev_sp = alloca i64, align 8
  %prev_type = alloca i32, align 4
  %orc = alloca ptr, align 8
  %indirect = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp70 = alloca i64, align 8
  %tmp83 = alloca i32, align 4
  %tmp87 = alloca i64, align 8
  %__ret_do_once114 = alloca i8, align 1
  %__ret_cond115 = alloca i8, align 1
  %__ret_once122 = alloca i8, align 1
  %tmp139 = alloca i64, align 8
  %tmp152 = alloca i32, align 4
  %tmp156 = alloca i64, align 8
  %__ret_do_once183 = alloca i8, align 1
  %__ret_cond184 = alloca i8, align 1
  %__ret_once191 = alloca i8, align 1
  %tmp208 = alloca i64, align 8
  %tmp221 = alloca i32, align 4
  %tmp225 = alloca i64, align 8
  %__ret_do_once252 = alloca i8, align 1
  %__ret_cond253 = alloca i8, align 1
  %__ret_once260 = alloca i8, align 1
  %tmp277 = alloca i64, align 8
  %tmp290 = alloca i32, align 4
  %tmp294 = alloca i64, align 8
  %__ret_do_once310 = alloca i8, align 1
  %__ret_cond311 = alloca i8, align 1
  %__ret_once318 = alloca i8, align 1
  %tmp335 = alloca i64, align 8
  %tmp348 = alloca i32, align 4
  %tmp356 = alloca i64, align 8
  %__ret_do_once410 = alloca i8, align 1
  %__ret_cond411 = alloca i8, align 1
  %__ret_once418 = alloca i8, align 1
  %tmp435 = alloca i64, align 8
  %tmp448 = alloca i32, align 4
  %tmp451 = alloca i64, align 8
  %__ret_do_once487 = alloca i8, align 1
  %__ret_cond488 = alloca i8, align 1
  %__ret_once495 = alloca i8, align 1
  %tmp512 = alloca i64, align 8
  %tmp525 = alloca i32, align 4
  %tmp528 = alloca i64, align 8
  %__ret_do_once558 = alloca i8, align 1
  %__ret_cond559 = alloca i8, align 1
  %__ret_once566 = alloca i8, align 1
  %tmp583 = alloca i64, align 8
  %tmp596 = alloca i32, align 4
  %tmp604 = alloca i64, align 8
  %__ret_do_once639 = alloca i8, align 1
  %__ret_cond640 = alloca i8, align 1
  %__ret_once647 = alloca i8, align 1
  %tmp664 = alloca i64, align 8
  %tmp677 = alloca i32, align 4
  %tmp685 = alloca i64, align 8
  %__ret_do_once716 = alloca i8, align 1
  %__ret_cond717 = alloca i8, align 1
  %__ret_once724 = alloca i8, align 1
  %tmp741 = alloca i64, align 8
  %tmp754 = alloca i32, align 4
  %tmp757 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4199, metadata !DIExpression()), !dbg !4933
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip_p) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %ip_p, metadata !4200, metadata !DIExpression()), !dbg !4935
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4201, metadata !DIExpression()), !dbg !4936
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4202, metadata !DIExpression()), !dbg !4937
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_ip) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %orig_ip, metadata !4203, metadata !DIExpression()), !dbg !4938
  %0 = load ptr, ptr %state.addr, align 8, !dbg !4939
  %ip = getelementptr inbounds %struct.unwind_state, ptr %0, i32 0, i32 10, !dbg !4940
  %1 = load i64, ptr %ip, align 8, !dbg !4940
  store i64 %1, ptr %orig_ip, align 8, !dbg !4938
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_sp) #15, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %prev_sp, metadata !4204, metadata !DIExpression()), !dbg !4941
  %2 = load ptr, ptr %state.addr, align 8, !dbg !4942
  %sp1 = getelementptr inbounds %struct.unwind_state, ptr %2, i32 0, i32 8, !dbg !4943
  %3 = load i64, ptr %sp1, align 8, !dbg !4943
  store i64 %3, ptr %prev_sp, align 8, !dbg !4941
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_type) #15, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %prev_type, metadata !4205, metadata !DIExpression()), !dbg !4945
  %4 = load ptr, ptr %state.addr, align 8, !dbg !4946
  %stack_info = getelementptr inbounds %struct.unwind_state, ptr %4, i32 0, i32 0, !dbg !4947
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 0, !dbg !4948
  %5 = load i32, ptr %type, align 8, !dbg !4948
  store i32 %5, ptr %prev_type, align 4, !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc) #15, !dbg !4949
  call void @llvm.dbg.declare(metadata ptr %orc, metadata !4206, metadata !DIExpression()), !dbg !4950
  call void @llvm.lifetime.start.p0(i64 1, ptr %indirect) #15, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !4207, metadata !DIExpression()), !dbg !4952
  store i8 0, ptr %indirect, align 1, !dbg !4952
  %6 = load ptr, ptr %state.addr, align 8, !dbg !4953
  %call = call zeroext i1 @unwind_done(ptr noundef %6) #16, !dbg !4955
  br i1 %call, label %if.then, label %if.end, !dbg !4956

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4957

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4958

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !4959
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4959, !srcloc !4961
  br label %do.cond, !dbg !4959

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4959

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %state.addr, align 8, !dbg !4962
  %regs = getelementptr inbounds %struct.unwind_state, ptr %7, i32 0, i32 11, !dbg !4964
  %8 = load ptr, ptr %regs, align 8, !dbg !4964
  %tobool = icmp ne ptr %8, null, !dbg !4962
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !4965

land.lhs.true:                                    ; preds = %do.end
  %9 = load ptr, ptr %state.addr, align 8, !dbg !4966
  %regs2 = getelementptr inbounds %struct.unwind_state, ptr %9, i32 0, i32 11, !dbg !4967
  %10 = load ptr, ptr %regs2, align 8, !dbg !4967
  %call3 = call i32 @user_mode(ptr noundef %10) #16, !dbg !4968
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4968
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4969

if.then5:                                         ; preds = %land.lhs.true
  br label %the_end, !dbg !4970

if.end6:                                          ; preds = %land.lhs.true, %do.end
  %11 = load ptr, ptr %state.addr, align 8, !dbg !4971
  %signal = getelementptr inbounds %struct.unwind_state, ptr %11, i32 0, i32 6, !dbg !4972
  %12 = load i8, ptr %signal, align 1, !dbg !4972, !range !4712, !noundef !549
  %tobool7 = trunc i8 %12 to i1, !dbg !4972
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !4971

cond.true:                                        ; preds = %if.end6
  %13 = load ptr, ptr %state.addr, align 8, !dbg !4973
  %ip8 = getelementptr inbounds %struct.unwind_state, ptr %13, i32 0, i32 10, !dbg !4974
  %14 = load i64, ptr %ip8, align 8, !dbg !4974
  br label %cond.end, !dbg !4971

cond.false:                                       ; preds = %if.end6
  %15 = load ptr, ptr %state.addr, align 8, !dbg !4975
  %ip9 = getelementptr inbounds %struct.unwind_state, ptr %15, i32 0, i32 10, !dbg !4976
  %16 = load i64, ptr %ip9, align 8, !dbg !4976
  %sub = sub i64 %16, 1, !dbg !4977
  br label %cond.end, !dbg !4971

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %sub, %cond.false ], !dbg !4971
  %call10 = call ptr @orc_find(i64 noundef %cond) #16, !dbg !4978
  store ptr %call10, ptr %orc, align 8, !dbg !4979
  %17 = load ptr, ptr %orc, align 8, !dbg !4980
  %tobool11 = icmp ne ptr %17, null, !dbg !4980
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !4982

if.then12:                                        ; preds = %cond.end
  store ptr @orc_fp_entry, ptr %orc, align 8, !dbg !4983
  %18 = load ptr, ptr %state.addr, align 8, !dbg !4985
  %error = getelementptr inbounds %struct.unwind_state, ptr %18, i32 0, i32 5, !dbg !4986
  store i8 1, ptr %error, align 8, !dbg !4987
  br label %if.end24, !dbg !4988

if.else:                                          ; preds = %cond.end
  %19 = load ptr, ptr %orc, align 8, !dbg !4989
  %type13 = getelementptr inbounds %struct.orc_entry, ptr %19, i32 0, i32 2, !dbg !4992
  %bf.load = load i16, ptr %type13, align 1, !dbg !4992
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !4992
  %bf.clear = and i16 %bf.lshr, 7, !dbg !4992
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4992
  %cmp = icmp eq i32 %bf.cast, 0, !dbg !4993
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !4994

if.then14:                                        ; preds = %if.else
  br label %err, !dbg !4995

if.end15:                                         ; preds = %if.else
  %20 = load ptr, ptr %orc, align 8, !dbg !4996
  %type16 = getelementptr inbounds %struct.orc_entry, ptr %20, i32 0, i32 2, !dbg !4998
  %bf.load17 = load i16, ptr %type16, align 1, !dbg !4998
  %bf.lshr18 = lshr i16 %bf.load17, 8, !dbg !4998
  %bf.clear19 = and i16 %bf.lshr18, 7, !dbg !4998
  %bf.cast20 = zext i16 %bf.clear19 to i32, !dbg !4998
  %cmp21 = icmp eq i32 %bf.cast20, 1, !dbg !4999
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5000

if.then22:                                        ; preds = %if.end15
  br label %the_end, !dbg !5001

if.end23:                                         ; preds = %if.end15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  %21 = load ptr, ptr %orc, align 8, !dbg !5002
  %signal25 = getelementptr inbounds %struct.orc_entry, ptr %21, i32 0, i32 2, !dbg !5003
  %bf.load26 = load i16, ptr %signal25, align 1, !dbg !5003
  %bf.lshr27 = lshr i16 %bf.load26, 11, !dbg !5003
  %bf.clear28 = and i16 %bf.lshr27, 1, !dbg !5003
  %bf.cast29 = zext i16 %bf.clear28 to i32, !dbg !5003
  %tobool30 = icmp ne i32 %bf.cast29, 0, !dbg !5002
  %22 = load ptr, ptr %state.addr, align 8, !dbg !5004
  %signal31 = getelementptr inbounds %struct.unwind_state, ptr %22, i32 0, i32 6, !dbg !5005
  %frombool = zext i1 %tobool30 to i8, !dbg !5006
  store i8 %frombool, ptr %signal31, align 1, !dbg !5006
  %23 = load ptr, ptr %orc, align 8, !dbg !5007
  %sp_reg = getelementptr inbounds %struct.orc_entry, ptr %23, i32 0, i32 2, !dbg !5008
  %bf.load32 = load i16, ptr %sp_reg, align 1, !dbg !5008
  %bf.clear33 = and i16 %bf.load32, 15, !dbg !5008
  %bf.cast34 = zext i16 %bf.clear33 to i32, !dbg !5008
  switch i32 %bf.cast34, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb36
    i32 9, label %sw.bb40
    i32 8, label %sw.bb42
    i32 6, label %sw.bb47
    i32 7, label %sw.bb103
    i32 3, label %sw.bb172
    i32 2, label %sw.bb241
  ], !dbg !5009

sw.bb:                                            ; preds = %if.end24
  %24 = load ptr, ptr %state.addr, align 8, !dbg !5010
  %sp35 = getelementptr inbounds %struct.unwind_state, ptr %24, i32 0, i32 8, !dbg !5011
  %25 = load i64, ptr %sp35, align 8, !dbg !5011
  %26 = load ptr, ptr %orc, align 8, !dbg !5012
  %sp_offset = getelementptr inbounds %struct.orc_entry, ptr %26, i32 0, i32 0, !dbg !5013
  %27 = load i16, ptr %sp_offset, align 1, !dbg !5013
  %conv = sext i16 %27 to i64, !dbg !5012
  %add = add i64 %25, %conv, !dbg !5014
  store i64 %add, ptr %sp, align 8, !dbg !5015
  br label %sw.epilog, !dbg !5016

sw.bb36:                                          ; preds = %if.end24
  %28 = load ptr, ptr %state.addr, align 8, !dbg !5017
  %bp = getelementptr inbounds %struct.unwind_state, ptr %28, i32 0, i32 9, !dbg !5018
  %29 = load i64, ptr %bp, align 8, !dbg !5018
  %30 = load ptr, ptr %orc, align 8, !dbg !5019
  %sp_offset37 = getelementptr inbounds %struct.orc_entry, ptr %30, i32 0, i32 0, !dbg !5020
  %31 = load i16, ptr %sp_offset37, align 1, !dbg !5020
  %conv38 = sext i16 %31 to i64, !dbg !5019
  %add39 = add i64 %29, %conv38, !dbg !5021
  store i64 %add39, ptr %sp, align 8, !dbg !5022
  br label %sw.epilog, !dbg !5023

sw.bb40:                                          ; preds = %if.end24
  %32 = load ptr, ptr %state.addr, align 8, !dbg !5024
  %sp41 = getelementptr inbounds %struct.unwind_state, ptr %32, i32 0, i32 8, !dbg !5025
  %33 = load i64, ptr %sp41, align 8, !dbg !5025
  store i64 %33, ptr %sp, align 8, !dbg !5026
  store i8 1, ptr %indirect, align 1, !dbg !5027
  br label %sw.epilog, !dbg !5028

sw.bb42:                                          ; preds = %if.end24
  %34 = load ptr, ptr %state.addr, align 8, !dbg !5029
  %bp43 = getelementptr inbounds %struct.unwind_state, ptr %34, i32 0, i32 9, !dbg !5030
  %35 = load i64, ptr %bp43, align 8, !dbg !5030
  %36 = load ptr, ptr %orc, align 8, !dbg !5031
  %sp_offset44 = getelementptr inbounds %struct.orc_entry, ptr %36, i32 0, i32 0, !dbg !5032
  %37 = load i16, ptr %sp_offset44, align 1, !dbg !5032
  %conv45 = sext i16 %37 to i64, !dbg !5031
  %add46 = add i64 %35, %conv45, !dbg !5033
  store i64 %add46, ptr %sp, align 8, !dbg !5034
  store i8 1, ptr %indirect, align 1, !dbg !5035
  br label %sw.epilog, !dbg !5036

sw.bb47:                                          ; preds = %if.end24
  %38 = load ptr, ptr %state.addr, align 8, !dbg !5037
  %call48 = call zeroext i1 @get_reg(ptr noundef %38, i32 noundef 56, ptr noundef %sp) #16, !dbg !5038
  br i1 %call48, label %if.end102, label %if.then49, !dbg !5039

if.then49:                                        ; preds = %sw.bb47
  %39 = load ptr, ptr %state.addr, align 8, !dbg !5040
  %task = getelementptr inbounds %struct.unwind_state, ptr %39, i32 0, i32 2, !dbg !5040
  %40 = load ptr, ptr %task, align 8, !dbg !5040
  %call50 = call ptr @get_current() #16, !dbg !5040
  %cmp51 = icmp eq ptr %40, %call50, !dbg !5040
  br i1 %cmp51, label %land.lhs.true53, label %if.end101, !dbg !5040

land.lhs.true53:                                  ; preds = %if.then49
  %41 = load ptr, ptr %state.addr, align 8, !dbg !5040
  %error54 = getelementptr inbounds %struct.unwind_state, ptr %41, i32 0, i32 5, !dbg !5040
  %42 = load i8, ptr %error54, align 8, !dbg !5040, !range !4712, !noundef !549
  %tobool55 = trunc i8 %42 to i1, !dbg !5040
  br i1 %tobool55, label %if.end101, label %if.then56, !dbg !5041

if.then56:                                        ; preds = %land.lhs.true53
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4208, metadata !DIExpression()), !dbg !5042
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5042
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4216, metadata !DIExpression()), !dbg !5043
  %43 = load i8, ptr %__ret_do_once, align 1, !dbg !5043, !range !4712, !noundef !549
  %tobool57 = trunc i8 %43 to i1, !dbg !5043
  %lnot = xor i1 %tobool57, true, !dbg !5043
  %lnot58 = xor i1 %lnot, true, !dbg !5043
  %frombool59 = zext i1 %lnot58 to i8, !dbg !5043
  store i8 %frombool59, ptr %__ret_cond, align 1, !dbg !5043
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4219, metadata !DIExpression()), !dbg !5043
  store i8 0, ptr %__ret_once, align 1, !dbg !5043
  %44 = load i8, ptr %__ret_cond, align 1, !dbg !5044, !range !4712, !noundef !549
  %tobool60 = trunc i8 %44 to i1, !dbg !5044
  br i1 %tobool60, label %land.rhs, label %land.end, !dbg !5044

land.rhs:                                         ; preds = %if.then56
  %45 = load i8, ptr @unwind_next_frame.__already_done, align 1, !dbg !5044, !range !4712, !noundef !549
  %tobool62 = trunc i8 %45 to i1, !dbg !5044
  %lnot63 = xor i1 %tobool62, true, !dbg !5044
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then56
  %46 = phi i1 [ false, %if.then56 ], [ %lnot63, %land.rhs ], !dbg !5046
  %lnot64 = xor i1 %46, true, !dbg !5044
  %lnot65 = xor i1 %lnot64, true, !dbg !5044
  %lnot.ext = zext i1 %lnot65 to i32, !dbg !5044
  %conv66 = sext i32 %lnot.ext to i64, !dbg !5044
  %expval = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !5044
  %tobool67 = icmp ne i64 %expval, 0, !dbg !5044
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5043

if.then68:                                        ; preds = %land.end
  store i8 1, ptr @unwind_next_frame.__already_done, align 1, !dbg !5047
  store i8 1, ptr %__ret_once, align 1, !dbg !5047
  br label %if.end69, !dbg !5047

if.end69:                                         ; preds = %if.then68, %land.end
  %47 = load i8, ptr %__ret_once, align 1, !dbg !5043, !range !4712, !noundef !549
  %tobool71 = trunc i8 %47 to i1, !dbg !5043
  %lnot72 = xor i1 %tobool71, true, !dbg !5043
  %lnot74 = xor i1 %lnot72, true, !dbg !5043
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !5043
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !5043
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0), !dbg !5043
  store i64 %expval77, ptr %tmp70, align 8, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !5049
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !5049
  %48 = load i64, ptr %tmp70, align 8, !dbg !5043
  %tobool78 = icmp ne i64 %48, 0, !dbg !5049
  br i1 %tobool78, label %if.then79, label %if.end86, !dbg !5042

if.then79:                                        ; preds = %if.end69
  br label %do.body80, !dbg !5050

do.body80:                                        ; preds = %if.then79
  br label %do.cond81, !dbg !5052

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5052

do.end82:                                         ; preds = %do.cond81
  %49 = load ptr, ptr %state.addr, align 8, !dbg !5050
  %ip84 = getelementptr inbounds %struct.unwind_state, ptr %49, i32 0, i32 10, !dbg !5050
  %50 = load i64, ptr %ip84, align 8, !dbg !5050
  %51 = inttoptr i64 %50 to ptr, !dbg !5050
  %call85 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.5, ptr noundef %51) #17, !dbg !5050
  store i32 %call85, ptr %tmp83, align 4, !dbg !5052
  %52 = load i32, ptr %tmp83, align 4, !dbg !5050
  br label %if.end86, !dbg !5049

if.end86:                                         ; preds = %do.end82, %if.end69
  %53 = load i8, ptr %__ret_do_once, align 1, !dbg !5042, !range !4712, !noundef !549
  %tobool88 = trunc i8 %53 to i1, !dbg !5042
  %lnot89 = xor i1 %tobool88, true, !dbg !5042
  %lnot91 = xor i1 %lnot89, true, !dbg !5042
  %lnot.ext92 = zext i1 %lnot91 to i32, !dbg !5042
  %conv93 = sext i32 %lnot.ext92 to i64, !dbg !5042
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0), !dbg !5042
  store i64 %expval94, ptr %tmp87, align 8, !dbg !5049
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5054
  %54 = load i64, ptr %tmp87, align 8, !dbg !5042
  %55 = load i8, ptr @unwind_debug, align 1, !dbg !5055, !range !4712, !noundef !549
  %tobool95 = trunc i8 %55 to i1, !dbg !5055
  br i1 %tobool95, label %land.lhs.true97, label %if.end100, !dbg !5055

land.lhs.true97:                                  ; preds = %if.end86
  %56 = load i8, ptr @unwind_next_frame.dumped_before, align 1, !dbg !5055, !range !4712, !noundef !549
  %tobool98 = trunc i8 %56 to i1, !dbg !5055
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !5054

if.then99:                                        ; preds = %land.lhs.true97
  store i8 1, ptr @unwind_next_frame.dumped_before, align 1, !dbg !5057
  %57 = load ptr, ptr %state.addr, align 8, !dbg !5057
  call void @unwind_dump(ptr noundef %57) #16, !dbg !5057
  br label %if.end100, !dbg !5057

if.end100:                                        ; preds = %if.then99, %land.lhs.true97, %if.end86
  br label %if.end101, !dbg !5054

if.end101:                                        ; preds = %if.end100, %land.lhs.true53, %if.then49
  br label %err, !dbg !5059

if.end102:                                        ; preds = %sw.bb47
  br label %sw.epilog, !dbg !5060

sw.bb103:                                         ; preds = %if.end24
  %58 = load ptr, ptr %state.addr, align 8, !dbg !5061
  %call104 = call zeroext i1 @get_reg(ptr noundef %58, i32 noundef 16, ptr noundef %sp) #16, !dbg !5062
  br i1 %call104, label %if.end171, label %if.then105, !dbg !5063

if.then105:                                       ; preds = %sw.bb103
  %59 = load ptr, ptr %state.addr, align 8, !dbg !5064
  %task106 = getelementptr inbounds %struct.unwind_state, ptr %59, i32 0, i32 2, !dbg !5064
  %60 = load ptr, ptr %task106, align 8, !dbg !5064
  %call107 = call ptr @get_current() #16, !dbg !5064
  %cmp108 = icmp eq ptr %60, %call107, !dbg !5064
  br i1 %cmp108, label %land.lhs.true110, label %if.end170, !dbg !5064

land.lhs.true110:                                 ; preds = %if.then105
  %61 = load ptr, ptr %state.addr, align 8, !dbg !5064
  %error111 = getelementptr inbounds %struct.unwind_state, ptr %61, i32 0, i32 5, !dbg !5064
  %62 = load i8, ptr %error111, align 8, !dbg !5064, !range !4712, !noundef !549
  %tobool112 = trunc i8 %62 to i1, !dbg !5064
  br i1 %tobool112, label %if.end170, label %if.then113, !dbg !5065

if.then113:                                       ; preds = %land.lhs.true110
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once114) #15, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once114, metadata !4220, metadata !DIExpression()), !dbg !5066
  store i8 1, ptr %__ret_do_once114, align 1, !dbg !5066
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond115) #15, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %__ret_cond115, metadata !4227, metadata !DIExpression()), !dbg !5067
  %63 = load i8, ptr %__ret_do_once114, align 1, !dbg !5067, !range !4712, !noundef !549
  %tobool116 = trunc i8 %63 to i1, !dbg !5067
  %lnot117 = xor i1 %tobool116, true, !dbg !5067
  %lnot119 = xor i1 %lnot117, true, !dbg !5067
  %frombool121 = zext i1 %lnot119 to i8, !dbg !5067
  store i8 %frombool121, ptr %__ret_cond115, align 1, !dbg !5067
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once122) #15, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %__ret_once122, metadata !4230, metadata !DIExpression()), !dbg !5067
  store i8 0, ptr %__ret_once122, align 1, !dbg !5067
  %64 = load i8, ptr %__ret_cond115, align 1, !dbg !5068, !range !4712, !noundef !549
  %tobool123 = trunc i8 %64 to i1, !dbg !5068
  br i1 %tobool123, label %land.rhs125, label %land.end129, !dbg !5068

land.rhs125:                                      ; preds = %if.then113
  %65 = load i8, ptr @unwind_next_frame.__already_done.7, align 1, !dbg !5068, !range !4712, !noundef !549
  %tobool126 = trunc i8 %65 to i1, !dbg !5068
  %lnot127 = xor i1 %tobool126, true, !dbg !5068
  br label %land.end129

land.end129:                                      ; preds = %land.rhs125, %if.then113
  %66 = phi i1 [ false, %if.then113 ], [ %lnot127, %land.rhs125 ], !dbg !5070
  %lnot130 = xor i1 %66, true, !dbg !5068
  %lnot132 = xor i1 %lnot130, true, !dbg !5068
  %lnot.ext133 = zext i1 %lnot132 to i32, !dbg !5068
  %conv134 = sext i32 %lnot.ext133 to i64, !dbg !5068
  %expval135 = call i64 @llvm.expect.i64(i64 %conv134, i64 0), !dbg !5068
  %tobool136 = icmp ne i64 %expval135, 0, !dbg !5068
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !5067

if.then137:                                       ; preds = %land.end129
  store i8 1, ptr @unwind_next_frame.__already_done.7, align 1, !dbg !5071
  store i8 1, ptr %__ret_once122, align 1, !dbg !5071
  br label %if.end138, !dbg !5071

if.end138:                                        ; preds = %if.then137, %land.end129
  %67 = load i8, ptr %__ret_once122, align 1, !dbg !5067, !range !4712, !noundef !549
  %tobool140 = trunc i8 %67 to i1, !dbg !5067
  %lnot141 = xor i1 %tobool140, true, !dbg !5067
  %lnot143 = xor i1 %lnot141, true, !dbg !5067
  %lnot.ext144 = zext i1 %lnot143 to i32, !dbg !5067
  %conv145 = sext i32 %lnot.ext144 to i64, !dbg !5067
  %expval146 = call i64 @llvm.expect.i64(i64 %conv145, i64 0), !dbg !5067
  store i64 %expval146, ptr %tmp139, align 8, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once122) #15, !dbg !5073
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond115) #15, !dbg !5073
  %68 = load i64, ptr %tmp139, align 8, !dbg !5067
  %tobool147 = icmp ne i64 %68, 0, !dbg !5073
  br i1 %tobool147, label %if.then148, label %if.end155, !dbg !5066

if.then148:                                       ; preds = %if.end138
  br label %do.body149, !dbg !5074

do.body149:                                       ; preds = %if.then148
  br label %do.cond150, !dbg !5076

do.cond150:                                       ; preds = %do.body149
  br label %do.end151, !dbg !5076

do.end151:                                        ; preds = %do.cond150
  %69 = load ptr, ptr %state.addr, align 8, !dbg !5074
  %ip153 = getelementptr inbounds %struct.unwind_state, ptr %69, i32 0, i32 10, !dbg !5074
  %70 = load i64, ptr %ip153, align 8, !dbg !5074
  %71 = inttoptr i64 %70 to ptr, !dbg !5074
  %call154 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.8, ptr noundef %71) #17, !dbg !5074
  store i32 %call154, ptr %tmp152, align 4, !dbg !5076
  %72 = load i32, ptr %tmp152, align 4, !dbg !5074
  br label %if.end155, !dbg !5073

if.end155:                                        ; preds = %do.end151, %if.end138
  %73 = load i8, ptr %__ret_do_once114, align 1, !dbg !5066, !range !4712, !noundef !549
  %tobool157 = trunc i8 %73 to i1, !dbg !5066
  %lnot158 = xor i1 %tobool157, true, !dbg !5066
  %lnot160 = xor i1 %lnot158, true, !dbg !5066
  %lnot.ext161 = zext i1 %lnot160 to i32, !dbg !5066
  %conv162 = sext i32 %lnot.ext161 to i64, !dbg !5066
  %expval163 = call i64 @llvm.expect.i64(i64 %conv162, i64 0), !dbg !5066
  store i64 %expval163, ptr %tmp156, align 8, !dbg !5073
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once114) #15, !dbg !5078
  %74 = load i64, ptr %tmp156, align 8, !dbg !5066
  %75 = load i8, ptr @unwind_debug, align 1, !dbg !5079, !range !4712, !noundef !549
  %tobool164 = trunc i8 %75 to i1, !dbg !5079
  br i1 %tobool164, label %land.lhs.true166, label %if.end169, !dbg !5079

land.lhs.true166:                                 ; preds = %if.end155
  %76 = load i8, ptr @unwind_next_frame.dumped_before.6, align 1, !dbg !5079, !range !4712, !noundef !549
  %tobool167 = trunc i8 %76 to i1, !dbg !5079
  br i1 %tobool167, label %if.end169, label %if.then168, !dbg !5078

if.then168:                                       ; preds = %land.lhs.true166
  store i8 1, ptr @unwind_next_frame.dumped_before.6, align 1, !dbg !5081
  %77 = load ptr, ptr %state.addr, align 8, !dbg !5081
  call void @unwind_dump(ptr noundef %77) #16, !dbg !5081
  br label %if.end169, !dbg !5081

if.end169:                                        ; preds = %if.then168, %land.lhs.true166, %if.end155
  br label %if.end170, !dbg !5078

if.end170:                                        ; preds = %if.end169, %land.lhs.true110, %if.then105
  br label %err, !dbg !5083

if.end171:                                        ; preds = %sw.bb103
  br label %sw.epilog, !dbg !5084

sw.bb172:                                         ; preds = %if.end24
  %78 = load ptr, ptr %state.addr, align 8, !dbg !5085
  %call173 = call zeroext i1 @get_reg(ptr noundef %78, i32 noundef 112, ptr noundef %sp) #16, !dbg !5086
  br i1 %call173, label %if.end240, label %if.then174, !dbg !5087

if.then174:                                       ; preds = %sw.bb172
  %79 = load ptr, ptr %state.addr, align 8, !dbg !5088
  %task175 = getelementptr inbounds %struct.unwind_state, ptr %79, i32 0, i32 2, !dbg !5088
  %80 = load ptr, ptr %task175, align 8, !dbg !5088
  %call176 = call ptr @get_current() #16, !dbg !5088
  %cmp177 = icmp eq ptr %80, %call176, !dbg !5088
  br i1 %cmp177, label %land.lhs.true179, label %if.end239, !dbg !5088

land.lhs.true179:                                 ; preds = %if.then174
  %81 = load ptr, ptr %state.addr, align 8, !dbg !5088
  %error180 = getelementptr inbounds %struct.unwind_state, ptr %81, i32 0, i32 5, !dbg !5088
  %82 = load i8, ptr %error180, align 8, !dbg !5088, !range !4712, !noundef !549
  %tobool181 = trunc i8 %82 to i1, !dbg !5088
  br i1 %tobool181, label %if.end239, label %if.then182, !dbg !5089

if.then182:                                       ; preds = %land.lhs.true179
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once183) #15, !dbg !5090
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once183, metadata !4231, metadata !DIExpression()), !dbg !5090
  store i8 1, ptr %__ret_do_once183, align 1, !dbg !5090
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond184) #15, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %__ret_cond184, metadata !4238, metadata !DIExpression()), !dbg !5091
  %83 = load i8, ptr %__ret_do_once183, align 1, !dbg !5091, !range !4712, !noundef !549
  %tobool185 = trunc i8 %83 to i1, !dbg !5091
  %lnot186 = xor i1 %tobool185, true, !dbg !5091
  %lnot188 = xor i1 %lnot186, true, !dbg !5091
  %frombool190 = zext i1 %lnot188 to i8, !dbg !5091
  store i8 %frombool190, ptr %__ret_cond184, align 1, !dbg !5091
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once191) #15, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %__ret_once191, metadata !4241, metadata !DIExpression()), !dbg !5091
  store i8 0, ptr %__ret_once191, align 1, !dbg !5091
  %84 = load i8, ptr %__ret_cond184, align 1, !dbg !5092, !range !4712, !noundef !549
  %tobool192 = trunc i8 %84 to i1, !dbg !5092
  br i1 %tobool192, label %land.rhs194, label %land.end198, !dbg !5092

land.rhs194:                                      ; preds = %if.then182
  %85 = load i8, ptr @unwind_next_frame.__already_done.10, align 1, !dbg !5092, !range !4712, !noundef !549
  %tobool195 = trunc i8 %85 to i1, !dbg !5092
  %lnot196 = xor i1 %tobool195, true, !dbg !5092
  br label %land.end198

land.end198:                                      ; preds = %land.rhs194, %if.then182
  %86 = phi i1 [ false, %if.then182 ], [ %lnot196, %land.rhs194 ], !dbg !5094
  %lnot199 = xor i1 %86, true, !dbg !5092
  %lnot201 = xor i1 %lnot199, true, !dbg !5092
  %lnot.ext202 = zext i1 %lnot201 to i32, !dbg !5092
  %conv203 = sext i32 %lnot.ext202 to i64, !dbg !5092
  %expval204 = call i64 @llvm.expect.i64(i64 %conv203, i64 0), !dbg !5092
  %tobool205 = icmp ne i64 %expval204, 0, !dbg !5092
  br i1 %tobool205, label %if.then206, label %if.end207, !dbg !5091

if.then206:                                       ; preds = %land.end198
  store i8 1, ptr @unwind_next_frame.__already_done.10, align 1, !dbg !5095
  store i8 1, ptr %__ret_once191, align 1, !dbg !5095
  br label %if.end207, !dbg !5095

if.end207:                                        ; preds = %if.then206, %land.end198
  %87 = load i8, ptr %__ret_once191, align 1, !dbg !5091, !range !4712, !noundef !549
  %tobool209 = trunc i8 %87 to i1, !dbg !5091
  %lnot210 = xor i1 %tobool209, true, !dbg !5091
  %lnot212 = xor i1 %lnot210, true, !dbg !5091
  %lnot.ext213 = zext i1 %lnot212 to i32, !dbg !5091
  %conv214 = sext i32 %lnot.ext213 to i64, !dbg !5091
  %expval215 = call i64 @llvm.expect.i64(i64 %conv214, i64 0), !dbg !5091
  store i64 %expval215, ptr %tmp208, align 8, !dbg !5092
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once191) #15, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond184) #15, !dbg !5097
  %88 = load i64, ptr %tmp208, align 8, !dbg !5091
  %tobool216 = icmp ne i64 %88, 0, !dbg !5097
  br i1 %tobool216, label %if.then217, label %if.end224, !dbg !5090

if.then217:                                       ; preds = %if.end207
  br label %do.body218, !dbg !5098

do.body218:                                       ; preds = %if.then217
  br label %do.cond219, !dbg !5100

do.cond219:                                       ; preds = %do.body218
  br label %do.end220, !dbg !5100

do.end220:                                        ; preds = %do.cond219
  %89 = load ptr, ptr %state.addr, align 8, !dbg !5098
  %ip222 = getelementptr inbounds %struct.unwind_state, ptr %89, i32 0, i32 10, !dbg !5098
  %90 = load i64, ptr %ip222, align 8, !dbg !5098
  %91 = inttoptr i64 %90 to ptr, !dbg !5098
  %call223 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.11, ptr noundef %91) #17, !dbg !5098
  store i32 %call223, ptr %tmp221, align 4, !dbg !5100
  %92 = load i32, ptr %tmp221, align 4, !dbg !5098
  br label %if.end224, !dbg !5097

if.end224:                                        ; preds = %do.end220, %if.end207
  %93 = load i8, ptr %__ret_do_once183, align 1, !dbg !5090, !range !4712, !noundef !549
  %tobool226 = trunc i8 %93 to i1, !dbg !5090
  %lnot227 = xor i1 %tobool226, true, !dbg !5090
  %lnot229 = xor i1 %lnot227, true, !dbg !5090
  %lnot.ext230 = zext i1 %lnot229 to i32, !dbg !5090
  %conv231 = sext i32 %lnot.ext230 to i64, !dbg !5090
  %expval232 = call i64 @llvm.expect.i64(i64 %conv231, i64 0), !dbg !5090
  store i64 %expval232, ptr %tmp225, align 8, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once183) #15, !dbg !5102
  %94 = load i64, ptr %tmp225, align 8, !dbg !5090
  %95 = load i8, ptr @unwind_debug, align 1, !dbg !5103, !range !4712, !noundef !549
  %tobool233 = trunc i8 %95 to i1, !dbg !5103
  br i1 %tobool233, label %land.lhs.true235, label %if.end238, !dbg !5103

land.lhs.true235:                                 ; preds = %if.end224
  %96 = load i8, ptr @unwind_next_frame.dumped_before.9, align 1, !dbg !5103, !range !4712, !noundef !549
  %tobool236 = trunc i8 %96 to i1, !dbg !5103
  br i1 %tobool236, label %if.end238, label %if.then237, !dbg !5102

if.then237:                                       ; preds = %land.lhs.true235
  store i8 1, ptr @unwind_next_frame.dumped_before.9, align 1, !dbg !5105
  %97 = load ptr, ptr %state.addr, align 8, !dbg !5105
  call void @unwind_dump(ptr noundef %97) #16, !dbg !5105
  br label %if.end238, !dbg !5105

if.end238:                                        ; preds = %if.then237, %land.lhs.true235, %if.end224
  br label %if.end239, !dbg !5102

if.end239:                                        ; preds = %if.end238, %land.lhs.true179, %if.then174
  br label %err, !dbg !5107

if.end240:                                        ; preds = %sw.bb172
  br label %sw.epilog, !dbg !5108

sw.bb241:                                         ; preds = %if.end24
  %98 = load ptr, ptr %state.addr, align 8, !dbg !5109
  %call242 = call zeroext i1 @get_reg(ptr noundef %98, i32 noundef 96, ptr noundef %sp) #16, !dbg !5110
  br i1 %call242, label %if.end309, label %if.then243, !dbg !5111

if.then243:                                       ; preds = %sw.bb241
  %99 = load ptr, ptr %state.addr, align 8, !dbg !5112
  %task244 = getelementptr inbounds %struct.unwind_state, ptr %99, i32 0, i32 2, !dbg !5112
  %100 = load ptr, ptr %task244, align 8, !dbg !5112
  %call245 = call ptr @get_current() #16, !dbg !5112
  %cmp246 = icmp eq ptr %100, %call245, !dbg !5112
  br i1 %cmp246, label %land.lhs.true248, label %if.end308, !dbg !5112

land.lhs.true248:                                 ; preds = %if.then243
  %101 = load ptr, ptr %state.addr, align 8, !dbg !5112
  %error249 = getelementptr inbounds %struct.unwind_state, ptr %101, i32 0, i32 5, !dbg !5112
  %102 = load i8, ptr %error249, align 8, !dbg !5112, !range !4712, !noundef !549
  %tobool250 = trunc i8 %102 to i1, !dbg !5112
  br i1 %tobool250, label %if.end308, label %if.then251, !dbg !5113

if.then251:                                       ; preds = %land.lhs.true248
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once252) #15, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once252, metadata !4242, metadata !DIExpression()), !dbg !5114
  store i8 1, ptr %__ret_do_once252, align 1, !dbg !5114
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond253) #15, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__ret_cond253, metadata !4249, metadata !DIExpression()), !dbg !5115
  %103 = load i8, ptr %__ret_do_once252, align 1, !dbg !5115, !range !4712, !noundef !549
  %tobool254 = trunc i8 %103 to i1, !dbg !5115
  %lnot255 = xor i1 %tobool254, true, !dbg !5115
  %lnot257 = xor i1 %lnot255, true, !dbg !5115
  %frombool259 = zext i1 %lnot257 to i8, !dbg !5115
  store i8 %frombool259, ptr %__ret_cond253, align 1, !dbg !5115
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once260) #15, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__ret_once260, metadata !4252, metadata !DIExpression()), !dbg !5115
  store i8 0, ptr %__ret_once260, align 1, !dbg !5115
  %104 = load i8, ptr %__ret_cond253, align 1, !dbg !5116, !range !4712, !noundef !549
  %tobool261 = trunc i8 %104 to i1, !dbg !5116
  br i1 %tobool261, label %land.rhs263, label %land.end267, !dbg !5116

land.rhs263:                                      ; preds = %if.then251
  %105 = load i8, ptr @unwind_next_frame.__already_done.13, align 1, !dbg !5116, !range !4712, !noundef !549
  %tobool264 = trunc i8 %105 to i1, !dbg !5116
  %lnot265 = xor i1 %tobool264, true, !dbg !5116
  br label %land.end267

land.end267:                                      ; preds = %land.rhs263, %if.then251
  %106 = phi i1 [ false, %if.then251 ], [ %lnot265, %land.rhs263 ], !dbg !5118
  %lnot268 = xor i1 %106, true, !dbg !5116
  %lnot270 = xor i1 %lnot268, true, !dbg !5116
  %lnot.ext271 = zext i1 %lnot270 to i32, !dbg !5116
  %conv272 = sext i32 %lnot.ext271 to i64, !dbg !5116
  %expval273 = call i64 @llvm.expect.i64(i64 %conv272, i64 0), !dbg !5116
  %tobool274 = icmp ne i64 %expval273, 0, !dbg !5116
  br i1 %tobool274, label %if.then275, label %if.end276, !dbg !5115

if.then275:                                       ; preds = %land.end267
  store i8 1, ptr @unwind_next_frame.__already_done.13, align 1, !dbg !5119
  store i8 1, ptr %__ret_once260, align 1, !dbg !5119
  br label %if.end276, !dbg !5119

if.end276:                                        ; preds = %if.then275, %land.end267
  %107 = load i8, ptr %__ret_once260, align 1, !dbg !5115, !range !4712, !noundef !549
  %tobool278 = trunc i8 %107 to i1, !dbg !5115
  %lnot279 = xor i1 %tobool278, true, !dbg !5115
  %lnot281 = xor i1 %lnot279, true, !dbg !5115
  %lnot.ext282 = zext i1 %lnot281 to i32, !dbg !5115
  %conv283 = sext i32 %lnot.ext282 to i64, !dbg !5115
  %expval284 = call i64 @llvm.expect.i64(i64 %conv283, i64 0), !dbg !5115
  store i64 %expval284, ptr %tmp277, align 8, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once260) #15, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond253) #15, !dbg !5121
  %108 = load i64, ptr %tmp277, align 8, !dbg !5115
  %tobool285 = icmp ne i64 %108, 0, !dbg !5121
  br i1 %tobool285, label %if.then286, label %if.end293, !dbg !5114

if.then286:                                       ; preds = %if.end276
  br label %do.body287, !dbg !5122

do.body287:                                       ; preds = %if.then286
  br label %do.cond288, !dbg !5124

do.cond288:                                       ; preds = %do.body287
  br label %do.end289, !dbg !5124

do.end289:                                        ; preds = %do.cond288
  %109 = load ptr, ptr %state.addr, align 8, !dbg !5122
  %ip291 = getelementptr inbounds %struct.unwind_state, ptr %109, i32 0, i32 10, !dbg !5122
  %110 = load i64, ptr %ip291, align 8, !dbg !5122
  %111 = inttoptr i64 %110 to ptr, !dbg !5122
  %call292 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.14, ptr noundef %111) #17, !dbg !5122
  store i32 %call292, ptr %tmp290, align 4, !dbg !5124
  %112 = load i32, ptr %tmp290, align 4, !dbg !5122
  br label %if.end293, !dbg !5121

if.end293:                                        ; preds = %do.end289, %if.end276
  %113 = load i8, ptr %__ret_do_once252, align 1, !dbg !5114, !range !4712, !noundef !549
  %tobool295 = trunc i8 %113 to i1, !dbg !5114
  %lnot296 = xor i1 %tobool295, true, !dbg !5114
  %lnot298 = xor i1 %lnot296, true, !dbg !5114
  %lnot.ext299 = zext i1 %lnot298 to i32, !dbg !5114
  %conv300 = sext i32 %lnot.ext299 to i64, !dbg !5114
  %expval301 = call i64 @llvm.expect.i64(i64 %conv300, i64 0), !dbg !5114
  store i64 %expval301, ptr %tmp294, align 8, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once252) #15, !dbg !5126
  %114 = load i64, ptr %tmp294, align 8, !dbg !5114
  %115 = load i8, ptr @unwind_debug, align 1, !dbg !5127, !range !4712, !noundef !549
  %tobool302 = trunc i8 %115 to i1, !dbg !5127
  br i1 %tobool302, label %land.lhs.true304, label %if.end307, !dbg !5127

land.lhs.true304:                                 ; preds = %if.end293
  %116 = load i8, ptr @unwind_next_frame.dumped_before.12, align 1, !dbg !5127, !range !4712, !noundef !549
  %tobool305 = trunc i8 %116 to i1, !dbg !5127
  br i1 %tobool305, label %if.end307, label %if.then306, !dbg !5126

if.then306:                                       ; preds = %land.lhs.true304
  store i8 1, ptr @unwind_next_frame.dumped_before.12, align 1, !dbg !5129
  %117 = load ptr, ptr %state.addr, align 8, !dbg !5129
  call void @unwind_dump(ptr noundef %117) #16, !dbg !5129
  br label %if.end307, !dbg !5129

if.end307:                                        ; preds = %if.then306, %land.lhs.true304, %if.end293
  br label %if.end308, !dbg !5126

if.end308:                                        ; preds = %if.end307, %land.lhs.true248, %if.then243
  br label %err, !dbg !5131

if.end309:                                        ; preds = %sw.bb241
  br label %sw.epilog, !dbg !5132

sw.default:                                       ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once310) #15, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once310, metadata !4253, metadata !DIExpression()), !dbg !5133
  store i8 1, ptr %__ret_do_once310, align 1, !dbg !5133
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond311) #15, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %__ret_cond311, metadata !4255, metadata !DIExpression()), !dbg !5134
  %118 = load i8, ptr %__ret_do_once310, align 1, !dbg !5134, !range !4712, !noundef !549
  %tobool312 = trunc i8 %118 to i1, !dbg !5134
  %lnot313 = xor i1 %tobool312, true, !dbg !5134
  %lnot315 = xor i1 %lnot313, true, !dbg !5134
  %frombool317 = zext i1 %lnot315 to i8, !dbg !5134
  store i8 %frombool317, ptr %__ret_cond311, align 1, !dbg !5134
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once318) #15, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %__ret_once318, metadata !4258, metadata !DIExpression()), !dbg !5134
  store i8 0, ptr %__ret_once318, align 1, !dbg !5134
  %119 = load i8, ptr %__ret_cond311, align 1, !dbg !5135, !range !4712, !noundef !549
  %tobool319 = trunc i8 %119 to i1, !dbg !5135
  br i1 %tobool319, label %land.rhs321, label %land.end325, !dbg !5135

land.rhs321:                                      ; preds = %sw.default
  %120 = load i8, ptr @unwind_next_frame.__already_done.15, align 1, !dbg !5135, !range !4712, !noundef !549
  %tobool322 = trunc i8 %120 to i1, !dbg !5135
  %lnot323 = xor i1 %tobool322, true, !dbg !5135
  br label %land.end325

land.end325:                                      ; preds = %land.rhs321, %sw.default
  %121 = phi i1 [ false, %sw.default ], [ %lnot323, %land.rhs321 ], !dbg !5137
  %lnot326 = xor i1 %121, true, !dbg !5135
  %lnot328 = xor i1 %lnot326, true, !dbg !5135
  %lnot.ext329 = zext i1 %lnot328 to i32, !dbg !5135
  %conv330 = sext i32 %lnot.ext329 to i64, !dbg !5135
  %expval331 = call i64 @llvm.expect.i64(i64 %conv330, i64 0), !dbg !5135
  %tobool332 = icmp ne i64 %expval331, 0, !dbg !5135
  br i1 %tobool332, label %if.then333, label %if.end334, !dbg !5134

if.then333:                                       ; preds = %land.end325
  store i8 1, ptr @unwind_next_frame.__already_done.15, align 1, !dbg !5138
  store i8 1, ptr %__ret_once318, align 1, !dbg !5138
  br label %if.end334, !dbg !5138

if.end334:                                        ; preds = %if.then333, %land.end325
  %122 = load i8, ptr %__ret_once318, align 1, !dbg !5134, !range !4712, !noundef !549
  %tobool336 = trunc i8 %122 to i1, !dbg !5134
  %lnot337 = xor i1 %tobool336, true, !dbg !5134
  %lnot339 = xor i1 %lnot337, true, !dbg !5134
  %lnot.ext340 = zext i1 %lnot339 to i32, !dbg !5134
  %conv341 = sext i32 %lnot.ext340 to i64, !dbg !5134
  %expval342 = call i64 @llvm.expect.i64(i64 %conv341, i64 0), !dbg !5134
  store i64 %expval342, ptr %tmp335, align 8, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once318) #15, !dbg !5140
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond311) #15, !dbg !5140
  %123 = load i64, ptr %tmp335, align 8, !dbg !5134
  %tobool343 = icmp ne i64 %123, 0, !dbg !5140
  br i1 %tobool343, label %if.then344, label %if.end355, !dbg !5133

if.then344:                                       ; preds = %if.end334
  br label %do.body345, !dbg !5141

do.body345:                                       ; preds = %if.then344
  br label %do.cond346, !dbg !5143

do.cond346:                                       ; preds = %do.body345
  br label %do.end347, !dbg !5143

do.end347:                                        ; preds = %do.cond346
  %124 = load ptr, ptr %orc, align 8, !dbg !5141
  %sp_reg349 = getelementptr inbounds %struct.orc_entry, ptr %124, i32 0, i32 2, !dbg !5141
  %bf.load350 = load i16, ptr %sp_reg349, align 1, !dbg !5141
  %bf.clear351 = and i16 %bf.load350, 15, !dbg !5141
  %bf.cast352 = zext i16 %bf.clear351 to i32, !dbg !5141
  %125 = load ptr, ptr %state.addr, align 8, !dbg !5141
  %ip353 = getelementptr inbounds %struct.unwind_state, ptr %125, i32 0, i32 10, !dbg !5141
  %126 = load i64, ptr %ip353, align 8, !dbg !5141
  %127 = inttoptr i64 %126 to ptr, !dbg !5141
  %call354 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.16, i32 noundef %bf.cast352, ptr noundef %127) #17, !dbg !5141
  store i32 %call354, ptr %tmp348, align 4, !dbg !5143
  %128 = load i32, ptr %tmp348, align 4, !dbg !5141
  br label %if.end355, !dbg !5140

if.end355:                                        ; preds = %do.end347, %if.end334
  %129 = load i8, ptr %__ret_do_once310, align 1, !dbg !5133, !range !4712, !noundef !549
  %tobool357 = trunc i8 %129 to i1, !dbg !5133
  %lnot358 = xor i1 %tobool357, true, !dbg !5133
  %lnot360 = xor i1 %lnot358, true, !dbg !5133
  %lnot.ext361 = zext i1 %lnot360 to i32, !dbg !5133
  %conv362 = sext i32 %lnot.ext361 to i64, !dbg !5133
  %expval363 = call i64 @llvm.expect.i64(i64 %conv362, i64 0), !dbg !5133
  store i64 %expval363, ptr %tmp356, align 8, !dbg !5140
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once310) #15, !dbg !5145
  %130 = load i64, ptr %tmp356, align 8, !dbg !5133
  br label %err, !dbg !5146

sw.epilog:                                        ; preds = %if.end309, %if.end240, %if.end171, %if.end102, %sw.bb42, %sw.bb40, %sw.bb36, %sw.bb
  %131 = load i8, ptr %indirect, align 1, !dbg !5147, !range !4712, !noundef !549
  %tobool364 = trunc i8 %131 to i1, !dbg !5147
  br i1 %tobool364, label %if.then365, label %if.end380, !dbg !5149

if.then365:                                       ; preds = %sw.epilog
  %132 = load ptr, ptr %state.addr, align 8, !dbg !5150
  %133 = load i64, ptr %sp, align 8, !dbg !5153
  %call366 = call zeroext i1 @deref_stack_reg(ptr noundef %132, i64 noundef %133, ptr noundef %sp) #16, !dbg !5154
  br i1 %call366, label %if.end368, label %if.then367, !dbg !5155

if.then367:                                       ; preds = %if.then365
  br label %err, !dbg !5156

if.end368:                                        ; preds = %if.then365
  %134 = load ptr, ptr %orc, align 8, !dbg !5157
  %sp_reg369 = getelementptr inbounds %struct.orc_entry, ptr %134, i32 0, i32 2, !dbg !5159
  %bf.load370 = load i16, ptr %sp_reg369, align 1, !dbg !5159
  %bf.clear371 = and i16 %bf.load370, 15, !dbg !5159
  %bf.cast372 = zext i16 %bf.clear371 to i32, !dbg !5159
  %cmp373 = icmp eq i32 %bf.cast372, 9, !dbg !5160
  br i1 %cmp373, label %if.then375, label %if.end379, !dbg !5161

if.then375:                                       ; preds = %if.end368
  %135 = load ptr, ptr %orc, align 8, !dbg !5162
  %sp_offset376 = getelementptr inbounds %struct.orc_entry, ptr %135, i32 0, i32 0, !dbg !5163
  %136 = load i16, ptr %sp_offset376, align 1, !dbg !5163
  %conv377 = sext i16 %136 to i64, !dbg !5162
  %137 = load i64, ptr %sp, align 8, !dbg !5164
  %add378 = add i64 %137, %conv377, !dbg !5164
  store i64 %add378, ptr %sp, align 8, !dbg !5164
  br label %if.end379, !dbg !5165

if.end379:                                        ; preds = %if.then375, %if.end368
  br label %if.end380, !dbg !5166

if.end380:                                        ; preds = %if.end379, %sw.epilog
  %138 = load ptr, ptr %orc, align 8, !dbg !5167
  %type381 = getelementptr inbounds %struct.orc_entry, ptr %138, i32 0, i32 2, !dbg !5168
  %bf.load382 = load i16, ptr %type381, align 1, !dbg !5168
  %bf.lshr383 = lshr i16 %bf.load382, 8, !dbg !5168
  %bf.clear384 = and i16 %bf.lshr383, 7, !dbg !5168
  %bf.cast385 = zext i16 %bf.clear384 to i32, !dbg !5168
  switch i32 %bf.cast385, label %sw.default557 [
    i32 2, label %sw.bb386
    i32 3, label %sw.bb397
    i32 4, label %sw.bb474
  ], !dbg !5169

sw.bb386:                                         ; preds = %if.end380
  %139 = load i64, ptr %sp, align 8, !dbg !5170
  %sub387 = sub i64 %139, 8, !dbg !5171
  store i64 %sub387, ptr %ip_p, align 8, !dbg !5172
  %140 = load ptr, ptr %state.addr, align 8, !dbg !5173
  %141 = load i64, ptr %ip_p, align 8, !dbg !5175
  %142 = load ptr, ptr %state.addr, align 8, !dbg !5176
  %ip388 = getelementptr inbounds %struct.unwind_state, ptr %142, i32 0, i32 10, !dbg !5177
  %call389 = call zeroext i1 @deref_stack_reg(ptr noundef %140, i64 noundef %141, ptr noundef %ip388) #16, !dbg !5178
  br i1 %call389, label %if.end391, label %if.then390, !dbg !5179

if.then390:                                       ; preds = %sw.bb386
  br label %err, !dbg !5180

if.end391:                                        ; preds = %sw.bb386
  %143 = load ptr, ptr %state.addr, align 8, !dbg !5181
  %144 = load ptr, ptr %state.addr, align 8, !dbg !5182
  %ip392 = getelementptr inbounds %struct.unwind_state, ptr %144, i32 0, i32 10, !dbg !5183
  %145 = load i64, ptr %ip392, align 8, !dbg !5183
  %146 = load i64, ptr %ip_p, align 8, !dbg !5184
  %147 = inttoptr i64 %146 to ptr, !dbg !5185
  %call393 = call i64 @unwind_recover_ret_addr(ptr noundef %143, i64 noundef %145, ptr noundef %147) #16, !dbg !5186
  %148 = load ptr, ptr %state.addr, align 8, !dbg !5187
  %ip394 = getelementptr inbounds %struct.unwind_state, ptr %148, i32 0, i32 10, !dbg !5188
  store i64 %call393, ptr %ip394, align 8, !dbg !5189
  %149 = load i64, ptr %sp, align 8, !dbg !5190
  %150 = load ptr, ptr %state.addr, align 8, !dbg !5191
  %sp395 = getelementptr inbounds %struct.unwind_state, ptr %150, i32 0, i32 8, !dbg !5192
  store i64 %149, ptr %sp395, align 8, !dbg !5193
  %151 = load ptr, ptr %state.addr, align 8, !dbg !5194
  %regs396 = getelementptr inbounds %struct.unwind_state, ptr %151, i32 0, i32 11, !dbg !5195
  store ptr null, ptr %regs396, align 8, !dbg !5196
  %152 = load ptr, ptr %state.addr, align 8, !dbg !5197
  %prev_regs = getelementptr inbounds %struct.unwind_state, ptr %152, i32 0, i32 12, !dbg !5198
  store ptr null, ptr %prev_regs, align 8, !dbg !5199
  br label %sw.epilog612, !dbg !5200

sw.bb397:                                         ; preds = %if.end380
  %153 = load ptr, ptr %state.addr, align 8, !dbg !5201
  %154 = load i64, ptr %sp, align 8, !dbg !5202
  %155 = load ptr, ptr %state.addr, align 8, !dbg !5203
  %ip398 = getelementptr inbounds %struct.unwind_state, ptr %155, i32 0, i32 10, !dbg !5204
  %156 = load ptr, ptr %state.addr, align 8, !dbg !5205
  %sp399 = getelementptr inbounds %struct.unwind_state, ptr %156, i32 0, i32 8, !dbg !5206
  %call400 = call zeroext i1 @deref_stack_regs(ptr noundef %153, i64 noundef %154, ptr noundef %ip398, ptr noundef %sp399) #16, !dbg !5207
  br i1 %call400, label %if.end466, label %if.then401, !dbg !5208

if.then401:                                       ; preds = %sw.bb397
  %157 = load ptr, ptr %state.addr, align 8, !dbg !5209
  %task402 = getelementptr inbounds %struct.unwind_state, ptr %157, i32 0, i32 2, !dbg !5209
  %158 = load ptr, ptr %task402, align 8, !dbg !5209
  %call403 = call ptr @get_current() #16, !dbg !5209
  %cmp404 = icmp eq ptr %158, %call403, !dbg !5209
  br i1 %cmp404, label %land.lhs.true406, label %if.end465, !dbg !5209

land.lhs.true406:                                 ; preds = %if.then401
  %159 = load ptr, ptr %state.addr, align 8, !dbg !5209
  %error407 = getelementptr inbounds %struct.unwind_state, ptr %159, i32 0, i32 5, !dbg !5209
  %160 = load i8, ptr %error407, align 8, !dbg !5209, !range !4712, !noundef !549
  %tobool408 = trunc i8 %160 to i1, !dbg !5209
  br i1 %tobool408, label %if.end465, label %if.then409, !dbg !5210

if.then409:                                       ; preds = %land.lhs.true406
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once410) #15, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once410, metadata !4259, metadata !DIExpression()), !dbg !5211
  store i8 1, ptr %__ret_do_once410, align 1, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond411) #15, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %__ret_cond411, metadata !4267, metadata !DIExpression()), !dbg !5212
  %161 = load i8, ptr %__ret_do_once410, align 1, !dbg !5212, !range !4712, !noundef !549
  %tobool412 = trunc i8 %161 to i1, !dbg !5212
  %lnot413 = xor i1 %tobool412, true, !dbg !5212
  %lnot415 = xor i1 %lnot413, true, !dbg !5212
  %frombool417 = zext i1 %lnot415 to i8, !dbg !5212
  store i8 %frombool417, ptr %__ret_cond411, align 1, !dbg !5212
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once418) #15, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %__ret_once418, metadata !4270, metadata !DIExpression()), !dbg !5212
  store i8 0, ptr %__ret_once418, align 1, !dbg !5212
  %162 = load i8, ptr %__ret_cond411, align 1, !dbg !5213, !range !4712, !noundef !549
  %tobool419 = trunc i8 %162 to i1, !dbg !5213
  br i1 %tobool419, label %land.rhs421, label %land.end425, !dbg !5213

land.rhs421:                                      ; preds = %if.then409
  %163 = load i8, ptr @unwind_next_frame.__already_done.18, align 1, !dbg !5213, !range !4712, !noundef !549
  %tobool422 = trunc i8 %163 to i1, !dbg !5213
  %lnot423 = xor i1 %tobool422, true, !dbg !5213
  br label %land.end425

land.end425:                                      ; preds = %land.rhs421, %if.then409
  %164 = phi i1 [ false, %if.then409 ], [ %lnot423, %land.rhs421 ], !dbg !5215
  %lnot426 = xor i1 %164, true, !dbg !5213
  %lnot428 = xor i1 %lnot426, true, !dbg !5213
  %lnot.ext429 = zext i1 %lnot428 to i32, !dbg !5213
  %conv430 = sext i32 %lnot.ext429 to i64, !dbg !5213
  %expval431 = call i64 @llvm.expect.i64(i64 %conv430, i64 0), !dbg !5213
  %tobool432 = icmp ne i64 %expval431, 0, !dbg !5213
  br i1 %tobool432, label %if.then433, label %if.end434, !dbg !5212

if.then433:                                       ; preds = %land.end425
  store i8 1, ptr @unwind_next_frame.__already_done.18, align 1, !dbg !5216
  store i8 1, ptr %__ret_once418, align 1, !dbg !5216
  br label %if.end434, !dbg !5216

if.end434:                                        ; preds = %if.then433, %land.end425
  %165 = load i8, ptr %__ret_once418, align 1, !dbg !5212, !range !4712, !noundef !549
  %tobool436 = trunc i8 %165 to i1, !dbg !5212
  %lnot437 = xor i1 %tobool436, true, !dbg !5212
  %lnot439 = xor i1 %lnot437, true, !dbg !5212
  %lnot.ext440 = zext i1 %lnot439 to i32, !dbg !5212
  %conv441 = sext i32 %lnot.ext440 to i64, !dbg !5212
  %expval442 = call i64 @llvm.expect.i64(i64 %conv441, i64 0), !dbg !5212
  store i64 %expval442, ptr %tmp435, align 8, !dbg !5213
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once418) #15, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond411) #15, !dbg !5218
  %166 = load i64, ptr %tmp435, align 8, !dbg !5212
  %tobool443 = icmp ne i64 %166, 0, !dbg !5218
  br i1 %tobool443, label %if.then444, label %if.end450, !dbg !5211

if.then444:                                       ; preds = %if.end434
  br label %do.body445, !dbg !5219

do.body445:                                       ; preds = %if.then444
  br label %do.cond446, !dbg !5221

do.cond446:                                       ; preds = %do.body445
  br label %do.end447, !dbg !5221

do.end447:                                        ; preds = %do.cond446
  %167 = load i64, ptr %orig_ip, align 8, !dbg !5219
  %168 = inttoptr i64 %167 to ptr, !dbg !5219
  %call449 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.19, ptr noundef %168) #17, !dbg !5219
  store i32 %call449, ptr %tmp448, align 4, !dbg !5221
  %169 = load i32, ptr %tmp448, align 4, !dbg !5219
  br label %if.end450, !dbg !5218

if.end450:                                        ; preds = %do.end447, %if.end434
  %170 = load i8, ptr %__ret_do_once410, align 1, !dbg !5211, !range !4712, !noundef !549
  %tobool452 = trunc i8 %170 to i1, !dbg !5211
  %lnot453 = xor i1 %tobool452, true, !dbg !5211
  %lnot455 = xor i1 %lnot453, true, !dbg !5211
  %lnot.ext456 = zext i1 %lnot455 to i32, !dbg !5211
  %conv457 = sext i32 %lnot.ext456 to i64, !dbg !5211
  %expval458 = call i64 @llvm.expect.i64(i64 %conv457, i64 0), !dbg !5211
  store i64 %expval458, ptr %tmp451, align 8, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once410) #15, !dbg !5223
  %171 = load i64, ptr %tmp451, align 8, !dbg !5211
  %172 = load i8, ptr @unwind_debug, align 1, !dbg !5224, !range !4712, !noundef !549
  %tobool459 = trunc i8 %172 to i1, !dbg !5224
  br i1 %tobool459, label %land.lhs.true461, label %if.end464, !dbg !5224

land.lhs.true461:                                 ; preds = %if.end450
  %173 = load i8, ptr @unwind_next_frame.dumped_before.17, align 1, !dbg !5224, !range !4712, !noundef !549
  %tobool462 = trunc i8 %173 to i1, !dbg !5224
  br i1 %tobool462, label %if.end464, label %if.then463, !dbg !5223

if.then463:                                       ; preds = %land.lhs.true461
  store i8 1, ptr @unwind_next_frame.dumped_before.17, align 1, !dbg !5226
  %174 = load ptr, ptr %state.addr, align 8, !dbg !5226
  call void @unwind_dump(ptr noundef %174) #16, !dbg !5226
  br label %if.end464, !dbg !5226

if.end464:                                        ; preds = %if.then463, %land.lhs.true461, %if.end450
  br label %if.end465, !dbg !5223

if.end465:                                        ; preds = %if.end464, %land.lhs.true406, %if.then401
  br label %err, !dbg !5228

if.end466:                                        ; preds = %sw.bb397
  %175 = load ptr, ptr %state.addr, align 8, !dbg !5229
  %176 = load ptr, ptr %state.addr, align 8, !dbg !5230
  %ip467 = getelementptr inbounds %struct.unwind_state, ptr %176, i32 0, i32 10, !dbg !5231
  %177 = load i64, ptr %ip467, align 8, !dbg !5231
  %178 = load ptr, ptr %state.addr, align 8, !dbg !5232
  %sp468 = getelementptr inbounds %struct.unwind_state, ptr %178, i32 0, i32 8, !dbg !5233
  %179 = load i64, ptr %sp468, align 8, !dbg !5233
  %sub469 = sub i64 %179, 8, !dbg !5234
  %180 = inttoptr i64 %sub469 to ptr, !dbg !5235
  %call470 = call i64 @unwind_recover_rethook(ptr noundef %175, i64 noundef %177, ptr noundef %180) #16, !dbg !5236
  %181 = load ptr, ptr %state.addr, align 8, !dbg !5237
  %ip471 = getelementptr inbounds %struct.unwind_state, ptr %181, i32 0, i32 10, !dbg !5238
  store i64 %call470, ptr %ip471, align 8, !dbg !5239
  %182 = load i64, ptr %sp, align 8, !dbg !5240
  %183 = inttoptr i64 %182 to ptr, !dbg !5241
  %184 = load ptr, ptr %state.addr, align 8, !dbg !5242
  %regs472 = getelementptr inbounds %struct.unwind_state, ptr %184, i32 0, i32 11, !dbg !5243
  store ptr %183, ptr %regs472, align 8, !dbg !5244
  %185 = load ptr, ptr %state.addr, align 8, !dbg !5245
  %prev_regs473 = getelementptr inbounds %struct.unwind_state, ptr %185, i32 0, i32 12, !dbg !5246
  store ptr null, ptr %prev_regs473, align 8, !dbg !5247
  %186 = load ptr, ptr %state.addr, align 8, !dbg !5248
  %full_regs = getelementptr inbounds %struct.unwind_state, ptr %186, i32 0, i32 7, !dbg !5249
  store i8 1, ptr %full_regs, align 2, !dbg !5250
  br label %sw.epilog612, !dbg !5251

sw.bb474:                                         ; preds = %if.end380
  %187 = load ptr, ptr %state.addr, align 8, !dbg !5252
  %188 = load i64, ptr %sp, align 8, !dbg !5253
  %189 = load ptr, ptr %state.addr, align 8, !dbg !5254
  %ip475 = getelementptr inbounds %struct.unwind_state, ptr %189, i32 0, i32 10, !dbg !5255
  %190 = load ptr, ptr %state.addr, align 8, !dbg !5256
  %sp476 = getelementptr inbounds %struct.unwind_state, ptr %190, i32 0, i32 8, !dbg !5257
  %call477 = call zeroext i1 @deref_stack_iret_regs(ptr noundef %187, i64 noundef %188, ptr noundef %ip475, ptr noundef %sp476) #16, !dbg !5258
  br i1 %call477, label %if.end543, label %if.then478, !dbg !5259

if.then478:                                       ; preds = %sw.bb474
  %191 = load ptr, ptr %state.addr, align 8, !dbg !5260
  %task479 = getelementptr inbounds %struct.unwind_state, ptr %191, i32 0, i32 2, !dbg !5260
  %192 = load ptr, ptr %task479, align 8, !dbg !5260
  %call480 = call ptr @get_current() #16, !dbg !5260
  %cmp481 = icmp eq ptr %192, %call480, !dbg !5260
  br i1 %cmp481, label %land.lhs.true483, label %if.end542, !dbg !5260

land.lhs.true483:                                 ; preds = %if.then478
  %193 = load ptr, ptr %state.addr, align 8, !dbg !5260
  %error484 = getelementptr inbounds %struct.unwind_state, ptr %193, i32 0, i32 5, !dbg !5260
  %194 = load i8, ptr %error484, align 8, !dbg !5260, !range !4712, !noundef !549
  %tobool485 = trunc i8 %194 to i1, !dbg !5260
  br i1 %tobool485, label %if.end542, label %if.then486, !dbg !5261

if.then486:                                       ; preds = %land.lhs.true483
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once487) #15, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once487, metadata !4271, metadata !DIExpression()), !dbg !5262
  store i8 1, ptr %__ret_do_once487, align 1, !dbg !5262
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond488) #15, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__ret_cond488, metadata !4278, metadata !DIExpression()), !dbg !5263
  %195 = load i8, ptr %__ret_do_once487, align 1, !dbg !5263, !range !4712, !noundef !549
  %tobool489 = trunc i8 %195 to i1, !dbg !5263
  %lnot490 = xor i1 %tobool489, true, !dbg !5263
  %lnot492 = xor i1 %lnot490, true, !dbg !5263
  %frombool494 = zext i1 %lnot492 to i8, !dbg !5263
  store i8 %frombool494, ptr %__ret_cond488, align 1, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once495) #15, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %__ret_once495, metadata !4281, metadata !DIExpression()), !dbg !5263
  store i8 0, ptr %__ret_once495, align 1, !dbg !5263
  %196 = load i8, ptr %__ret_cond488, align 1, !dbg !5264, !range !4712, !noundef !549
  %tobool496 = trunc i8 %196 to i1, !dbg !5264
  br i1 %tobool496, label %land.rhs498, label %land.end502, !dbg !5264

land.rhs498:                                      ; preds = %if.then486
  %197 = load i8, ptr @unwind_next_frame.__already_done.21, align 1, !dbg !5264, !range !4712, !noundef !549
  %tobool499 = trunc i8 %197 to i1, !dbg !5264
  %lnot500 = xor i1 %tobool499, true, !dbg !5264
  br label %land.end502

land.end502:                                      ; preds = %land.rhs498, %if.then486
  %198 = phi i1 [ false, %if.then486 ], [ %lnot500, %land.rhs498 ], !dbg !5266
  %lnot503 = xor i1 %198, true, !dbg !5264
  %lnot505 = xor i1 %lnot503, true, !dbg !5264
  %lnot.ext506 = zext i1 %lnot505 to i32, !dbg !5264
  %conv507 = sext i32 %lnot.ext506 to i64, !dbg !5264
  %expval508 = call i64 @llvm.expect.i64(i64 %conv507, i64 0), !dbg !5264
  %tobool509 = icmp ne i64 %expval508, 0, !dbg !5264
  br i1 %tobool509, label %if.then510, label %if.end511, !dbg !5263

if.then510:                                       ; preds = %land.end502
  store i8 1, ptr @unwind_next_frame.__already_done.21, align 1, !dbg !5267
  store i8 1, ptr %__ret_once495, align 1, !dbg !5267
  br label %if.end511, !dbg !5267

if.end511:                                        ; preds = %if.then510, %land.end502
  %199 = load i8, ptr %__ret_once495, align 1, !dbg !5263, !range !4712, !noundef !549
  %tobool513 = trunc i8 %199 to i1, !dbg !5263
  %lnot514 = xor i1 %tobool513, true, !dbg !5263
  %lnot516 = xor i1 %lnot514, true, !dbg !5263
  %lnot.ext517 = zext i1 %lnot516 to i32, !dbg !5263
  %conv518 = sext i32 %lnot.ext517 to i64, !dbg !5263
  %expval519 = call i64 @llvm.expect.i64(i64 %conv518, i64 0), !dbg !5263
  store i64 %expval519, ptr %tmp512, align 8, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once495) #15, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond488) #15, !dbg !5269
  %200 = load i64, ptr %tmp512, align 8, !dbg !5263
  %tobool520 = icmp ne i64 %200, 0, !dbg !5269
  br i1 %tobool520, label %if.then521, label %if.end527, !dbg !5262

if.then521:                                       ; preds = %if.end511
  br label %do.body522, !dbg !5270

do.body522:                                       ; preds = %if.then521
  br label %do.cond523, !dbg !5272

do.cond523:                                       ; preds = %do.body522
  br label %do.end524, !dbg !5272

do.end524:                                        ; preds = %do.cond523
  %201 = load i64, ptr %orig_ip, align 8, !dbg !5270
  %202 = inttoptr i64 %201 to ptr, !dbg !5270
  %call526 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.22, ptr noundef %202) #17, !dbg !5270
  store i32 %call526, ptr %tmp525, align 4, !dbg !5272
  %203 = load i32, ptr %tmp525, align 4, !dbg !5270
  br label %if.end527, !dbg !5269

if.end527:                                        ; preds = %do.end524, %if.end511
  %204 = load i8, ptr %__ret_do_once487, align 1, !dbg !5262, !range !4712, !noundef !549
  %tobool529 = trunc i8 %204 to i1, !dbg !5262
  %lnot530 = xor i1 %tobool529, true, !dbg !5262
  %lnot532 = xor i1 %lnot530, true, !dbg !5262
  %lnot.ext533 = zext i1 %lnot532 to i32, !dbg !5262
  %conv534 = sext i32 %lnot.ext533 to i64, !dbg !5262
  %expval535 = call i64 @llvm.expect.i64(i64 %conv534, i64 0), !dbg !5262
  store i64 %expval535, ptr %tmp528, align 8, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once487) #15, !dbg !5274
  %205 = load i64, ptr %tmp528, align 8, !dbg !5262
  %206 = load i8, ptr @unwind_debug, align 1, !dbg !5275, !range !4712, !noundef !549
  %tobool536 = trunc i8 %206 to i1, !dbg !5275
  br i1 %tobool536, label %land.lhs.true538, label %if.end541, !dbg !5275

land.lhs.true538:                                 ; preds = %if.end527
  %207 = load i8, ptr @unwind_next_frame.dumped_before.20, align 1, !dbg !5275, !range !4712, !noundef !549
  %tobool539 = trunc i8 %207 to i1, !dbg !5275
  br i1 %tobool539, label %if.end541, label %if.then540, !dbg !5274

if.then540:                                       ; preds = %land.lhs.true538
  store i8 1, ptr @unwind_next_frame.dumped_before.20, align 1, !dbg !5277
  %208 = load ptr, ptr %state.addr, align 8, !dbg !5277
  call void @unwind_dump(ptr noundef %208) #16, !dbg !5277
  br label %if.end541, !dbg !5277

if.end541:                                        ; preds = %if.then540, %land.lhs.true538, %if.end527
  br label %if.end542, !dbg !5274

if.end542:                                        ; preds = %if.end541, %land.lhs.true483, %if.then478
  br label %err, !dbg !5279

if.end543:                                        ; preds = %sw.bb474
  %209 = load ptr, ptr %state.addr, align 8, !dbg !5280
  %210 = load ptr, ptr %state.addr, align 8, !dbg !5281
  %ip544 = getelementptr inbounds %struct.unwind_state, ptr %210, i32 0, i32 10, !dbg !5282
  %211 = load i64, ptr %ip544, align 8, !dbg !5282
  %212 = load ptr, ptr %state.addr, align 8, !dbg !5283
  %sp545 = getelementptr inbounds %struct.unwind_state, ptr %212, i32 0, i32 8, !dbg !5284
  %213 = load i64, ptr %sp545, align 8, !dbg !5284
  %sub546 = sub i64 %213, 8, !dbg !5285
  %214 = inttoptr i64 %sub546 to ptr, !dbg !5286
  %call547 = call i64 @unwind_recover_rethook(ptr noundef %209, i64 noundef %211, ptr noundef %214) #16, !dbg !5287
  %215 = load ptr, ptr %state.addr, align 8, !dbg !5288
  %ip548 = getelementptr inbounds %struct.unwind_state, ptr %215, i32 0, i32 10, !dbg !5289
  store i64 %call547, ptr %ip548, align 8, !dbg !5290
  %216 = load ptr, ptr %state.addr, align 8, !dbg !5291
  %full_regs549 = getelementptr inbounds %struct.unwind_state, ptr %216, i32 0, i32 7, !dbg !5293
  %217 = load i8, ptr %full_regs549, align 2, !dbg !5293, !range !4712, !noundef !549
  %tobool550 = trunc i8 %217 to i1, !dbg !5293
  br i1 %tobool550, label %if.then551, label %if.end554, !dbg !5294

if.then551:                                       ; preds = %if.end543
  %218 = load ptr, ptr %state.addr, align 8, !dbg !5295
  %regs552 = getelementptr inbounds %struct.unwind_state, ptr %218, i32 0, i32 11, !dbg !5296
  %219 = load ptr, ptr %regs552, align 8, !dbg !5296
  %220 = load ptr, ptr %state.addr, align 8, !dbg !5297
  %prev_regs553 = getelementptr inbounds %struct.unwind_state, ptr %220, i32 0, i32 12, !dbg !5298
  store ptr %219, ptr %prev_regs553, align 8, !dbg !5299
  br label %if.end554, !dbg !5297

if.end554:                                        ; preds = %if.then551, %if.end543
  %221 = load i64, ptr %sp, align 8, !dbg !5300
  %222 = inttoptr i64 %221 to ptr, !dbg !5301
  %add.ptr = getelementptr i8, ptr %222, i64 -128, !dbg !5302
  %223 = load ptr, ptr %state.addr, align 8, !dbg !5303
  %regs555 = getelementptr inbounds %struct.unwind_state, ptr %223, i32 0, i32 11, !dbg !5304
  store ptr %add.ptr, ptr %regs555, align 8, !dbg !5305
  %224 = load ptr, ptr %state.addr, align 8, !dbg !5306
  %full_regs556 = getelementptr inbounds %struct.unwind_state, ptr %224, i32 0, i32 7, !dbg !5307
  store i8 0, ptr %full_regs556, align 2, !dbg !5308
  br label %sw.epilog612, !dbg !5309

sw.default557:                                    ; preds = %if.end380
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once558) #15, !dbg !5310
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once558, metadata !4282, metadata !DIExpression()), !dbg !5310
  store i8 1, ptr %__ret_do_once558, align 1, !dbg !5310
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond559) #15, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %__ret_cond559, metadata !4284, metadata !DIExpression()), !dbg !5311
  %225 = load i8, ptr %__ret_do_once558, align 1, !dbg !5311, !range !4712, !noundef !549
  %tobool560 = trunc i8 %225 to i1, !dbg !5311
  %lnot561 = xor i1 %tobool560, true, !dbg !5311
  %lnot563 = xor i1 %lnot561, true, !dbg !5311
  %frombool565 = zext i1 %lnot563 to i8, !dbg !5311
  store i8 %frombool565, ptr %__ret_cond559, align 1, !dbg !5311
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once566) #15, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %__ret_once566, metadata !4287, metadata !DIExpression()), !dbg !5311
  store i8 0, ptr %__ret_once566, align 1, !dbg !5311
  %226 = load i8, ptr %__ret_cond559, align 1, !dbg !5312, !range !4712, !noundef !549
  %tobool567 = trunc i8 %226 to i1, !dbg !5312
  br i1 %tobool567, label %land.rhs569, label %land.end573, !dbg !5312

land.rhs569:                                      ; preds = %sw.default557
  %227 = load i8, ptr @unwind_next_frame.__already_done.23, align 1, !dbg !5312, !range !4712, !noundef !549
  %tobool570 = trunc i8 %227 to i1, !dbg !5312
  %lnot571 = xor i1 %tobool570, true, !dbg !5312
  br label %land.end573

land.end573:                                      ; preds = %land.rhs569, %sw.default557
  %228 = phi i1 [ false, %sw.default557 ], [ %lnot571, %land.rhs569 ], !dbg !5314
  %lnot574 = xor i1 %228, true, !dbg !5312
  %lnot576 = xor i1 %lnot574, true, !dbg !5312
  %lnot.ext577 = zext i1 %lnot576 to i32, !dbg !5312
  %conv578 = sext i32 %lnot.ext577 to i64, !dbg !5312
  %expval579 = call i64 @llvm.expect.i64(i64 %conv578, i64 0), !dbg !5312
  %tobool580 = icmp ne i64 %expval579, 0, !dbg !5312
  br i1 %tobool580, label %if.then581, label %if.end582, !dbg !5311

if.then581:                                       ; preds = %land.end573
  store i8 1, ptr @unwind_next_frame.__already_done.23, align 1, !dbg !5315
  store i8 1, ptr %__ret_once566, align 1, !dbg !5315
  br label %if.end582, !dbg !5315

if.end582:                                        ; preds = %if.then581, %land.end573
  %229 = load i8, ptr %__ret_once566, align 1, !dbg !5311, !range !4712, !noundef !549
  %tobool584 = trunc i8 %229 to i1, !dbg !5311
  %lnot585 = xor i1 %tobool584, true, !dbg !5311
  %lnot587 = xor i1 %lnot585, true, !dbg !5311
  %lnot.ext588 = zext i1 %lnot587 to i32, !dbg !5311
  %conv589 = sext i32 %lnot.ext588 to i64, !dbg !5311
  %expval590 = call i64 @llvm.expect.i64(i64 %conv589, i64 0), !dbg !5311
  store i64 %expval590, ptr %tmp583, align 8, !dbg !5312
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once566) #15, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond559) #15, !dbg !5317
  %230 = load i64, ptr %tmp583, align 8, !dbg !5311
  %tobool591 = icmp ne i64 %230, 0, !dbg !5317
  br i1 %tobool591, label %if.then592, label %if.end603, !dbg !5310

if.then592:                                       ; preds = %if.end582
  br label %do.body593, !dbg !5318

do.body593:                                       ; preds = %if.then592
  br label %do.cond594, !dbg !5320

do.cond594:                                       ; preds = %do.body593
  br label %do.end595, !dbg !5320

do.end595:                                        ; preds = %do.cond594
  %231 = load ptr, ptr %orc, align 8, !dbg !5318
  %type597 = getelementptr inbounds %struct.orc_entry, ptr %231, i32 0, i32 2, !dbg !5318
  %bf.load598 = load i16, ptr %type597, align 1, !dbg !5318
  %bf.lshr599 = lshr i16 %bf.load598, 8, !dbg !5318
  %bf.clear600 = and i16 %bf.lshr599, 7, !dbg !5318
  %bf.cast601 = zext i16 %bf.clear600 to i32, !dbg !5318
  %232 = load i64, ptr %orig_ip, align 8, !dbg !5318
  %233 = inttoptr i64 %232 to ptr, !dbg !5318
  %call602 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.24, i32 noundef %bf.cast601, ptr noundef %233) #17, !dbg !5318
  store i32 %call602, ptr %tmp596, align 4, !dbg !5320
  %234 = load i32, ptr %tmp596, align 4, !dbg !5318
  br label %if.end603, !dbg !5317

if.end603:                                        ; preds = %do.end595, %if.end582
  %235 = load i8, ptr %__ret_do_once558, align 1, !dbg !5310, !range !4712, !noundef !549
  %tobool605 = trunc i8 %235 to i1, !dbg !5310
  %lnot606 = xor i1 %tobool605, true, !dbg !5310
  %lnot608 = xor i1 %lnot606, true, !dbg !5310
  %lnot.ext609 = zext i1 %lnot608 to i32, !dbg !5310
  %conv610 = sext i32 %lnot.ext609 to i64, !dbg !5310
  %expval611 = call i64 @llvm.expect.i64(i64 %conv610, i64 0), !dbg !5310
  store i64 %expval611, ptr %tmp604, align 8, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once558) #15, !dbg !5322
  %236 = load i64, ptr %tmp604, align 8, !dbg !5310
  br label %err, !dbg !5323

sw.epilog612:                                     ; preds = %if.end554, %if.end466, %if.end391
  %237 = load ptr, ptr %orc, align 8, !dbg !5324
  %bp_reg = getelementptr inbounds %struct.orc_entry, ptr %237, i32 0, i32 2, !dbg !5325
  %bf.load613 = load i16, ptr %bp_reg, align 1, !dbg !5325
  %bf.lshr614 = lshr i16 %bf.load613, 4, !dbg !5325
  %bf.clear615 = and i16 %bf.lshr614, 15, !dbg !5325
  %bf.cast616 = zext i16 %bf.clear615 to i32, !dbg !5325
  switch i32 %bf.cast616, label %sw.default638 [
    i32 0, label %sw.bb617
    i32 1, label %sw.bb622
    i32 4, label %sw.bb629
  ], !dbg !5326

sw.bb617:                                         ; preds = %sw.epilog612
  %238 = load ptr, ptr %state.addr, align 8, !dbg !5327
  %call618 = call zeroext i1 @get_reg(ptr noundef %238, i32 noundef 32, ptr noundef %tmp) #16, !dbg !5329
  br i1 %call618, label %if.then619, label %if.end621, !dbg !5330

if.then619:                                       ; preds = %sw.bb617
  %239 = load i64, ptr %tmp, align 8, !dbg !5331
  %240 = load ptr, ptr %state.addr, align 8, !dbg !5332
  %bp620 = getelementptr inbounds %struct.unwind_state, ptr %240, i32 0, i32 9, !dbg !5333
  store i64 %239, ptr %bp620, align 8, !dbg !5334
  br label %if.end621, !dbg !5332

if.end621:                                        ; preds = %if.then619, %sw.bb617
  br label %sw.epilog693, !dbg !5335

sw.bb622:                                         ; preds = %sw.epilog612
  %241 = load ptr, ptr %state.addr, align 8, !dbg !5336
  %242 = load i64, ptr %sp, align 8, !dbg !5338
  %243 = load ptr, ptr %orc, align 8, !dbg !5339
  %bp_offset = getelementptr inbounds %struct.orc_entry, ptr %243, i32 0, i32 1, !dbg !5340
  %244 = load i16, ptr %bp_offset, align 1, !dbg !5340
  %conv623 = sext i16 %244 to i64, !dbg !5339
  %add624 = add i64 %242, %conv623, !dbg !5341
  %245 = load ptr, ptr %state.addr, align 8, !dbg !5342
  %bp625 = getelementptr inbounds %struct.unwind_state, ptr %245, i32 0, i32 9, !dbg !5343
  %call626 = call zeroext i1 @deref_stack_reg(ptr noundef %241, i64 noundef %add624, ptr noundef %bp625) #16, !dbg !5344
  br i1 %call626, label %if.end628, label %if.then627, !dbg !5345

if.then627:                                       ; preds = %sw.bb622
  br label %err, !dbg !5346

if.end628:                                        ; preds = %sw.bb622
  br label %sw.epilog693, !dbg !5347

sw.bb629:                                         ; preds = %sw.epilog612
  %246 = load ptr, ptr %state.addr, align 8, !dbg !5348
  %247 = load ptr, ptr %state.addr, align 8, !dbg !5350
  %bp630 = getelementptr inbounds %struct.unwind_state, ptr %247, i32 0, i32 9, !dbg !5351
  %248 = load i64, ptr %bp630, align 8, !dbg !5351
  %249 = load ptr, ptr %orc, align 8, !dbg !5352
  %bp_offset631 = getelementptr inbounds %struct.orc_entry, ptr %249, i32 0, i32 1, !dbg !5353
  %250 = load i16, ptr %bp_offset631, align 1, !dbg !5353
  %conv632 = sext i16 %250 to i64, !dbg !5352
  %add633 = add i64 %248, %conv632, !dbg !5354
  %251 = load ptr, ptr %state.addr, align 8, !dbg !5355
  %bp634 = getelementptr inbounds %struct.unwind_state, ptr %251, i32 0, i32 9, !dbg !5356
  %call635 = call zeroext i1 @deref_stack_reg(ptr noundef %246, i64 noundef %add633, ptr noundef %bp634) #16, !dbg !5357
  br i1 %call635, label %if.end637, label %if.then636, !dbg !5358

if.then636:                                       ; preds = %sw.bb629
  br label %err, !dbg !5359

if.end637:                                        ; preds = %sw.bb629
  br label %sw.epilog693, !dbg !5360

sw.default638:                                    ; preds = %sw.epilog612
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once639) #15, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once639, metadata !4288, metadata !DIExpression()), !dbg !5361
  store i8 1, ptr %__ret_do_once639, align 1, !dbg !5361
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond640) #15, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %__ret_cond640, metadata !4291, metadata !DIExpression()), !dbg !5362
  %252 = load i8, ptr %__ret_do_once639, align 1, !dbg !5362, !range !4712, !noundef !549
  %tobool641 = trunc i8 %252 to i1, !dbg !5362
  %lnot642 = xor i1 %tobool641, true, !dbg !5362
  %lnot644 = xor i1 %lnot642, true, !dbg !5362
  %frombool646 = zext i1 %lnot644 to i8, !dbg !5362
  store i8 %frombool646, ptr %__ret_cond640, align 1, !dbg !5362
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once647) #15, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %__ret_once647, metadata !4294, metadata !DIExpression()), !dbg !5362
  store i8 0, ptr %__ret_once647, align 1, !dbg !5362
  %253 = load i8, ptr %__ret_cond640, align 1, !dbg !5363, !range !4712, !noundef !549
  %tobool648 = trunc i8 %253 to i1, !dbg !5363
  br i1 %tobool648, label %land.rhs650, label %land.end654, !dbg !5363

land.rhs650:                                      ; preds = %sw.default638
  %254 = load i8, ptr @unwind_next_frame.__already_done.25, align 1, !dbg !5363, !range !4712, !noundef !549
  %tobool651 = trunc i8 %254 to i1, !dbg !5363
  %lnot652 = xor i1 %tobool651, true, !dbg !5363
  br label %land.end654

land.end654:                                      ; preds = %land.rhs650, %sw.default638
  %255 = phi i1 [ false, %sw.default638 ], [ %lnot652, %land.rhs650 ], !dbg !5365
  %lnot655 = xor i1 %255, true, !dbg !5363
  %lnot657 = xor i1 %lnot655, true, !dbg !5363
  %lnot.ext658 = zext i1 %lnot657 to i32, !dbg !5363
  %conv659 = sext i32 %lnot.ext658 to i64, !dbg !5363
  %expval660 = call i64 @llvm.expect.i64(i64 %conv659, i64 0), !dbg !5363
  %tobool661 = icmp ne i64 %expval660, 0, !dbg !5363
  br i1 %tobool661, label %if.then662, label %if.end663, !dbg !5362

if.then662:                                       ; preds = %land.end654
  store i8 1, ptr @unwind_next_frame.__already_done.25, align 1, !dbg !5366
  store i8 1, ptr %__ret_once647, align 1, !dbg !5366
  br label %if.end663, !dbg !5366

if.end663:                                        ; preds = %if.then662, %land.end654
  %256 = load i8, ptr %__ret_once647, align 1, !dbg !5362, !range !4712, !noundef !549
  %tobool665 = trunc i8 %256 to i1, !dbg !5362
  %lnot666 = xor i1 %tobool665, true, !dbg !5362
  %lnot668 = xor i1 %lnot666, true, !dbg !5362
  %lnot.ext669 = zext i1 %lnot668 to i32, !dbg !5362
  %conv670 = sext i32 %lnot.ext669 to i64, !dbg !5362
  %expval671 = call i64 @llvm.expect.i64(i64 %conv670, i64 0), !dbg !5362
  store i64 %expval671, ptr %tmp664, align 8, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once647) #15, !dbg !5368
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond640) #15, !dbg !5368
  %257 = load i64, ptr %tmp664, align 8, !dbg !5362
  %tobool672 = icmp ne i64 %257, 0, !dbg !5368
  br i1 %tobool672, label %if.then673, label %if.end684, !dbg !5361

if.then673:                                       ; preds = %if.end663
  br label %do.body674, !dbg !5369

do.body674:                                       ; preds = %if.then673
  br label %do.cond675, !dbg !5371

do.cond675:                                       ; preds = %do.body674
  br label %do.end676, !dbg !5371

do.end676:                                        ; preds = %do.cond675
  %258 = load ptr, ptr %orc, align 8, !dbg !5369
  %bp_reg678 = getelementptr inbounds %struct.orc_entry, ptr %258, i32 0, i32 2, !dbg !5369
  %bf.load679 = load i16, ptr %bp_reg678, align 1, !dbg !5369
  %bf.lshr680 = lshr i16 %bf.load679, 4, !dbg !5369
  %bf.clear681 = and i16 %bf.lshr680, 15, !dbg !5369
  %bf.cast682 = zext i16 %bf.clear681 to i32, !dbg !5369
  %259 = load i64, ptr %orig_ip, align 8, !dbg !5369
  %260 = inttoptr i64 %259 to ptr, !dbg !5369
  %call683 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.26, i32 noundef %bf.cast682, ptr noundef %260) #17, !dbg !5369
  store i32 %call683, ptr %tmp677, align 4, !dbg !5371
  %261 = load i32, ptr %tmp677, align 4, !dbg !5369
  br label %if.end684, !dbg !5368

if.end684:                                        ; preds = %do.end676, %if.end663
  %262 = load i8, ptr %__ret_do_once639, align 1, !dbg !5361, !range !4712, !noundef !549
  %tobool686 = trunc i8 %262 to i1, !dbg !5361
  %lnot687 = xor i1 %tobool686, true, !dbg !5361
  %lnot689 = xor i1 %lnot687, true, !dbg !5361
  %lnot.ext690 = zext i1 %lnot689 to i32, !dbg !5361
  %conv691 = sext i32 %lnot.ext690 to i64, !dbg !5361
  %expval692 = call i64 @llvm.expect.i64(i64 %conv691, i64 0), !dbg !5361
  store i64 %expval692, ptr %tmp685, align 8, !dbg !5368
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once639) #15, !dbg !5373
  %263 = load i64, ptr %tmp685, align 8, !dbg !5361
  br label %err, !dbg !5374

sw.epilog693:                                     ; preds = %if.end637, %if.end628, %if.end621
  %264 = load ptr, ptr %state.addr, align 8, !dbg !5375
  %stack_info694 = getelementptr inbounds %struct.unwind_state, ptr %264, i32 0, i32 0, !dbg !5376
  %type695 = getelementptr inbounds %struct.stack_info, ptr %stack_info694, i32 0, i32 0, !dbg !5377
  %265 = load i32, ptr %type695, align 8, !dbg !5377
  %266 = load i32, ptr %prev_type, align 4, !dbg !5378
  %cmp696 = icmp eq i32 %265, %266, !dbg !5379
  br i1 %cmp696, label %land.lhs.true698, label %if.end772, !dbg !5380

land.lhs.true698:                                 ; preds = %sw.epilog693
  %267 = load ptr, ptr %state.addr, align 8, !dbg !5381
  %stack_info699 = getelementptr inbounds %struct.unwind_state, ptr %267, i32 0, i32 0, !dbg !5382
  %268 = load ptr, ptr %state.addr, align 8, !dbg !5383
  %sp700 = getelementptr inbounds %struct.unwind_state, ptr %268, i32 0, i32 8, !dbg !5384
  %269 = load i64, ptr %sp700, align 8, !dbg !5384
  %270 = inttoptr i64 %269 to ptr, !dbg !5385
  %call701 = call zeroext i1 @on_stack(ptr noundef %stack_info699, ptr noundef %270, i64 noundef 8) #16, !dbg !5386
  br i1 %call701, label %land.lhs.true703, label %if.end772, !dbg !5387

land.lhs.true703:                                 ; preds = %land.lhs.true698
  %271 = load ptr, ptr %state.addr, align 8, !dbg !5388
  %sp704 = getelementptr inbounds %struct.unwind_state, ptr %271, i32 0, i32 8, !dbg !5389
  %272 = load i64, ptr %sp704, align 8, !dbg !5389
  %273 = load i64, ptr %prev_sp, align 8, !dbg !5390
  %cmp705 = icmp ule i64 %272, %273, !dbg !5391
  br i1 %cmp705, label %if.then707, label %if.end772, !dbg !5392

if.then707:                                       ; preds = %land.lhs.true703
  %274 = load ptr, ptr %state.addr, align 8, !dbg !5393
  %task708 = getelementptr inbounds %struct.unwind_state, ptr %274, i32 0, i32 2, !dbg !5393
  %275 = load ptr, ptr %task708, align 8, !dbg !5393
  %call709 = call ptr @get_current() #16, !dbg !5393
  %cmp710 = icmp eq ptr %275, %call709, !dbg !5393
  br i1 %cmp710, label %land.lhs.true712, label %if.end771, !dbg !5393

land.lhs.true712:                                 ; preds = %if.then707
  %276 = load ptr, ptr %state.addr, align 8, !dbg !5393
  %error713 = getelementptr inbounds %struct.unwind_state, ptr %276, i32 0, i32 5, !dbg !5393
  %277 = load i8, ptr %error713, align 8, !dbg !5393, !range !4712, !noundef !549
  %tobool714 = trunc i8 %277 to i1, !dbg !5393
  br i1 %tobool714, label %if.end771, label %if.then715, !dbg !5394

if.then715:                                       ; preds = %land.lhs.true712
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once716) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once716, metadata !4295, metadata !DIExpression()), !dbg !5395
  store i8 1, ptr %__ret_do_once716, align 1, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond717) #15, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %__ret_cond717, metadata !4302, metadata !DIExpression()), !dbg !5396
  %278 = load i8, ptr %__ret_do_once716, align 1, !dbg !5396, !range !4712, !noundef !549
  %tobool718 = trunc i8 %278 to i1, !dbg !5396
  %lnot719 = xor i1 %tobool718, true, !dbg !5396
  %lnot721 = xor i1 %lnot719, true, !dbg !5396
  %frombool723 = zext i1 %lnot721 to i8, !dbg !5396
  store i8 %frombool723, ptr %__ret_cond717, align 1, !dbg !5396
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once724) #15, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %__ret_once724, metadata !4305, metadata !DIExpression()), !dbg !5396
  store i8 0, ptr %__ret_once724, align 1, !dbg !5396
  %279 = load i8, ptr %__ret_cond717, align 1, !dbg !5397, !range !4712, !noundef !549
  %tobool725 = trunc i8 %279 to i1, !dbg !5397
  br i1 %tobool725, label %land.rhs727, label %land.end731, !dbg !5397

land.rhs727:                                      ; preds = %if.then715
  %280 = load i8, ptr @unwind_next_frame.__already_done.28, align 1, !dbg !5397, !range !4712, !noundef !549
  %tobool728 = trunc i8 %280 to i1, !dbg !5397
  %lnot729 = xor i1 %tobool728, true, !dbg !5397
  br label %land.end731

land.end731:                                      ; preds = %land.rhs727, %if.then715
  %281 = phi i1 [ false, %if.then715 ], [ %lnot729, %land.rhs727 ], !dbg !5399
  %lnot732 = xor i1 %281, true, !dbg !5397
  %lnot734 = xor i1 %lnot732, true, !dbg !5397
  %lnot.ext735 = zext i1 %lnot734 to i32, !dbg !5397
  %conv736 = sext i32 %lnot.ext735 to i64, !dbg !5397
  %expval737 = call i64 @llvm.expect.i64(i64 %conv736, i64 0), !dbg !5397
  %tobool738 = icmp ne i64 %expval737, 0, !dbg !5397
  br i1 %tobool738, label %if.then739, label %if.end740, !dbg !5396

if.then739:                                       ; preds = %land.end731
  store i8 1, ptr @unwind_next_frame.__already_done.28, align 1, !dbg !5400
  store i8 1, ptr %__ret_once724, align 1, !dbg !5400
  br label %if.end740, !dbg !5400

if.end740:                                        ; preds = %if.then739, %land.end731
  %282 = load i8, ptr %__ret_once724, align 1, !dbg !5396, !range !4712, !noundef !549
  %tobool742 = trunc i8 %282 to i1, !dbg !5396
  %lnot743 = xor i1 %tobool742, true, !dbg !5396
  %lnot745 = xor i1 %lnot743, true, !dbg !5396
  %lnot.ext746 = zext i1 %lnot745 to i32, !dbg !5396
  %conv747 = sext i32 %lnot.ext746 to i64, !dbg !5396
  %expval748 = call i64 @llvm.expect.i64(i64 %conv747, i64 0), !dbg !5396
  store i64 %expval748, ptr %tmp741, align 8, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once724) #15, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond717) #15, !dbg !5402
  %283 = load i64, ptr %tmp741, align 8, !dbg !5396
  %tobool749 = icmp ne i64 %283, 0, !dbg !5402
  br i1 %tobool749, label %if.then750, label %if.end756, !dbg !5395

if.then750:                                       ; preds = %if.end740
  br label %do.body751, !dbg !5403

do.body751:                                       ; preds = %if.then750
  br label %do.cond752, !dbg !5405

do.cond752:                                       ; preds = %do.body751
  br label %do.end753, !dbg !5405

do.end753:                                        ; preds = %do.cond752
  %284 = load i64, ptr %orig_ip, align 8, !dbg !5403
  %285 = inttoptr i64 %284 to ptr, !dbg !5403
  %call755 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.29, ptr noundef %285) #17, !dbg !5403
  store i32 %call755, ptr %tmp754, align 4, !dbg !5405
  %286 = load i32, ptr %tmp754, align 4, !dbg !5403
  br label %if.end756, !dbg !5402

if.end756:                                        ; preds = %do.end753, %if.end740
  %287 = load i8, ptr %__ret_do_once716, align 1, !dbg !5395, !range !4712, !noundef !549
  %tobool758 = trunc i8 %287 to i1, !dbg !5395
  %lnot759 = xor i1 %tobool758, true, !dbg !5395
  %lnot761 = xor i1 %lnot759, true, !dbg !5395
  %lnot.ext762 = zext i1 %lnot761 to i32, !dbg !5395
  %conv763 = sext i32 %lnot.ext762 to i64, !dbg !5395
  %expval764 = call i64 @llvm.expect.i64(i64 %conv763, i64 0), !dbg !5395
  store i64 %expval764, ptr %tmp757, align 8, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once716) #15, !dbg !5407
  %288 = load i64, ptr %tmp757, align 8, !dbg !5395
  %289 = load i8, ptr @unwind_debug, align 1, !dbg !5408, !range !4712, !noundef !549
  %tobool765 = trunc i8 %289 to i1, !dbg !5408
  br i1 %tobool765, label %land.lhs.true767, label %if.end770, !dbg !5408

land.lhs.true767:                                 ; preds = %if.end756
  %290 = load i8, ptr @unwind_next_frame.dumped_before.27, align 1, !dbg !5408, !range !4712, !noundef !549
  %tobool768 = trunc i8 %290 to i1, !dbg !5408
  br i1 %tobool768, label %if.end770, label %if.then769, !dbg !5407

if.then769:                                       ; preds = %land.lhs.true767
  store i8 1, ptr @unwind_next_frame.dumped_before.27, align 1, !dbg !5410
  %291 = load ptr, ptr %state.addr, align 8, !dbg !5410
  call void @unwind_dump(ptr noundef %291) #16, !dbg !5410
  br label %if.end770, !dbg !5410

if.end770:                                        ; preds = %if.then769, %land.lhs.true767, %if.end756
  br label %if.end771, !dbg !5407

if.end771:                                        ; preds = %if.end770, %land.lhs.true712, %if.then707
  br label %err, !dbg !5412

if.end772:                                        ; preds = %land.lhs.true703, %land.lhs.true698, %sw.epilog693
  br label %do.body773, !dbg !5413

do.body773:                                       ; preds = %if.end772
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5414, !srcloc !5416
  %call774 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !5417
  %lnot775 = xor i1 %call774, true, !dbg !5417
  %lnot777 = xor i1 %lnot775, true, !dbg !5417
  %lnot.ext778 = zext i1 %lnot777 to i32, !dbg !5417
  %conv779 = sext i32 %lnot.ext778 to i64, !dbg !5417
  %expval780 = call i64 @llvm.expect.i64(i64 %conv779, i64 0), !dbg !5417
  %tobool781 = icmp ne i64 %expval780, 0, !dbg !5417
  br i1 %tobool781, label %if.then782, label %if.end786, !dbg !5414

if.then782:                                       ; preds = %do.body773
  br label %do.body783, !dbg !5417

do.body783:                                       ; preds = %if.then782
  %292 = call i64 @llvm.read_register.i64(metadata !4473), !dbg !5419
  %293 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %292) #15, !dbg !5419, !srcloc !5421
  call void @llvm.write_register.i64(metadata !4473, i64 %293), !dbg !5419
  br label %do.cond784, !dbg !5419

do.cond784:                                       ; preds = %do.body783
  br label %do.end785, !dbg !5419

do.end785:                                        ; preds = %do.cond784
  br label %if.end786, !dbg !5419

if.end786:                                        ; preds = %do.end785, %do.body773
  br label %do.cond787, !dbg !5414

do.cond787:                                       ; preds = %if.end786
  br label %do.end788, !dbg !5414

do.end788:                                        ; preds = %do.cond787
  store i1 true, ptr %retval, align 1, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

err:                                              ; preds = %if.end771, %if.end684, %if.then636, %if.then627, %if.end603, %if.end542, %if.end465, %if.then390, %if.then367, %if.end355, %if.end308, %if.end239, %if.end170, %if.end101, %if.then14
  call void @llvm.dbg.label(metadata !4306), !dbg !5423
  %294 = load ptr, ptr %state.addr, align 8, !dbg !5424
  %error789 = getelementptr inbounds %struct.unwind_state, ptr %294, i32 0, i32 5, !dbg !5425
  store i8 1, ptr %error789, align 8, !dbg !5426
  br label %the_end, !dbg !5424

the_end:                                          ; preds = %err, %if.then22, %if.then5
  call void @llvm.dbg.label(metadata !4307), !dbg !5427
  br label %do.body790, !dbg !5428

do.body790:                                       ; preds = %the_end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5429, !srcloc !5431
  %call791 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !5432
  %lnot792 = xor i1 %call791, true, !dbg !5432
  %lnot794 = xor i1 %lnot792, true, !dbg !5432
  %lnot.ext795 = zext i1 %lnot794 to i32, !dbg !5432
  %conv796 = sext i32 %lnot.ext795 to i64, !dbg !5432
  %expval797 = call i64 @llvm.expect.i64(i64 %conv796, i64 0), !dbg !5432
  %tobool798 = icmp ne i64 %expval797, 0, !dbg !5432
  br i1 %tobool798, label %if.then799, label %if.end803, !dbg !5429

if.then799:                                       ; preds = %do.body790
  br label %do.body800, !dbg !5432

do.body800:                                       ; preds = %if.then799
  %295 = call i64 @llvm.read_register.i64(metadata !4473), !dbg !5434
  %296 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %295) #15, !dbg !5434, !srcloc !5436
  call void @llvm.write_register.i64(metadata !4473, i64 %296), !dbg !5434
  br label %do.cond801, !dbg !5434

do.cond801:                                       ; preds = %do.body800
  br label %do.end802, !dbg !5434

do.end802:                                        ; preds = %do.cond801
  br label %if.end803, !dbg !5434

if.end803:                                        ; preds = %do.end802, %do.body790
  br label %do.cond804, !dbg !5429

do.cond804:                                       ; preds = %if.end803
  br label %do.end805, !dbg !5429

do.end805:                                        ; preds = %do.cond804
  %297 = load ptr, ptr %state.addr, align 8, !dbg !5437
  %stack_info806 = getelementptr inbounds %struct.unwind_state, ptr %297, i32 0, i32 0, !dbg !5438
  %type807 = getelementptr inbounds %struct.stack_info, ptr %stack_info806, i32 0, i32 0, !dbg !5439
  store i32 0, ptr %type807, align 8, !dbg !5440
  store i1 false, ptr %retval, align 1, !dbg !5441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5441

cleanup:                                          ; preds = %do.end805, %do.end788, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %indirect) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_type) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_sp) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_ip) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip_p) #15, !dbg !5442
  %298 = load i1, ptr %retval, align 1, !dbg !5442
  ret i1 %298, !dbg !5442
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #8 align 16 !dbg !5443 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5446, metadata !DIExpression()), !dbg !5453
  br label %do.body, !dbg !5454

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !5455
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5447, metadata !DIExpression()), !dbg !5455
  %0 = load i32, ptr %val.addr, align 4, !dbg !5455
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5455
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5455

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5455
  %cmp = icmp eq i32 %2, 1, !dbg !5455
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5455

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5455
  %cmp1 = icmp eq i32 %3, -1, !dbg !5455
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5455

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5455
  br label %cond.end, !dbg !5455

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5455

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5455
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5455
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5456
  %cmp2 = icmp eq i32 %5, 1, !dbg !5456
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5455

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5457, !srcloc !5459
  br label %if.end8, !dbg !5456

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5460
  %cmp3 = icmp eq i32 %6, -1, !dbg !5460
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5456

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5461, !srcloc !5463
  br label %if.end, !dbg !5460

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5460

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5449, metadata !DIExpression()), !dbg !5464
  %7 = load i32, ptr %val.addr, align 4, !dbg !5464
  %conv = sext i32 %7 to i64, !dbg !5464
  %and = and i64 %conv, 4294967295, !dbg !5464
  %conv7 = trunc i64 %and to i32, !dbg !5464
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5464
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5464
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5464, !srcloc !5465
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !5460
  br label %do.cond, !dbg !5464

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5464

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !5454
  br label %do.end10, !dbg !5455

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #8 align 16 !dbg !5467 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5473
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !5474
  %2 = load i16, ptr %1, align 8, !dbg !5474
  %conv = zext i16 %2 to i32, !dbg !5473
  %and = and i32 %conv, 3, !dbg !5475
  %tobool = icmp ne i32 %and, 0, !dbg !5476
  %lnot = xor i1 %tobool, true, !dbg !5476
  %lnot1 = xor i1 %lnot, true, !dbg !5477
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5477
  ret i32 %lnot.ext, !dbg !5478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @orc_find(i64 noundef %ip) #1 align 16 !dbg !4408 {
entry:
  %retval = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %start = alloca i32, align 4
  %stop = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp38 = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once66 = alloca i8, align 1
  %__ret_cond67 = alloca i8, align 1
  %__ret_once74 = alloca i8, align 1
  %tmp91 = alloca i64, align 8
  %tmp104 = alloca i32, align 4
  %tmp107 = alloca i64, align 8
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !4412, metadata !DIExpression()), !dbg !5479
  %0 = load i64, ptr %ip.addr, align 8, !dbg !5480
  %cmp = icmp eq i64 %0, 0, !dbg !5482
  br i1 %cmp, label %if.then, label %if.end, !dbg !5483

if.then:                                          ; preds = %entry
  store ptr @null_orc_entry, ptr %retval, align 8, !dbg !5484
  br label %return, !dbg !5484

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %ip.addr, align 8, !dbg !5485
  %cmp1 = icmp uge i64 %1, ptrtoint (ptr @_stext to i64), !dbg !5486
  br i1 %cmp1, label %land.lhs.true, label %if.end124, !dbg !5487

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, ptr %ip.addr, align 8, !dbg !5488
  %cmp2 = icmp ult i64 %2, ptrtoint (ptr @_etext to i64), !dbg !5489
  br i1 %cmp2, label %if.then3, label %if.end124, !dbg !5490

if.then3:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !4413, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #15, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %start, metadata !4416, metadata !DIExpression()), !dbg !5493
  call void @llvm.lifetime.start.p0(i64 4, ptr %stop) #15, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !4417, metadata !DIExpression()), !dbg !5494
  %3 = load i64, ptr %ip.addr, align 8, !dbg !5495
  %sub = sub i64 %3, ptrtoint (ptr @_stext to i64), !dbg !5496
  %div = udiv i64 %sub, 256, !dbg !5497
  %conv = trunc i64 %div to i32, !dbg !5498
  store i32 %conv, ptr %idx, align 4, !dbg !5499
  %4 = load i32, ptr %idx, align 4, !dbg !5500
  %5 = load i32, ptr @lookup_num_blocks, align 4, !dbg !5500
  %sub4 = sub i32 %5, 1, !dbg !5500
  %cmp5 = icmp uge i32 %4, %sub4, !dbg !5500
  %lnot = xor i1 %cmp5, true, !dbg !5500
  %lnot7 = xor i1 %lnot, true, !dbg !5500
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5500
  %conv8 = sext i32 %lnot.ext to i64, !dbg !5500
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !5500
  %tobool = icmp ne i64 %expval, 0, !dbg !5500
  br i1 %tobool, label %if.then9, label %if.end48, !dbg !5501

if.then9:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4418, metadata !DIExpression()), !dbg !5502
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5502
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4422, metadata !DIExpression()), !dbg !5503
  %6 = load i8, ptr %__ret_do_once, align 1, !dbg !5503, !range !4712, !noundef !549
  %tobool10 = trunc i8 %6 to i1, !dbg !5503
  %lnot11 = xor i1 %tobool10, true, !dbg !5503
  %lnot13 = xor i1 %lnot11, true, !dbg !5503
  %frombool = zext i1 %lnot13 to i8, !dbg !5503
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !5503
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4425, metadata !DIExpression()), !dbg !5503
  store i8 0, ptr %__ret_once, align 1, !dbg !5503
  %7 = load i8, ptr %__ret_cond, align 1, !dbg !5504, !range !4712, !noundef !549
  %tobool15 = trunc i8 %7 to i1, !dbg !5504
  br i1 %tobool15, label %land.rhs, label %land.end, !dbg !5504

land.rhs:                                         ; preds = %if.then9
  %8 = load i8, ptr @orc_find.__already_done, align 1, !dbg !5504, !range !4712, !noundef !549
  %tobool17 = trunc i8 %8 to i1, !dbg !5504
  %lnot18 = xor i1 %tobool17, true, !dbg !5504
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then9
  %9 = phi i1 [ false, %if.then9 ], [ %lnot18, %land.rhs ], !dbg !5506
  %lnot20 = xor i1 %9, true, !dbg !5504
  %lnot22 = xor i1 %lnot20, true, !dbg !5504
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5504
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5504
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5504
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5504
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5503

if.then27:                                        ; preds = %land.end
  store i8 1, ptr @orc_find.__already_done, align 1, !dbg !5507
  store i8 1, ptr %__ret_once, align 1, !dbg !5507
  br label %if.end28, !dbg !5507

if.end28:                                         ; preds = %if.then27, %land.end
  %10 = load i8, ptr %__ret_once, align 1, !dbg !5503, !range !4712, !noundef !549
  %tobool29 = trunc i8 %10 to i1, !dbg !5503
  %lnot30 = xor i1 %tobool29, true, !dbg !5503
  %lnot32 = xor i1 %lnot30, true, !dbg !5503
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5503
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !5503
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !5503
  store i64 %expval35, ptr %tmp, align 8, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !5509
  %11 = load i64, ptr %tmp, align 8, !dbg !5503
  %tobool36 = icmp ne i64 %11, 0, !dbg !5509
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !5502

if.then37:                                        ; preds = %if.end28
  br label %do.body, !dbg !5510

do.body:                                          ; preds = %if.then37
  br label %do.cond, !dbg !5512

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5512

do.end:                                           ; preds = %do.cond
  %12 = load i32, ptr %idx, align 4, !dbg !5510
  %13 = load i32, ptr @lookup_num_blocks, align 4, !dbg !5510
  %14 = load i64, ptr %ip.addr, align 8, !dbg !5510
  %15 = inttoptr i64 %14 to ptr, !dbg !5510
  %call = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.30, i32 noundef %12, i32 noundef %13, ptr noundef %15) #17, !dbg !5510
  store i32 %call, ptr %tmp38, align 4, !dbg !5512
  %16 = load i32, ptr %tmp38, align 4, !dbg !5510
  br label %if.end39, !dbg !5509

if.end39:                                         ; preds = %do.end, %if.end28
  %17 = load i8, ptr %__ret_do_once, align 1, !dbg !5502, !range !4712, !noundef !549
  %tobool41 = trunc i8 %17 to i1, !dbg !5502
  %lnot42 = xor i1 %tobool41, true, !dbg !5502
  %lnot44 = xor i1 %lnot42, true, !dbg !5502
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !5502
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !5502
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !5502
  store i64 %expval47, ptr %tmp40, align 8, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5514
  %18 = load i64, ptr %tmp40, align 8, !dbg !5502
  store ptr null, ptr %retval, align 8, !dbg !5515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5515

if.end48:                                         ; preds = %if.then3
  %19 = load i32, ptr %idx, align 4, !dbg !5516
  %idxprom = zext i32 %19 to i64, !dbg !5517
  %arrayidx = getelementptr [0 x i32], ptr @orc_lookup, i64 0, i64 %idxprom, !dbg !5517
  %20 = load i32, ptr %arrayidx, align 4, !dbg !5517
  store i32 %20, ptr %start, align 4, !dbg !5518
  %21 = load i32, ptr %idx, align 4, !dbg !5519
  %add = add i32 %21, 1, !dbg !5520
  %idxprom49 = zext i32 %add to i64, !dbg !5521
  %arrayidx50 = getelementptr [0 x i32], ptr @orc_lookup, i64 0, i64 %idxprom49, !dbg !5521
  %22 = load i32, ptr %arrayidx50, align 4, !dbg !5521
  %add51 = add i32 %22, 1, !dbg !5522
  store i32 %add51, ptr %stop, align 4, !dbg !5523
  %23 = load i32, ptr %start, align 4, !dbg !5524
  %idx.ext = zext i32 %23 to i64, !dbg !5524
  %add.ptr = getelementptr %struct.orc_entry, ptr @__start_orc_unwind, i64 %idx.ext, !dbg !5524
  %cmp52 = icmp uge ptr %add.ptr, @__stop_orc_unwind, !dbg !5524
  br i1 %cmp52, label %lor.end, label %lor.rhs, !dbg !5524

lor.rhs:                                          ; preds = %if.end48
  %24 = load i32, ptr %stop, align 4, !dbg !5524
  %idx.ext54 = zext i32 %24 to i64, !dbg !5524
  %add.ptr55 = getelementptr %struct.orc_entry, ptr @__start_orc_unwind, i64 %idx.ext54, !dbg !5524
  %cmp56 = icmp ugt ptr %add.ptr55, @__stop_orc_unwind, !dbg !5524
  br label %lor.end, !dbg !5524

lor.end:                                          ; preds = %lor.rhs, %if.end48
  %25 = phi i1 [ true, %if.end48 ], [ %cmp56, %lor.rhs ]
  %lnot58 = xor i1 %25, true, !dbg !5524
  %lnot60 = xor i1 %lnot58, true, !dbg !5524
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !5524
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !5524
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !5524
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !5524
  br i1 %tobool64, label %if.then65, label %if.end115, !dbg !5525

if.then65:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once66) #15, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once66, metadata !4426, metadata !DIExpression()), !dbg !5526
  store i8 1, ptr %__ret_do_once66, align 1, !dbg !5526
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond67) #15, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__ret_cond67, metadata !4430, metadata !DIExpression()), !dbg !5527
  %26 = load i8, ptr %__ret_do_once66, align 1, !dbg !5527, !range !4712, !noundef !549
  %tobool68 = trunc i8 %26 to i1, !dbg !5527
  %lnot69 = xor i1 %tobool68, true, !dbg !5527
  %lnot71 = xor i1 %lnot69, true, !dbg !5527
  %frombool73 = zext i1 %lnot71 to i8, !dbg !5527
  store i8 %frombool73, ptr %__ret_cond67, align 1, !dbg !5527
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once74) #15, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__ret_once74, metadata !4433, metadata !DIExpression()), !dbg !5527
  store i8 0, ptr %__ret_once74, align 1, !dbg !5527
  %27 = load i8, ptr %__ret_cond67, align 1, !dbg !5528, !range !4712, !noundef !549
  %tobool75 = trunc i8 %27 to i1, !dbg !5528
  br i1 %tobool75, label %land.rhs77, label %land.end81, !dbg !5528

land.rhs77:                                       ; preds = %if.then65
  %28 = load i8, ptr @orc_find.__already_done.31, align 1, !dbg !5528, !range !4712, !noundef !549
  %tobool78 = trunc i8 %28 to i1, !dbg !5528
  %lnot79 = xor i1 %tobool78, true, !dbg !5528
  br label %land.end81

land.end81:                                       ; preds = %land.rhs77, %if.then65
  %29 = phi i1 [ false, %if.then65 ], [ %lnot79, %land.rhs77 ], !dbg !5530
  %lnot82 = xor i1 %29, true, !dbg !5528
  %lnot84 = xor i1 %lnot82, true, !dbg !5528
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !5528
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !5528
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !5528
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !5528
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !5527

if.then89:                                        ; preds = %land.end81
  store i8 1, ptr @orc_find.__already_done.31, align 1, !dbg !5531
  store i8 1, ptr %__ret_once74, align 1, !dbg !5531
  br label %if.end90, !dbg !5531

if.end90:                                         ; preds = %if.then89, %land.end81
  %30 = load i8, ptr %__ret_once74, align 1, !dbg !5527, !range !4712, !noundef !549
  %tobool92 = trunc i8 %30 to i1, !dbg !5527
  %lnot93 = xor i1 %tobool92, true, !dbg !5527
  %lnot95 = xor i1 %lnot93, true, !dbg !5527
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !5527
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !5527
  %expval98 = call i64 @llvm.expect.i64(i64 %conv97, i64 0), !dbg !5527
  store i64 %expval98, ptr %tmp91, align 8, !dbg !5528
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once74) #15, !dbg !5533
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond67) #15, !dbg !5533
  %31 = load i64, ptr %tmp91, align 8, !dbg !5527
  %tobool99 = icmp ne i64 %31, 0, !dbg !5533
  br i1 %tobool99, label %if.then100, label %if.end106, !dbg !5526

if.then100:                                       ; preds = %if.end90
  br label %do.body101, !dbg !5534

do.body101:                                       ; preds = %if.then100
  br label %do.cond102, !dbg !5536

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !5536

do.end103:                                        ; preds = %do.cond102
  %32 = load i32, ptr %idx, align 4, !dbg !5534
  %33 = load i32, ptr @lookup_num_blocks, align 4, !dbg !5534
  %34 = load i32, ptr %start, align 4, !dbg !5534
  %35 = load i32, ptr %stop, align 4, !dbg !5534
  %36 = load i64, ptr %ip.addr, align 8, !dbg !5534
  %37 = inttoptr i64 %36 to ptr, !dbg !5534
  %call105 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.32, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %37) #17, !dbg !5534
  store i32 %call105, ptr %tmp104, align 4, !dbg !5536
  %38 = load i32, ptr %tmp104, align 4, !dbg !5534
  br label %if.end106, !dbg !5533

if.end106:                                        ; preds = %do.end103, %if.end90
  %39 = load i8, ptr %__ret_do_once66, align 1, !dbg !5526, !range !4712, !noundef !549
  %tobool108 = trunc i8 %39 to i1, !dbg !5526
  %lnot109 = xor i1 %tobool108, true, !dbg !5526
  %lnot111 = xor i1 %lnot109, true, !dbg !5526
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !5526
  %conv113 = sext i32 %lnot.ext112 to i64, !dbg !5526
  %expval114 = call i64 @llvm.expect.i64(i64 %conv113, i64 0), !dbg !5526
  store i64 %expval114, ptr %tmp107, align 8, !dbg !5533
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once66) #15, !dbg !5538
  %40 = load i64, ptr %tmp107, align 8, !dbg !5526
  store ptr null, ptr %retval, align 8, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end115:                                        ; preds = %lor.end
  %41 = load i32, ptr %start, align 4, !dbg !5540
  %idx.ext116 = zext i32 %41 to i64, !dbg !5541
  %add.ptr117 = getelementptr i32, ptr @__start_orc_unwind_ip, i64 %idx.ext116, !dbg !5541
  %42 = load i32, ptr %start, align 4, !dbg !5542
  %idx.ext118 = zext i32 %42 to i64, !dbg !5543
  %add.ptr119 = getelementptr %struct.orc_entry, ptr @__start_orc_unwind, i64 %idx.ext118, !dbg !5543
  %43 = load i32, ptr %stop, align 4, !dbg !5544
  %44 = load i32, ptr %start, align 4, !dbg !5545
  %sub120 = sub i32 %43, %44, !dbg !5546
  %45 = load i64, ptr %ip.addr, align 8, !dbg !5547
  %call121 = call ptr @__orc_find(ptr noundef %add.ptr117, ptr noundef %add.ptr119, i32 noundef %sub120, i64 noundef %45) #16, !dbg !5548
  store ptr %call121, ptr %retval, align 8, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

cleanup:                                          ; preds = %if.end115, %if.end106, %if.end39
  call void @llvm.lifetime.end.p0(i64 4, ptr %stop) #15, !dbg !5550
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #15, !dbg !5550
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !5550
  br label %return

if.end124:                                        ; preds = %land.lhs.true, %if.end
  %46 = load i64, ptr %ip.addr, align 8, !dbg !5551
  %call125 = call zeroext i1 @is_kernel_inittext(i64 noundef %46) #16, !dbg !5553
  br i1 %call125, label %if.then126, label %if.end129, !dbg !5554

if.then126:                                       ; preds = %if.end124
  %sub.ptr.div = sdiv exact i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind_ip to i64), i64 ptrtoint (ptr @__start_orc_unwind_ip to i64)), 4, !dbg !5555
  %conv127 = trunc i64 %sub.ptr.div to i32, !dbg !5556
  %47 = load i64, ptr %ip.addr, align 8, !dbg !5557
  %call128 = call ptr @__orc_find(ptr noundef @__start_orc_unwind_ip, ptr noundef @__start_orc_unwind, i32 noundef %conv127, i64 noundef %47) #16, !dbg !5558
  store ptr %call128, ptr %retval, align 8, !dbg !5559
  br label %return, !dbg !5559

if.end129:                                        ; preds = %if.end124
  %48 = load i64, ptr %ip.addr, align 8, !dbg !5560
  %call130 = call ptr @orc_module_find(i64 noundef %48) #16, !dbg !5561
  store ptr %call130, ptr @orc_find.orc, align 8, !dbg !5562
  %49 = load ptr, ptr @orc_find.orc, align 8, !dbg !5563
  %tobool131 = icmp ne ptr %49, null, !dbg !5563
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !5565

if.then132:                                       ; preds = %if.end129
  %50 = load ptr, ptr @orc_find.orc, align 8, !dbg !5566
  store ptr %50, ptr %retval, align 8, !dbg !5567
  br label %return, !dbg !5567

if.end133:                                        ; preds = %if.end129
  %51 = load i64, ptr %ip.addr, align 8, !dbg !5568
  %call134 = call ptr @orc_ftrace_find(i64 noundef %51) #16, !dbg !5569
  store ptr %call134, ptr %retval, align 8, !dbg !5570
  br label %return, !dbg !5570

return:                                           ; preds = %if.end133, %if.then132, %if.then126, %cleanup, %if.then
  %52 = load ptr, ptr %retval, align 8, !dbg !5571
  ret ptr %52, !dbg !5571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @get_reg(ptr noundef %state, i32 noundef %reg_off, ptr noundef %val) #1 align 16 !dbg !5572 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %reg_off.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %reg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5576, metadata !DIExpression()), !dbg !5580
  store i32 %reg_off, ptr %reg_off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg_off.addr, metadata !5577, metadata !DIExpression()), !dbg !5581
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5578, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #15, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !5579, metadata !DIExpression()), !dbg !5584
  %0 = load i32, ptr %reg_off.addr, align 4, !dbg !5585
  %div = udiv i32 %0, 8, !dbg !5586
  store i32 %div, ptr %reg, align 4, !dbg !5584
  %1 = load ptr, ptr %state.addr, align 8, !dbg !5587
  %regs = getelementptr inbounds %struct.unwind_state, ptr %1, i32 0, i32 11, !dbg !5589
  %2 = load ptr, ptr %regs, align 8, !dbg !5589
  %tobool = icmp ne ptr %2, null, !dbg !5587
  br i1 %tobool, label %if.end, label %if.then, !dbg !5590

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5591

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5592
  %full_regs = getelementptr inbounds %struct.unwind_state, ptr %3, i32 0, i32 7, !dbg !5594
  %4 = load i8, ptr %full_regs, align 2, !dbg !5594, !range !4712, !noundef !549
  %tobool1 = trunc i8 %4 to i1, !dbg !5594
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5595

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !5596

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5599

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5599

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5596
  %regs3 = getelementptr inbounds %struct.unwind_state, ptr %5, i32 0, i32 11, !dbg !5596
  %6 = load ptr, ptr %regs3, align 8, !dbg !5596
  %7 = load i32, ptr %reg, align 4, !dbg !5596
  %idxprom = zext i32 %7 to i64, !dbg !5596
  %arrayidx = getelementptr i64, ptr %6, i64 %idxprom, !dbg !5596
  %call = call i64 @__read_once_word_nocheck(ptr noundef %arrayidx) #16, !dbg !5596
  store i64 %call, ptr %tmp, align 8, !dbg !5599
  %8 = load i64, ptr %tmp, align 8, !dbg !5596
  %9 = load ptr, ptr %val.addr, align 8, !dbg !5601
  store i64 %8, ptr %9, align 8, !dbg !5602
  store i1 true, ptr %retval, align 1, !dbg !5603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5603

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %state.addr, align 8, !dbg !5604
  %prev_regs = getelementptr inbounds %struct.unwind_state, ptr %10, i32 0, i32 12, !dbg !5606
  %11 = load ptr, ptr %prev_regs, align 8, !dbg !5606
  %tobool5 = icmp ne ptr %11, null, !dbg !5604
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !5607

if.then6:                                         ; preds = %if.end4
  br label %do.body7, !dbg !5608

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !5611

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5611

do.end9:                                          ; preds = %do.cond8
  %12 = load ptr, ptr %state.addr, align 8, !dbg !5608
  %prev_regs11 = getelementptr inbounds %struct.unwind_state, ptr %12, i32 0, i32 12, !dbg !5608
  %13 = load ptr, ptr %prev_regs11, align 8, !dbg !5608
  %14 = load i32, ptr %reg, align 4, !dbg !5608
  %idxprom12 = zext i32 %14 to i64, !dbg !5608
  %arrayidx13 = getelementptr i64, ptr %13, i64 %idxprom12, !dbg !5608
  %call14 = call i64 @__read_once_word_nocheck(ptr noundef %arrayidx13) #16, !dbg !5608
  store i64 %call14, ptr %tmp10, align 8, !dbg !5611
  %15 = load i64, ptr %tmp10, align 8, !dbg !5608
  %16 = load ptr, ptr %val.addr, align 8, !dbg !5613
  store i64 %15, ptr %16, align 8, !dbg !5614
  store i1 true, ptr %retval, align 1, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5615

if.end15:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

cleanup:                                          ; preds = %if.end15, %do.end9, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #15, !dbg !5617
  %17 = load i1, ptr %retval, align 1, !dbg !5617
  ret i1 %17, !dbg !5617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #8 align 16 !dbg !5618 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5623, metadata !DIExpression()), !dbg !5629
  br label %do.body, !dbg !5629

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5625, metadata !DIExpression()), !dbg !5630
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5630
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5629
  br label %do.cond, !dbg !5630

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5627, metadata !DIExpression()), !dbg !5631
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !5631, !srcloc !5632
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5631
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5631
  %3 = inttoptr i64 %2 to ptr, !dbg !5631
  store ptr %3, ptr %tmp, align 8, !dbg !5631
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !5629
  %4 = load ptr, ptr %tmp, align 8, !dbg !5631
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5629
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5629
  store ptr %5, ptr %tmp1, align 8, !dbg !5629
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !5633
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5629
  ret ptr %6, !dbg !5634
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unwind_dump(ptr noundef %state) #1 align 16 !dbg !4454 {
entry:
  %state.addr = alloca ptr, align 8
  %word = alloca i64, align 8
  %sp = alloca ptr, align 8
  %stack_info = alloca %struct.stack_info, align 8
  %visit_mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4458, metadata !DIExpression()), !dbg !5635
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #15, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %word, metadata !4459, metadata !DIExpression()), !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4460, metadata !DIExpression()), !dbg !5638
  call void @llvm.lifetime.start.p0(i64 32, ptr %stack_info) #15, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %stack_info, metadata !4461, metadata !DIExpression()), !dbg !5640
  call void @llvm.memset.p0.i64(ptr align 8 %stack_info, i8 0, i64 32, i1 false), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %visit_mask) #15, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %visit_mask, metadata !4462, metadata !DIExpression()), !dbg !5642
  store i64 0, ptr %visit_mask, align 8, !dbg !5642
  %0 = load i8, ptr @unwind_dump.dumped_before, align 1, !dbg !5643, !range !4712, !noundef !549
  %tobool = trunc i8 %0 to i1, !dbg !5643
  br i1 %tobool, label %if.then, label %if.end, !dbg !5645

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end:                                           ; preds = %entry
  store i8 1, ptr @unwind_dump.dumped_before, align 1, !dbg !5647
  br label %do.body, !dbg !5648

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5650

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5650

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %state.addr, align 8, !dbg !5648
  %stack_info1 = getelementptr inbounds %struct.unwind_state, ptr %1, i32 0, i32 0, !dbg !5648
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info1, i32 0, i32 0, !dbg !5648
  %2 = load i32, ptr %type, align 8, !dbg !5648
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5648
  %stack_info2 = getelementptr inbounds %struct.unwind_state, ptr %3, i32 0, i32 0, !dbg !5648
  %next_sp = getelementptr inbounds %struct.stack_info, ptr %stack_info2, i32 0, i32 3, !dbg !5648
  %4 = load ptr, ptr %next_sp, align 8, !dbg !5648
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5648
  %stack_mask = getelementptr inbounds %struct.unwind_state, ptr %5, i32 0, i32 1, !dbg !5648
  %6 = load i64, ptr %stack_mask, align 8, !dbg !5648
  %7 = load ptr, ptr %state.addr, align 8, !dbg !5648
  %graph_idx = getelementptr inbounds %struct.unwind_state, ptr %7, i32 0, i32 3, !dbg !5648
  %8 = load i32, ptr %graph_idx, align 8, !dbg !5648
  %call = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.35, i32 noundef %2, ptr noundef %4, i64 noundef %6, i32 noundef %8) #17, !dbg !5648
  store i32 %call, ptr %tmp, align 4, !dbg !5650
  %9 = load i32, ptr %tmp, align 4, !dbg !5648
  %10 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !5652
  store ptr %10, ptr %sp, align 8, !dbg !5654
  br label %for.cond, !dbg !5655

for.cond:                                         ; preds = %for.inc20, %do.end
  %11 = load ptr, ptr %sp, align 8, !dbg !5656
  %tobool3 = icmp ne ptr %11, null, !dbg !5658
  br i1 %tobool3, label %for.body, label %for.end22, !dbg !5658

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %sp, align 8, !dbg !5659
  %13 = load ptr, ptr %state.addr, align 8, !dbg !5662
  %task = getelementptr inbounds %struct.unwind_state, ptr %13, i32 0, i32 2, !dbg !5663
  %14 = load ptr, ptr %task, align 8, !dbg !5663
  %call4 = call i32 @get_stack_info(ptr noundef %12, ptr noundef %14, ptr noundef %stack_info, ptr noundef %visit_mask) #16, !dbg !5664
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5664
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5665

if.then6:                                         ; preds = %for.body
  br label %for.end22, !dbg !5666

if.end7:                                          ; preds = %for.body
  br label %for.cond8, !dbg !5667

for.cond8:                                        ; preds = %for.inc, %if.end7
  %15 = load ptr, ptr %sp, align 8, !dbg !5668
  %end = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 2, !dbg !5671
  %16 = load ptr, ptr %end, align 8, !dbg !5671
  %cmp = icmp ult ptr %15, %16, !dbg !5672
  br i1 %cmp, label %for.body9, label %for.end, !dbg !5673

for.body9:                                        ; preds = %for.cond8
  br label %do.body10, !dbg !5674

do.body10:                                        ; preds = %for.body9
  br label %do.cond11, !dbg !5677

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5677

do.end12:                                         ; preds = %do.cond11
  %17 = load ptr, ptr %sp, align 8, !dbg !5674
  %call14 = call i64 @__read_once_word_nocheck(ptr noundef %17) #16, !dbg !5674
  store i64 %call14, ptr %tmp13, align 8, !dbg !5677
  %18 = load i64, ptr %tmp13, align 8, !dbg !5674
  store i64 %18, ptr %word, align 8, !dbg !5679
  br label %do.body15, !dbg !5680

do.body15:                                        ; preds = %do.end12
  br label %do.cond16, !dbg !5682

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5682

do.end17:                                         ; preds = %do.cond16
  %19 = load ptr, ptr %sp, align 8, !dbg !5680
  %20 = ptrtoint ptr %19 to i64, !dbg !5680
  %21 = load i64, ptr %word, align 8, !dbg !5680
  %22 = load i64, ptr %word, align 8, !dbg !5680
  %23 = inttoptr i64 %22 to ptr, !dbg !5680
  %call19 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.36, i32 noundef 16, i64 noundef %20, i32 noundef 16, i64 noundef %21, ptr noundef %23) #17, !dbg !5680
  store i32 %call19, ptr %tmp18, align 4, !dbg !5682
  %24 = load i32, ptr %tmp18, align 4, !dbg !5680
  br label %for.inc, !dbg !5684

for.inc:                                          ; preds = %do.end17
  %25 = load ptr, ptr %sp, align 8, !dbg !5685
  %incdec.ptr = getelementptr i64, ptr %25, i32 1, !dbg !5685
  store ptr %incdec.ptr, ptr %sp, align 8, !dbg !5685
  br label %for.cond8, !dbg !5686, !llvm.loop !5687

for.end:                                          ; preds = %for.cond8
  br label %for.inc20, !dbg !5689

for.inc20:                                        ; preds = %for.end
  %next_sp21 = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 3, !dbg !5690
  %26 = load ptr, ptr %next_sp21, align 8, !dbg !5690
  %27 = ptrtoint ptr %26 to i64, !dbg !5690
  %add = add i64 %27, 7, !dbg !5690
  %and = and i64 %add, -8, !dbg !5690
  %28 = inttoptr i64 %and to ptr, !dbg !5690
  store ptr %28, ptr %sp, align 8, !dbg !5691
  br label %for.cond, !dbg !5692, !llvm.loop !5693

for.end22:                                        ; preds = %if.then6, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5695
  br label %cleanup, !dbg !5695

cleanup:                                          ; preds = %for.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %visit_mask) #15, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 32, ptr %stack_info) #15, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #15, !dbg !5695
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5695

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @deref_stack_reg(ptr noundef %state, i64 noundef %addr, ptr noundef %val) #1 align 16 !dbg !5696 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %val.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5700, metadata !DIExpression()), !dbg !5703
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5701, metadata !DIExpression()), !dbg !5704
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5702, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5706
  %1 = load i64, ptr %addr.addr, align 8, !dbg !5708
  %call = call zeroext i1 @stack_access_ok(ptr noundef %0, i64 noundef %1, i64 noundef 8) #16, !dbg !5709
  br i1 %call, label %if.end, label %if.then, !dbg !5710

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5711
  br label %return, !dbg !5711

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5712

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5714

do.end:                                           ; preds = %do.body
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5712
  %3 = inttoptr i64 %2 to ptr, !dbg !5712
  %call1 = call i64 @__read_once_word_nocheck(ptr noundef %3) #16, !dbg !5712
  store i64 %call1, ptr %tmp, align 8, !dbg !5714
  %4 = load i64, ptr %tmp, align 8, !dbg !5712
  %5 = load ptr, ptr %val.addr, align 8, !dbg !5716
  store i64 %4, ptr %5, align 8, !dbg !5717
  store i1 true, ptr %retval, align 1, !dbg !5718
  br label %return, !dbg !5718

return:                                           ; preds = %do.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !5719
  ret i1 %6, !dbg !5719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @unwind_recover_ret_addr(ptr noundef %state, i64 noundef %addr, ptr noundef %addr_p) #7 align 16 !dbg !5720 {
entry:
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %addr_p.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5724, metadata !DIExpression()), !dbg !5728
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5725, metadata !DIExpression()), !dbg !5729
  store ptr %addr_p, ptr %addr_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr_p.addr, metadata !5726, metadata !DIExpression()), !dbg !5730
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5727, metadata !DIExpression()), !dbg !5732
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5733
  %task = getelementptr inbounds %struct.unwind_state, ptr %0, i32 0, i32 2, !dbg !5734
  %1 = load ptr, ptr %task, align 8, !dbg !5734
  %2 = load ptr, ptr %state.addr, align 8, !dbg !5735
  %graph_idx = getelementptr inbounds %struct.unwind_state, ptr %2, i32 0, i32 3, !dbg !5736
  %3 = load i64, ptr %addr.addr, align 8, !dbg !5737
  %4 = load ptr, ptr %addr_p.addr, align 8, !dbg !5738
  %call = call i64 @ftrace_graph_ret_addr(ptr noundef %1, ptr noundef %graph_idx, i64 noundef %3, ptr noundef %4) #16, !dbg !5739
  store i64 %call, ptr %ret, align 8, !dbg !5740
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5741
  %6 = load i64, ptr %ret, align 8, !dbg !5742
  %7 = load ptr, ptr %addr_p.addr, align 8, !dbg !5743
  %call1 = call i64 @unwind_recover_rethook(ptr noundef %5, i64 noundef %6, ptr noundef %7) #16, !dbg !5744
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5745
  ret i64 %call1, !dbg !5746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @deref_stack_regs(ptr noundef %state, i64 noundef %addr, ptr noundef %ip, ptr noundef %sp) #1 align 16 !dbg !5747 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ip.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5751, metadata !DIExpression()), !dbg !5756
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5752, metadata !DIExpression()), !dbg !5757
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !5753, metadata !DIExpression()), !dbg !5758
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !5754, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !5755, metadata !DIExpression()), !dbg !5761
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5762
  %1 = inttoptr i64 %0 to ptr, !dbg !5763
  store ptr %1, ptr %regs, align 8, !dbg !5761
  br label %do.body, !dbg !5764

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5765

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5765

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %state.addr, align 8, !dbg !5767
  %3 = load i64, ptr %addr.addr, align 8, !dbg !5769
  %call = call zeroext i1 @stack_access_ok(ptr noundef %2, i64 noundef %3, i64 noundef 168) #16, !dbg !5770
  br i1 %call, label %if.end, label %if.then, !dbg !5771

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

if.end:                                           ; preds = %do.end
  br label %do.body1, !dbg !5773

do.body1:                                         ; preds = %if.end
  br label %do.cond2, !dbg !5775

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5775

do.end3:                                          ; preds = %do.cond2
  %4 = load ptr, ptr %regs, align 8, !dbg !5773
  %ip4 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 16, !dbg !5773
  %call5 = call i64 @__read_once_word_nocheck(ptr noundef %ip4) #16, !dbg !5773
  store i64 %call5, ptr %tmp, align 8, !dbg !5775
  %5 = load i64, ptr %tmp, align 8, !dbg !5773
  %6 = load ptr, ptr %ip.addr, align 8, !dbg !5777
  store i64 %5, ptr %6, align 8, !dbg !5778
  br label %do.body6, !dbg !5779

do.body6:                                         ; preds = %do.end3
  br label %do.cond7, !dbg !5781

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5781

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %regs, align 8, !dbg !5779
  %sp10 = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 19, !dbg !5779
  %call11 = call i64 @__read_once_word_nocheck(ptr noundef %sp10) #16, !dbg !5779
  store i64 %call11, ptr %tmp9, align 8, !dbg !5781
  %8 = load i64, ptr %tmp9, align 8, !dbg !5779
  %9 = load ptr, ptr %sp.addr, align 8, !dbg !5783
  store i64 %8, ptr %9, align 8, !dbg !5784
  store i1 true, ptr %retval, align 1, !dbg !5785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5785

cleanup:                                          ; preds = %do.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #15, !dbg !5786
  %10 = load i1, ptr %retval, align 1, !dbg !5786
  ret i1 %10, !dbg !5786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @unwind_recover_rethook(ptr noundef %state, i64 noundef %addr, ptr noundef %addr_p) #7 align 16 !dbg !5787 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %addr_p.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5789, metadata !DIExpression()), !dbg !5792
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5790, metadata !DIExpression()), !dbg !5793
  store ptr %addr_p, ptr %addr_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr_p.addr, metadata !5791, metadata !DIExpression()), !dbg !5794
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5795
  %call = call zeroext i1 @is_rethook_trampoline(i64 noundef %0) #16, !dbg !5797
  br i1 %call, label %if.then, label %if.end, !dbg !5798

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !5799
  %task = getelementptr inbounds %struct.unwind_state, ptr %1, i32 0, i32 2, !dbg !5800
  %2 = load ptr, ptr %task, align 8, !dbg !5800
  %3 = load ptr, ptr %addr_p.addr, align 8, !dbg !5801
  %4 = ptrtoint ptr %3 to i64, !dbg !5802
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5803
  %kr_cur = getelementptr inbounds %struct.unwind_state, ptr %5, i32 0, i32 4, !dbg !5804
  %call1 = call i64 @rethook_find_ret_addr(ptr noundef %2, i64 noundef %4, ptr noundef %kr_cur) #16, !dbg !5805
  store i64 %call1, ptr %retval, align 8, !dbg !5806
  br label %return, !dbg !5806

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %addr.addr, align 8, !dbg !5807
  store i64 %6, ptr %retval, align 8, !dbg !5808
  br label %return, !dbg !5808

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, ptr %retval, align 8, !dbg !5809
  ret i64 %7, !dbg !5809
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @deref_stack_iret_regs(ptr noundef %state, i64 noundef %addr, ptr noundef %ip, ptr noundef %sp) #1 align 16 !dbg !5810 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ip.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5812, metadata !DIExpression()), !dbg !5817
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5813, metadata !DIExpression()), !dbg !5818
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !5814, metadata !DIExpression()), !dbg !5819
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !5815, metadata !DIExpression()), !dbg !5820
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #15, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !5816, metadata !DIExpression()), !dbg !5822
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5823
  %1 = inttoptr i64 %0 to ptr, !dbg !5824
  %add.ptr = getelementptr i8, ptr %1, i64 -128, !dbg !5825
  store ptr %add.ptr, ptr %regs, align 8, !dbg !5822
  %2 = load ptr, ptr %state.addr, align 8, !dbg !5826
  %3 = load i64, ptr %addr.addr, align 8, !dbg !5828
  %call = call zeroext i1 @stack_access_ok(ptr noundef %2, i64 noundef %3, i64 noundef 40) #16, !dbg !5829
  br i1 %call, label %if.end, label %if.then, !dbg !5830

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5831

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5832

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5834

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5834

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %regs, align 8, !dbg !5832
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 16, !dbg !5832
  %call2 = call i64 @__read_once_word_nocheck(ptr noundef %ip1) #16, !dbg !5832
  store i64 %call2, ptr %tmp, align 8, !dbg !5834
  %5 = load i64, ptr %tmp, align 8, !dbg !5832
  %6 = load ptr, ptr %ip.addr, align 8, !dbg !5836
  store i64 %5, ptr %6, align 8, !dbg !5837
  br label %do.body3, !dbg !5838

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !5840

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5840

do.end5:                                          ; preds = %do.cond4
  %7 = load ptr, ptr %regs, align 8, !dbg !5838
  %sp7 = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 19, !dbg !5838
  %call8 = call i64 @__read_once_word_nocheck(ptr noundef %sp7) #16, !dbg !5838
  store i64 %call8, ptr %tmp6, align 8, !dbg !5840
  %8 = load i64, ptr %tmp6, align 8, !dbg !5838
  %9 = load ptr, ptr %sp.addr, align 8, !dbg !5842
  store i64 %8, ptr %9, align 8, !dbg !5843
  store i1 true, ptr %retval, align 1, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #15, !dbg !5845
  %10 = load i1, ptr %retval, align 1, !dbg !5845
  ret i1 %10, !dbg !5845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @on_stack(ptr noundef %info, ptr noundef %addr, i64 noundef %len) #7 align 16 !dbg !5846 {
entry:
  %info.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %begin = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5851, metadata !DIExpression()), !dbg !5856
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5852, metadata !DIExpression()), !dbg !5857
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5853, metadata !DIExpression()), !dbg !5858
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #15, !dbg !5859
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !5854, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5861
  %begin1 = getelementptr inbounds %struct.stack_info, ptr %0, i32 0, i32 1, !dbg !5862
  %1 = load ptr, ptr %begin1, align 8, !dbg !5862
  store ptr %1, ptr %begin, align 8, !dbg !5860
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5855, metadata !DIExpression()), !dbg !5864
  %2 = load ptr, ptr %info.addr, align 8, !dbg !5865
  %end2 = getelementptr inbounds %struct.stack_info, ptr %2, i32 0, i32 2, !dbg !5866
  %3 = load ptr, ptr %end2, align 8, !dbg !5866
  store ptr %3, ptr %end, align 8, !dbg !5864
  %4 = load ptr, ptr %info.addr, align 8, !dbg !5867
  %type = getelementptr inbounds %struct.stack_info, ptr %4, i32 0, i32 0, !dbg !5868
  %5 = load i32, ptr %type, align 8, !dbg !5868
  %cmp = icmp ne i32 %5, 0, !dbg !5869
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !5870

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !5871
  %7 = load ptr, ptr %begin, align 8, !dbg !5872
  %cmp3 = icmp uge ptr %6, %7, !dbg !5873
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !5874

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !5875
  %9 = load ptr, ptr %end, align 8, !dbg !5876
  %cmp5 = icmp ult ptr %8, %9, !dbg !5877
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !5878

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %10 = load ptr, ptr %addr.addr, align 8, !dbg !5879
  %11 = load i64, ptr %len.addr, align 8, !dbg !5880
  %add.ptr = getelementptr i8, ptr %10, i64 %11, !dbg !5881
  %12 = load ptr, ptr %begin, align 8, !dbg !5882
  %cmp7 = icmp ugt ptr %add.ptr, %12, !dbg !5883
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !5884

land.rhs:                                         ; preds = %land.lhs.true6
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !5885
  %14 = load i64, ptr %len.addr, align 8, !dbg !5886
  %add.ptr8 = getelementptr i8, ptr %13, i64 %14, !dbg !5887
  %15 = load ptr, ptr %end, align 8, !dbg !5888
  %cmp9 = icmp ule ptr %add.ptr8, %15, !dbg !5889
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp9, %land.rhs ], !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #15, !dbg !5891
  ret i1 %16, !dbg !5892
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #8 align 16 !dbg !5893 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5895, metadata !DIExpression()), !dbg !5897
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5897, !srcloc !5898
  %1 = icmp ult i8 %0, 2, !dbg !5897
  call void @llvm.assume(i1 %1), !dbg !5897
  store i8 %0, ptr %c, align 1, !dbg !5897
  %2 = load i8, ptr %c, align 1, !dbg !5897, !range !4712, !noundef !549
  %tobool = trunc i8 %2 to i1, !dbg !5897
  %frombool = zext i1 %tobool to i8, !dbg !5897
  store i8 %frombool, ptr %tmp, align 1, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !5899
  %3 = load i8, ptr %tmp, align 1, !dbg !5897, !range !4712, !noundef !549
  %tobool1 = trunc i8 %3 to i1, !dbg !5897
  ret i1 %tobool1, !dbg !5900
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__unwind_start(ptr noundef %state, ptr noundef %task, ptr noundef %regs, ptr noundef %first_frame) #1 align 16 !dbg !5901 {
entry:
  %state.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %first_frame.addr = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %tmp32 = alloca i64, align 8
  %next_page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5905, metadata !DIExpression()), !dbg !5929
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5906, metadata !DIExpression()), !dbg !5930
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5907, metadata !DIExpression()), !dbg !5931
  store ptr %first_frame, ptr %first_frame.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_frame.addr, metadata !5908, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5933
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 112, i1 false), !dbg !5934
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5935
  %2 = load ptr, ptr %state.addr, align 8, !dbg !5936
  %task1 = getelementptr inbounds %struct.unwind_state, ptr %2, i32 0, i32 2, !dbg !5937
  store ptr %1, ptr %task1, align 8, !dbg !5938
  %3 = load i8, ptr @orc_init, align 1, !dbg !5939, !range !4712, !noundef !549
  %tobool = trunc i8 %3 to i1, !dbg !5939
  br i1 %tobool, label %if.end, label %if.then, !dbg !5941

if.then:                                          ; preds = %entry
  br label %err, !dbg !5942

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %task.addr, align 8, !dbg !5943
  %call = call zeroext i1 @task_on_another_cpu(ptr noundef %4) #16, !dbg !5945
  br i1 %call, label %if.then2, label %if.end3, !dbg !5946

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !5947

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5948
  %tobool4 = icmp ne ptr %5, null, !dbg !5948
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5949

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5950
  %call6 = call i32 @user_mode(ptr noundef %6) #16, !dbg !5953
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5953
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5954

if.then8:                                         ; preds = %if.then5
  br label %the_end, !dbg !5955

if.end9:                                          ; preds = %if.then5
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5956
  %ip = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 16, !dbg !5957
  %8 = load i64, ptr %ip, align 8, !dbg !5957
  %9 = load ptr, ptr %state.addr, align 8, !dbg !5958
  %ip10 = getelementptr inbounds %struct.unwind_state, ptr %9, i32 0, i32 10, !dbg !5959
  store i64 %8, ptr %ip10, align 8, !dbg !5960
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !5961
  %sp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 19, !dbg !5962
  %11 = load i64, ptr %sp, align 8, !dbg !5962
  %12 = load ptr, ptr %state.addr, align 8, !dbg !5963
  %sp11 = getelementptr inbounds %struct.unwind_state, ptr %12, i32 0, i32 8, !dbg !5964
  store i64 %11, ptr %sp11, align 8, !dbg !5965
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !5966
  %bp = getelementptr inbounds %struct.pt_regs, ptr %13, i32 0, i32 4, !dbg !5967
  %14 = load i64, ptr %bp, align 8, !dbg !5967
  %15 = load ptr, ptr %state.addr, align 8, !dbg !5968
  %bp12 = getelementptr inbounds %struct.unwind_state, ptr %15, i32 0, i32 9, !dbg !5969
  store i64 %14, ptr %bp12, align 8, !dbg !5970
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !5971
  %17 = load ptr, ptr %state.addr, align 8, !dbg !5972
  %regs13 = getelementptr inbounds %struct.unwind_state, ptr %17, i32 0, i32 11, !dbg !5973
  store ptr %16, ptr %regs13, align 8, !dbg !5974
  %18 = load ptr, ptr %state.addr, align 8, !dbg !5975
  %full_regs = getelementptr inbounds %struct.unwind_state, ptr %18, i32 0, i32 7, !dbg !5976
  store i8 1, ptr %full_regs, align 2, !dbg !5977
  %19 = load ptr, ptr %state.addr, align 8, !dbg !5978
  %signal = getelementptr inbounds %struct.unwind_state, ptr %19, i32 0, i32 6, !dbg !5979
  store i8 1, ptr %signal, align 1, !dbg !5980
  br label %if.end39, !dbg !5981

if.else:                                          ; preds = %if.end3
  %20 = load ptr, ptr %task.addr, align 8, !dbg !5982
  %call14 = call ptr @get_current() #16, !dbg !5983
  %cmp = icmp eq ptr %20, %call14, !dbg !5984
  br i1 %cmp, label %if.then15, label %if.else21, !dbg !5985

if.then15:                                        ; preds = %if.else
  %21 = load ptr, ptr %state.addr, align 8, !dbg !5986
  %ip16 = getelementptr inbounds %struct.unwind_state, ptr %21, i32 0, i32 10, !dbg !5988
  %22 = load ptr, ptr %state.addr, align 8, !dbg !5989
  %sp17 = getelementptr inbounds %struct.unwind_state, ptr %22, i32 0, i32 8, !dbg !5990
  %23 = load ptr, ptr %state.addr, align 8, !dbg !5991
  %bp18 = getelementptr inbounds %struct.unwind_state, ptr %23, i32 0, i32 9, !dbg !5992
  %24 = call { i64, i64, i64 } asm sideeffect "lea (%rip), $0\0A\09mov %rsp, $1\0A\09mov %rbp, $2\0A\09", "=r,=r,=r,~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5993, !srcloc !5994
  %asmresult = extractvalue { i64, i64, i64 } %24, 0, !dbg !5993
  %asmresult19 = extractvalue { i64, i64, i64 } %24, 1, !dbg !5993
  %asmresult20 = extractvalue { i64, i64, i64 } %24, 2, !dbg !5993
  store i64 %asmresult, ptr %ip16, align 8, !dbg !5993
  store i64 %asmresult19, ptr %sp17, align 8, !dbg !5993
  store i64 %asmresult20, ptr %bp18, align 8, !dbg !5993
  br label %if.end38, !dbg !5995

if.else21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame) #15, !dbg !5996
  call void @llvm.dbg.declare(metadata ptr %frame, metadata !5909, metadata !DIExpression()), !dbg !5997
  %25 = load ptr, ptr %task.addr, align 8, !dbg !5998
  %thread = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 197, !dbg !5999
  %sp22 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 1, !dbg !6000
  %26 = load i64, ptr %sp22, align 8, !dbg !6000
  %27 = inttoptr i64 %26 to ptr, !dbg !6001
  store ptr %27, ptr %frame, align 8, !dbg !5997
  %28 = load ptr, ptr %task.addr, align 8, !dbg !6002
  %thread23 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 197, !dbg !6003
  %sp24 = getelementptr inbounds %struct.thread_struct, ptr %thread23, i32 0, i32 1, !dbg !6004
  %29 = load i64, ptr %sp24, align 8, !dbg !6004
  %add = add i64 %29, 56, !dbg !6005
  %30 = load ptr, ptr %state.addr, align 8, !dbg !6006
  %sp25 = getelementptr inbounds %struct.unwind_state, ptr %30, i32 0, i32 8, !dbg !6007
  store i64 %add, ptr %sp25, align 8, !dbg !6008
  br label %do.body, !dbg !6009

do.body:                                          ; preds = %if.else21
  br label %do.cond, !dbg !6011

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6011

do.end:                                           ; preds = %do.cond
  %31 = load ptr, ptr %frame, align 8, !dbg !6009
  %bp26 = getelementptr inbounds %struct.inactive_task_frame, ptr %31, i32 0, i32 5, !dbg !6009
  %call27 = call i64 @__read_once_word_nocheck(ptr noundef %bp26) #16, !dbg !6009
  store i64 %call27, ptr %tmp, align 8, !dbg !6011
  %32 = load i64, ptr %tmp, align 8, !dbg !6009
  %33 = load ptr, ptr %state.addr, align 8, !dbg !6013
  %bp28 = getelementptr inbounds %struct.unwind_state, ptr %33, i32 0, i32 9, !dbg !6014
  store i64 %32, ptr %bp28, align 8, !dbg !6015
  br label %do.body29, !dbg !6016

do.body29:                                        ; preds = %do.end
  br label %do.cond30, !dbg !6018

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6018

do.end31:                                         ; preds = %do.cond30
  %34 = load ptr, ptr %frame, align 8, !dbg !6016
  %ret_addr = getelementptr inbounds %struct.inactive_task_frame, ptr %34, i32 0, i32 6, !dbg !6016
  %call33 = call i64 @__read_once_word_nocheck(ptr noundef %ret_addr) #16, !dbg !6016
  store i64 %call33, ptr %tmp32, align 8, !dbg !6018
  %35 = load i64, ptr %tmp32, align 8, !dbg !6016
  %36 = load ptr, ptr %state.addr, align 8, !dbg !6020
  %ip34 = getelementptr inbounds %struct.unwind_state, ptr %36, i32 0, i32 10, !dbg !6021
  store i64 %35, ptr %ip34, align 8, !dbg !6022
  %37 = load ptr, ptr %state.addr, align 8, !dbg !6023
  %ip35 = getelementptr inbounds %struct.unwind_state, ptr %37, i32 0, i32 10, !dbg !6024
  %38 = load i64, ptr %ip35, align 8, !dbg !6024
  %39 = inttoptr i64 %38 to ptr, !dbg !6025
  %cmp36 = icmp eq ptr %39, @ret_from_fork_asm, !dbg !6026
  %40 = load ptr, ptr %state.addr, align 8, !dbg !6027
  %signal37 = getelementptr inbounds %struct.unwind_state, ptr %40, i32 0, i32 6, !dbg !6028
  %frombool = zext i1 %cmp36 to i8, !dbg !6029
  store i8 %frombool, ptr %signal37, align 1, !dbg !6029
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame) #15, !dbg !6030
  br label %if.end38

if.end38:                                         ; preds = %do.end31, %if.then15
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end9
  %41 = load ptr, ptr %state.addr, align 8, !dbg !6031
  %sp40 = getelementptr inbounds %struct.unwind_state, ptr %41, i32 0, i32 8, !dbg !6032
  %42 = load i64, ptr %sp40, align 8, !dbg !6032
  %43 = inttoptr i64 %42 to ptr, !dbg !6033
  %44 = load ptr, ptr %state.addr, align 8, !dbg !6034
  %task41 = getelementptr inbounds %struct.unwind_state, ptr %44, i32 0, i32 2, !dbg !6035
  %45 = load ptr, ptr %task41, align 8, !dbg !6035
  %46 = load ptr, ptr %state.addr, align 8, !dbg !6036
  %stack_info = getelementptr inbounds %struct.unwind_state, ptr %46, i32 0, i32 0, !dbg !6037
  %47 = load ptr, ptr %state.addr, align 8, !dbg !6038
  %stack_mask = getelementptr inbounds %struct.unwind_state, ptr %47, i32 0, i32 1, !dbg !6039
  %call42 = call i32 @get_stack_info(ptr noundef %43, ptr noundef %45, ptr noundef %stack_info, ptr noundef %stack_mask) #16, !dbg !6040
  %tobool43 = icmp ne i32 %call42, 0, !dbg !6040
  br i1 %tobool43, label %if.then44, label %if.end54, !dbg !6041

if.then44:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_page) #15, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %next_page, metadata !5924, metadata !DIExpression()), !dbg !6043
  %48 = load ptr, ptr %state.addr, align 8, !dbg !6044
  %sp45 = getelementptr inbounds %struct.unwind_state, ptr %48, i32 0, i32 8, !dbg !6044
  %49 = load i64, ptr %sp45, align 8, !dbg !6044
  %add46 = add i64 %49, 4095, !dbg !6044
  %and = and i64 %add46, -4096, !dbg !6044
  %50 = inttoptr i64 %and to ptr, !dbg !6045
  store ptr %50, ptr %next_page, align 8, !dbg !6043
  %51 = load ptr, ptr %state.addr, align 8, !dbg !6046
  %error = getelementptr inbounds %struct.unwind_state, ptr %51, i32 0, i32 5, !dbg !6047
  store i8 1, ptr %error, align 8, !dbg !6048
  %52 = load ptr, ptr %next_page, align 8, !dbg !6049
  %53 = load ptr, ptr %state.addr, align 8, !dbg !6051
  %task47 = getelementptr inbounds %struct.unwind_state, ptr %53, i32 0, i32 2, !dbg !6052
  %54 = load ptr, ptr %task47, align 8, !dbg !6052
  %55 = load ptr, ptr %state.addr, align 8, !dbg !6053
  %stack_info48 = getelementptr inbounds %struct.unwind_state, ptr %55, i32 0, i32 0, !dbg !6054
  %56 = load ptr, ptr %state.addr, align 8, !dbg !6055
  %stack_mask49 = getelementptr inbounds %struct.unwind_state, ptr %56, i32 0, i32 1, !dbg !6056
  %call50 = call i32 @get_stack_info(ptr noundef %52, ptr noundef %54, ptr noundef %stack_info48, ptr noundef %stack_mask49) #16, !dbg !6057
  %tobool51 = icmp ne i32 %call50, 0, !dbg !6057
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !6058

if.then52:                                        ; preds = %if.then44
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6059

if.end53:                                         ; preds = %if.then44
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6060
  br label %cleanup, !dbg !6060

cleanup:                                          ; preds = %if.end53, %if.then52
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_page) #15, !dbg !6060
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end54, !dbg !6061

if.end54:                                         ; preds = %cleanup.cont, %if.end39
  %57 = load ptr, ptr %regs.addr, align 8, !dbg !6062
  %tobool55 = icmp ne ptr %57, null, !dbg !6062
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !6064

if.then56:                                        ; preds = %if.end54
  %58 = load ptr, ptr %state.addr, align 8, !dbg !6065
  %call57 = call zeroext i1 @unwind_next_frame(ptr noundef %58) #16, !dbg !6067
  br label %return, !dbg !6068

if.end58:                                         ; preds = %if.end54
  br label %while.cond, !dbg !6069

while.cond:                                       ; preds = %while.body, %if.end58
  %59 = load ptr, ptr %state.addr, align 8, !dbg !6070
  %call59 = call zeroext i1 @unwind_done(ptr noundef %59) #16, !dbg !6071
  br i1 %call59, label %land.end, label %land.rhs, !dbg !6072

land.rhs:                                         ; preds = %while.cond
  %60 = load ptr, ptr %state.addr, align 8, !dbg !6073
  %stack_info60 = getelementptr inbounds %struct.unwind_state, ptr %60, i32 0, i32 0, !dbg !6074
  %61 = load ptr, ptr %first_frame.addr, align 8, !dbg !6075
  %call61 = call zeroext i1 @on_stack(ptr noundef %stack_info60, ptr noundef %61, i64 noundef 8) #16, !dbg !6076
  br i1 %call61, label %lor.rhs, label %lor.end, !dbg !6077

lor.rhs:                                          ; preds = %land.rhs
  %62 = load ptr, ptr %state.addr, align 8, !dbg !6078
  %sp62 = getelementptr inbounds %struct.unwind_state, ptr %62, i32 0, i32 8, !dbg !6079
  %63 = load i64, ptr %sp62, align 8, !dbg !6079
  %64 = load ptr, ptr %first_frame.addr, align 8, !dbg !6080
  %65 = ptrtoint ptr %64 to i64, !dbg !6081
  %cmp63 = icmp ule i64 %63, %65, !dbg !6082
  br label %lor.end, !dbg !6077

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %66 = phi i1 [ true, %land.rhs ], [ %cmp63, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %67 = phi i1 [ false, %while.cond ], [ %66, %lor.end ], !dbg !6083
  br i1 %67, label %while.body, label %while.end, !dbg !6069

while.body:                                       ; preds = %land.end
  %68 = load ptr, ptr %state.addr, align 8, !dbg !6084
  %call64 = call zeroext i1 @unwind_next_frame(ptr noundef %68) #16, !dbg !6085
  br label %while.cond, !dbg !6069, !llvm.loop !6086

while.end:                                        ; preds = %land.end
  br label %return, !dbg !6088

err:                                              ; preds = %if.then2, %if.then
  call void @llvm.dbg.label(metadata !5927), !dbg !6089
  %69 = load ptr, ptr %state.addr, align 8, !dbg !6090
  %error65 = getelementptr inbounds %struct.unwind_state, ptr %69, i32 0, i32 5, !dbg !6091
  store i8 1, ptr %error65, align 8, !dbg !6092
  br label %the_end, !dbg !6090

the_end:                                          ; preds = %err, %if.then8
  call void @llvm.dbg.label(metadata !5928), !dbg !6093
  %70 = load ptr, ptr %state.addr, align 8, !dbg !6094
  %stack_info66 = getelementptr inbounds %struct.unwind_state, ptr %70, i32 0, i32 0, !dbg !6095
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info66, i32 0, i32 0, !dbg !6096
  store i32 0, ptr %type, align 8, !dbg !6097
  br label %return, !dbg !6098

return:                                           ; preds = %the_end, %while.end, %if.then56, %cleanup
  ret void, !dbg !6098

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_on_another_cpu(ptr noundef %task) #7 align 16 !dbg !6099 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6105
  %call = call ptr @get_current() #16, !dbg !6106
  %cmp = icmp ne ptr %0, %call, !dbg !6107
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6108

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !6109
  %on_cpu = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 6, !dbg !6110
  %2 = load i32, ptr %on_cpu, align 4, !dbg !6110
  %tobool = icmp ne i32 %2, 0, !dbg !6108
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !6111
  ret i1 %3, !dbg !6112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_once_word_nocheck(ptr noundef %addr) #8 align 16 !dbg !6113 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6120
  %1 = load volatile i64, ptr %0, align 8, !dbg !6120
  ret i64 %1, !dbg !6121
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ret_from_fork_asm() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6122 dso_local i32 @get_stack_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @orc_ip(ptr noundef %ip) #7 align 16 !dbg !6125 {
entry:
  %ip.addr = alloca ptr, align 8
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  %0 = load ptr, ptr %ip.addr, align 8, !dbg !6131
  %1 = ptrtoint ptr %0 to i64, !dbg !6132
  %2 = load ptr, ptr %ip.addr, align 8, !dbg !6133
  %3 = load i32, ptr %2, align 4, !dbg !6134
  %conv = sext i32 %3 to i64, !dbg !6134
  %add = add i64 %1, %conv, !dbg !6135
  ret i64 %add, !dbg !6136
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_kernel_inittext(i64 noundef %addr) #7 align 16 !dbg !6137 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6142, metadata !DIExpression()), !dbg !6143
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6144
  %cmp = icmp uge i64 %0, ptrtoint (ptr @_sinittext to i64), !dbg !6145
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6146

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6147
  %cmp1 = icmp ult i64 %1, ptrtoint (ptr @_einittext to i64), !dbg !6148
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6149
  ret i1 %2, !dbg !6150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @orc_module_find(i64 noundef %ip) #1 align 16 !dbg !6151 {
entry:
  %retval = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %mod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6153, metadata !DIExpression()), !dbg !6155
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #15, !dbg !6156
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !6154, metadata !DIExpression()), !dbg !6157
  %0 = load i64, ptr %ip.addr, align 8, !dbg !6158
  %call = call ptr @__module_address(i64 noundef %0) #16, !dbg !6159
  store ptr %call, ptr %mod, align 8, !dbg !6160
  %1 = load ptr, ptr %mod, align 8, !dbg !6161
  %tobool = icmp ne ptr %1, null, !dbg !6161
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6163

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %mod, align 8, !dbg !6164
  %arch = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 23, !dbg !6165
  %orc_unwind = getelementptr inbounds %struct.mod_arch_specific, ptr %arch, i32 0, i32 2, !dbg !6166
  %3 = load ptr, ptr %orc_unwind, align 8, !dbg !6166
  %tobool1 = icmp ne ptr %3, null, !dbg !6164
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6167

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %mod, align 8, !dbg !6168
  %arch3 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 23, !dbg !6169
  %orc_unwind_ip = getelementptr inbounds %struct.mod_arch_specific, ptr %arch3, i32 0, i32 1, !dbg !6170
  %5 = load ptr, ptr %orc_unwind_ip, align 8, !dbg !6170
  %tobool4 = icmp ne ptr %5, null, !dbg !6168
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6171

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6172

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %mod, align 8, !dbg !6173
  %arch5 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 23, !dbg !6174
  %orc_unwind_ip6 = getelementptr inbounds %struct.mod_arch_specific, ptr %arch5, i32 0, i32 1, !dbg !6175
  %7 = load ptr, ptr %orc_unwind_ip6, align 8, !dbg !6175
  %8 = load ptr, ptr %mod, align 8, !dbg !6176
  %arch7 = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 23, !dbg !6177
  %orc_unwind8 = getelementptr inbounds %struct.mod_arch_specific, ptr %arch7, i32 0, i32 2, !dbg !6178
  %9 = load ptr, ptr %orc_unwind8, align 8, !dbg !6178
  %10 = load ptr, ptr %mod, align 8, !dbg !6179
  %arch9 = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 23, !dbg !6180
  %num_orcs = getelementptr inbounds %struct.mod_arch_specific, ptr %arch9, i32 0, i32 0, !dbg !6181
  %11 = load i32, ptr %num_orcs, align 8, !dbg !6181
  %12 = load i64, ptr %ip.addr, align 8, !dbg !6182
  %call10 = call ptr @__orc_find(ptr noundef %7, ptr noundef %9, i32 noundef %11, i64 noundef %12) #16, !dbg !6183
  store ptr %call10, ptr %retval, align 8, !dbg !6184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6184

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #15, !dbg !6185
  %13 = load ptr, ptr %retval, align 8, !dbg !6185
  ret ptr %13, !dbg !6185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @orc_ftrace_find(i64 noundef %ip) #1 align 16 !dbg !6186 {
entry:
  %ip.addr = alloca i64, align 8
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  ret ptr null, !dbg !6190
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6191 dso_local ptr @__module_address(i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @stack_access_ok(ptr noundef %state, i64 noundef %_addr, i64 noundef %len) #1 align 16 !dbg !6194 {
entry:
  %retval = alloca i1, align 1
  %state.addr = alloca ptr, align 8
  %_addr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %info = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6198, metadata !DIExpression()), !dbg !6203
  store i64 %_addr, ptr %_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_addr.addr, metadata !6199, metadata !DIExpression()), !dbg !6204
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6200, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !6206
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6201, metadata !DIExpression()), !dbg !6207
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6208
  %stack_info = getelementptr inbounds %struct.unwind_state, ptr %0, i32 0, i32 0, !dbg !6209
  store ptr %stack_info, ptr %info, align 8, !dbg !6207
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !6210
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6202, metadata !DIExpression()), !dbg !6211
  %1 = load i64, ptr %_addr.addr, align 8, !dbg !6212
  %2 = inttoptr i64 %1 to ptr, !dbg !6213
  store ptr %2, ptr %addr, align 8, !dbg !6211
  %3 = load ptr, ptr %info, align 8, !dbg !6214
  %4 = load ptr, ptr %addr, align 8, !dbg !6216
  %5 = load i64, ptr %len.addr, align 8, !dbg !6217
  %call = call zeroext i1 @on_stack(ptr noundef %3, ptr noundef %4, i64 noundef %5) #16, !dbg !6218
  br i1 %call, label %if.then, label %if.end, !dbg !6219

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6220

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %addr, align 8, !dbg !6221
  %7 = load ptr, ptr %state.addr, align 8, !dbg !6222
  %task = getelementptr inbounds %struct.unwind_state, ptr %7, i32 0, i32 2, !dbg !6223
  %8 = load ptr, ptr %task, align 8, !dbg !6223
  %9 = load ptr, ptr %info, align 8, !dbg !6224
  %10 = load ptr, ptr %state.addr, align 8, !dbg !6225
  %stack_mask = getelementptr inbounds %struct.unwind_state, ptr %10, i32 0, i32 1, !dbg !6226
  %call1 = call i32 @get_stack_info(ptr noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %stack_mask) #16, !dbg !6227
  %tobool = icmp ne i32 %call1, 0, !dbg !6227
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6228

land.rhs:                                         ; preds = %if.end
  %11 = load ptr, ptr %info, align 8, !dbg !6229
  %12 = load ptr, ptr %addr, align 8, !dbg !6230
  %13 = load i64, ptr %len.addr, align 8, !dbg !6231
  %call2 = call zeroext i1 @on_stack(ptr noundef %11, ptr noundef %12, i64 noundef %13) #16, !dbg !6232
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %14 = phi i1 [ false, %if.end ], [ %call2, %land.rhs ], !dbg !6233
  store i1 %14, ptr %retval, align 1, !dbg !6234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !6235
  %15 = load i1, ptr %retval, align 1, !dbg !6235
  ret i1 %15, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ftrace_graph_ret_addr(ptr noundef %task, ptr noundef %idx, i64 noundef %ret, ptr noundef %retp) #7 align 16 !dbg !6236 {
entry:
  %task.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %ret.addr = alloca i64, align 8
  %retp.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6241, metadata !DIExpression()), !dbg !6245
  store ptr %idx, ptr %idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6242, metadata !DIExpression()), !dbg !6246
  store i64 %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !6243, metadata !DIExpression()), !dbg !6247
  store ptr %retp, ptr %retp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retp.addr, metadata !6244, metadata !DIExpression()), !dbg !6248
  %0 = load i64, ptr %ret.addr, align 8, !dbg !6249
  ret i64 %0, !dbg !6250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_rethook_trampoline(i64 noundef %addr) #7 align 16 !dbg !6251 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6256
  %call = call ptr @dereference_symbol_descriptor(ptr noundef @arch_rethook_trampoline) #16, !dbg !6257
  %1 = ptrtoint ptr %call to i64, !dbg !6258
  %cmp = icmp eq i64 %0, %1, !dbg !6259
  ret i1 %cmp, !dbg !6260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6261 dso_local i64 @rethook_find_ret_addr(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dereference_symbol_descriptor(ptr noundef %ptr) #7 align 16 !dbg !6265 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6272
  ret ptr %0, !dbg !6273
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_rethook_trampoline() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4473}
!llvm.module.flags = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!llvm.ident = !{!4482}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "orc_header", scope: !2, file: !3, line: 12, type: !4471, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.unwind_orc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/unwind_orc\22 -D KBUILD_BASENAME=\22unwind_orc\22 -D KBUILD_MODNAME=\22unwind_orc\22 -D __KBUILD_MODNAME=kmod_unwind_orc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/unwind_orc.ll arch/x86/kernel/unwind_orc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4101, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/unwind_orc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ac41a59c9f835c85a38f5e912410497")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !92}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stack_type", file: !93, line: 16, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./arch/x86/include/asm/stacktrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e6a63c03b7a7be099532a7e8a892b2d")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "STACK_TYPE_UNKNOWN", value: 0)
!96 = !DIEnumerator(name: "STACK_TYPE_TASK", value: 1)
!97 = !DIEnumerator(name: "STACK_TYPE_IRQ", value: 2)
!98 = !DIEnumerator(name: "STACK_TYPE_SOFTIRQ", value: 3)
!99 = !DIEnumerator(name: "STACK_TYPE_ENTRY", value: 4)
!100 = !DIEnumerator(name: "STACK_TYPE_EXCEPTION", value: 5)
!101 = !DIEnumerator(name: "STACK_TYPE_EXCEPTION_LAST", value: 10)
!102 = !{!103, !104, !105, !106, !166, !167, !169, !170, !4098}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !108, line: 103, size: 1344, elements: !109)
!108 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !146, !147, !148}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !107, file: !108, line: 109, baseType: !104, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !107, file: !108, line: 110, baseType: !104, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !107, file: !108, line: 111, baseType: !104, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !107, file: !108, line: 112, baseType: !104, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !107, file: !108, line: 113, baseType: !104, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !107, file: !108, line: 114, baseType: !104, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !107, file: !108, line: 117, baseType: !104, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !107, file: !108, line: 118, baseType: !104, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !107, file: !108, line: 119, baseType: !104, size: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !107, file: !108, line: 120, baseType: !104, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !107, file: !108, line: 121, baseType: !104, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !107, file: !108, line: 122, baseType: !104, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !107, file: !108, line: 123, baseType: !104, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !107, file: !108, line: 124, baseType: !104, size: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !107, file: !108, line: 125, baseType: !104, size: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !107, file: !108, line: 139, baseType: !104, size: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !107, file: !108, line: 142, baseType: !104, size: 64, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !108, line: 144, baseType: !128, size: 64, offset: 1088)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !108, line: 144, size: 64, elements: !129)
!129 = !{!130, !136, !140}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !128, file: !108, line: 146, baseType: !131, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !132, line: 19, baseType: !133)
!132 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !134, line: 24, baseType: !135)
!134 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !128, file: !108, line: 148, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !132, line: 23, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !134, line: 31, baseType: !139)
!139 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !128, file: !108, line: 150, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !108, line: 59, size: 64, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !141, file: !108, line: 61, baseType: !137, size: 16, flags: DIFlagBitField, extraData: i64 0)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !141, file: !108, line: 63, baseType: !137, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !141, file: !108, line: 65, baseType: !137, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !108, line: 153, baseType: !104, size: 64, offset: 1152)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !107, file: !108, line: 154, baseType: !104, size: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !108, line: 156, baseType: !149, size: 64, offset: 1280)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !108, line: 156, size: 64, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !149, file: !108, line: 158, baseType: !131, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !149, file: !108, line: 160, baseType: !137, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !149, file: !108, line: 162, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !108, line: 69, size: 64, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !154, file: !108, line: 71, baseType: !137, size: 16, flags: DIFlagBitField, extraData: i64 0)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !154, file: !108, line: 73, baseType: !137, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !154, file: !108, line: 75, baseType: !137, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !154, file: !108, line: 77, baseType: !137, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !154, file: !108, line: 80, baseType: !137, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !108, line: 83, baseType: !137, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !154, file: !108, line: 86, baseType: !137, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !154, file: !108, line: 88, baseType: !137, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !154, file: !108, line: 93, baseType: !137, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !154, file: !108, line: 100, baseType: !137, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !132, line: 21, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !134, line: 27, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !172, line: 746, size: 58368, elements: !173)
!172 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!173 = !{!174, !182, !183, !184, !195, !196, !197, !198, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !284, !295, !422, !426, !429, !460, !461, !462, !463, !474, !476, !477, !478, !479, !480, !481, !492, !493, !496, !497, !498, !499, !500, !501, !502, !503, !510, !511, !518, !519, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3316, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3364, !3370, !3371, !3372, !3373, !3374, !3376, !3379, !3386, !3391, !3394, !3397, !3400, !3426, !3564, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3602, !3603, !3604, !3613, !3621, !3622, !3623, !3624, !3625, !3630, !3631, !3632, !3635, !3636, !3639, !3642, !3645, !3653, !3656, !3657, !3743, !3744, !3745, !3746, !3747, !3753, !3754, !3755, !3756, !3759, !3760, !3763, !3766, !3767, !3770, !3771, !3772, !3775, !3776, !3777, !3778, !3779, !3780, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3812, !3813, !3819, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3831, !3903, !3905, !3906, !3907, !3908, !3909, !3910, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3927, !3928, !3929}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !171, file: !172, line: 752, baseType: !175, size: 192)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !176, line: 56, size: 192, elements: !177)
!176 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !176, line: 57, baseType: !104, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !175, file: !176, line: 58, baseType: !104, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !175, file: !176, line: 59, baseType: !167, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !175, file: !176, line: 61, baseType: !167, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !171, file: !172, line: 754, baseType: !7, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !171, file: !172, line: 767, baseType: !103, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !171, file: !172, line: 768, baseType: !185, size: 32, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !186, line: 113, baseType: !187)
!186 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !186, line: 111, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !187, file: !186, line: 112, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !191, line: 174, baseType: !192)
!191 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !191, line: 173, baseType: !166, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !172, line: 770, baseType: !7, size: 32, offset: 352)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !171, file: !172, line: 771, baseType: !7, size: 32, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !171, file: !172, line: 774, baseType: !166, size: 32, offset: 416)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !171, file: !172, line: 775, baseType: !199, size: 128, offset: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !200, line: 58, size: 128, elements: !201)
!200 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!201 = !{!202, !208, !213, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !199, file: !200, line: 59, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !204, line: 60, size: 64, elements: !205)
!204 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !204, line: 61, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !200, line: 60, baseType: !209, size: 32, offset: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !200, line: 60, size: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !209, file: !200, line: 61, baseType: !7, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !209, file: !200, line: 62, baseType: !190, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !199, file: !200, line: 65, baseType: !131, size: 16, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !199, file: !200, line: 65, baseType: !131, size: 16, offset: 112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !171, file: !172, line: 776, baseType: !7, size: 32, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !171, file: !172, line: 777, baseType: !104, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !171, file: !172, line: 778, baseType: !170, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !171, file: !172, line: 787, baseType: !166, size: 32, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !171, file: !172, line: 788, baseType: !166, size: 32, offset: 800)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !171, file: !172, line: 790, baseType: !166, size: 32, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !171, file: !172, line: 792, baseType: !166, size: 32, offset: 864)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !171, file: !172, line: 793, baseType: !166, size: 32, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !171, file: !172, line: 794, baseType: !166, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !171, file: !172, line: 795, baseType: !7, size: 32, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !171, file: !172, line: 797, baseType: !226, size: 2048, offset: 1024)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !172, line: 551, size: 2048, elements: !227)
!227 = !{!228, !233, !241, !242, !243, !249, !250, !251, !252, !253, !254, !258, !259, !260, !261, !263, !266, !267, !268}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !226, file: !172, line: 553, baseType: !229, size: 128)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !172, line: 411, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !229, file: !172, line: 412, baseType: !104, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !229, file: !172, line: 413, baseType: !167, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !226, file: !172, line: 554, baseType: !234, size: 192, align: 64, offset: 128)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !235, line: 5, size: 192, align: 64, elements: !236)
!235 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!236 = !{!237, !238, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !234, file: !235, line: 6, baseType: !104, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !234, file: !235, line: 7, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !234, file: !235, line: 8, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !226, file: !172, line: 555, baseType: !137, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !226, file: !172, line: 556, baseType: !137, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !226, file: !172, line: 558, baseType: !244, size: 128, offset: 448)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !191, line: 190, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !191, line: 191, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !191, line: 191, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !226, file: !172, line: 559, baseType: !7, size: 32, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !226, file: !172, line: 561, baseType: !137, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !226, file: !172, line: 562, baseType: !137, size: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !226, file: !172, line: 563, baseType: !137, size: 64, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !226, file: !172, line: 564, baseType: !137, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !226, file: !172, line: 565, baseType: !255, size: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !132, line: 22, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !134, line: 30, baseType: !257)
!257 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !226, file: !172, line: 566, baseType: !137, size: 64, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !226, file: !172, line: 568, baseType: !137, size: 64, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !226, file: !172, line: 571, baseType: !166, size: 32, offset: 1088)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !172, line: 572, baseType: !262, size: 64, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !226, file: !172, line: 574, baseType: !264, size: 64, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !172, line: 49, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !226, file: !172, line: 576, baseType: !264, size: 64, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !226, file: !172, line: 578, baseType: !104, size: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !226, file: !172, line: 588, baseType: !269, size: 512, align: 512, offset: 1536)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !172, line: 497, size: 512, align: 512, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !269, file: !172, line: 498, baseType: !137, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !269, file: !172, line: 499, baseType: !137, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !269, file: !172, line: 500, baseType: !137, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !269, file: !172, line: 501, baseType: !167, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !269, file: !172, line: 502, baseType: !167, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !269, file: !172, line: 503, baseType: !104, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !269, file: !172, line: 504, baseType: !104, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !269, file: !172, line: 505, baseType: !104, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !269, file: !172, line: 506, baseType: !280, size: 64, align: 64, offset: 448)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !172, line: 445, size: 64, align: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !280, file: !172, line: 446, baseType: !7, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !280, file: !172, line: 447, baseType: !7, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !171, file: !172, line: 798, baseType: !285, size: 384, offset: 3072)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !172, line: 592, size: 384, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !285, file: !172, line: 593, baseType: !244, size: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !172, line: 594, baseType: !104, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !285, file: !172, line: 595, baseType: !104, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !285, file: !172, line: 596, baseType: !7, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !285, file: !172, line: 597, baseType: !135, size: 16, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !285, file: !172, line: 598, baseType: !135, size: 16, offset: 304)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !285, file: !172, line: 600, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !171, file: !172, line: 799, baseType: !296, size: 1792, offset: 3456)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !172, line: 610, size: 1792, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !419, !420}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !296, file: !172, line: 611, baseType: !234, size: 192, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !296, file: !172, line: 618, baseType: !137, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !296, file: !172, line: 619, baseType: !137, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !296, file: !172, line: 620, baseType: !137, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !296, file: !172, line: 621, baseType: !137, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !296, file: !172, line: 622, baseType: !137, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !296, file: !172, line: 629, baseType: !255, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !296, file: !172, line: 630, baseType: !137, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !172, line: 631, baseType: !7, size: 32, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !296, file: !172, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !296, file: !172, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !296, file: !172, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !296, file: !172, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !296, file: !172, line: 662, baseType: !312, size: 512, offset: 704)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !313)
!313 = !{!314, !322, !323, !328, !415, !416, !417, !418}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !312, file: !25, line: 119, baseType: !315, size: 256)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !316, line: 9, size: 256, elements: !317)
!316 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !315, file: !316, line: 10, baseType: !234, size: 192, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !315, file: !316, line: 11, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !321, line: 29, baseType: !255)
!321 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !312, file: !25, line: 120, baseType: !320, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !312, file: !25, line: 121, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!24, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !312, file: !25, line: 122, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !331)
!331 = !{!332, !383, !384, !388, !398, !399, !410, !414}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !330, file: !25, line: 160, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !335)
!335 = !{!336, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !334, file: !25, line: 216, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !338, line: 23, baseType: !339)
!338 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !338, line: 14, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !339, file: !338, line: 15, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !343, line: 44, baseType: !344)
!343 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !343, line: 14, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !343, line: 15, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 15, size: 32, elements: !348)
!348 = !{!349, !350, !358}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !343, line: 16, baseType: !190, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !343, line: 24, baseType: !351, size: 16)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !343, line: 24, size: 16, elements: !352)
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !351, file: !343, line: 25, baseType: !354, size: 8)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !132, line: 17, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !134, line: 21, baseType: !356)
!356 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !351, file: !343, line: 26, baseType: !354, size: 8, offset: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !343, line: 28, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !343, line: 28, size: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !359, file: !343, line: 29, baseType: !131, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !359, file: !343, line: 30, baseType: !131, size: 16, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !334, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !334, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !334, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !334, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !334, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !334, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !334, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !334, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !334, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !334, file: !25, line: 227, baseType: !135, size: 16, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !334, file: !25, line: 228, baseType: !135, size: 16, offset: 208)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !334, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !334, file: !25, line: 235, baseType: !320, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !334, file: !25, line: 236, baseType: !327, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !334, file: !25, line: 237, baseType: !320, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !334, file: !25, line: 238, baseType: !327, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !334, file: !25, line: 239, baseType: !380, size: 4096, align: 512, offset: 512)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 4096, align: 512, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !330, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !330, file: !25, line: 162, baseType: !385, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !191, line: 32, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !387, line: 96, baseType: !166)
!387 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !330, file: !25, line: 163, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !390, line: 274, baseType: !391)
!390 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !390, line: 274, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !391, file: !390, line: 274, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !390, line: 69, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !390, line: 64, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !395, file: !390, line: 65, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !330, file: !25, line: 164, baseType: !327, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !330, file: !25, line: 165, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !316, line: 14, size: 128, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !400, file: !316, line: 15, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !235, line: 26, size: 128, elements: !404)
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !403, file: !235, line: 27, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !235, line: 12, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !406, file: !235, line: 13, baseType: !239, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !403, file: !235, line: 28, baseType: !239, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !330, file: !25, line: 166, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!320}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !330, file: !25, line: 167, baseType: !320, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !25, line: 123, baseType: !354, size: 8, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !312, file: !25, line: 124, baseType: !354, size: 8, offset: 456)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !312, file: !25, line: 125, baseType: !354, size: 8, offset: 464)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !312, file: !25, line: 126, baseType: !354, size: 8, offset: 472)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !296, file: !172, line: 671, baseType: !312, size: 512, offset: 1216)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !296, file: !172, line: 679, baseType: !421, size: 64, offset: 1728)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !171, file: !172, line: 800, baseType: !423, size: 64, offset: 5248)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !172, line: 800, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !171, file: !172, line: 809, baseType: !427, size: 64, offset: 5312)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !172, line: 70, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !171, file: !172, line: 825, baseType: !430, size: 2048, align: 512, offset: 5632)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !172, line: 509, size: 2048, align: 512, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !430, file: !172, line: 511, baseType: !137, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !430, file: !172, line: 512, baseType: !137, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !430, file: !172, line: 513, baseType: !137, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !430, file: !172, line: 514, baseType: !137, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !430, file: !172, line: 515, baseType: !137, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !430, file: !172, line: 516, baseType: !137, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !430, file: !172, line: 518, baseType: !137, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !430, file: !172, line: 519, baseType: !137, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !430, file: !172, line: 520, baseType: !255, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !430, file: !172, line: 522, baseType: !137, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !430, file: !172, line: 523, baseType: !137, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !430, file: !172, line: 524, baseType: !255, size: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !430, file: !172, line: 526, baseType: !255, size: 64, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !430, file: !172, line: 527, baseType: !137, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !430, file: !172, line: 529, baseType: !137, size: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !430, file: !172, line: 530, baseType: !137, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !430, file: !172, line: 531, baseType: !137, size: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !430, file: !172, line: 532, baseType: !137, size: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !430, file: !172, line: 533, baseType: !137, size: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !430, file: !172, line: 535, baseType: !137, size: 64, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !430, file: !172, line: 536, baseType: !137, size: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !430, file: !172, line: 537, baseType: !137, size: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !430, file: !172, line: 538, baseType: !137, size: 64, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !430, file: !172, line: 539, baseType: !137, size: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !430, file: !172, line: 540, baseType: !137, size: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !430, file: !172, line: 541, baseType: !137, size: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !430, file: !172, line: 542, baseType: !137, size: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !430, file: !172, line: 543, baseType: !137, size: 64, offset: 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !171, file: !172, line: 833, baseType: !7, size: 32, offset: 7680)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !171, file: !172, line: 836, baseType: !7, size: 32, offset: 7712)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !171, file: !172, line: 837, baseType: !166, size: 32, offset: 7744)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !171, file: !172, line: 838, baseType: !464, size: 64, offset: 7808)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !467, line: 19, baseType: !468)
!467 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !467, line: 19, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !468, file: !467, line: 19, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 1)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !171, file: !172, line: 839, baseType: !475, size: 64, offset: 7872)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !171, file: !172, line: 840, baseType: !466, size: 64, offset: 7936)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !171, file: !172, line: 841, baseType: !103, size: 64, offset: 8000)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !171, file: !172, line: 843, baseType: !135, size: 16, offset: 8064)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !171, file: !172, line: 845, baseType: !135, size: 16, offset: 8080)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !171, file: !172, line: 848, baseType: !166, size: 32, offset: 8096)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !171, file: !172, line: 849, baseType: !482, size: 32, offset: 8128)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !172, line: 718, size: 32, elements: !483)
!483 = !{!484, !491}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !482, file: !172, line: 724, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !172, line: 719, size: 32, elements: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !485, file: !172, line: 720, baseType: !354, size: 8)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !485, file: !172, line: 721, baseType: !354, size: 8, offset: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !485, file: !172, line: 722, baseType: !354, size: 8, offset: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !485, file: !172, line: 723, baseType: !354, size: 8, offset: 24)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !482, file: !172, line: 725, baseType: !167, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !171, file: !172, line: 850, baseType: !244, size: 128, offset: 8192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !171, file: !172, line: 851, baseType: !494, size: 64, offset: 8320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !172, line: 60, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !171, file: !172, line: 855, baseType: !104, size: 64, offset: 8384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !171, file: !172, line: 856, baseType: !354, size: 8, offset: 8448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !171, file: !172, line: 857, baseType: !354, size: 8, offset: 8456)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !171, file: !172, line: 858, baseType: !166, size: 32, offset: 8480)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !171, file: !172, line: 859, baseType: !244, size: 128, offset: 8512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !171, file: !172, line: 860, baseType: !166, size: 32, offset: 8640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !171, file: !172, line: 861, baseType: !244, size: 128, offset: 8704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !171, file: !172, line: 873, baseType: !504, size: 256, offset: 8832)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !172, line: 376, size: 256, elements: !505)
!505 = !{!506, !507, !508, !509}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !504, file: !172, line: 381, baseType: !104, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !504, file: !172, line: 384, baseType: !139, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !504, file: !172, line: 389, baseType: !139, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !504, file: !172, line: 392, baseType: !139, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !171, file: !172, line: 875, baseType: !244, size: 128, offset: 9088)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !171, file: !172, line: 877, baseType: !512, size: 320, offset: 9216)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !513, line: 86, size: 320, elements: !514)
!513 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !512, file: !513, line: 87, baseType: !166, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !512, file: !513, line: 88, baseType: !244, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !512, file: !513, line: 89, baseType: !244, size: 128, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !171, file: !172, line: 878, baseType: !234, size: 192, align: 64, offset: 9536)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !171, file: !172, line: 881, baseType: !520, size: 64, offset: 9728)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !522)
!522 = !{!523, !3235}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !38, line: 734, baseType: !524, size: 10240)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !38, line: 734, size: 10240, elements: !525)
!525 = !{!526, !530, !552, !3114, !3115, !3116, !3117, !3118, !3119, !3126, !3127, !3128, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3167, !3169, !3172, !3215, !3216, !3217, !3220, !3221, !3222, !3225, !3226, !3227, !3233, !3234}
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !38, line: 739, baseType: !527, size: 512, align: 512)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !38, line: 739, size: 512, align: 512, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !527, file: !38, line: 747, baseType: !190, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !524, file: !38, line: 750, baseType: !531, size: 128, offset: 512)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !532, line: 218, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!533 = !{!534, !550, !551}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 219, baseType: !535, size: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 219, size: 32, elements: !536)
!536 = !{!537, !546}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !535, file: !532, line: 220, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !539, line: 29, baseType: !540)
!539 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !539, line: 17, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !539, line: 18, baseType: !543, size: 32)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !539, line: 18, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !543, file: !539, line: 19, baseType: !339, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !535, file: !532, line: 221, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !532, line: 197, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 197, elements: !549)
!549 = !{}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !531, file: !532, line: 223, baseType: !7, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !531, file: !532, line: 224, baseType: !103, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !524, file: !38, line: 752, baseType: !553, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!104, !556, !104, !104, !104, !104}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !558)
!558 = !{!559, !573, !574, !576, !583, !595, !598, !599, !723, !933, !942, !3104, !3105, !3106, !3107, !3108, !3109, !3111, !3112, !3113}
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !14, line: 995, baseType: !560, size: 128)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !14, line: 995, size: 128, elements: !561)
!561 = !{!562, !563, !572}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !560, file: !14, line: 996, baseType: !203, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !560, file: !14, line: 997, baseType: !564, size: 128, align: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !191, line: 232, size: 128, align: 64, elements: !565)
!565 = !{!566, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !191, line: 233, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !564, file: !191, line: 234, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !567}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !560, file: !14, line: 998, baseType: !7, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !557, file: !14, line: 1005, baseType: !538, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !557, file: !14, line: 1006, baseType: !575, size: 32, offset: 160)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !191, line: 156, baseType: !7)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !557, file: !14, line: 1007, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !578, line: 13, baseType: !579)
!578 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !191, line: 181, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 179, size: 64, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !580, file: !191, line: 180, baseType: !255, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !557, file: !14, line: 1008, baseType: !584, size: 256, offset: 256)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !585, line: 66, size: 256, elements: !586)
!585 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!586 = !{!587, !588, !589, !594}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !585, line: 67, baseType: !577, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !584, file: !585, line: 68, baseType: !337, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !584, file: !585, line: 70, baseType: !590, size: 32, offset: 96)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !591, line: 15, size: 32, elements: !592)
!591 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !590, file: !591, line: 20, baseType: !190, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !584, file: !585, line: 72, baseType: !244, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !557, file: !14, line: 1009, baseType: !596, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !191, line: 52, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !387, line: 88, baseType: !257)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !557, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !557, file: !14, line: 1011, baseType: !600, size: 256, offset: 640)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !601)
!601 = !{!602, !625, !713, !714, !721, !722}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !14, line: 949, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !604, line: 34, baseType: !605)
!604 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !604, line: 25, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !605, file: !604, line: 26, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !609, line: 27, baseType: !610)
!609 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !609, line: 13, size: 64, elements: !611)
!611 = !{!612, !624}
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !609, line: 14, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !609, line: 14, size: 32, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !613, file: !609, line: 15, baseType: !190, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !609, line: 16, baseType: !617, size: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !613, file: !609, line: 16, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !617, file: !609, line: 18, baseType: !354, size: 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !617, file: !609, line: 19, baseType: !621, size: 24, offset: 8)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 24, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 3)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !610, file: !609, line: 26, baseType: !342, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !600, file: !14, line: 950, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !628)
!628 = !{!629, !630, !631, !632, !645, !646, !653, !654}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !627, file: !30, line: 61, baseType: !185, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !627, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !627, file: !30, line: 63, baseType: !538, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !627, file: !30, line: 65, baseType: !633, size: 256, offset: 128)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 256, elements: !643)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !191, line: 194, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !634, file: !191, line: 195, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !191, line: 198, size: 128, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !191, line: 199, baseType: !637, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !638, file: !191, line: 199, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!643 = !{!644}
!644 = !DISubrange(count: 4)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !627, file: !30, line: 66, baseType: !634, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !627, file: !30, line: 68, baseType: !647, size: 192, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !648, line: 41, baseType: !649)
!648 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !648, line: 37, size: 192, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !649, file: !648, line: 38, baseType: !538, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !649, file: !648, line: 39, baseType: !244, size: 128, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !627, file: !30, line: 69, baseType: !564, size: 128, align: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !627, file: !30, line: 70, baseType: !655, offset: 768)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, elements: !711)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !656, file: !30, line: 55, baseType: !166, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !656, file: !30, line: 56, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !662, line: 26, size: 1152, elements: !663)
!662 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!663 = !{!664, !678, !679, !680, !681, !685, !686, !687, !690, !694, !698, !699, !710}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !661, file: !662, line: 27, baseType: !665, size: 192)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !666, line: 19, size: 192, elements: !667)
!666 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!667 = !{!668, !676, !677}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !665, file: !666, line: 20, baseType: !669, size: 128)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !670, line: 296, size: 128, elements: !671)
!670 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!671 = !{!672, !673, !675}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !669, file: !670, line: 297, baseType: !538, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !669, file: !670, line: 299, baseType: !674, size: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !191, line: 154, baseType: !7)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !669, file: !670, line: 300, baseType: !103, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !665, file: !666, line: 21, baseType: !7, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !665, file: !666, line: 22, baseType: !7, size: 32, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !661, file: !662, line: 28, baseType: !564, size: 128, align: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !661, file: !662, line: 29, baseType: !7, size: 32, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !661, file: !662, line: 30, baseType: !170, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !661, file: !662, line: 31, baseType: !682, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !684, line: 325, flags: DIFlagFwdDecl)
!684 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !661, file: !662, line: 32, baseType: !7, size: 32, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !661, file: !662, line: 33, baseType: !660, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !661, file: !662, line: 35, baseType: !688, size: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !662, line: 17, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !661, file: !662, line: 37, baseType: !691, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !693, line: 18, flags: DIFlagFwdDecl)
!693 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !661, file: !662, line: 38, baseType: !695, size: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !697, line: 16, flags: DIFlagFwdDecl)
!697 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !661, file: !662, line: 39, baseType: !166, size: 32, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !661, file: !662, line: 40, baseType: !700, size: 192, offset: 896)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !701, line: 9, size: 192, elements: !702)
!701 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!702 = !{!703, !704, !708, !709}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !700, file: !701, line: 10, baseType: !577, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !700, file: !701, line: 11, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !701, line: 7, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !700, file: !701, line: 12, baseType: !7, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !700, file: !701, line: 13, baseType: !185, size: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !661, file: !662, line: 42, baseType: !166, size: 32, offset: 1088)
!711 = !{!712}
!712 = !DISubrange(count: -1)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !600, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !600, file: !14, line: 952, baseType: !715, size: 32, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !693, line: 23, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 21, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !693, line: 22, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 37, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !387, line: 49, baseType: !7)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !600, file: !14, line: 952, baseType: !715, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !600, file: !14, line: 953, baseType: !166, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !557, file: !14, line: 1012, baseType: !724, size: 64, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !727, line: 110, size: 1472, elements: !728)
!727 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!728 = !{!729, !730, !731, !738, !739, !740, !741, !742, !743, !744, !745, !751, !752, !753, !754, !755, !756, !883, !884, !885, !886, !887, !918, !919, !920, !928}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !726, file: !727, line: 111, baseType: !577, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !726, file: !727, line: 112, baseType: !715, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !726, file: !727, line: 113, baseType: !732, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !693, line: 28, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 26, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !733, file: !693, line: 27, baseType: !736, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 38, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !387, line: 50, baseType: !7)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !726, file: !727, line: 114, baseType: !715, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !726, file: !727, line: 115, baseType: !732, size: 32, offset: 160)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !726, file: !727, line: 116, baseType: !715, size: 32, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !726, file: !727, line: 117, baseType: !732, size: 32, offset: 224)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !726, file: !727, line: 118, baseType: !715, size: 32, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !726, file: !727, line: 119, baseType: !732, size: 32, offset: 288)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !726, file: !727, line: 120, baseType: !7, size: 32, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !726, file: !727, line: 121, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !747, line: 24, baseType: !748)
!747 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 24, size: 64, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !748, file: !747, line: 24, baseType: !137, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !726, file: !727, line: 122, baseType: !746, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !726, file: !727, line: 123, baseType: !746, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !726, file: !727, line: 124, baseType: !746, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !726, file: !727, line: 125, baseType: !746, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !726, file: !727, line: 127, baseType: !356, size: 8, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !726, file: !727, line: 129, baseType: !757, size: 64, offset: 768)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !759, line: 195, size: 1728, elements: !760)
!759 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!760 = !{!761, !762, !767, !772, !781, !784, !785, !792, !793, !794, !795, !798, !799, !800, !802, !803, !847, !868}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !758, file: !759, line: 196, baseType: !185, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !758, file: !759, line: 197, baseType: !763, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !759, line: 28, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !191, line: 104, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !132, line: 20, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !134, line: 26, baseType: !166)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 198, baseType: !768, size: 192, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 198, size: 192, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !768, file: !759, line: 199, baseType: !244, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !768, file: !759, line: 200, baseType: !234, size: 192, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !758, file: !759, line: 205, baseType: !773, size: 320, offset: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !774, line: 48, size: 320, elements: !775)
!774 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!775 = !{!776, !777, !778, !779, !780}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !773, file: !774, line: 49, baseType: !577, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !773, file: !774, line: 55, baseType: !577, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !773, file: !774, line: 57, baseType: !590, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !773, file: !774, line: 59, baseType: !337, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !773, file: !774, line: 60, baseType: !244, size: 128, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !758, file: !759, line: 206, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !759, line: 206, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !758, file: !759, line: 207, baseType: !103, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 208, baseType: !786, size: 64, offset: 704)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 208, size: 64, elements: !787)
!787 = !{!788, !791}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !786, file: !759, line: 209, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !790, line: 8, baseType: !256)
!790 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !786, file: !759, line: 210, baseType: !789, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !758, file: !759, line: 212, baseType: !789, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !758, file: !759, line: 213, baseType: !715, size: 32, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !758, file: !759, line: 214, baseType: !732, size: 32, offset: 864)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !758, file: !759, line: 215, baseType: !796, size: 32, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !759, line: 31, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !191, line: 110, baseType: !167)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !758, file: !759, line: 216, baseType: !135, size: 16, offset: 928)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !758, file: !759, line: 217, baseType: !135, size: 16, offset: 944)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !758, file: !759, line: 221, baseType: !801, size: 16, offset: 960)
!801 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !759, line: 228, baseType: !104, size: 64, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 245, baseType: !804, size: 320, offset: 1088)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 245, size: 320, elements: !805)
!805 = !{!806, !838}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !804, file: !759, line: 246, baseType: !807, size: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !759, line: 114, size: 320, elements: !808)
!808 = !{!809, !810, !823, !826, !835}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !807, file: !759, line: 116, baseType: !104, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !759, line: 117, baseType: !811, size: 64, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !759, line: 117, size: 64, elements: !812)
!812 = !{!813, !822}
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !759, line: 118, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !759, line: 118, size: 64, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !814, file: !759, line: 120, baseType: !131, size: 16)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !814, file: !759, line: 121, baseType: !818, size: 48, offset: 16)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 48, elements: !820)
!819 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!820 = !{!821}
!821 = !DISubrange(count: 6)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !811, file: !759, line: 127, baseType: !104, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !759, line: 129, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !759, line: 102, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !807, file: !759, line: 130, baseType: !827, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !759, line: 108, size: 192, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !828, file: !759, line: 109, baseType: !564, size: 128, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !828, file: !759, line: 110, baseType: !185, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !828, file: !759, line: 111, baseType: !833, size: 8, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !191, line: 35, baseType: !834)
!834 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !807, file: !759, line: 131, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !759, line: 247, baseType: !839, size: 320)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !759, line: 247, size: 320, elements: !840)
!840 = !{!841, !842, !843, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !839, file: !759, line: 248, baseType: !104, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !839, file: !759, line: 249, baseType: !104, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !759, line: 250, baseType: !824, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !839, file: !759, line: 251, baseType: !827, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !839, file: !759, line: 252, baseType: !846, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !759, line: 260, baseType: !848, size: 256, offset: 1408)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !759, line: 260, size: 256, elements: !849)
!849 = !{!850, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !848, file: !759, line: 261, baseType: !851, size: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !759, line: 134, size: 256, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !851, file: !759, line: 135, baseType: !103, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !851, file: !759, line: 136, baseType: !855, size: 256)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !643)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !759, line: 262, baseType: !857, size: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !759, line: 262, size: 256, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !857, file: !759, line: 264, baseType: !244, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !857, file: !759, line: 265, baseType: !861, size: 128, offset: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !862, line: 22, size: 128, elements: !863)
!862 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!863 = !{!864, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !861, file: !862, line: 23, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !862, line: 23, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !861, file: !862, line: 24, baseType: !104, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !758, file: !759, line: 280, baseType: !869, size: 64, offset: 1664)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !759, line: 176, size: 192, elements: !871)
!871 = !{!872, !881, !882}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !870, file: !759, line: 177, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !759, line: 171, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!166, !757, !877, !879, !757}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !870, file: !759, line: 178, baseType: !757, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !870, file: !759, line: 179, baseType: !824, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !726, file: !727, line: 130, baseType: !757, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !726, file: !727, line: 131, baseType: !757, size: 64, offset: 896)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !726, file: !727, line: 132, baseType: !757, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !726, file: !727, line: 135, baseType: !103, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !726, file: !727, line: 137, baseType: !888, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !890, line: 14, size: 1088, elements: !891)
!890 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!891 = !{!892, !893, !902, !903, !904, !905, !906, !907}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !889, file: !890, line: 15, baseType: !185, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !889, file: !890, line: 17, baseType: !894, size: 320, offset: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !895, line: 22, size: 320, elements: !896)
!895 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!896 = !{!897, !898, !899, !900}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !894, file: !895, line: 23, baseType: !337, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !894, file: !895, line: 24, baseType: !255, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !894, file: !895, line: 26, baseType: !244, size: 128, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !894, file: !895, line: 28, baseType: !901, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !889, file: !890, line: 19, baseType: !104, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !889, file: !890, line: 20, baseType: !577, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !889, file: !890, line: 23, baseType: !638, size: 128, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !889, file: !890, line: 24, baseType: !715, size: 32, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !889, file: !890, line: 29, baseType: !577, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !889, file: !890, line: 36, baseType: !908, size: 320, offset: 768)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !909, line: 15, size: 320, elements: !910)
!909 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!910 = !{!911, !912, !913, !914, !915, !916, !917}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !908, file: !909, line: 16, baseType: !337, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !908, file: !909, line: 18, baseType: !166, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !908, file: !909, line: 19, baseType: !166, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !908, file: !909, line: 20, baseType: !166, size: 32, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !908, file: !909, line: 21, baseType: !166, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !908, file: !909, line: 22, baseType: !104, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !909, line: 23, baseType: !104, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !726, file: !727, line: 138, baseType: !691, size: 64, offset: 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !726, file: !727, line: 139, baseType: !695, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !726, file: !727, line: 140, baseType: !921, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !727, line: 25, size: 64, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !922, file: !727, line: 26, baseType: !190, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !922, file: !727, line: 27, baseType: !166, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !922, file: !727, line: 28, baseType: !927, offset: 64)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, elements: !711)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 142, baseType: !929, size: 128, offset: 1344)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 142, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !929, file: !727, line: 143, baseType: !166, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !929, file: !727, line: 144, baseType: !564, size: 128, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !557, file: !14, line: 1013, baseType: !934, size: 256, offset: 960)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !934, file: !14, line: 971, baseType: !104, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !934, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !934, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !934, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !934, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !934, file: !14, line: 976, baseType: !596, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !557, file: !14, line: 1014, baseType: !943, size: 128, offset: 1216)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !944, line: 8, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!945 = !{!946, !3103}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !943, file: !944, line: 9, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !949, line: 70, size: 256, elements: !950)
!949 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!950 = !{!951, !3100, !3101, !3102}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !948, file: !949, line: 71, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !954, line: 82, size: 1536, elements: !955)
!954 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!955 = !{!956, !957, !962, !970, !971, !986, !3067, !3069, !3082, !3083, !3084, !3085, !3086, !3092, !3093, !3094}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !953, file: !954, line: 84, baseType: !7, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !953, file: !954, line: 85, baseType: !958, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !390, line: 275, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !390, line: 275, size: 32, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !959, file: !390, line: 275, baseType: !394, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !953, file: !954, line: 86, baseType: !963, size: 128, offset: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !964, line: 38, size: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!965 = !{!966, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !963, file: !964, line: 39, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !963, file: !964, line: 39, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !953, file: !954, line: 87, baseType: !952, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !953, file: !954, line: 88, baseType: !972, size: 128, offset: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !954, line: 49, size: 128, elements: !973)
!973 = !{!974, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !954, line: 50, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !954, line: 50, size: 64, elements: !976)
!976 = !{!977, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !954, line: 51, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !954, line: 51, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !978, file: !954, line: 52, baseType: !167, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !978, file: !954, line: 52, baseType: !167, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !975, file: !954, line: 54, baseType: !137, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !954, line: 56, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !953, file: !954, line: 89, baseType: !987, size: 64, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !989)
!989 = !{!990, !992, !993, !994, !995, !996, !997, !1000, !1001, !1192, !2881, !2882, !2883, !2884, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !3049, !3052, !3053, !3054, !3063, !3064, !3065, !3066}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !988, file: !14, line: 642, baseType: !991, size: 16)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !191, line: 24, baseType: !135)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !988, file: !14, line: 643, baseType: !135, size: 16, offset: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !988, file: !14, line: 644, baseType: !715, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !988, file: !14, line: 645, baseType: !244, size: 128, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !988, file: !14, line: 646, baseType: !732, size: 32, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !988, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !988, file: !14, line: 650, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !988, file: !14, line: 651, baseType: !998, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !988, file: !14, line: 654, baseType: !1002, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1005)
!1005 = !{!1006, !1010, !1023, !1029, !1033, !1037, !1041, !1045, !1049, !1053, !1057, !1058, !1064, !1068, !1106, !1137, !1147, !1153, !1157, !1161, !1165, !1169, !1173, !1179, !1183}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1004, file: !14, line: 1967, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!952, !987, !952, !7}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1004, file: !14, line: 1968, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!836, !952, !987, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1016, line: 10, size: 128, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1017 = !{!1018, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1015, file: !1016, line: 11, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !103}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1015, file: !1016, line: 12, baseType: !103, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1004, file: !14, line: 1969, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!166, !1027, !987, !166}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !747, line: 42, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1004, file: !14, line: 1970, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!998, !987, !166, !833}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1004, file: !14, line: 1972, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!166, !952, !846, !166}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1004, file: !14, line: 1974, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!166, !1027, !987, !952, !991, !833}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1004, file: !14, line: 1976, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!166, !952, !987, !952}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1004, file: !14, line: 1977, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!166, !987, !952}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1004, file: !14, line: 1978, baseType: !1050, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!166, !1027, !987, !952, !836}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1004, file: !14, line: 1980, baseType: !1054, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!166, !1027, !987, !952, !991}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1004, file: !14, line: 1982, baseType: !1046, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1004, file: !14, line: 1983, baseType: !1059, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!166, !1027, !987, !952, !991, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 21, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !191, line: 18, baseType: !167)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1004, file: !14, line: 1985, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!166, !1027, !987, !952, !987, !952, !7}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1004, file: !14, line: 1987, baseType: !1069, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!166, !1027, !952, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1087, !1096, !1097, !1103, !1104, !1105}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1073, file: !14, line: 227, baseType: !7, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1073, file: !14, line: 228, baseType: !991, size: 16, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !14, line: 241, baseType: !1078, size: 32, offset: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !14, line: 241, size: 32, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1078, file: !14, line: 242, baseType: !715, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1078, file: !14, line: 243, baseType: !1082, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1083, line: 16, baseType: !1084)
!1083 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1083, line: 14, size: 32, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1084, file: !1083, line: 15, baseType: !719, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !14, line: 245, baseType: !1088, size: 32, offset: 96)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !14, line: 245, size: 32, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1088, file: !14, line: 246, baseType: !732, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1088, file: !14, line: 247, baseType: !1092, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1083, line: 20, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1083, line: 18, size: 32, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1093, file: !1083, line: 19, baseType: !736, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1073, file: !14, line: 249, baseType: !596, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1073, file: !14, line: 250, baseType: !1098, size: 128, offset: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !790, line: 13, size: 128, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1098, file: !790, line: 14, baseType: !789, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1098, file: !790, line: 15, baseType: !1102, size: 64, offset: 64)
!1102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1073, file: !14, line: 251, baseType: !1098, size: 128, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1073, file: !14, line: 252, baseType: !1098, size: 128, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1073, file: !14, line: 259, baseType: !556, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1004, file: !14, line: 1988, baseType: !1107, size: 64, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!166, !1027, !1110, !1112, !167, !7}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1114, line: 22, size: 1280, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1113, file: !1114, line: 23, baseType: !167, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1113, file: !1114, line: 24, baseType: !991, size: 16, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1113, file: !1114, line: 25, baseType: !7, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1113, file: !1114, line: 26, baseType: !797, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1113, file: !1114, line: 27, baseType: !137, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1113, file: !1114, line: 28, baseType: !137, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1113, file: !1114, line: 41, baseType: !137, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1113, file: !1114, line: 42, baseType: !1062, size: 32, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1113, file: !1114, line: 43, baseType: !1062, size: 32, offset: 352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1113, file: !1114, line: 44, baseType: !715, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1113, file: !1114, line: 45, baseType: !732, size: 32, offset: 416)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1113, file: !1114, line: 46, baseType: !596, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1113, file: !1114, line: 47, baseType: !1098, size: 128, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1113, file: !1114, line: 48, baseType: !1098, size: 128, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1113, file: !1114, line: 49, baseType: !1098, size: 128, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1113, file: !1114, line: 50, baseType: !1098, size: 128, offset: 896)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1113, file: !1114, line: 51, baseType: !137, size: 64, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1113, file: !1114, line: 52, baseType: !137, size: 64, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1113, file: !1114, line: 53, baseType: !167, size: 32, offset: 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1113, file: !1114, line: 54, baseType: !167, size: 32, offset: 1184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1113, file: !1114, line: 55, baseType: !137, size: 64, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1004, file: !14, line: 1990, baseType: !1138, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141, !952, !846, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 66, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !387, line: 73, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !387, line: 15, baseType: !1102)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 61, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !387, line: 72, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !387, line: 16, baseType: !104)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1004, file: !14, line: 1991, baseType: !1148, size: 64, offset: 1024)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!166, !987, !1151, !137, !137}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1004, file: !14, line: 1993, baseType: !1154, size: 64, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!166, !987, !166}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1004, file: !14, line: 1994, baseType: !1158, size: 64, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!166, !987, !952, !556, !7, !991}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1004, file: !14, line: 1997, baseType: !1162, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!166, !1027, !987, !556, !991}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1004, file: !14, line: 1999, baseType: !1166, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!998, !1027, !952, !166}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1004, file: !14, line: 2001, baseType: !1170, size: 64, offset: 1344)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!166, !1027, !952, !998, !166}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1004, file: !14, line: 2003, baseType: !1174, size: 64, offset: 1408)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!166, !1027, !952, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1004, file: !14, line: 2005, baseType: !1180, size: 64, offset: 1472)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!166, !952, !1177}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1004, file: !14, line: 2006, baseType: !1184, size: 64, offset: 1536)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1187, !987}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1188, file: !14, line: 3193, baseType: !669, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1188, file: !14, line: 3194, baseType: !167, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !988, file: !14, line: 655, baseType: !1193, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !2394, !2526, !2566, !2649, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2666, !2670, !2671, !2674, !2677, !2680, !2683, !2684, !2685, !2726, !2752, !2753, !2754, !2755, !2756, !2757, !2760, !2764, !2773, !2774, !2775, !2776, !2835, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1194, file: !14, line: 1191, baseType: !244, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1194, file: !14, line: 1192, baseType: !1062, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1194, file: !14, line: 1193, baseType: !356, size: 8, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1194, file: !14, line: 1194, baseType: !104, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1194, file: !14, line: 1195, baseType: !596, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1194, file: !14, line: 1196, baseType: !1202, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1214, !1218, !1222, !1226, !2382, !2383, !2384, !2386, !2387, !2388, !2390, !2391, !2392, !2393}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1203, file: !14, line: 2367, baseType: !836, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1203, file: !14, line: 2368, baseType: !166, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1203, file: !14, line: 2376, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!166, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1213, line: 32, flags: DIFlagFwdDecl)
!1213 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1203, file: !14, line: 2377, baseType: !1215, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1203, file: !14, line: 2378, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!952, !1202, !166, !836, !103}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1203, file: !14, line: 2380, baseType: !1223, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1193}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1203, file: !14, line: 2381, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1236, !2026, !2052, !2053, !2054, !2055, !2059, !2062, !2063, !2064, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2132, !2136, !2156, !2176, !2177, !2178, !2179, !2188, !2211, !2212, !2215, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2229, !2230, !2341, !2349, !2350, !2351, !2353, !2357, !2358, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2375, !2376, !2377, !2381}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !6, line: 403, baseType: !5, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1228, file: !6, line: 406, baseType: !244, size: 128, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1228, file: !6, line: 409, baseType: !1233, size: 448, offset: 192)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 448, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 56)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1228, file: !6, line: 417, baseType: !1237, size: 768, offset: 640)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1238)
!1238 = !{!1239, !2019, !2020, !2021, !2024}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1237, file: !6, line: 46, baseType: !1240, size: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1241, line: 64, size: 512, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1242 = !{!1243, !1244, !1245, !1247, !1291, !1899, !2009, !2014, !2015, !2016, !2017, !2018}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1240, file: !1241, line: 65, baseType: !836, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1240, file: !1241, line: 66, baseType: !244, size: 128, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1240, file: !1241, line: 67, baseType: !1246, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1240, file: !1241, line: 68, baseType: !1248, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1241, line: 168, size: 768, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1249, file: !1241, line: 169, baseType: !244, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1249, file: !1241, line: 170, baseType: !538, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1249, file: !1241, line: 171, baseType: !1240, size: 512, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1249, file: !1241, line: 172, baseType: !1255, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1241, line: 133, size: 192, elements: !1258)
!1258 = !{!1259, !1266, !1271}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1257, file: !1241, line: 134, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!166, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1257, file: !1241, line: 135, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!836, !1264}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1257, file: !1241, line: 136, baseType: !1272, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!166, !1264, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1241, line: 125, size: 20736, elements: !1278)
!1278 = !{!1279, !1281, !1285, !1286, !1290}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1277, file: !1241, line: 126, baseType: !1280, size: 192)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 192, elements: !622)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1277, file: !1241, line: 127, baseType: !1282, size: 4096, offset: 192)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 4096, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1277, file: !1241, line: 128, baseType: !166, size: 32, offset: 4288)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1277, file: !1241, line: 129, baseType: !1287, size: 16384, offset: 4320)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 16384, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 2048)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1277, file: !1241, line: 130, baseType: !166, size: 32, offset: 20704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1240, file: !1241, line: 69, baseType: !1292, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1241, line: 116, size: 384, elements: !1295)
!1295 = !{!1296, !1300, !1319, !1859, !1889, !1893}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1294, file: !1241, line: 117, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !1246}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1294, file: !1241, line: 118, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1304, line: 254, size: 128, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1305 = !{!1306, !1315}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1303, file: !1304, line: 255, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1141, !1246, !1310, !846}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1304, line: 30, size: 128, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1311, file: !1304, line: 31, baseType: !836, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1311, file: !1304, line: 32, baseType: !991, size: 16, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1303, file: !1304, line: 256, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1141, !1246, !1310, !836, !1144}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1294, file: !1241, line: 119, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1304, line: 84, size: 320, elements: !1324)
!1324 = !{!1325, !1326, !1330, !1855, !1857}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !1304, line: 85, baseType: !836, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1323, file: !1304, line: 86, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!991, !1246, !1310, !166}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1323, file: !1304, line: 88, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!991, !1246, !1334, !166}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1304, line: 175, size: 512, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1846, !1850, !1851}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1335, file: !1304, line: 176, baseType: !1311, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1335, file: !1304, line: 177, baseType: !1144, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1335, file: !1304, line: 178, baseType: !103, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1335, file: !1304, line: 179, baseType: !1341, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1838, !1839, !1840, !1843, !1844, !1845}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1345, file: !14, line: 473, baseType: !987, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1345, file: !14, line: 474, baseType: !669, size: 128, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1345, file: !14, line: 475, baseType: !773, size: 320, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1345, file: !14, line: 476, baseType: !674, size: 32, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1345, file: !14, line: 477, baseType: !190, size: 32, offset: 544)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1345, file: !14, line: 482, baseType: !403, size: 128, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1345, file: !14, line: 483, baseType: !104, size: 64, offset: 704)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1345, file: !14, line: 484, baseType: !104, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1345, file: !14, line: 485, baseType: !1356, size: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1359)
!1359 = !{!1360, !1663, !1733, !1737, !1741, !1747, !1753, !1757, !1762, !1766, !1770, !1774, !1802, !1806, !1810, !1814, !1819, !1823, !1830, !1834}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1358, file: !14, line: 405, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!166, !1364, !1661}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1366)
!1366 = !{!1367, !1368, !1655, !1660}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1365, file: !38, line: 75, baseType: !104, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !38, line: 83, baseType: !1369, size: 320, offset: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !38, line: 83, size: 320, elements: !1370)
!1370 = !{!1371, !1392, !1406, !1410, !1654}
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !38, line: 84, baseType: !1372, size: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !38, line: 84, size: 320, elements: !1373)
!1373 = !{!1374, !1385, !1386, !1391}
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !38, line: 90, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !38, line: 90, size: 128, elements: !1376)
!1376 = !{!1377, !1378, !1383, !1384}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1375, file: !38, line: 91, baseType: !244, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !38, line: 94, baseType: !1379, size: 128)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !38, line: 94, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1379, file: !38, line: 96, baseType: !103, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1379, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1375, file: !38, line: 102, baseType: !244, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1375, file: !38, line: 103, baseType: !244, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1372, file: !38, line: 106, baseType: !1344, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !38, line: 107, baseType: !1387, size: 64, offset: 192)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !38, line: 107, size: 64, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1387, file: !38, line: 108, baseType: !104, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1387, file: !38, line: 109, baseType: !104, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1372, file: !38, line: 117, baseType: !104, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !38, line: 119, baseType: !1393, size: 320)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !38, line: 119, size: 320, elements: !1394)
!1394 = !{!1395, !1396, !1399, !1400, !1401}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1393, file: !38, line: 124, baseType: !104, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1393, file: !38, line: 125, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1393, file: !38, line: 126, baseType: !104, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1393, file: !38, line: 127, baseType: !104, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !38, line: 128, baseType: !1402, size: 64, offset: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !38, line: 128, size: 64, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1402, file: !38, line: 133, baseType: !104, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1402, file: !38, line: 138, baseType: !577, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !38, line: 141, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !38, line: 141, size: 64, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1407, file: !38, line: 142, baseType: !104, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !38, line: 144, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !38, line: 144, size: 128, elements: !1412)
!1412 = !{!1413, !1653}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1411, file: !38, line: 146, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1416)
!1416 = !{!1417, !1427, !1448, !1459, !1460, !1461, !1462, !1635, !1636, !1637}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1415, file: !54, line: 127, baseType: !1418, size: 384)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1423, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1418, file: !54, line: 22, baseType: !104, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1418, file: !54, line: 23, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1418, file: !54, line: 24, baseType: !1422, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1418, file: !54, line: 25, baseType: !104, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1418, file: !54, line: 26, baseType: !104, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1418, file: !54, line: 27, baseType: !104, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1415, file: !54, line: 128, baseType: !1428, size: 128, offset: 384)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1429, line: 105, size: 128, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1428, file: !1429, line: 110, baseType: !104, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1428, file: !1429, line: 118, baseType: !1433, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1429, line: 95, size: 448, elements: !1435)
!1435 = !{!1436, !1437, !1443, !1444, !1445, !1446, !1447}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1434, file: !1429, line: 96, baseType: !577, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1434, file: !1429, line: 97, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1429, line: 60, baseType: !1440)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1434, file: !1429, line: 98, baseType: !1438, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1434, file: !1429, line: 99, baseType: !833, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1434, file: !1429, line: 100, baseType: !833, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1434, file: !1429, line: 101, baseType: !564, size: 128, align: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1434, file: !1429, line: 102, baseType: !1442, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1415, file: !54, line: 129, baseType: !1449, size: 256, offset: 512)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1450, line: 26, size: 256, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1449, file: !1450, line: 27, baseType: !7, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1449, file: !1450, line: 28, baseType: !1454, size: 192, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1455, line: 43, size: 192, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1455, line: 44, baseType: !337, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1454, file: !1455, line: 45, baseType: !244, size: 128, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1415, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1415, file: !54, line: 132, baseType: !104, size: 64, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1415, file: !54, line: 133, baseType: !1463, size: 64, offset: 896)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1466)
!1466 = !{!1467, !1471, !1631}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1465, file: !54, line: 83, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !1364}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1465, file: !54, line: 89, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1478, line: 512, size: 896, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1479 = !{!1480, !1598, !1599, !1606, !1613, !1623, !1624, !1625, !1627, !1629}
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 513, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !1478, line: 513, size: 320, elements: !1482)
!1482 = !{!1483, !1594, !1595, !1596, !1597}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1481, file: !1478, line: 514, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1486)
!1486 = !{!1487, !1496, !1497, !1505, !1512, !1513, !1518, !1519, !1524, !1525, !1528, !1587, !1588, !1589, !1590, !1591, !1592}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !38, line: 628, baseType: !1488, size: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !38, line: 628, size: 128, elements: !1489)
!1489 = !{!1490, !1495}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !38, line: 629, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !38, line: 629, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1491, file: !38, line: 631, baseType: !104, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1491, file: !38, line: 632, baseType: !104, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1488, file: !38, line: 635, baseType: !564, size: 128, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1485, file: !38, line: 639, baseType: !520, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1485, file: !38, line: 640, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1499, line: 297, baseType: !1500)
!1499 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1499, line: 297, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1500, file: !1499, line: 297, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1504, line: 19, baseType: !104)
!1504 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !38, line: 646, baseType: !1506, size: 64, offset: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !38, line: 646, size: 64, elements: !1507)
!1507 = !{!1508, !1511}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1506, file: !38, line: 647, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !104)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1506, file: !38, line: 648, baseType: !1510, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1485, file: !38, line: 666, baseType: !166, size: 32, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1485, file: !38, line: 667, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !38, line: 580, baseType: !773, size: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1485, file: !38, line: 670, baseType: !833, size: 8, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1485, file: !38, line: 681, baseType: !1520, size: 256, offset: 512)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !38, line: 678, size: 256, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1520, file: !38, line: 679, baseType: !234, size: 192, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1520, file: !38, line: 680, baseType: !104, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1485, file: !38, line: 689, baseType: !244, size: 128, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1485, file: !38, line: 691, baseType: !1526, size: 64, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1485, file: !38, line: 694, baseType: !1529, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1478, line: 563, size: 1024, elements: !1532)
!1532 = !{!1533, !1537, !1538, !1542, !1546, !1550, !1551, !1555, !1559, !1563, !1564, !1565, !1569, !1573, !1579, !1583}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1531, file: !1478, line: 564, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !1484}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1531, file: !1478, line: 569, baseType: !1534, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1531, file: !1478, line: 571, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!166, !1484, !104}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1531, file: !1478, line: 572, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!166, !1484}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1531, file: !1478, line: 578, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!166, !1484, !104, !104, !104}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1531, file: !1478, line: 580, baseType: !1472, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1531, file: !1478, line: 581, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1475, !1476, !7}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1531, file: !1478, line: 582, baseType: !1556, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1475, !1476, !104, !104}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1531, file: !1478, line: 584, baseType: !1560, size: 64, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!104, !1484}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1531, file: !1478, line: 588, baseType: !1472, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1531, file: !1478, line: 591, baseType: !1472, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1531, file: !1478, line: 597, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!166, !1484, !104, !103, !166, !166}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1531, file: !1478, line: 603, baseType: !1570, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!836, !1484}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1531, file: !1478, line: 613, baseType: !1574, size: 64, offset: 832)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!166, !1484, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1531, file: !1478, line: 625, baseType: !1580, size: 64, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1577, !1484, !104}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1531, file: !1478, line: 633, baseType: !1584, size: 64, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1364, !1484, !104}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1485, file: !38, line: 697, baseType: !104, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1485, file: !38, line: 699, baseType: !556, size: 64, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1485, file: !38, line: 700, baseType: !103, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1485, file: !38, line: 711, baseType: !577, size: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1485, file: !38, line: 717, baseType: !1577, size: 64, offset: 1280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1485, file: !38, line: 722, baseType: !1593, offset: 1344)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !549)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1481, file: !1478, line: 515, baseType: !674, size: 32, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1481, file: !1478, line: 516, baseType: !104, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1481, file: !1478, line: 517, baseType: !104, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1481, file: !1478, line: 518, baseType: !104, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1478, line: 520, baseType: !37, size: 32, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1477, file: !1478, line: 522, baseType: !1600, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1504, line: 22, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1504, line: 22, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1602, file: !1504, line: 22, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1504, line: 15, baseType: !104)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1477, file: !1478, line: 524, baseType: !1607, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1499, line: 372, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1499, line: 372, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1609, file: !1499, line: 372, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1504, line: 16, baseType: !104)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 527, baseType: !1614, size: 64, offset: 512)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 527, size: 64, elements: !1615)
!1615 = !{!1616, !1622}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1614, file: !1478, line: 528, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1504, line: 21, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1504, line: 21, size: 64, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1618, file: !1504, line: 21, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1504, line: 14, baseType: !104)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1614, file: !1478, line: 529, baseType: !1601, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1477, file: !1478, line: 534, baseType: !1364, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1477, file: !1478, line: 535, baseType: !1364, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1477, file: !1478, line: 541, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1477, file: !1478, line: 545, baseType: !1628, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1477, file: !1478, line: 549, baseType: !1630, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1499, line: 520, baseType: !1364)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1465, file: !54, line: 100, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!166, !1414, !104, !104, !166}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1415, file: !54, line: 134, baseType: !103, size: 64, offset: 960)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1415, file: !54, line: 135, baseType: !166, size: 32, offset: 1024)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !54, line: 136, baseType: !1638, size: 128, offset: 1088)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !54, line: 136, size: 128, elements: !1639)
!1639 = !{!1640, !1646}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1638, file: !54, line: 137, baseType: !1641, size: 128)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1642, line: 6, size: 128, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1641, file: !1642, line: 7, baseType: !137, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1641, file: !1642, line: 8, baseType: !137, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !54, line: 138, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !54, line: 138, elements: !1648)
!1648 = !{!1649, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1647, file: !54, line: 138, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1647, file: !54, line: 138, elements: !549)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1647, file: !54, line: 138, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, elements: !711)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1411, file: !38, line: 147, baseType: !103, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1369, file: !38, line: 161, baseType: !564, size: 128, align: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !38, line: 164, baseType: !1656, size: 32, offset: 384)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !38, line: 164, size: 32, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1656, file: !38, line: 169, baseType: !190, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1656, file: !38, line: 177, baseType: !7, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1365, file: !38, line: 181, baseType: !190, size: 32, offset: 416)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1358, file: !14, line: 406, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!166, !556, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !1669)
!1669 = !{!1670, !1700, !1714}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !38, line: 295, baseType: !1671, size: 512)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !38, line: 295, size: 512, elements: !1672)
!1672 = !{!1673, !1699}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !38, line: 296, baseType: !1674, size: 448)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !38, line: 296, size: 448, elements: !1675)
!1675 = !{!1676, !1677, !1686, !1687, !1688, !1697, !1698}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !38, line: 298, baseType: !104, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !38, line: 299, baseType: !1678, size: 128, offset: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !38, line: 299, size: 128, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1678, file: !38, line: 300, baseType: !244, size: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !38, line: 302, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !38, line: 302, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1682, file: !38, line: 303, baseType: !103, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1682, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1674, file: !38, line: 310, baseType: !1344, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1674, file: !38, line: 311, baseType: !104, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !38, line: 312, baseType: !1689, size: 64, offset: 320)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !38, line: 312, size: 64, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1689, file: !38, line: 313, baseType: !103, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1689, file: !38, line: 314, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1694, file: !38, line: 256, baseType: !104, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1674, file: !38, line: 316, baseType: !190, size: 32, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1674, file: !38, line: 317, baseType: !190, size: 32, offset: 416)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1671, file: !38, line: 323, baseType: !1365, size: 512, align: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !38, line: 325, baseType: !1701, size: 512, offset: 512)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !38, line: 325, size: 512, elements: !1702)
!1702 = !{!1703, !1713}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !38, line: 326, baseType: !1704, size: 320)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !38, line: 326, size: 320, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1704, file: !38, line: 327, baseType: !104, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1704, file: !38, line: 328, baseType: !104, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1704, file: !38, line: 329, baseType: !104, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1704, file: !38, line: 331, baseType: !190, size: 32, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1704, file: !38, line: 332, baseType: !190, size: 32, offset: 224)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1704, file: !38, line: 333, baseType: !190, size: 32, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1704, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1701, file: !38, line: 339, baseType: !1365, size: 512, align: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !38, line: 341, baseType: !1715, size: 512, offset: 1024)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !38, line: 341, size: 512, elements: !1716)
!1716 = !{!1717, !1726, !1732}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !38, line: 342, baseType: !1718, size: 384)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1715, file: !38, line: 342, size: 384, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1718, file: !38, line: 343, baseType: !104, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1718, file: !38, line: 344, baseType: !104, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1718, file: !38, line: 346, baseType: !103, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1718, file: !38, line: 347, baseType: !103, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1718, file: !38, line: 348, baseType: !103, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1718, file: !38, line: 349, baseType: !103, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !38, line: 352, baseType: !1727, size: 256)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1715, file: !38, line: 352, size: 256, elements: !1728)
!1728 = !{!1729, !1730, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1727, file: !38, line: 353, baseType: !104, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1727, file: !38, line: 354, baseType: !104, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1727, file: !38, line: 356, baseType: !244, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1715, file: !38, line: 359, baseType: !1365, size: 512, align: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1358, file: !14, line: 409, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!166, !1344, !1661}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1358, file: !14, line: 412, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!833, !1344, !1667}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1358, file: !14, line: 414, baseType: !1742, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1358, file: !14, line: 416, baseType: !1748, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!166, !556, !1344, !596, !7, !1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1358, file: !14, line: 419, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!166, !556, !1344, !596, !7, !7, !1364, !103}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1358, file: !14, line: 424, baseType: !1758, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !1344, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !191, line: 131, baseType: !137)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1358, file: !14, line: 425, baseType: !1763, size: 64, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1667, !1144, !1144}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1358, file: !14, line: 426, baseType: !1767, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!833, !1667, !674}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1358, file: !14, line: 427, baseType: !1771, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1667}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1358, file: !14, line: 428, baseType: !1775, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1141, !1778, !1800}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1787, !1788, !1789, !1790}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1779, file: !14, line: 374, baseType: !556, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1779, file: !14, line: 375, baseType: !596, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1779, file: !14, line: 376, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !1778, !1102}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1779, file: !14, line: 377, baseType: !103, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1779, file: !14, line: 378, baseType: !166, size: 32, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1779, file: !14, line: 379, baseType: !131, size: 16, offset: 288)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !14, line: 380, baseType: !1791, size: 64, offset: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !14, line: 380, size: 64, elements: !1792)
!1792 = !{!1793, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1791, file: !14, line: 386, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1791, file: !14, line: 395, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1141, !103}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1358, file: !14, line: 433, baseType: !1803, size: 64, offset: 768)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!166, !1344, !1667, !1667, !74}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1358, file: !14, line: 435, baseType: !1807, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!166, !1667}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1358, file: !14, line: 436, baseType: !1811, size: 64, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!833, !1667, !1144, !1144}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1358, file: !14, line: 438, baseType: !1815, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1667, !1818, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1358, file: !14, line: 439, baseType: !1820, size: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!166, !1344, !1364}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1358, file: !14, line: 442, baseType: !1824, size: 64, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!166, !1827, !556, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1358, file: !14, line: 444, baseType: !1831, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !556}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1358, file: !14, line: 445, baseType: !1835, size: 64, offset: 1216)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!166, !1778, !1800}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !14, line: 486, baseType: !104, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1345, file: !14, line: 487, baseType: !773, size: 320, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1345, file: !14, line: 488, baseType: !1841, size: 32, offset: 1280)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1842, line: 8, baseType: !167)
!1842 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1345, file: !14, line: 489, baseType: !538, size: 32, offset: 1312)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1345, file: !14, line: 490, baseType: !244, size: 128, offset: 1344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1345, file: !14, line: 491, baseType: !103, size: 64, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1335, file: !1304, line: 180, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1141, !556, !1246, !1334, !846, !596, !1144}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1335, file: !1304, line: 182, baseType: !1847, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1335, file: !1304, line: 184, baseType: !1852, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!166, !556, !1246, !1334, !1484}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1323, file: !1304, line: 90, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1323, file: !1304, line: 91, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1294, file: !1241, line: 120, baseType: !1860, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1264}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1866)
!1866 = !{!1867, !1868, !1872, !1876, !1884, !1888}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1865, file: !82, line: 40, baseType: !81, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1865, file: !82, line: 41, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!833}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1865, file: !82, line: 42, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!103}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1865, file: !82, line: 43, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1865, file: !82, line: 44, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1880}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1865, file: !82, line: 45, baseType: !1019, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1294, file: !1241, line: 121, baseType: !1890, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1880, !1264}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1294, file: !1241, line: 122, baseType: !1894, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1264, !1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1240, file: !1241, line: 70, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1213, line: 190, size: 1152, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !2001, !2002, !2003, !2004, !2005, !2008}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1901, file: !1213, line: 191, baseType: !190, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1901, file: !1213, line: 192, baseType: !190, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1901, file: !1213, line: 202, baseType: !1900, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1901, file: !1213, line: 203, baseType: !836, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1901, file: !1213, line: 205, baseType: !234, size: 192, align: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1901, file: !1213, line: 207, baseType: !1880, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1901, file: !1213, line: 208, baseType: !7, size: 32, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1213, line: 209, baseType: !1911, size: 256, offset: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1213, line: 209, size: 256, elements: !1912)
!1912 = !{!1913, !1922, !1926}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1911, file: !1213, line: 210, baseType: !1914, size: 256)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1213, line: 153, size: 256, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1921}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1914, file: !1213, line: 154, baseType: !104, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1914, file: !1213, line: 156, baseType: !406, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1914, file: !1213, line: 162, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1213, line: 162, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1914, file: !1213, line: 167, baseType: !104, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1911, file: !1213, line: 211, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1213, line: 170, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1923, file: !1213, line: 171, baseType: !1900, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1911, file: !1213, line: 212, baseType: !1927, size: 256)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1213, line: 174, size: 256, elements: !1928)
!1928 = !{!1929, !1996, !1999, !2000}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1927, file: !1213, line: 175, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1213, line: 271, size: 768, elements: !1933)
!1933 = !{!1934, !1956, !1960, !1964, !1969, !1973, !1977, !1981, !1982, !1983, !1984, !1992}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1932, file: !1213, line: 276, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!166, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1213, line: 251, size: 1216, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1939, file: !1213, line: 253, baseType: !1900, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1939, file: !1213, line: 254, baseType: !556, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1939, file: !1213, line: 255, baseType: !1944, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !172, line: 66, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1939, file: !1213, line: 256, baseType: !103, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1939, file: !1213, line: 259, baseType: !584, size: 256, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1939, file: !1213, line: 260, baseType: !584, size: 256, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1939, file: !1213, line: 261, baseType: !166, size: 32, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1939, file: !1213, line: 262, baseType: !244, size: 128, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1939, file: !1213, line: 263, baseType: !846, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1939, file: !1213, line: 265, baseType: !1144, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1939, file: !1213, line: 266, baseType: !833, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1939, file: !1213, line: 267, baseType: !833, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1939, file: !1213, line: 268, baseType: !1529, size: 64, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1932, file: !1213, line: 277, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1938}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1932, file: !1213, line: 290, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!166, !1944, !103}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1932, file: !1213, line: 292, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!103, !1944, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1932, file: !1213, line: 293, baseType: !1970, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!103, !1944, !103, !1968}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1932, file: !1213, line: 294, baseType: !1974, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1944, !103}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1932, file: !1213, line: 296, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1141, !1938, !846, !1144, !596}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1932, file: !1213, line: 306, baseType: !1144, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1932, file: !1213, line: 313, baseType: !833, size: 8, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1932, file: !1213, line: 314, baseType: !1978, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1932, file: !1213, line: 317, baseType: !1985, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1988, !1938, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1989, line: 59, baseType: !7)
!1989 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1213, line: 31, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1932, file: !1213, line: 320, baseType: !1993, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!166, !1938, !1484}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1927, file: !1213, line: 176, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1213, line: 35, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1927, file: !1213, line: 177, baseType: !596, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1927, file: !1213, line: 178, baseType: !1900, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1901, file: !1213, line: 215, baseType: !103, size: 64, offset: 768)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1901, file: !1213, line: 221, baseType: !137, size: 64, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1213, line: 223, baseType: !135, size: 16, offset: 896)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1901, file: !1213, line: 224, baseType: !991, size: 16, offset: 912)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1901, file: !1213, line: 225, baseType: !2006, size: 64, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1213, line: 36, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1901, file: !1213, line: 227, baseType: !564, size: 128, align: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1240, file: !1241, line: 71, baseType: !2010, size: 32, offset: 448)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2011, line: 19, size: 32, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2010, file: !2011, line: 20, baseType: !185, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1240, file: !1241, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1240, file: !1241, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1240, file: !1241, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1240, file: !1241, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1240, file: !1241, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1237, file: !6, line: 47, baseType: !1227, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1237, file: !6, line: 48, baseType: !1246, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1237, file: !6, line: 49, baseType: !2022, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1237, file: !6, line: 50, baseType: !2025, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1228, file: !6, line: 418, baseType: !2027, size: 64, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2029)
!2029 = !{!2030, !2031, !2036, !2040, !2044, !2048}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2028, file: !6, line: 54, baseType: !1311, size: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2028, file: !6, line: 55, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!1141, !2027, !2035, !846}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2028, file: !6, line: 57, baseType: !2037, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1141, !2027, !2035, !836, !1144}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2028, file: !6, line: 59, baseType: !2041, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1227, !836}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2028, file: !6, line: 60, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!166, !1227}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2028, file: !6, line: 61, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1227}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1228, file: !6, line: 419, baseType: !836, size: 64, offset: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1228, file: !6, line: 420, baseType: !836, size: 64, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1228, file: !6, line: 421, baseType: !1246, size: 64, offset: 1600)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1228, file: !6, line: 424, baseType: !2056, size: 64, offset: 1664)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1228, file: !6, line: 425, baseType: !2060, size: 64, offset: 1728)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1228, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1228, file: !6, line: 435, baseType: !584, size: 256, offset: 1856)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1228, file: !6, line: 437, baseType: !2065, size: 64, offset: 2112)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2067, line: 69, size: 320, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2068 = !{!2069, !2070, !2071, !2088, !2090, !2094, !2095}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !2067, line: 70, baseType: !836, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2066, file: !2067, line: 71, baseType: !1227, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2066, file: !2067, line: 72, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2067, line: 47, size: 256, elements: !2075)
!2075 = !{!2076, !2077, !2083, !2087}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2067, line: 49, baseType: !7, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2074, file: !2067, line: 51, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!166, !836, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2074, file: !2067, line: 53, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!166, !846, !2081}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2074, file: !2067, line: 55, baseType: !1019, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2066, file: !2067, line: 73, baseType: !2089, size: 16, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2066, file: !2067, line: 74, baseType: !2091, size: 8, offset: 208)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !132, line: 16, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !134, line: 20, baseType: !2093)
!2093 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 75, baseType: !354, size: 8, offset: 216)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2067, line: 76, baseType: !2096, size: 64, offset: 256)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2067, line: 76, size: 64, elements: !2097)
!2097 = !{!2098, !2099, !2106}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2096, file: !2067, line: 77, baseType: !103, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2096, file: !2067, line: 78, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2067, line: 86, size: 128, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2102, file: !2067, line: 87, baseType: !7, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2102, file: !2067, line: 88, baseType: !846, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2096, file: !2067, line: 79, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2067, line: 92, size: 256, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2115, !2116}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2109, file: !2067, line: 94, baseType: !7, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2109, file: !2067, line: 95, baseType: !7, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2109, file: !2067, line: 96, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2109, file: !2067, line: 97, baseType: !2072, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2109, file: !2067, line: 98, baseType: !103, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1228, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1228, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1228, file: !6, line: 442, baseType: !2056, size: 64, offset: 2240)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1228, file: !6, line: 443, baseType: !2060, size: 64, offset: 2304)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1228, file: !6, line: 444, baseType: !833, size: 8, offset: 2368)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1228, file: !6, line: 451, baseType: !833, size: 8, offset: 2376)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1228, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1228, file: !6, line: 455, baseType: !2125, size: 64, offset: 2432)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2127, line: 23, size: 96, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2126, file: !2127, line: 24, baseType: !166, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2126, file: !2127, line: 24, baseType: !166, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2126, file: !2127, line: 24, baseType: !166, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1228, file: !6, line: 458, baseType: !2133, size: 64, offset: 2496)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!166}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1228, file: !6, line: 460, baseType: !2137, size: 4032, align: 512, offset: 2560)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 4032, elements: !2154)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2138, file: !6, line: 363, baseType: !103, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2138, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2138, file: !6, line: 367, baseType: !2143, size: 448, offset: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2143, file: !6, line: 320, baseType: !1227, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2143, file: !6, line: 321, baseType: !2147, size: 384, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2148, line: 40, size: 384, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2147, file: !2148, line: 41, baseType: !2151, size: 384, align: 64)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 384, align: 64, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 2)
!2154 = !{!2155}
!2155 = !DISubrange(count: 7)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1228, file: !6, line: 463, baseType: !2157, size: 192, offset: 6592)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2158, line: 8, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2159 = !{!2160, !2161, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2157, file: !2158, line: 10, baseType: !7, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2157, file: !2158, line: 11, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2157, file: !2158, line: 12, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2166, line: 59, size: 48, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2167 = !{!2168, !2171, !2172, !2173, !2174, !2175}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2165, file: !2166, line: 60, baseType: !2169, size: 16)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !132, line: 18, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !134, line: 23, baseType: !801)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2165, file: !2166, line: 61, baseType: !2169, size: 16, offset: 16)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2165, file: !2166, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2165, file: !2166, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2165, file: !2166, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2165, file: !2166, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1228, file: !6, line: 465, baseType: !104, size: 64, offset: 6784)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1228, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1228, file: !6, line: 470, baseType: !244, size: 128, offset: 6912)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1228, file: !6, line: 471, baseType: !2180, size: 64, offset: 7040)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2182, line: 33, size: 96, elements: !2183)
!2182 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2181, file: !2182, line: 37, baseType: !166, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2181, file: !2182, line: 43, baseType: !166, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2181, file: !2182, line: 45, baseType: !135, size: 16, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2181, file: !2182, line: 47, baseType: !135, size: 16, offset: 80)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1228, file: !6, line: 476, baseType: !2189, size: 64, offset: 7104)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2191)
!2191 = !{!2192, !2208, !2209, !2210}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2190, file: !6, line: 379, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2195, line: 204, baseType: !2196)
!2195 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2195, line: 197, size: 192, elements: !2197)
!2197 = !{!2198, !2200, !2201, !2202, !2204, !2206}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2196, file: !2195, line: 198, baseType: !2199, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2195, line: 21, baseType: !168)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2196, file: !2195, line: 199, baseType: !356, size: 8, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2196, file: !2195, line: 200, baseType: !356, size: 8, offset: 40)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2196, file: !2195, line: 201, baseType: !2203, size: 16, offset: 48)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2195, line: 17, baseType: !133)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2196, file: !2195, line: 202, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2195, line: 16, baseType: !138)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2196, file: !2195, line: 203, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2195, line: 22, baseType: !138)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2190, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2190, file: !6, line: 381, baseType: !846, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2190, file: !6, line: 382, baseType: !846, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1228, file: !6, line: 477, baseType: !2190, size: 256, offset: 7168)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1228, file: !6, line: 480, baseType: !2213, size: 64, offset: 7424)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1228, file: !6, line: 483, baseType: !2216, size: 64, offset: 7488)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1228, file: !6, line: 488, baseType: !846, size: 64, offset: 7552)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1228, file: !6, line: 492, baseType: !103, size: 64, offset: 7616)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1228, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1228, file: !6, line: 495, baseType: !103, size: 64, offset: 7744)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1228, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1228, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1228, file: !6, line: 500, baseType: !2225, size: 64, offset: 7872)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2227, line: 45, baseType: !2228)
!2227 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1228, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1228, file: !6, line: 504, baseType: !2231, size: 64, offset: 8000)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2234, line: 96, size: 192, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2235 = !{!2236, !2237, !2302, !2305}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2233, file: !2234, line: 97, baseType: !7, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2233, file: !2234, line: 98, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2234, line: 24, size: 3072, elements: !2240)
!2240 = !{!2241, !2243, !2244, !2245, !2246, !2260, !2261, !2262, !2263, !2275, !2287, !2288, !2299, !2300, !2301}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2239, file: !2234, line: 26, baseType: !2242, size: 128)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 128, elements: !2152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2239, file: !2234, line: 27, baseType: !2242, size: 128, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2239, file: !2234, line: 28, baseType: !166, size: 32, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !2234, line: 31, baseType: !538, size: 32, align: 512, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2239, file: !2234, line: 32, baseType: !2247, size: 960, offset: 576)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2248, line: 206, size: 960, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2249 = !{!2250, !2251, !2254, !2256, !2257, !2259}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2247, file: !2248, line: 207, baseType: !567, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2247, file: !2248, line: 208, baseType: !2252, size: 256, offset: 64)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 256, elements: !643)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2247, file: !2248, line: 209, baseType: !2255, size: 256, offset: 320)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !643)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2247, file: !2248, line: 213, baseType: !1102, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2247, file: !2248, line: 215, baseType: !2258, size: 256, offset: 640)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !643)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2247, file: !2248, line: 216, baseType: !354, size: 8, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2239, file: !2234, line: 33, baseType: !104, size: 64, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2239, file: !2234, line: 34, baseType: !104, size: 64, offset: 1600)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2239, file: !2234, line: 35, baseType: !833, size: 8, offset: 1664)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2239, file: !2234, line: 36, baseType: !2264, size: 320, offset: 1728)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2265, line: 11, size: 320, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2266 = !{!2267, !2268, !2269, !2274}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2264, file: !2265, line: 16, baseType: !638, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2264, file: !2265, line: 17, baseType: !104, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2264, file: !2265, line: 18, baseType: !2270, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 19, baseType: !167, size: 32, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2239, file: !2234, line: 37, baseType: !2276, size: 256, offset: 2048)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2277, line: 98, size: 256, elements: !2278)
!2277 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2276, file: !2277, line: 99, baseType: !577, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2276, file: !2277, line: 100, baseType: !244, size: 128, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2276, file: !2277, line: 101, baseType: !2282, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2277, line: 21, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2239, file: !2234, line: 38, baseType: !564, size: 128, align: 64, offset: 2304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2239, file: !2234, line: 39, baseType: !2289, size: 64, offset: 2432)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2234, line: 49, size: 768, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !2234, line: 50, baseType: !538, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2290, file: !2234, line: 51, baseType: !2255, size: 256, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2290, file: !2234, line: 53, baseType: !2255, size: 256, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2290, file: !2234, line: 54, baseType: !104, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2290, file: !2234, line: 55, baseType: !2289, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2290, file: !2234, line: 56, baseType: !166, size: 32, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2290, file: !2234, line: 57, baseType: !166, size: 32, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2239, file: !2234, line: 40, baseType: !104, size: 64, offset: 2496)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2239, file: !2234, line: 42, baseType: !166, size: 32, offset: 2560)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2239, file: !2234, line: 43, baseType: !2232, size: 64, offset: 2624)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2233, file: !2234, line: 99, baseType: !2303, offset: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2304, line: 211, elements: !549)
!2304 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2233, file: !2234, line: 100, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2234, line: 63, size: 3008, elements: !2308)
!2308 = !{!2309, !2310, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2340}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2307, file: !2234, line: 64, baseType: !2289, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2307, file: !2234, line: 65, baseType: !2311, size: 192, offset: 64)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 192, elements: !622)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2307, file: !2234, line: 67, baseType: !166, size: 32, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2307, file: !2234, line: 68, baseType: !584, size: 256, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2307, file: !2234, line: 69, baseType: !538, size: 32, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2307, file: !2234, line: 70, baseType: !584, size: 256, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2307, file: !2234, line: 71, baseType: !104, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2307, file: !2234, line: 72, baseType: !104, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2307, file: !2234, line: 73, baseType: !104, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2307, file: !2234, line: 74, baseType: !104, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2307, file: !2234, line: 75, baseType: !104, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2307, file: !2234, line: 76, baseType: !104, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2307, file: !2234, line: 77, baseType: !104, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2307, file: !2234, line: 78, baseType: !104, size: 64, offset: 1344)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2307, file: !2234, line: 79, baseType: !833, size: 8, offset: 1408)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2307, file: !2234, line: 80, baseType: !104, size: 64, offset: 1472)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2307, file: !2234, line: 81, baseType: !584, size: 256, offset: 1536)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2307, file: !2234, line: 82, baseType: !1449, size: 256, offset: 1792)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2307, file: !2234, line: 84, baseType: !190, size: 32, offset: 2048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2307, file: !2234, line: 87, baseType: !104, size: 64, offset: 2112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2307, file: !2234, line: 88, baseType: !104, size: 64, offset: 2176)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2307, file: !2234, line: 89, baseType: !2332, size: 704, offset: 2240)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2277, line: 111, size: 704, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2339}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2332, file: !2277, line: 112, baseType: !2276, size: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2332, file: !2277, line: 113, baseType: !2264, size: 320, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2332, file: !2277, line: 116, baseType: !2337, size: 64, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2277, line: 18, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2332, file: !2277, line: 117, baseType: !166, size: 32, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2307, file: !2234, line: 90, baseType: !2232, size: 64, offset: 2944)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1228, file: !6, line: 515, baseType: !2342, size: 64, offset: 8064)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2344, line: 117, size: 128, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2343, file: !2344, line: 118, baseType: !765, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2343, file: !2344, line: 119, baseType: !765, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2343, file: !2344, line: 120, baseType: !1102, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1228, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1228, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1228, file: !6, line: 520, baseType: !2352, size: 64, offset: 8192)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1228, file: !6, line: 523, baseType: !2354, size: 64, offset: 8256)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1228, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1228, file: !6, line: 525, baseType: !2359, size: 64, offset: 8384)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1228, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1228, file: !6, line: 533, baseType: !103, size: 64, offset: 8512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1228, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1228, file: !6, line: 535, baseType: !105, size: 64, offset: 8640)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1228, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1228, file: !6, line: 539, baseType: !166, size: 32, offset: 8736)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1228, file: !6, line: 540, baseType: !2369, size: 64, offset: 8768)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2371, line: 32, size: 64, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2370, file: !2371, line: 33, baseType: !765, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2370, file: !2371, line: 34, baseType: !765, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1228, file: !6, line: 563, baseType: !244, size: 128, offset: 8832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1228, file: !6, line: 565, baseType: !244, size: 128, offset: 8960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1228, file: !6, line: 568, baseType: !2378, size: 64, offset: 9088)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1228, file: !6, line: 570, baseType: !190, size: 32, offset: 9152)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1203, file: !14, line: 2382, baseType: !1202, size: 64, offset: 448)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1203, file: !14, line: 2383, baseType: !634, size: 64, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1203, file: !14, line: 2385, baseType: !2385, offset: 576)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2304, line: 206, elements: !549)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1203, file: !14, line: 2386, baseType: !2385, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1203, file: !14, line: 2387, baseType: !2385, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1203, file: !14, line: 2388, baseType: !2389, offset: 576)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, elements: !622)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1203, file: !14, line: 2390, baseType: !2385, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1203, file: !14, line: 2391, baseType: !2385, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1203, file: !14, line: 2392, baseType: !2385, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1203, file: !14, line: 2393, baseType: !2385, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1194, file: !14, line: 1197, baseType: !2395, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2398)
!2398 = !{!2399, !2403, !2407, !2408, !2412, !2416, !2420, !2421, !2422, !2426, !2430, !2434, !2435, !2436, !2442, !2446, !2447, !2451, !2452, !2453, !2454, !2458, !2462, !2509, !2524, !2525}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2397, file: !14, line: 2058, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!987, !1193}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2397, file: !14, line: 2059, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !987}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2397, file: !14, line: 2060, baseType: !2404, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2397, file: !14, line: 2062, baseType: !2409, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !987, !166}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2397, file: !14, line: 2063, baseType: !2413, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!166, !987, !1661}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2397, file: !14, line: 2064, baseType: !2417, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!166, !987}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2397, file: !14, line: 2065, baseType: !2404, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2397, file: !14, line: 2066, baseType: !1223, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2397, file: !14, line: 2067, baseType: !2423, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!166, !1193, !166}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2397, file: !14, line: 2068, baseType: !2427, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!166, !1193, !13}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2397, file: !14, line: 2069, baseType: !2431, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!166, !1193}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2397, file: !14, line: 2070, baseType: !2427, size: 64, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2397, file: !14, line: 2071, baseType: !2431, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2397, file: !14, line: 2072, baseType: !2437, size: 64, offset: 832)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!166, !952, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2397, file: !14, line: 2073, baseType: !2443, size: 64, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!166, !1193, !2162, !846}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2397, file: !14, line: 2074, baseType: !1223, size: 64, offset: 960)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2397, file: !14, line: 2076, baseType: !2448, size: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!166, !1944, !952}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2397, file: !14, line: 2077, baseType: !2448, size: 64, offset: 1088)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2397, file: !14, line: 2078, baseType: !2448, size: 64, offset: 1152)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2397, file: !14, line: 2079, baseType: !2448, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2397, file: !14, line: 2081, baseType: !2455, size: 64, offset: 1280)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!1141, !1193, !166, !846, !1144, !596}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2397, file: !14, line: 2082, baseType: !2459, size: 64, offset: 1344)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!1141, !1193, !166, !836, !1144, !596}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2397, file: !14, line: 2083, baseType: !2463, size: 64, offset: 1408)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2466, !987}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2494, !2495, !2496}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2468, file: !19, line: 297, baseType: !638, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2468, file: !19, line: 298, baseType: !244, size: 128, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2468, file: !19, line: 299, baseType: !244, size: 128, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2468, file: !19, line: 300, baseType: !244, size: 128, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2468, file: !19, line: 301, baseType: !584, size: 256, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2468, file: !19, line: 302, baseType: !538, size: 32, offset: 768)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2468, file: !19, line: 303, baseType: !190, size: 32, offset: 800)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2468, file: !19, line: 304, baseType: !1193, size: 64, offset: 832)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2468, file: !19, line: 305, baseType: !2479, size: 64, offset: 896)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2480)
!2480 = !{!2481, !2493}
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !19, line: 69, baseType: !2482, size: 32)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !19, line: 69, size: 32, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2482, file: !19, line: 70, baseType: !715, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2482, file: !19, line: 71, baseType: !732, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2482, file: !19, line: 72, baseType: !2487, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2488, line: 24, baseType: !2489)
!2488 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 22, size: 32, elements: !2490)
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2489, file: !2488, line: 23, baseType: !2492, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2488, line: 20, baseType: !720)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2479, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2468, file: !19, line: 306, baseType: !596, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2468, file: !19, line: 307, baseType: !104, size: 64, offset: 1024)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2468, file: !19, line: 308, baseType: !2497, size: 576, offset: 1088)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2498)
!2498 = !{!2499, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2497, file: !19, line: 206, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !257)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2497, file: !19, line: 207, baseType: !2500, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2497, file: !19, line: 208, baseType: !2500, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2497, file: !19, line: 209, baseType: !2500, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2497, file: !19, line: 210, baseType: !2500, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2497, file: !19, line: 211, baseType: !2500, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2497, file: !19, line: 212, baseType: !2500, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2497, file: !19, line: 213, baseType: !789, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2497, file: !19, line: 214, baseType: !789, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2397, file: !14, line: 2085, baseType: !2510, size: 64, offset: 1472)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!1102, !1193, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2515, line: 15, size: 256, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2516 = !{!2517, !2518, !2519, !2520, !2521}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2514, file: !2515, line: 16, baseType: !674, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2514, file: !2515, line: 19, baseType: !166, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2514, file: !2515, line: 26, baseType: !104, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2514, file: !2515, line: 33, baseType: !104, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2514, file: !2515, line: 36, baseType: !2522, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2397, file: !14, line: 2087, baseType: !2510, size: 64, offset: 1536)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2397, file: !14, line: 2089, baseType: !1223, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1194, file: !14, line: 1198, baseType: !2527, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !2530)
!2530 = !{!2531, !2535, !2539, !2543, !2544, !2545, !2546, !2547, !2552, !2557, !2561}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2529, file: !19, line: 325, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!166, !2467}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2529, file: !19, line: 326, baseType: !2536, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2467, !1193, !166}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2529, file: !19, line: 327, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2467}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2529, file: !19, line: 328, baseType: !2532, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2529, file: !19, line: 329, baseType: !2532, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2529, file: !19, line: 330, baseType: !2532, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2529, file: !19, line: 331, baseType: !2423, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2529, file: !19, line: 334, baseType: !2548, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2551, !987}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2529, file: !19, line: 335, baseType: !2553, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!166, !987, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2529, file: !19, line: 337, baseType: !2558, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!166, !987, !2551}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2529, file: !19, line: 339, baseType: !2562, size: 64, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!166, !1193, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1194, file: !14, line: 1199, baseType: !2567, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !2570)
!2570 = !{!2571, !2575, !2576, !2580, !2581, !2582, !2597, !2620, !2624, !2625, !2648}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2569, file: !19, line: 431, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!166, !1193, !166, !166, !1110}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2569, file: !19, line: 432, baseType: !2423, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2569, file: !19, line: 433, baseType: !2577, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!166, !1193, !7}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2569, file: !19, line: 434, baseType: !2577, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2569, file: !19, line: 435, baseType: !2423, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2569, file: !19, line: 436, baseType: !2583, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!166, !1193, !166, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2587, file: !19, line: 418, baseType: !166, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2587, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2587, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2587, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2587, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2587, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2587, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2587, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2569, file: !19, line: 437, baseType: !2598, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!166, !1193, !2479, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2602, file: !19, line: 346, baseType: !166, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2602, file: !19, line: 347, baseType: !137, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2602, file: !19, line: 348, baseType: !137, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2602, file: !19, line: 349, baseType: !137, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2602, file: !19, line: 350, baseType: !137, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2602, file: !19, line: 351, baseType: !137, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2602, file: !19, line: 352, baseType: !137, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2602, file: !19, line: 353, baseType: !255, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2602, file: !19, line: 355, baseType: !255, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2602, file: !19, line: 356, baseType: !166, size: 32, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2602, file: !19, line: 357, baseType: !166, size: 32, offset: 608)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2602, file: !19, line: 358, baseType: !137, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2602, file: !19, line: 359, baseType: !137, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2602, file: !19, line: 360, baseType: !137, size: 64, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2602, file: !19, line: 361, baseType: !255, size: 64, offset: 832)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2602, file: !19, line: 362, baseType: !166, size: 32, offset: 896)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2569, file: !19, line: 438, baseType: !2621, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!166, !1193, !2565, !2601}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2569, file: !19, line: 440, baseType: !2598, size: 64, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2569, file: !19, line: 441, baseType: !2626, size: 64, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!166, !1193, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2630, file: !19, line: 412, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2630, file: !19, line: 413, baseType: !2634, size: 1344, offset: 64)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 1344, elements: !622)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2647}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2635, file: !19, line: 398, baseType: !7, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2635, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2635, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2635, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2635, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2635, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2635, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2635, file: !19, line: 406, baseType: !139, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2635, file: !19, line: 407, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !191, line: 132, baseType: !137)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2635, file: !19, line: 408, baseType: !2646, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2569, file: !19, line: 442, baseType: !2577, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1194, file: !14, line: 1200, baseType: !2650, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1194, file: !14, line: 1201, baseType: !104, size: 64, offset: 640)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1194, file: !14, line: 1202, baseType: !104, size: 64, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1194, file: !14, line: 1203, baseType: !104, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1194, file: !14, line: 1204, baseType: !952, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1194, file: !14, line: 1205, baseType: !773, size: 320, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1194, file: !14, line: 1206, baseType: !166, size: 32, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1194, file: !14, line: 1207, baseType: !190, size: 32, offset: 1248)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1194, file: !14, line: 1209, baseType: !103, size: 64, offset: 1280)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1194, file: !14, line: 1211, baseType: !2662, size: 64, offset: 1344)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1194, file: !14, line: 1223, baseType: !2667, size: 64, offset: 1408)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !964, line: 34, size: 64, elements: !2668)
!2668 = !{!2669}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2667, file: !964, line: 35, baseType: !967, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1194, file: !14, line: 1224, baseType: !244, size: 128, offset: 1472)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1194, file: !14, line: 1225, baseType: !2672, size: 64, offset: 1600)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1194, file: !14, line: 1226, baseType: !2675, size: 64, offset: 1664)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1194, file: !14, line: 1227, baseType: !2678, size: 64, offset: 1728)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1194, file: !14, line: 1228, baseType: !2681, size: 64, offset: 1792)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1194, file: !14, line: 1229, baseType: !638, size: 128, offset: 1856)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1194, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1194, file: !14, line: 1231, baseType: !2686, size: 2496, offset: 2048)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2692, !2724}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2686, file: !19, line: 522, baseType: !7, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2686, file: !19, line: 523, baseType: !773, size: 320, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2686, file: !19, line: 524, baseType: !2691, size: 192, offset: 384)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 192, elements: !622)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2686, file: !19, line: 525, baseType: !2693, size: 1728, offset: 576)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2694, size: 1728, elements: !622)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2695)
!2695 = !{!2696, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2694, file: !19, line: 223, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !2699)
!2699 = !{!2700, !2701, !2714, !2715}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2698, file: !19, line: 446, baseType: !166, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2698, file: !19, line: 447, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2704)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2704, file: !19, line: 313, baseType: !2423, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2704, file: !19, line: 314, baseType: !2423, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2704, file: !19, line: 315, baseType: !2423, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2704, file: !19, line: 316, baseType: !2423, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2704, file: !19, line: 317, baseType: !2532, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2704, file: !19, line: 318, baseType: !2532, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2704, file: !19, line: 319, baseType: !2532, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2704, file: !19, line: 320, baseType: !2562, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2698, file: !19, line: 448, baseType: !1227, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2698, file: !19, line: 449, baseType: !2697, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2694, file: !19, line: 224, baseType: !166, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2694, file: !19, line: 226, baseType: !244, size: 128, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2694, file: !19, line: 227, baseType: !104, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2694, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2694, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2694, file: !19, line: 230, baseType: !2500, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2694, file: !19, line: 231, baseType: !2500, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2694, file: !19, line: 232, baseType: !103, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2686, file: !19, line: 526, baseType: !2725, size: 192, offset: 2304)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 192, elements: !622)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1194, file: !14, line: 1233, baseType: !2727, size: 2368, offset: 4544)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2728)
!2728 = !{!2729, !2730, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2727, file: !14, line: 1185, baseType: !135, size: 16)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2727, file: !14, line: 1186, baseType: !135, size: 16, offset: 16)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2727, file: !14, line: 1187, baseType: !2732, size: 2304, offset: 64)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 2304, elements: !622)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2734, line: 12, size: 768, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2735 = !{!2736, !2744, !2745, !2750, !2751}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2733, file: !2734, line: 13, baseType: !2737, size: 384)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2738, line: 17, size: 384, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2737, file: !2738, line: 18, baseType: !166, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2737, file: !2738, line: 19, baseType: !166, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2737, file: !2738, line: 20, baseType: !647, size: 192, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2737, file: !2738, line: 22, baseType: !564, size: 128, align: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2733, file: !2734, line: 14, baseType: !2114, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2733, file: !2734, line: 15, baseType: !2746, size: 64, offset: 448)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2747, line: 16, size: 64, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2746, file: !2747, line: 17, baseType: !170, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2733, file: !2734, line: 16, baseType: !647, size: 192, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2733, file: !2734, line: 17, baseType: !190, size: 32, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1194, file: !14, line: 1240, baseType: !103, size: 64, offset: 6912)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1194, file: !14, line: 1243, baseType: !167, size: 32, offset: 6976)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1194, file: !14, line: 1245, baseType: !789, size: 64, offset: 7040)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1194, file: !14, line: 1246, baseType: !789, size: 64, offset: 7104)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1194, file: !14, line: 1248, baseType: !168, size: 32, offset: 7168)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1194, file: !14, line: 1249, baseType: !2758, size: 64, offset: 7232)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1194, file: !14, line: 1252, baseType: !2761, size: 256, offset: 7296)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 256, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1194, file: !14, line: 1253, baseType: !2765, size: 128, offset: 7552)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2766, line: 21, baseType: !2767)
!2766 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2766, line: 19, size: 128, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2767, file: !2766, line: 20, baseType: !2770, size: 128)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 128, elements: !2771)
!2771 = !{!2772}
!2772 = !DISubrange(count: 16)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1194, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1194, file: !14, line: 1261, baseType: !584, size: 256, offset: 7744)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1194, file: !14, line: 1267, baseType: !836, size: 64, offset: 8000)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1194, file: !14, line: 1269, baseType: !2777, size: 64, offset: 8064)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !954, line: 128, size: 1024, align: 512, elements: !2780)
!2780 = !{!2781, !2785, !2786, !2793, !2799, !2803, !2807, !2811, !2812, !2816, !2820, !2825, !2829}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2779, file: !954, line: 129, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!166, !952, !7}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2779, file: !954, line: 130, baseType: !2782, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2779, file: !954, line: 131, baseType: !2787, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!166, !2790, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2779, file: !954, line: 132, baseType: !2794, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!166, !2790, !7, !836, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2779, file: !954, line: 134, baseType: !2800, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!166, !2790}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2779, file: !954, line: 135, baseType: !2804, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!166, !952}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2779, file: !954, line: 136, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !952}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2779, file: !954, line: 137, baseType: !2808, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2779, file: !954, line: 138, baseType: !2813, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !952, !987}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2779, file: !954, line: 139, baseType: !2817, size: 64, offset: 576)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!846, !952, !846, !166}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2779, file: !954, line: 140, baseType: !2821, size: 64, offset: 640)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!947, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2779, file: !954, line: 141, baseType: !2826, size: 64, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!166, !1110, !833}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2779, file: !954, line: 142, baseType: !2830, size: 64, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!952, !952, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1194, file: !14, line: 1271, baseType: !2836, size: 448, offset: 8128)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2515, line: 63, size: 448, elements: !2837)
!2837 = !{!2838, !2843, !2844, !2845, !2846, !2847, !2848}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2836, file: !2515, line: 64, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!104, !2842, !2513}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2836, file: !2515, line: 66, baseType: !2839, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2836, file: !2515, line: 69, baseType: !1102, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2836, file: !2515, line: 70, baseType: !166, size: 32, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2836, file: !2515, line: 71, baseType: !7, size: 32, offset: 224)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2515, line: 74, baseType: !244, size: 128, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2836, file: !2515, line: 85, baseType: !2849, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1194, file: !14, line: 1274, baseType: !577, size: 64, offset: 8576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1194, file: !14, line: 1280, baseType: !577, size: 64, offset: 8640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1194, file: !14, line: 1283, baseType: !166, size: 32, offset: 8704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1194, file: !14, line: 1286, baseType: !1841, size: 32, offset: 8736)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1194, file: !14, line: 1289, baseType: !2337, size: 64, offset: 8768)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1194, file: !14, line: 1290, baseType: !634, size: 64, offset: 8832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1194, file: !14, line: 1297, baseType: !691, size: 64, offset: 8896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1194, file: !14, line: 1304, baseType: !2858, size: 64, offset: 8960)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2859, line: 49, size: 64, elements: !2860)
!2859 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2858, file: !2859, line: 50, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2859, line: 41, size: 512, align: 512, elements: !2864)
!2864 = !{!2865, !2866, !2871}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2863, file: !2859, line: 43, baseType: !538, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2863, file: !2859, line: 45, baseType: !2867, size: 192, offset: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2859, line: 29, size: 192, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2867, file: !2859, line: 30, baseType: !244, size: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2867, file: !2859, line: 32, baseType: !1102, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2863, file: !2859, line: 46, baseType: !1102, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1194, file: !14, line: 1305, baseType: !2858, size: 64, offset: 9024)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1194, file: !14, line: 1306, baseType: !564, size: 128, align: 64, offset: 9088)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1194, file: !14, line: 1307, baseType: !2276, size: 256, offset: 9216)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1194, file: !14, line: 1309, baseType: !584, size: 256, offset: 9472)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1194, file: !14, line: 1314, baseType: !166, size: 32, offset: 9728)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1194, file: !14, line: 1317, baseType: !538, size: 32, align: 512, offset: 10240)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1194, file: !14, line: 1318, baseType: !244, size: 128, offset: 10304)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1194, file: !14, line: 1320, baseType: !538, size: 32, offset: 10432)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1194, file: !14, line: 1321, baseType: !244, size: 128, offset: 10496)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !988, file: !14, line: 656, baseType: !1344, size: 64, offset: 512)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !988, file: !14, line: 659, baseType: !103, size: 64, offset: 576)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !988, file: !14, line: 663, baseType: !104, size: 64, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !14, line: 671, baseType: !2885, size: 32, offset: 704)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !14, line: 671, size: 32, elements: !2886)
!2886 = !{!2887, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2885, file: !14, line: 672, baseType: !2888, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2885, file: !14, line: 673, baseType: !7, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !988, file: !14, line: 675, baseType: !1062, size: 32, offset: 736)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !988, file: !14, line: 676, baseType: !596, size: 64, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !988, file: !14, line: 677, baseType: !1098, size: 128, offset: 832)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !988, file: !14, line: 678, baseType: !1098, size: 128, offset: 960)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !988, file: !14, line: 679, baseType: !1098, size: 128, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !988, file: !14, line: 680, baseType: !538, size: 32, offset: 1216)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !988, file: !14, line: 681, baseType: !135, size: 16, offset: 1248)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !988, file: !14, line: 682, baseType: !354, size: 8, offset: 1264)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !988, file: !14, line: 683, baseType: !354, size: 8, offset: 1272)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !988, file: !14, line: 684, baseType: !2646, size: 64, offset: 1280)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !988, file: !14, line: 691, baseType: !104, size: 64, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !988, file: !14, line: 692, baseType: !773, size: 320, offset: 1408)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !988, file: !14, line: 694, baseType: !104, size: 64, offset: 1728)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !988, file: !14, line: 695, baseType: !104, size: 64, offset: 1792)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !988, file: !14, line: 697, baseType: !638, size: 128, offset: 1856)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !988, file: !14, line: 698, baseType: !244, size: 128, offset: 1984)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !988, file: !14, line: 707, baseType: !244, size: 128, offset: 2112)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !988, file: !14, line: 708, baseType: !244, size: 128, offset: 2240)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !14, line: 709, baseType: !2909, size: 128, offset: 2368)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !14, line: 709, size: 128, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2909, file: !14, line: 710, baseType: !634, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2909, file: !14, line: 711, baseType: !564, size: 128, align: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !988, file: !14, line: 713, baseType: !579, size: 64, offset: 2496)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !988, file: !14, line: 714, baseType: !579, size: 64, offset: 2560)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !988, file: !14, line: 715, baseType: !190, size: 32, offset: 2624)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !988, file: !14, line: 716, baseType: !190, size: 32, offset: 2656)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !988, file: !14, line: 717, baseType: !190, size: 32, offset: 2688)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !988, file: !14, line: 719, baseType: !190, size: 32, offset: 2720)
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !14, line: 721, baseType: !2920, size: 64, offset: 2752)
!2920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !14, line: 721, size: 64, elements: !2921)
!2921 = !{!2922, !3048}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2920, file: !14, line: 722, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2926)
!2926 = !{!2927, !2928, !2932, !2936, !2940, !2941, !2942, !2948, !2961, !2965, !2969, !2970, !2974, !2975, !2979, !2984, !2985, !2989, !2993, !2999, !3000, !3004, !3005, !3011, !3015, !3016, !3021, !3025, !3029, !3033, !3037, !3038, !3044}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2925, file: !14, line: 1915, baseType: !1227, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2925, file: !14, line: 1916, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!596, !556, !596, !166}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2925, file: !14, line: 1917, baseType: !2933, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!1141, !556, !846, !1144, !1968}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2925, file: !14, line: 1918, baseType: !2937, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!1141, !556, !836, !1144, !1968}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2925, file: !14, line: 1919, baseType: !1775, size: 64, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2925, file: !14, line: 1920, baseType: !1775, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2925, file: !14, line: 1921, baseType: !2943, size: 64, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!166, !1778, !2946, !7}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2925, file: !14, line: 1923, baseType: !2949, size: 64, offset: 448)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!166, !556, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2954)
!2954 = !{!2955, !2960}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2953, file: !14, line: 1859, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!833, !2952, !836, !166, !596, !137, !7}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2953, file: !14, line: 1860, baseType: !596, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2925, file: !14, line: 1924, baseType: !2962, size: 64, offset: 512)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!1988, !556, !1990}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2925, file: !14, line: 1925, baseType: !2966, size: 64, offset: 576)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!1102, !556, !7, !104}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2925, file: !14, line: 1926, baseType: !2966, size: 64, offset: 640)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2925, file: !14, line: 1927, baseType: !2971, size: 64, offset: 704)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!166, !556, !1484}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2925, file: !14, line: 1928, baseType: !104, size: 64, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2925, file: !14, line: 1929, baseType: !2976, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!166, !987, !556}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2925, file: !14, line: 1930, baseType: !2980, size: 64, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!166, !556, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !103)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2925, file: !14, line: 1931, baseType: !2976, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2925, file: !14, line: 1932, baseType: !2986, size: 64, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!166, !556, !596, !596, !166}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2925, file: !14, line: 1933, baseType: !2990, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!166, !166, !556, !166}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2925, file: !14, line: 1934, baseType: !2994, size: 64, offset: 1152)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!166, !556, !166, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2925, file: !14, line: 1935, baseType: !553, size: 64, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2925, file: !14, line: 1936, baseType: !3001, size: 64, offset: 1280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!166, !166}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2925, file: !14, line: 1937, baseType: !2994, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2925, file: !14, line: 1938, baseType: !3006, size: 64, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!1141, !3009, !556, !1968, !1144, !7}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !172, line: 59, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2925, file: !14, line: 1939, baseType: !3012, size: 64, offset: 1472)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!1141, !556, !1968, !3009, !1144, !7}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2925, file: !14, line: 1940, baseType: !1831, size: 64, offset: 1536)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2925, file: !14, line: 1941, baseType: !3017, size: 64, offset: 1600)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!166, !556, !166, !3020, !1752}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2925, file: !14, line: 1942, baseType: !3022, size: 64, offset: 1664)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!1102, !556, !166, !596, !596}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2925, file: !14, line: 1944, baseType: !3026, size: 64, offset: 1728)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !1944, !556}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2925, file: !14, line: 1948, baseType: !3030, size: 64, offset: 1792)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!1141, !556, !596, !556, !596, !1144, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2925, file: !14, line: 1950, baseType: !3034, size: 64, offset: 1856)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!596, !556, !596, !556, !596, !596, !7}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2925, file: !14, line: 1953, baseType: !2986, size: 64, offset: 1920)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2925, file: !14, line: 1954, baseType: !3039, size: 64, offset: 1984)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!166, !3042, !7}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2925, file: !14, line: 1955, baseType: !3045, size: 64, offset: 2048)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!166, !3042, !2946, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2920, file: !14, line: 723, baseType: !2404, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !988, file: !14, line: 725, baseType: !3050, size: 64, offset: 2816)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !988, file: !14, line: 726, baseType: !1345, size: 1536, align: 64, offset: 2880)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !988, file: !14, line: 727, baseType: !244, size: 128, offset: 4416)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !14, line: 728, baseType: !3055, size: 64, offset: 4544)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !14, line: 728, size: 64, elements: !3056)
!3056 = !{!3057, !3058, !3061, !3062}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3055, file: !14, line: 729, baseType: !3009, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3055, file: !14, line: 730, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3055, file: !14, line: 731, baseType: !846, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3055, file: !14, line: 732, baseType: !7, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !988, file: !14, line: 735, baseType: !168, size: 32, offset: 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !988, file: !14, line: 738, baseType: !168, size: 32, offset: 4640)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !988, file: !14, line: 739, baseType: !2758, size: 64, offset: 4672)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !988, file: !14, line: 750, baseType: !103, size: 64, offset: 4736)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !953, file: !954, line: 91, baseType: !3068, size: 256, offset: 448)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !2762)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !953, file: !954, line: 94, baseType: !3070, size: 64, offset: 704)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3071, line: 25, size: 64, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3072 = !{!3073}
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3071, line: 26, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !3071, line: 26, size: 64, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3074, file: !3071, line: 28, baseType: !138, size: 64, align: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !3071, line: 30, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3071, line: 30, size: 64, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3078, file: !3071, line: 31, baseType: !538, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3078, file: !3071, line: 32, baseType: !166, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !953, file: !954, line: 95, baseType: !2777, size: 64, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !953, file: !954, line: 96, baseType: !1193, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !953, file: !954, line: 97, baseType: !104, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !953, file: !954, line: 98, baseType: !103, size: 64, offset: 960)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !954, line: 100, baseType: !3087, size: 128, offset: 1024)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !954, line: 100, size: 128, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3087, file: !954, line: 101, baseType: !244, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3087, file: !954, line: 102, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !953, file: !954, line: 104, baseType: !244, size: 128, offset: 1152)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !953, file: !954, line: 105, baseType: !244, size: 128, offset: 1280)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !953, file: !954, line: 113, baseType: !3095, size: 128, offset: 1408)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !954, line: 109, size: 128, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3095, file: !954, line: 110, baseType: !638, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3095, file: !954, line: 111, baseType: !963, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3095, file: !954, line: 112, baseType: !564, size: 128, align: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !948, file: !949, line: 72, baseType: !1193, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !948, file: !949, line: 73, baseType: !166, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !948, file: !949, line: 74, baseType: !1027, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !943, file: !944, line: 10, baseType: !952, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !557, file: !14, line: 1015, baseType: !987, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !557, file: !14, line: 1016, baseType: !2923, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !557, file: !14, line: 1018, baseType: !137, size: 64, offset: 1472)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !557, file: !14, line: 1020, baseType: !103, size: 64, offset: 1536)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !557, file: !14, line: 1023, baseType: !103, size: 64, offset: 1600)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !557, file: !14, line: 1027, baseType: !3110, size: 64, offset: 1664)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !557, file: !14, line: 1029, baseType: !1344, size: 64, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !557, file: !14, line: 1030, baseType: !1841, size: 32, offset: 1792)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !557, file: !14, line: 1031, baseType: !1841, size: 32, offset: 1824)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !524, file: !38, line: 756, baseType: !104, size: 64, offset: 704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !524, file: !38, line: 757, baseType: !104, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !524, file: !38, line: 760, baseType: !104, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !524, file: !38, line: 761, baseType: !104, size: 64, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !524, file: !38, line: 763, baseType: !104, size: 64, offset: 960)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !524, file: !38, line: 764, baseType: !3120, size: 64, offset: 1024)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1499, line: 299, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1499, line: 299, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3122, file: !1499, line: 299, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1504, line: 18, baseType: !104)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !524, file: !38, line: 773, baseType: !190, size: 32, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !524, file: !38, line: 785, baseType: !190, size: 32, offset: 1120)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !524, file: !38, line: 795, baseType: !3129, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3130, file: !38, line: 727, baseType: !137, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3130, file: !38, line: 728, baseType: !166, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !524, file: !38, line: 801, baseType: !104, size: 64, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !524, file: !38, line: 804, baseType: !577, size: 64, offset: 1280)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !524, file: !38, line: 806, baseType: !166, size: 32, offset: 1344)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !524, file: !38, line: 808, baseType: !538, size: 32, offset: 1376)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !524, file: !38, line: 823, baseType: !773, size: 320, offset: 1408)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !524, file: !38, line: 825, baseType: !244, size: 128, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !524, file: !38, line: 845, baseType: !166, size: 32, offset: 1856)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !524, file: !38, line: 849, baseType: !104, size: 64, offset: 1920)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !524, file: !38, line: 850, baseType: !104, size: 64, offset: 1984)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !524, file: !38, line: 852, baseType: !104, size: 64, offset: 2048)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !524, file: !38, line: 853, baseType: !104, size: 64, offset: 2112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !524, file: !38, line: 854, baseType: !579, size: 64, offset: 2176)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !524, file: !38, line: 855, baseType: !104, size: 64, offset: 2240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !524, file: !38, line: 856, baseType: !104, size: 64, offset: 2304)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !524, file: !38, line: 857, baseType: !104, size: 64, offset: 2368)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !524, file: !38, line: 858, baseType: !104, size: 64, offset: 2432)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !524, file: !38, line: 865, baseType: !394, size: 32, offset: 2496)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !524, file: !38, line: 867, baseType: !538, size: 32, offset: 2528)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !524, file: !38, line: 869, baseType: !104, size: 64, offset: 2560)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !524, file: !38, line: 869, baseType: !104, size: 64, offset: 2624)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !524, file: !38, line: 869, baseType: !104, size: 64, offset: 2688)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !524, file: !38, line: 869, baseType: !104, size: 64, offset: 2752)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !524, file: !38, line: 870, baseType: !104, size: 64, offset: 2816)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !524, file: !38, line: 870, baseType: !104, size: 64, offset: 2880)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !524, file: !38, line: 870, baseType: !104, size: 64, offset: 2944)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !524, file: !38, line: 871, baseType: !104, size: 64, offset: 3008)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !524, file: !38, line: 871, baseType: !104, size: 64, offset: 3072)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !524, file: !38, line: 871, baseType: !104, size: 64, offset: 3136)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !524, file: !38, line: 871, baseType: !104, size: 64, offset: 3200)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !524, file: !38, line: 873, baseType: !3164, size: 3328, offset: 3264)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3328, elements: !3165)
!3165 = !{!3166}
!3166 = !DISubrange(count: 52)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !524, file: !38, line: 875, baseType: !3168, size: 1280, offset: 6592)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 1280, elements: !643)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !524, file: !38, line: 877, baseType: !3170, size: 64, offset: 7872)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !524, file: !38, line: 880, baseType: !3173, size: 1088, offset: 7936)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3174, line: 72, baseType: !3175)
!3174 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3174, line: 23, size: 1088, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3184, !3185, !3186, !3187, !3212, !3213, !3214}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3175, file: !3174, line: 28, baseType: !137, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3175, file: !3174, line: 38, baseType: !579, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3175, file: !3174, line: 40, baseType: !104, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3175, file: !3174, line: 43, baseType: !773, size: 320, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3175, file: !3174, line: 44, baseType: !3182, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3174, line: 44, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3175, file: !3174, line: 48, baseType: !104, size: 64, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3175, file: !3174, line: 59, baseType: !584, size: 256, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3175, file: !3174, line: 60, baseType: !103, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3175, file: !3174, line: 61, baseType: !3188, size: 64, offset: 960)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3191, line: 13, size: 1216, elements: !3192)
!3191 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3190, file: !3191, line: 14, baseType: !103, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3190, file: !3191, line: 15, baseType: !104, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3190, file: !3191, line: 17, baseType: !104, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3190, file: !3191, line: 17, baseType: !104, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3190, file: !3191, line: 18, baseType: !104, size: 64, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3190, file: !3191, line: 18, baseType: !104, size: 64, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3190, file: !3191, line: 19, baseType: !1880, size: 64, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3190, file: !3191, line: 21, baseType: !1102, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3190, file: !3191, line: 23, baseType: !1102, size: 64, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3190, file: !3191, line: 24, baseType: !1102, size: 64, offset: 576)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3190, file: !3191, line: 25, baseType: !1102, size: 64, offset: 640)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3190, file: !3191, line: 26, baseType: !1102, size: 64, offset: 704)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3190, file: !3191, line: 27, baseType: !1102, size: 64, offset: 768)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3190, file: !3191, line: 28, baseType: !1102, size: 64, offset: 832)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3190, file: !3191, line: 29, baseType: !1102, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3190, file: !3191, line: 30, baseType: !1102, size: 64, offset: 960)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3190, file: !3191, line: 31, baseType: !1102, size: 64, offset: 1024)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3190, file: !3191, line: 32, baseType: !1102, size: 64, offset: 1088)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3190, file: !3191, line: 33, baseType: !1102, size: 64, offset: 1152)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3175, file: !3174, line: 63, baseType: !190, size: 32, offset: 1024)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3175, file: !3174, line: 69, baseType: !131, size: 16, offset: 1056)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3175, file: !3174, line: 70, baseType: !2169, size: 16, offset: 1072)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !38, line: 882, baseType: !104, size: 64, offset: 9024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !524, file: !38, line: 885, baseType: !538, size: 32, offset: 9088)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !524, file: !38, line: 886, baseType: !3218, size: 64, offset: 9152)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !524, file: !38, line: 901, baseType: !691, size: 64, offset: 9216)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !524, file: !38, line: 904, baseType: !556, size: 64, offset: 9280)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !524, file: !38, line: 906, baseType: !3223, size: 64, offset: 9344)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !524, file: !38, line: 930, baseType: !190, size: 32, offset: 9408)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !524, file: !38, line: 933, baseType: !190, size: 32, offset: 9440)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !524, file: !38, line: 935, baseType: !3228, size: 64, offset: 9472)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !3229)
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3228, file: !68, line: 104, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !524, file: !38, line: 940, baseType: !577, size: 64, offset: 9536)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !524, file: !38, line: 942, baseType: !2276, size: 256, offset: 9600)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !521, file: !38, line: 986, baseType: !3236, offset: 10240)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !711)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !171, file: !172, line: 882, baseType: !520, size: 64, offset: 9792)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !171, file: !172, line: 884, baseType: !166, size: 32, offset: 9856)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !171, file: !172, line: 885, baseType: !166, size: 32, offset: 9888)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !171, file: !172, line: 886, baseType: !166, size: 32, offset: 9920)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !171, file: !172, line: 888, baseType: !166, size: 32, offset: 9952)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !171, file: !172, line: 890, baseType: !104, size: 64, offset: 9984)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !171, file: !172, line: 893, baseType: !7, size: 32, offset: 10048)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !171, file: !172, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !171, file: !172, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !171, file: !172, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !171, file: !172, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !171, file: !172, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !171, file: !172, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !171, file: !172, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !171, file: !172, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !171, file: !172, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !171, file: !172, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !171, file: !172, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !171, file: !172, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !171, file: !172, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !171, file: !172, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !171, file: !172, line: 969, baseType: !104, size: 64, offset: 10176)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !171, file: !172, line: 971, baseType: !3260, size: 448, offset: 10240)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3261)
!3261 = !{!3262, !3263, !3268}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3260, file: !62, line: 26, baseType: !104, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3260, file: !62, line: 27, baseType: !3264, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!1102, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !62, line: 28, baseType: !3269, size: 320, offset: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3260, file: !62, line: 28, size: 320, elements: !3270)
!3270 = !{!3271, !3281, !3306}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3269, file: !62, line: 37, baseType: !3272, size: 320)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3269, file: !62, line: 30, size: 320, elements: !3273)
!3273 = !{!3274, !3276, !3277, !3278, !3279, !3280}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3272, file: !62, line: 31, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3272, file: !62, line: 32, baseType: !167, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !62, line: 33, baseType: !167, size: 32, offset: 96)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3272, file: !62, line: 34, baseType: !167, size: 32, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3272, file: !62, line: 35, baseType: !137, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3272, file: !62, line: 36, baseType: !3275, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3269, file: !62, line: 47, baseType: !3282, size: 192)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3269, file: !62, line: 39, size: 192, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3305}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3282, file: !62, line: 40, baseType: !385, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3282, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !62, line: 42, baseType: !3287, size: 64, offset: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !62, line: 42, size: 64, elements: !3288)
!3288 = !{!3289, !3297}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3287, file: !62, line: 43, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3292, line: 7, size: 128, elements: !3293)
!3292 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3293 = !{!3294, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3291, file: !3292, line: 8, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !387, line: 93, baseType: !257)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3291, file: !3292, line: 9, baseType: !257, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3287, file: !62, line: 44, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3300, line: 7, size: 64, elements: !3301)
!3300 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3301 = !{!3302, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3299, file: !3300, line: 8, baseType: !3303, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3300, line: 5, baseType: !765)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3299, file: !3300, line: 9, baseType: !765, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3282, file: !62, line: 46, baseType: !137, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3269, file: !62, line: 55, baseType: !3307, size: 256)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3269, file: !62, line: 49, size: 256, elements: !3308)
!3308 = !{!3309, !3312, !3313, !3314, !3315}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3307, file: !62, line: 50, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3307, file: !62, line: 51, baseType: !166, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3307, file: !62, line: 52, baseType: !166, size: 32, offset: 96)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3307, file: !62, line: 53, baseType: !104, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3307, file: !62, line: 54, baseType: !104, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !171, file: !172, line: 973, baseType: !3317, size: 32, offset: 10688)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 27, baseType: !3318)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !387, line: 28, baseType: !166)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !171, file: !172, line: 974, baseType: !3317, size: 32, offset: 10720)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !171, file: !172, line: 978, baseType: !104, size: 64, offset: 10752)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !171, file: !172, line: 987, baseType: !170, size: 64, offset: 10816)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !172, line: 990, baseType: !170, size: 64, offset: 10880)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !171, file: !172, line: 995, baseType: !244, size: 128, offset: 10944)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !171, file: !172, line: 996, baseType: !244, size: 128, offset: 11072)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !171, file: !172, line: 997, baseType: !170, size: 64, offset: 11200)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !171, file: !172, line: 1005, baseType: !244, size: 128, offset: 11264)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !171, file: !172, line: 1006, baseType: !244, size: 128, offset: 11392)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !171, file: !172, line: 1009, baseType: !626, size: 64, offset: 11520)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !171, file: !172, line: 1010, baseType: !3330, size: 512, offset: 11584)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 512, elements: !643)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !171, file: !172, line: 1011, baseType: !244, size: 128, offset: 12096)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !171, file: !172, line: 1012, baseType: !244, size: 128, offset: 12224)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !171, file: !172, line: 1014, baseType: !2025, size: 64, offset: 12352)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !171, file: !172, line: 1017, baseType: !2162, size: 64, offset: 12416)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !171, file: !172, line: 1020, baseType: !2162, size: 64, offset: 12480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !171, file: !172, line: 1023, baseType: !103, size: 64, offset: 12544)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !171, file: !172, line: 1025, baseType: !137, size: 64, offset: 12608)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !171, file: !172, line: 1026, baseType: !137, size: 64, offset: 12672)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !171, file: !172, line: 1031, baseType: !137, size: 64, offset: 12736)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !171, file: !172, line: 1032, baseType: !3341, size: 192, offset: 12800)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !172, line: 324, size: 192, elements: !3342)
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3341, file: !172, line: 326, baseType: !137, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3341, file: !172, line: 327, baseType: !137, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3341, file: !172, line: 328, baseType: !337, size: 32, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !171, file: !172, line: 1041, baseType: !104, size: 64, offset: 12992)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !171, file: !172, line: 1042, baseType: !104, size: 64, offset: 13056)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !171, file: !172, line: 1045, baseType: !137, size: 64, offset: 13120)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !171, file: !172, line: 1048, baseType: !137, size: 64, offset: 13184)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !171, file: !172, line: 1051, baseType: !104, size: 64, offset: 13248)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !171, file: !172, line: 1052, baseType: !104, size: 64, offset: 13312)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !171, file: !172, line: 1055, baseType: !3353, size: 640, offset: 13376)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3354, line: 132, size: 640, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3355 = !{!3356, !3362, !3363}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3353, file: !3354, line: 133, baseType: !3357, size: 576)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3358, size: 576, elements: !622)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3354, line: 117, size: 192, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3358, file: !3354, line: 118, baseType: !137, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3358, file: !3354, line: 119, baseType: !400, size: 128, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3353, file: !3354, line: 134, baseType: !7, size: 32, offset: 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3353, file: !3354, line: 135, baseType: !7, size: 32, offset: 608)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !171, file: !172, line: 1058, baseType: !3365, size: 448, offset: 14016)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3354, line: 144, size: 448, elements: !3366)
!3366 = !{!3367, !3368, !3369}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3365, file: !3354, line: 145, baseType: !564, size: 128, align: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3365, file: !3354, line: 146, baseType: !584, size: 256, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3365, file: !3354, line: 147, baseType: !7, size: 32, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !171, file: !172, line: 1064, baseType: !724, size: 64, offset: 14464)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !171, file: !172, line: 1067, baseType: !724, size: 64, offset: 14528)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !171, file: !172, line: 1070, baseType: !724, size: 64, offset: 14592)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !171, file: !172, line: 1074, baseType: !757, size: 64, offset: 14656)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !171, file: !172, line: 1084, baseType: !3375, size: 128, offset: 14720)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 128, elements: !2771)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !171, file: !172, line: 1086, baseType: !3377, size: 64, offset: 14848)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !172, line: 55, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !171, file: !172, line: 1089, baseType: !3380, size: 64, offset: 14912)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3381, line: 12, size: 64, elements: !3382)
!3381 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3382 = !{!3383}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3380, file: !3381, line: 13, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3381, line: 8, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !171, file: !172, line: 1090, baseType: !3387, size: 128, offset: 14976)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3388, line: 13, size: 128, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3389 = !{!3390}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3387, file: !3388, line: 14, baseType: !244, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !171, file: !172, line: 1097, baseType: !3392, size: 64, offset: 15104)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !172, line: 50, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !171, file: !172, line: 1100, baseType: !3395, size: 64, offset: 15168)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !172, line: 1100, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !171, file: !172, line: 1103, baseType: !3398, size: 64, offset: 15232)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !172, line: 53, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !171, file: !172, line: 1107, baseType: !3401, size: 64, offset: 15296)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3403, line: 31, size: 576, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3404 = !{!3405, !3406, !3409, !3412, !3415, !3416, !3419, !3422, !3423}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3402, file: !3403, line: 32, baseType: !185, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3402, file: !3403, line: 33, baseType: !3407, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3403, line: 9, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3402, file: !3403, line: 34, baseType: !3410, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3403, line: 10, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3402, file: !3403, line: 35, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3403, line: 8, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3402, file: !3403, line: 36, baseType: !660, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3402, file: !3403, line: 37, baseType: !3417, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !759, line: 34, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3402, file: !3403, line: 38, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3403, line: 38, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3402, file: !3403, line: 39, baseType: !3420, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3402, file: !3403, line: 40, baseType: !3424, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3403, line: 12, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !171, file: !172, line: 1110, baseType: !3427, size: 64, offset: 15360)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3429, line: 93, size: 8768, elements: !3430)
!3429 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3478, !3487, !3488, !3490, !3491, !3492, !3495, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3533, !3534, !3541, !3551, !3554, !3555, !3558, !3559, !3560, !3561, !3562, !3563}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3428, file: !3429, line: 94, baseType: !185, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3428, file: !3429, line: 95, baseType: !190, size: 32, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3428, file: !3429, line: 96, baseType: !166, size: 32, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3428, file: !3429, line: 97, baseType: !166, size: 32, offset: 96)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3428, file: !3429, line: 98, baseType: !244, size: 128, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3428, file: !3429, line: 100, baseType: !647, size: 192, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3428, file: !3429, line: 103, baseType: !170, size: 64, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3428, file: !3429, line: 106, baseType: !3439, size: 192, offset: 512)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !697, line: 32, size: 192, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3439, file: !697, line: 33, baseType: !244, size: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3439, file: !697, line: 34, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3444, line: 25, baseType: !3445)
!3444 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3444, line: 23, size: 64, elements: !3446)
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3445, file: !3444, line: 24, baseType: !471, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3428, file: !3429, line: 109, baseType: !634, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3428, file: !3429, line: 112, baseType: !166, size: 32, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3428, file: !3429, line: 114, baseType: !166, size: 32, offset: 800)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3428, file: !3429, line: 115, baseType: !170, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3428, file: !3429, line: 118, baseType: !166, size: 32, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3428, file: !3429, line: 119, baseType: !7, size: 32, offset: 928)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3428, file: !3429, line: 121, baseType: !3455, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3429, line: 80, size: 448, elements: !3457)
!3457 = !{!3458, !3459, !3465}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3456, file: !3429, line: 81, baseType: !190, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3456, file: !3429, line: 82, baseType: !3460, size: 128, offset: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3429, line: 75, size: 128, elements: !3461)
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3460, file: !3429, line: 76, baseType: !170, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3460, file: !3429, line: 77, baseType: !3464, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3456, file: !3429, line: 83, baseType: !1449, size: 256, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3428, file: !3429, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3428, file: !3429, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3428, file: !3429, line: 138, baseType: !7, size: 32, offset: 1056)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3428, file: !3429, line: 139, baseType: !244, size: 128, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3428, file: !3429, line: 142, baseType: !312, size: 512, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3428, file: !3429, line: 143, baseType: !320, size: 64, offset: 1728)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3428, file: !3429, line: 150, baseType: !3473, size: 256, offset: 1792)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3474, size: 256, elements: !2152)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3429, line: 38, size: 128, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3474, file: !3429, line: 39, baseType: !137, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3474, file: !3429, line: 40, baseType: !137, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3428, file: !3429, line: 156, baseType: !3479, size: 192, offset: 2048)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3429, line: 66, size: 192, elements: !3480)
!3480 = !{!3481}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3479, file: !3429, line: 67, baseType: !3482, size: 192)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3429, line: 47, size: 192, elements: !3483)
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3482, file: !3429, line: 48, baseType: !579, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3482, file: !3429, line: 49, baseType: !579, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3482, file: !3429, line: 50, baseType: !579, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3428, file: !3429, line: 160, baseType: !3353, size: 640, offset: 2240)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3428, file: !3429, line: 163, baseType: !3489, size: 256, offset: 2880)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 256, elements: !643)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3428, file: !3429, line: 169, baseType: !626, size: 64, offset: 3136)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3428, file: !3429, line: 172, baseType: !166, size: 32, offset: 3200)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3428, file: !3429, line: 174, baseType: !3493, size: 64, offset: 3264)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3429, line: 174, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3428, file: !3429, line: 185, baseType: !3496, size: 64, offset: 3328)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !390, line: 860, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 853, size: 64, elements: !3498)
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3497, file: !390, line: 858, baseType: !958, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3497, file: !390, line: 859, baseType: !538, size: 32, offset: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3428, file: !3429, line: 186, baseType: !137, size: 64, offset: 3392)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3428, file: !3429, line: 186, baseType: !137, size: 64, offset: 3456)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3428, file: !3429, line: 186, baseType: !137, size: 64, offset: 3520)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3428, file: !3429, line: 186, baseType: !137, size: 64, offset: 3584)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3428, file: !3429, line: 187, baseType: !137, size: 64, offset: 3648)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3428, file: !3429, line: 188, baseType: !137, size: 64, offset: 3712)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3428, file: !3429, line: 189, baseType: !3341, size: 192, offset: 3776)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3428, file: !3429, line: 190, baseType: !104, size: 64, offset: 3968)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3428, file: !3429, line: 190, baseType: !104, size: 64, offset: 4032)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3428, file: !3429, line: 190, baseType: !104, size: 64, offset: 4096)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3428, file: !3429, line: 190, baseType: !104, size: 64, offset: 4160)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3428, file: !3429, line: 191, baseType: !104, size: 64, offset: 4224)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3428, file: !3429, line: 191, baseType: !104, size: 64, offset: 4288)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3428, file: !3429, line: 191, baseType: !104, size: 64, offset: 4352)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3428, file: !3429, line: 191, baseType: !104, size: 64, offset: 4416)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3428, file: !3429, line: 192, baseType: !104, size: 64, offset: 4480)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3428, file: !3429, line: 192, baseType: !104, size: 64, offset: 4544)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3428, file: !3429, line: 192, baseType: !104, size: 64, offset: 4608)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3428, file: !3429, line: 192, baseType: !104, size: 64, offset: 4672)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3428, file: !3429, line: 193, baseType: !104, size: 64, offset: 4736)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3428, file: !3429, line: 193, baseType: !104, size: 64, offset: 4800)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3428, file: !3429, line: 194, baseType: !3523, size: 448, offset: 4864)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3524, line: 12, size: 448, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3523, file: !3524, line: 15, baseType: !137, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3523, file: !3524, line: 17, baseType: !137, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3523, file: !3524, line: 19, baseType: !137, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3523, file: !3524, line: 21, baseType: !137, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3523, file: !3524, line: 29, baseType: !137, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3523, file: !3524, line: 35, baseType: !137, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3523, file: !3524, line: 44, baseType: !137, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3428, file: !3429, line: 202, baseType: !139, size: 64, offset: 5312)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3428, file: !3429, line: 213, baseType: !3535, size: 2048, offset: 5376)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3536, size: 2048, elements: !2771)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3537, line: 43, size: 128, elements: !3538)
!3537 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3538 = !{!3539, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3536, file: !3537, line: 44, baseType: !1146, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3536, file: !3537, line: 45, baseType: !1146, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3428, file: !3429, line: 216, baseType: !3542, size: 448, offset: 7424)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3429, line: 30, size: 448, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3542, file: !3429, line: 31, baseType: !166, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3542, file: !3429, line: 32, baseType: !1102, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3542, file: !3429, line: 33, baseType: !104, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3542, file: !3429, line: 34, baseType: !137, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3542, file: !3429, line: 34, baseType: !137, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3542, file: !3429, line: 35, baseType: !104, size: 64, offset: 320)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3542, file: !3429, line: 35, baseType: !104, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3428, file: !3429, line: 219, baseType: !3552, size: 64, offset: 7872)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3429, line: 219, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3428, file: !3429, line: 222, baseType: !7, size: 32, offset: 7936)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3428, file: !3429, line: 223, baseType: !3556, size: 64, offset: 8000)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3429, line: 223, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3428, file: !3429, line: 230, baseType: !833, size: 8, offset: 8064)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3428, file: !3429, line: 231, baseType: !801, size: 16, offset: 8080)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3428, file: !3429, line: 232, baseType: !801, size: 16, offset: 8096)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3428, file: !3429, line: 234, baseType: !520, size: 64, offset: 8128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3428, file: !3429, line: 237, baseType: !584, size: 256, offset: 8192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3428, file: !3429, line: 243, baseType: !773, size: 320, offset: 8448)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !171, file: !172, line: 1111, baseType: !3565, size: 64, offset: 15424)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3429, line: 20, size: 16640, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3566, file: !3429, line: 21, baseType: !538, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3566, file: !3429, line: 22, baseType: !185, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3566, file: !3429, line: 23, baseType: !647, size: 192, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3566, file: !3429, line: 24, baseType: !3572, size: 16384, offset: 256)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3573, size: 16384, elements: !1283)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !697, line: 51, size: 256, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3573, file: !697, line: 52, baseType: !3576, size: 256)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !697, line: 37, size: 256, elements: !3577)
!3577 = !{!3578, !3585, !3586, !3590}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3576, file: !697, line: 39, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3580, line: 83, baseType: !3581)
!3580 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3580, line: 82, baseType: !3583)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !166}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3576, file: !697, line: 40, baseType: !104, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3576, file: !697, line: 46, baseType: !3587, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3580, line: 86, baseType: !3588)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3580, line: 85, baseType: !2379)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3576, file: !697, line: 48, baseType: !3443, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !171, file: !172, line: 1112, baseType: !3443, size: 64, offset: 15488)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !171, file: !172, line: 1113, baseType: !3443, size: 64, offset: 15552)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !171, file: !172, line: 1115, baseType: !3443, size: 64, offset: 15616)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !171, file: !172, line: 1116, baseType: !3439, size: 192, offset: 15680)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !171, file: !172, line: 1117, baseType: !104, size: 64, offset: 15872)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !171, file: !172, line: 1118, baseType: !1144, size: 64, offset: 15936)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !171, file: !172, line: 1119, baseType: !7, size: 32, offset: 16000)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !171, file: !172, line: 1121, baseType: !567, size: 64, offset: 16064)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !171, file: !172, line: 1125, baseType: !3600, size: 64, offset: 16128)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !172, line: 43, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !171, file: !172, line: 1127, baseType: !715, size: 32, offset: 16192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !171, file: !172, line: 1128, baseType: !7, size: 32, offset: 16224)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !171, file: !172, line: 1130, baseType: !3605, size: 128, offset: 16256)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3606, line: 37, size: 128, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3605, file: !3606, line: 38, baseType: !166, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3605, file: !3606, line: 39, baseType: !190, size: 32, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3605, file: !3606, line: 40, baseType: !3611, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3606, line: 24, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !171, file: !172, line: 1131, baseType: !3614, size: 256, offset: 16384)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3615, line: 12, size: 256, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3614, file: !3615, line: 13, baseType: !846, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3614, file: !3615, line: 14, baseType: !104, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3614, file: !3615, line: 15, baseType: !104, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3614, file: !3615, line: 16, baseType: !833, size: 8, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !171, file: !172, line: 1134, baseType: !137, size: 64, offset: 16640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !171, file: !172, line: 1135, baseType: !137, size: 64, offset: 16704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !171, file: !172, line: 1138, baseType: !538, size: 32, offset: 16768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !171, file: !172, line: 1141, baseType: !337, size: 32, offset: 16800)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !171, file: !172, line: 1143, baseType: !3626, size: 64, offset: 16832)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !172, line: 735, size: 64, elements: !3627)
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3626, file: !172, line: 736, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !171, file: !172, line: 1147, baseType: !403, size: 128, offset: 16896)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !171, file: !172, line: 1149, baseType: !170, size: 64, offset: 17024)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !171, file: !172, line: 1151, baseType: !3633, size: 64, offset: 17088)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !172, line: 1151, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !171, file: !172, line: 1188, baseType: !103, size: 64, offset: 17152)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !171, file: !172, line: 1191, baseType: !3637, size: 64, offset: 17216)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !172, line: 44, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !171, file: !172, line: 1194, baseType: !3640, size: 64, offset: 17280)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !172, line: 45, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !171, file: !172, line: 1197, baseType: !3643, size: 64, offset: 17344)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !172, line: 61, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !171, file: !172, line: 1199, baseType: !3646, size: 64, offset: 17408)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3648, line: 99, size: 128, elements: !3649)
!3648 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3647, file: !3648, line: 100, baseType: !577, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3647, file: !3648, line: 101, baseType: !190, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3647, file: !3648, line: 103, baseType: !135, size: 16, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !171, file: !172, line: 1202, baseType: !3654, size: 64, offset: 17472)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !172, line: 48, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !171, file: !172, line: 1205, baseType: !104, size: 64, offset: 17536)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !171, file: !172, line: 1206, baseType: !3658, size: 64, offset: 17600)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !697, line: 14, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !697, line: 12, size: 384, elements: !3661)
!3661 = !{!3662}
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3660, file: !697, line: 13, baseType: !3663, size: 384)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3660, file: !697, line: 13, size: 384, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3663, file: !697, line: 13, baseType: !166, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3663, file: !697, line: 13, baseType: !166, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3663, file: !697, line: 13, baseType: !166, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3663, file: !697, line: 13, baseType: !3669, size: 256, offset: 128)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3670, line: 37, size: 256, elements: !3671)
!3670 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3671 = !{!3672, !3677, !3690, !3696, !3705, !3732, !3737}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3669, file: !3670, line: 42, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 39, size: 64, elements: !3674)
!3674 = !{!3675, !3676}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3673, file: !3670, line: 40, baseType: !3318, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3673, file: !3670, line: 41, baseType: !720, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3669, file: !3670, line: 50, baseType: !3678, size: 192)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 45, size: 192, elements: !3679)
!3679 = !{!3680, !3682, !3683, !3689}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3678, file: !3670, line: 46, baseType: !3681, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !387, line: 95, baseType: !166)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3678, file: !3670, line: 47, baseType: !166, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3678, file: !3670, line: 48, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3670, line: 11, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3670, line: 8, size: 64, elements: !3686)
!3686 = !{!3687, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3685, file: !3670, line: 9, baseType: !166, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3685, file: !3670, line: 10, baseType: !103, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3678, file: !3670, line: 49, baseType: !166, size: 32, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3669, file: !3670, line: 57, baseType: !3691, size: 128)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 53, size: 128, elements: !3692)
!3692 = !{!3693, !3694, !3695}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3691, file: !3670, line: 54, baseType: !3318, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3691, file: !3670, line: 55, baseType: !720, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3691, file: !3670, line: 56, baseType: !3684, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3669, file: !3670, line: 66, baseType: !3697, size: 256)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 60, size: 256, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3704}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3697, file: !3670, line: 61, baseType: !3318, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3697, file: !3670, line: 62, baseType: !720, size: 32, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3697, file: !3670, line: 63, baseType: !166, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3697, file: !3670, line: 64, baseType: !3703, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !387, line: 94, baseType: !1143)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3697, file: !3670, line: 65, baseType: !3703, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3669, file: !3670, line: 105, baseType: !3706, size: 256)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 69, size: 256, elements: !3707)
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3706, file: !3670, line: 70, baseType: !103, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3670, line: 79, baseType: !3710, size: 192, offset: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3670, line: 79, size: 192, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3721, !3726}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3710, file: !3670, line: 81, baseType: !166, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3710, file: !3670, line: 86, baseType: !801, size: 16)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3710, file: !3670, line: 92, baseType: !3715, size: 192)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3710, file: !3670, line: 88, size: 192, elements: !3716)
!3716 = !{!3717, !3719, !3720}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3715, file: !3670, line: 89, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 64, elements: !381)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3715, file: !3670, line: 90, baseType: !103, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3715, file: !3670, line: 91, baseType: !103, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3710, file: !3670, line: 97, baseType: !3722, size: 96)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3710, file: !3670, line: 94, size: 96, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3722, file: !3670, line: 95, baseType: !3718, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3722, file: !3670, line: 96, baseType: !168, size: 32, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3710, file: !3670, line: 103, baseType: !3727, size: 128)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3710, file: !3670, line: 99, size: 128, elements: !3728)
!3728 = !{!3729, !3730, !3731}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3727, file: !3670, line: 100, baseType: !104, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3727, file: !3670, line: 101, baseType: !168, size: 32, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !3670, line: 102, baseType: !168, size: 32, offset: 96)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3669, file: !3670, line: 111, baseType: !3733, size: 128)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 108, size: 128, elements: !3734)
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3733, file: !3670, line: 109, baseType: !1102, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3733, file: !3670, line: 110, baseType: !166, size: 32, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3669, file: !3670, line: 118, baseType: !3738, size: 128)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3670, line: 114, size: 128, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3738, file: !3670, line: 115, baseType: !103, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3738, file: !3670, line: 116, baseType: !166, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3738, file: !3670, line: 117, baseType: !7, size: 32, offset: 96)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !171, file: !172, line: 1208, baseType: !3523, size: 448, offset: 17664)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !171, file: !172, line: 1215, baseType: !137, size: 64, offset: 18112)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !171, file: !172, line: 1217, baseType: !137, size: 64, offset: 18176)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !171, file: !172, line: 1219, baseType: !137, size: 64, offset: 18240)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !171, file: !172, line: 1223, baseType: !3748, size: 64, offset: 18304)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3749, line: 99, baseType: !3750)
!3749 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3749, line: 99, size: 64, elements: !3751)
!3751 = !{!3752}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3750, file: !3749, line: 99, baseType: !471, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !171, file: !172, line: 1225, baseType: !958, size: 32, offset: 18368)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !171, file: !172, line: 1226, baseType: !166, size: 32, offset: 18400)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !171, file: !172, line: 1227, baseType: !166, size: 32, offset: 18432)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !171, file: !172, line: 1231, baseType: !3757, size: 64, offset: 18496)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !172, line: 1231, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !171, file: !172, line: 1233, baseType: !244, size: 128, offset: 18560)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !171, file: !172, line: 1240, baseType: !3761, size: 64, offset: 18688)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !172, line: 62, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !171, file: !172, line: 1242, baseType: !3764, size: 64, offset: 18752)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !172, line: 1242, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !171, file: !172, line: 1244, baseType: !244, size: 128, offset: 18816)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !171, file: !172, line: 1245, baseType: !3768, size: 64, offset: 18944)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !172, line: 51, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !171, file: !172, line: 1246, baseType: !584, size: 256, offset: 19008)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !171, file: !172, line: 1247, baseType: !7, size: 32, offset: 19264)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !171, file: !172, line: 1250, baseType: !3773, size: 64, offset: 19328)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !172, line: 57, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !171, file: !172, line: 1251, baseType: !584, size: 256, offset: 19392)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !171, file: !172, line: 1252, baseType: !244, size: 128, offset: 19648)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !171, file: !172, line: 1259, baseType: !1577, size: 64, offset: 19776)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !171, file: !172, line: 1260, baseType: !801, size: 16, offset: 19840)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !171, file: !172, line: 1261, baseType: !801, size: 16, offset: 19856)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !171, file: !172, line: 1314, baseType: !3781, size: 64, offset: 19904)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3783, line: 62, size: 256, align: 256, elements: !3784)
!3783 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3782, file: !3783, line: 75, baseType: !168, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3782, file: !3783, line: 90, baseType: !168, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3782, file: !3783, line: 112, baseType: !138, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3782, file: !3783, line: 132, baseType: !168, size: 32, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3782, file: !3783, line: 140, baseType: !168, size: 32, offset: 160)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3782, file: !3783, line: 149, baseType: !168, size: 32, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3782, file: !3783, line: 154, baseType: !3792, offset: 224)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, elements: !711)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !171, file: !172, line: 1315, baseType: !167, size: 32, offset: 19968)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !171, file: !172, line: 1316, baseType: !167, size: 32, offset: 20000)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !171, file: !172, line: 1321, baseType: !104, size: 64, offset: 20032)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !171, file: !172, line: 1325, baseType: !166, size: 32, offset: 20096)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !171, file: !172, line: 1326, baseType: !166, size: 32, offset: 20128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !171, file: !172, line: 1327, baseType: !166, size: 32, offset: 20160)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !171, file: !172, line: 1328, baseType: !166, size: 32, offset: 20192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !171, file: !172, line: 1329, baseType: !564, size: 128, align: 64, offset: 20224)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !171, file: !172, line: 1332, baseType: !3802, size: 128, offset: 20352)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3803, line: 51, size: 128, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3804 = !{!3805, !3810, !3811}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3802, file: !3803, line: 60, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3807, line: 7, size: 64, elements: !3808)
!3807 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3808 = !{!3809}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3806, file: !3807, line: 12, baseType: !468, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3802, file: !3803, line: 63, baseType: !833, size: 8, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3802, file: !3803, line: 70, baseType: !833, size: 8, offset: 72)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !171, file: !172, line: 1335, baseType: !3009, size: 64, offset: 20480)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !171, file: !172, line: 1337, baseType: !3814, size: 128, offset: 20544)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3803, line: 39, size: 128, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3814, file: !3803, line: 40, baseType: !1364, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3814, file: !3803, line: 42, baseType: !168, size: 32, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3814, file: !3803, line: 43, baseType: !168, size: 32, offset: 96)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !171, file: !172, line: 1340, baseType: !3820, size: 64, offset: 20672)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !172, line: 69, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !171, file: !172, line: 1351, baseType: !166, size: 32, offset: 20736)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !171, file: !172, line: 1352, baseType: !166, size: 32, offset: 20768)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !171, file: !172, line: 1354, baseType: !104, size: 64, offset: 20800)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !171, file: !172, line: 1364, baseType: !137, size: 64, offset: 20864)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !171, file: !172, line: 1365, baseType: !137, size: 64, offset: 20928)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !171, file: !172, line: 1412, baseType: !104, size: 64, offset: 20992)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !171, file: !172, line: 1453, baseType: !3829, size: 64, offset: 21056)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !172, line: 1453, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !171, file: !172, line: 1457, baseType: !3832, size: 64, offset: 21120)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3834)
!3834 = !{!3835, !3836, !3855, !3858, !3859, !3892, !3902}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3833, file: !68, line: 62, baseType: !67, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !3833, file: !68, line: 64, baseType: !3837, size: 192, offset: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3833, file: !68, line: 64, size: 192, elements: !3838)
!3838 = !{!3839, !3850}
!3839 = !DIDerivedType(tag: DW_TAG_member, scope: !3837, file: !68, line: 65, baseType: !3840, size: 192)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !68, line: 65, size: 192, elements: !3841)
!3841 = !{!3842, !3849}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3840, file: !68, line: 66, baseType: !3843, size: 128)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3844, line: 50, size: 128, elements: !3845)
!3844 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3845 = !{!3846, !3847, !3848}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3843, file: !3844, line: 52, baseType: !104, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3843, file: !3844, line: 54, baseType: !7, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3843, file: !3844, line: 55, baseType: !7, size: 32, offset: 96)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3840, file: !68, line: 67, baseType: !104, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3837, file: !68, line: 70, baseType: !3851, size: 192)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !68, line: 70, size: 192, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3851, file: !68, line: 71, baseType: !564, size: 128, align: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3851, file: !68, line: 72, baseType: !104, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3833, file: !68, line: 76, baseType: !3856, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3833, file: !68, line: 77, baseType: !104, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3833, file: !68, line: 79, baseType: !3860, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3844, line: 25, size: 256, elements: !3862)
!3862 = !{!3863, !3869, !3873}
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !3844, line: 26, baseType: !3864, size: 128)
!3864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3861, file: !3844, line: 26, size: 128, elements: !3865)
!3865 = !{!3866, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3864, file: !3844, line: 27, baseType: !3867, size: 128)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 128, elements: !2771)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3864, file: !3844, line: 28, baseType: !3867, size: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3861, file: !3844, line: 31, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3872)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3844, line: 23, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !3844, line: 33, baseType: !3874, size: 64, offset: 192)
!3874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3861, file: !3844, line: 33, size: 64, elements: !3875)
!3875 = !{!3876, !3882, !3887}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3874, file: !3844, line: 38, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3874, file: !3844, line: 34, size: 64, elements: !3878)
!3878 = !{!3879, !3880, !3881}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3877, file: !3844, line: 35, baseType: !765, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3877, file: !3844, line: 36, baseType: !354, size: 8, offset: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3877, file: !3844, line: 37, baseType: !354, size: 8, offset: 40)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3874, file: !3844, line: 42, baseType: !3883, size: 16)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3874, file: !3844, line: 39, size: 16, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3883, file: !3844, line: 40, baseType: !354, size: 8)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3883, file: !3844, line: 41, baseType: !354, size: 8, offset: 8)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3874, file: !3844, line: 46, baseType: !3888, size: 16)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3874, file: !3844, line: 43, size: 16, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3888, file: !3844, line: 44, baseType: !354, size: 8)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3888, file: !3844, line: 45, baseType: !354, size: 8, offset: 8)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3833, file: !68, line: 81, baseType: !3893, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900, !3901}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3894, file: !68, line: 86, baseType: !3856, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3894, file: !68, line: 87, baseType: !104, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3894, file: !68, line: 88, baseType: !104, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3894, file: !68, line: 89, baseType: !104, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3894, file: !68, line: 90, baseType: !833, size: 8, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3894, file: !68, line: 92, baseType: !3893, size: 64, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3833, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !171, file: !172, line: 1463, baseType: !3904, offset: 21184)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !172, line: 739, elements: !549)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !171, file: !172, line: 1470, baseType: !564, size: 128, align: 64, offset: 21184)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !171, file: !172, line: 1471, baseType: !185, size: 32, offset: 21312)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !171, file: !172, line: 1472, baseType: !166, size: 32, offset: 21344)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !171, file: !172, line: 1474, baseType: !170, size: 64, offset: 21376)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !171, file: !172, line: 1475, baseType: !2264, size: 320, offset: 21440)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !171, file: !172, line: 1478, baseType: !3911, size: 64, offset: 21760)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !172, line: 1478, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !171, file: !172, line: 1482, baseType: !185, size: 32, offset: 21824)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !171, file: !172, line: 1489, baseType: !103, size: 64, offset: 21888)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !171, file: !172, line: 1504, baseType: !103, size: 64, offset: 21952)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !171, file: !172, line: 1505, baseType: !138, size: 64, offset: 22016)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !171, file: !172, line: 1506, baseType: !137, size: 64, offset: 22080)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !171, file: !172, line: 1507, baseType: !138, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !171, file: !172, line: 1508, baseType: !138, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !171, file: !172, line: 1509, baseType: !138, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !171, file: !172, line: 1510, baseType: !564, size: 128, align: 64, offset: 22208)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !171, file: !172, line: 1511, baseType: !166, size: 32, offset: 22336)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !171, file: !172, line: 1515, baseType: !3924, size: 64, offset: 22400)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !204, line: 56, size: 64, elements: !3925)
!3925 = !{!3926}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3924, file: !204, line: 57, baseType: !207, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !171, file: !172, line: 1518, baseType: !3924, size: 64, offset: 22464)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !171, file: !172, line: 1528, baseType: !564, size: 128, align: 64, offset: 22528)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !171, file: !172, line: 1552, baseType: !3930, size: 35328, offset: 23040)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3931, line: 430, size: 35328, elements: !3932)
!3931 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3932 = !{!3933, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3962, !3963, !3964, !3965, !3966, !3967, !3970, !3971, !3972, !3973}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3930, file: !3931, line: 432, baseType: !3934, size: 192)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3935, size: 192, elements: !622)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3936, line: 16, size: 64, elements: !3937)
!3936 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3935, file: !3936, line: 17, baseType: !131, size: 16)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3935, file: !3936, line: 18, baseType: !131, size: 16, offset: 16)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3935, file: !3936, line: 19, baseType: !131, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3935, file: !3936, line: 19, baseType: !131, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3935, file: !3936, line: 19, baseType: !131, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3935, file: !3936, line: 19, baseType: !131, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3935, file: !3936, line: 19, baseType: !131, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3935, file: !3936, line: 20, baseType: !131, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3935, file: !3936, line: 20, baseType: !131, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3935, file: !3936, line: 20, baseType: !131, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3935, file: !3936, line: 20, baseType: !131, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3935, file: !3936, line: 20, baseType: !131, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3935, file: !3936, line: 20, baseType: !131, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3930, file: !3931, line: 436, baseType: !104, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3930, file: !3931, line: 440, baseType: !135, size: 16, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3930, file: !3931, line: 441, baseType: !135, size: 16, offset: 272)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3930, file: !3931, line: 442, baseType: !135, size: 16, offset: 288)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3930, file: !3931, line: 443, baseType: !135, size: 16, offset: 304)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3930, file: !3931, line: 447, baseType: !104, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3930, file: !3931, line: 448, baseType: !104, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3930, file: !3931, line: 459, baseType: !3959, size: 256, offset: 448)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3960, size: 256, elements: !643)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3931, line: 428, flags: DIFlagFwdDecl)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3930, file: !3931, line: 461, baseType: !104, size: 64, offset: 704)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3930, file: !3931, line: 463, baseType: !104, size: 64, offset: 768)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3930, file: !3931, line: 465, baseType: !104, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3930, file: !3931, line: 466, baseType: !104, size: 64, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3930, file: !3931, line: 467, baseType: !104, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3930, file: !3931, line: 473, baseType: !3968, size: 64, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3931, line: 10, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3930, file: !3931, line: 480, baseType: !104, size: 64, offset: 1088)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3930, file: !3931, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3930, file: !3931, line: 491, baseType: !167, size: 32, offset: 1184)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3930, file: !3931, line: 501, baseType: !3974, size: 33792, offset: 1536)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3975, line: 448, size: 33792, elements: !3976)
!3975 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3976 = !{!3977, !3978, !3979, !4089, !4090, !4096, !4097}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3974, file: !3975, line: 461, baseType: !7, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3974, file: !3975, line: 468, baseType: !104, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3974, file: !3975, line: 476, baseType: !3980, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3975, line: 356, size: 33280, align: 512, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3981, file: !3975, line: 358, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3981, file: !3975, line: 361, baseType: !7, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3981, file: !3975, line: 364, baseType: !137, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3981, file: !3975, line: 367, baseType: !137, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3981, file: !3975, line: 370, baseType: !137, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3981, file: !3975, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3981, file: !3975, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3981, file: !3975, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3981, file: !3975, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3981, file: !3975, line: 397, baseType: !3993, size: 32768, offset: 512)
!3993 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3975, line: 348, size: 32768, elements: !3994)
!3994 = !{!3995, !4010, !4047, !4072, !4085}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3993, file: !3975, line: 349, baseType: !3996, size: 896)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3975, line: 12, size: 896, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4009}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3996, file: !3975, line: 13, baseType: !167, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3996, file: !3975, line: 14, baseType: !167, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3996, file: !3975, line: 15, baseType: !167, size: 32, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3996, file: !3975, line: 16, baseType: !167, size: 32, offset: 96)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3996, file: !3975, line: 17, baseType: !167, size: 32, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3996, file: !3975, line: 18, baseType: !167, size: 32, offset: 160)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3996, file: !3975, line: 19, baseType: !167, size: 32, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3996, file: !3975, line: 22, baseType: !4006, size: 640, offset: 224)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 640, elements: !4007)
!4007 = !{!4008}
!4008 = !DISubrange(count: 20)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3996, file: !3975, line: 25, baseType: !167, size: 32, offset: 864)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3993, file: !3975, line: 350, baseType: !4011, size: 4096, align: 128)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3975, line: 34, size: 4096, align: 128, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4032, !4033, !4034, !4036, !4038, !4042}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4011, file: !3975, line: 35, baseType: !131, size: 16)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4011, file: !3975, line: 36, baseType: !131, size: 16, offset: 16)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4011, file: !3975, line: 37, baseType: !131, size: 16, offset: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4011, file: !3975, line: 38, baseType: !131, size: 16, offset: 48)
!4017 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !3975, line: 39, baseType: !4018, size: 128, offset: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !3975, line: 39, size: 128, elements: !4019)
!4019 = !{!4020, !4025}
!4020 = !DIDerivedType(tag: DW_TAG_member, scope: !4018, file: !3975, line: 40, baseType: !4021, size: 128)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4018, file: !3975, line: 40, size: 128, elements: !4022)
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4021, file: !3975, line: 41, baseType: !137, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4021, file: !3975, line: 42, baseType: !137, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !4018, file: !3975, line: 44, baseType: !4026, size: 128)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4018, file: !3975, line: 44, size: 128, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4026, file: !3975, line: 45, baseType: !167, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4026, file: !3975, line: 46, baseType: !167, size: 32, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4026, file: !3975, line: 47, baseType: !167, size: 32, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4026, file: !3975, line: 48, baseType: !167, size: 32, offset: 96)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4011, file: !3975, line: 51, baseType: !167, size: 32, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4011, file: !3975, line: 52, baseType: !167, size: 32, offset: 224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4011, file: !3975, line: 55, baseType: !4035, size: 1024, offset: 256)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 1024, elements: !2762)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4011, file: !3975, line: 58, baseType: !4037, size: 2048, offset: 1280)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 2048, elements: !1283)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4011, file: !3975, line: 60, baseType: !4039, size: 384, offset: 3328)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 384, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 12)
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !3975, line: 62, baseType: !4043, size: 384, offset: 3712)
!4043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !3975, line: 62, size: 384, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4043, file: !3975, line: 63, baseType: !4039, size: 384)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4043, file: !3975, line: 64, baseType: !4039, size: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3993, file: !3975, line: 351, baseType: !4048, size: 1088)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3975, line: 79, size: 1088, elements: !4049)
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4071}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4048, file: !3975, line: 80, baseType: !167, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4048, file: !3975, line: 81, baseType: !167, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4048, file: !3975, line: 82, baseType: !167, size: 32, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4048, file: !3975, line: 83, baseType: !167, size: 32, offset: 96)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4048, file: !3975, line: 84, baseType: !167, size: 32, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4048, file: !3975, line: 85, baseType: !167, size: 32, offset: 160)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4048, file: !3975, line: 86, baseType: !167, size: 32, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4048, file: !3975, line: 88, baseType: !4006, size: 640, offset: 224)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4048, file: !3975, line: 89, baseType: !354, size: 8, offset: 864)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4048, file: !3975, line: 90, baseType: !354, size: 8, offset: 872)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4048, file: !3975, line: 91, baseType: !354, size: 8, offset: 880)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4048, file: !3975, line: 92, baseType: !354, size: 8, offset: 888)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4048, file: !3975, line: 93, baseType: !354, size: 8, offset: 896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4048, file: !3975, line: 94, baseType: !354, size: 8, offset: 904)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4048, file: !3975, line: 95, baseType: !4065, size: 64, offset: 960)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4067, line: 11, size: 128, elements: !4068)
!4067 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4066, file: !4067, line: 12, baseType: !1102, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4066, file: !4067, line: 13, baseType: !106, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4048, file: !3975, line: 96, baseType: !167, size: 32, offset: 1024)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3993, file: !3975, line: 352, baseType: !4073, size: 4608, align: 512)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3975, line: 333, size: 4608, align: 512, elements: !4074)
!4074 = !{!4075, !4076, !4083}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4073, file: !3975, line: 334, baseType: !4011, size: 4096, align: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4073, file: !3975, line: 335, baseType: !4077, size: 512, offset: 4096)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3975, line: 312, size: 512, elements: !4078)
!4078 = !{!4079, !4080, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4077, file: !3975, line: 313, baseType: !137, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4077, file: !3975, line: 314, baseType: !137, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4077, file: !3975, line: 315, baseType: !4082, size: 384, offset: 128)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 384, elements: !820)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4073, file: !3975, line: 336, baseType: !4084, offset: 4608)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, elements: !711)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3993, file: !3975, line: 353, baseType: !4086, size: 32768)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 32768, elements: !4087)
!4087 = !{!4088}
!4088 = !DISubrange(count: 4096)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3974, file: !3975, line: 484, baseType: !3980, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3974, file: !3975, line: 491, baseType: !4091, size: 128, offset: 256)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3975, line: 404, size: 128, elements: !4092)
!4092 = !{!4093, !4094, !4095}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4091, file: !3975, line: 424, baseType: !137, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4091, file: !3975, line: 432, baseType: !7, size: 32, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4091, file: !3975, line: 440, baseType: !7, size: 32, offset: 96)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3974, file: !3975, line: 498, baseType: !4091, size: 128, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3974, file: !3975, line: 508, baseType: !3981, size: 33280, align: 512, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!4101 = !{!0, !4102, !4113, !4118, !4154, !4159, !4161, !4166, !4168, !4170, !4308, !4310, !4315, !4317, !4319, !4321, !4323, !4325, !4327, !4329, !4331, !4336, !4338, !4343, !4345, !4347, !4349, !4351, !4353, !4358, !4360, !4365, !4367, !4372, !4374, !4376, !4381, !4383, !4385, !4387, !4389, !4391, !4393, !4395, !4400, !4402, !4404, !4406, !4434, !4436, !4441, !4443, !4448, !4450, !4452, !4463, !4468}
!4102 = !DIGlobalVariableExpression(var: !4103, expr: !DIExpression())
!4103 = distinct !DIGlobalVariable(name: "__setup_unwind_debug_cmdline", scope: !2, file: !3, line: 44, type: !4104, isLocal: true, isDefinition: true, align: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4105, line: 324, size: 192, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4106 = !{!4107, !4108, !4112}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4104, file: !4105, line: 325, baseType: !836, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4104, file: !4105, line: 326, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!166, !846}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4104, file: !4105, line: 327, baseType: !166, size: 32, offset: 128)
!4113 = !DIGlobalVariableExpression(var: !4114, expr: !DIExpression())
!4114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !4115, isLocal: true, isDefinition: true)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 232, elements: !4116)
!4116 = !{!4117}
!4117 = !DISubrange(count: 29)
!4118 = !DIGlobalVariableExpression(var: !4119, expr: !DIExpression())
!4119 = distinct !DIGlobalVariable(name: "__already_done", scope: !4120, file: !3, line: 328, type: !833, isLocal: true, isDefinition: true)
!4120 = distinct !DISubprogram(name: "unwind_init", scope: !3, file: !3, line: 317, type: !2379, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4131, !4134, !4135, !4142, !4145, !4146, !4150, !4153}
!4122 = !DILocalVariable(name: "orc_ip_size", scope: !4120, file: !3, line: 319, type: !1144)
!4123 = !DILocalVariable(name: "orc_size", scope: !4120, file: !3, line: 320, type: !1144)
!4124 = !DILocalVariable(name: "num_entries", scope: !4120, file: !3, line: 321, type: !1144)
!4125 = !DILocalVariable(name: "orc", scope: !4120, file: !3, line: 322, type: !2164)
!4126 = !DILocalVariable(name: "i", scope: !4120, file: !3, line: 323, type: !166)
!4127 = !DILocalVariable(name: "__ret_do_once", scope: !4128, file: !3, line: 328, type: !833)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 328, column: 3)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 327, column: 58)
!4130 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 325, column: 6)
!4131 = !DILocalVariable(name: "__ret_cond", scope: !4132, file: !3, line: 328, type: !833)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 328, column: 3)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 328, column: 3)
!4134 = !DILocalVariable(name: "__ret_once", scope: !4132, file: !3, line: 328, type: !833)
!4135 = !DILocalVariable(name: "__ret_do_once", scope: !4136, file: !3, line: 345, type: !833)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 345, column: 4)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 344, column: 13)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 344, column: 7)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 340, column: 44)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 340, column: 2)
!4141 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 340, column: 2)
!4142 = !DILocalVariable(name: "__ret_cond", scope: !4143, file: !3, line: 345, type: !833)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 345, column: 4)
!4144 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 345, column: 4)
!4145 = !DILocalVariable(name: "__ret_once", scope: !4143, file: !3, line: 345, type: !833)
!4146 = !DILocalVariable(name: "__ret_do_once", scope: !4147, file: !3, line: 356, type: !833)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 356, column: 3)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 355, column: 12)
!4149 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 355, column: 6)
!4150 = !DILocalVariable(name: "__ret_cond", scope: !4151, file: !3, line: 356, type: !833)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 356, column: 3)
!4152 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 356, column: 3)
!4153 = !DILocalVariable(name: "__ret_once", scope: !4151, file: !3, line: 356, type: !833)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !4156, isLocal: true, isDefinition: true)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 608, elements: !4157)
!4157 = !{!4158}
!4158 = !DISubrange(count: 76)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "__already_done", scope: !4120, file: !3, line: 345, type: !833, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !4163, isLocal: true, isDefinition: true)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 552, elements: !4164)
!4164 = !{!4165}
!4165 = !DISubrange(count: 69)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "__already_done", scope: !4120, file: !3, line: 356, type: !833, isLocal: true, isDefinition: true)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unwind_get_return_address304", scope: !2, file: !3, line: 371, type: !103, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 536, type: !833, isLocal: true, isDefinition: true)
!4172 = distinct !DISubprogram(name: "unwind_next_frame", scope: !3, file: !3, line: 468, type: !4173, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!833, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unwind_state", file: !4177, line: 14, size: 896, elements: !4178)
!4177 = !DIFile(filename: "./arch/x86/include/asm/unwind.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3235c5cc80be598600446a4d6bd7e4")
!4178 = !{!4179, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_info", scope: !4176, file: !4177, line: 15, baseType: !4180, size: 256)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_info", file: !93, line: 26, size: 256, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4180, file: !93, line: 27, baseType: !92, size: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !4180, file: !93, line: 28, baseType: !105, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4180, file: !93, line: 28, baseType: !105, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "next_sp", scope: !4180, file: !93, line: 28, baseType: !105, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "stack_mask", scope: !4176, file: !4177, line: 16, baseType: !104, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4176, file: !4177, line: 17, baseType: !170, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "graph_idx", scope: !4176, file: !4177, line: 18, baseType: !166, size: 32, offset: 384)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "kr_cur", scope: !4176, file: !4177, line: 20, baseType: !207, size: 64, offset: 448)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4176, file: !4177, line: 22, baseType: !833, size: 8, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4176, file: !4177, line: 24, baseType: !833, size: 8, offset: 520)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "full_regs", scope: !4176, file: !4177, line: 24, baseType: !833, size: 8, offset: 528)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4176, file: !4177, line: 25, baseType: !104, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4176, file: !4177, line: 25, baseType: !104, size: 64, offset: 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4176, file: !4177, line: 25, baseType: !104, size: 64, offset: 704)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4176, file: !4177, line: 26, baseType: !106, size: 64, offset: 768)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_regs", scope: !4176, file: !4177, line: 26, baseType: !106, size: 64, offset: 832)
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4216, !4219, !4220, !4227, !4230, !4231, !4238, !4241, !4242, !4249, !4252, !4253, !4255, !4258, !4259, !4267, !4270, !4271, !4278, !4281, !4282, !4284, !4287, !4288, !4291, !4294, !4295, !4302, !4305, !4306, !4307}
!4199 = !DILocalVariable(name: "state", arg: 1, scope: !4172, file: !3, line: 468, type: !4175)
!4200 = !DILocalVariable(name: "ip_p", scope: !4172, file: !3, line: 470, type: !104)
!4201 = !DILocalVariable(name: "sp", scope: !4172, file: !3, line: 470, type: !104)
!4202 = !DILocalVariable(name: "tmp", scope: !4172, file: !3, line: 470, type: !104)
!4203 = !DILocalVariable(name: "orig_ip", scope: !4172, file: !3, line: 470, type: !104)
!4204 = !DILocalVariable(name: "prev_sp", scope: !4172, file: !3, line: 470, type: !104)
!4205 = !DILocalVariable(name: "prev_type", scope: !4172, file: !3, line: 471, type: !92)
!4206 = !DILocalVariable(name: "orc", scope: !4172, file: !3, line: 472, type: !2164)
!4207 = !DILocalVariable(name: "indirect", scope: !4172, file: !3, line: 473, type: !833)
!4208 = !DILocalVariable(name: "__ret_do_once", scope: !4209, file: !3, line: 536, type: !833)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 536, column: 4)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 536, column: 4)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 536, column: 4)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 536, column: 4)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 535, column: 60)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 535, column: 7)
!4215 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 515, column: 23)
!4216 = !DILocalVariable(name: "__ret_cond", scope: !4217, file: !3, line: 536, type: !833)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 536, column: 4)
!4218 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 536, column: 4)
!4219 = !DILocalVariable(name: "__ret_once", scope: !4217, file: !3, line: 536, type: !833)
!4220 = !DILocalVariable(name: "__ret_do_once", scope: !4221, file: !3, line: 544, type: !833)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 544, column: 4)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 544, column: 4)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 544, column: 4)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 544, column: 4)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 543, column: 60)
!4226 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 543, column: 7)
!4227 = !DILocalVariable(name: "__ret_cond", scope: !4228, file: !3, line: 544, type: !833)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 544, column: 4)
!4229 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 544, column: 4)
!4230 = !DILocalVariable(name: "__ret_once", scope: !4228, file: !3, line: 544, type: !833)
!4231 = !DILocalVariable(name: "__ret_do_once", scope: !4232, file: !3, line: 552, type: !833)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 552, column: 4)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 552, column: 4)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 552, column: 4)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 552, column: 4)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 551, column: 59)
!4237 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 551, column: 7)
!4238 = !DILocalVariable(name: "__ret_cond", scope: !4239, file: !3, line: 552, type: !833)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 552, column: 4)
!4240 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 552, column: 4)
!4241 = !DILocalVariable(name: "__ret_once", scope: !4239, file: !3, line: 552, type: !833)
!4242 = !DILocalVariable(name: "__ret_do_once", scope: !4243, file: !3, line: 560, type: !833)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 560, column: 4)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 560, column: 4)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 560, column: 4)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 560, column: 4)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 559, column: 59)
!4248 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 559, column: 7)
!4249 = !DILocalVariable(name: "__ret_cond", scope: !4250, file: !3, line: 560, type: !833)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 560, column: 4)
!4251 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 560, column: 4)
!4252 = !DILocalVariable(name: "__ret_once", scope: !4250, file: !3, line: 560, type: !833)
!4253 = !DILocalVariable(name: "__ret_do_once", scope: !4254, file: !3, line: 567, type: !833)
!4254 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 567, column: 3)
!4255 = !DILocalVariable(name: "__ret_cond", scope: !4256, file: !3, line: 567, type: !833)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 567, column: 3)
!4257 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 567, column: 3)
!4258 = !DILocalVariable(name: "__ret_once", scope: !4256, file: !3, line: 567, type: !833)
!4259 = !DILocalVariable(name: "__ret_do_once", scope: !4260, file: !3, line: 597, type: !833)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 597, column: 4)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 597, column: 4)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 597, column: 4)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 597, column: 4)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 596, column: 61)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 596, column: 7)
!4266 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 581, column: 21)
!4267 = !DILocalVariable(name: "__ret_cond", scope: !4268, file: !3, line: 597, type: !833)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 597, column: 4)
!4269 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 597, column: 4)
!4270 = !DILocalVariable(name: "__ret_once", scope: !4268, file: !3, line: 597, type: !833)
!4271 = !DILocalVariable(name: "__ret_do_once", scope: !4272, file: !3, line: 620, type: !833)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 620, column: 4)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 620, column: 4)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 620, column: 4)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 620, column: 4)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 619, column: 66)
!4277 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 619, column: 7)
!4278 = !DILocalVariable(name: "__ret_cond", scope: !4279, file: !3, line: 620, type: !833)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 620, column: 4)
!4280 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 620, column: 4)
!4281 = !DILocalVariable(name: "__ret_once", scope: !4279, file: !3, line: 620, type: !833)
!4282 = !DILocalVariable(name: "__ret_do_once", scope: !4283, file: !3, line: 635, type: !833)
!4283 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 635, column: 3)
!4284 = !DILocalVariable(name: "__ret_cond", scope: !4285, file: !3, line: 635, type: !833)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 635, column: 3)
!4286 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 635, column: 3)
!4287 = !DILocalVariable(name: "__ret_once", scope: !4285, file: !3, line: 635, type: !833)
!4288 = !DILocalVariable(name: "__ret_do_once", scope: !4289, file: !3, line: 658, type: !833)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 658, column: 3)
!4290 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 641, column: 23)
!4291 = !DILocalVariable(name: "__ret_cond", scope: !4292, file: !3, line: 658, type: !833)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 658, column: 3)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 658, column: 3)
!4294 = !DILocalVariable(name: "__ret_once", scope: !4292, file: !3, line: 658, type: !833)
!4295 = !DILocalVariable(name: "__ret_do_once", scope: !4296, file: !3, line: 667, type: !833)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 667, column: 3)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 667, column: 3)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 667, column: 3)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 667, column: 3)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 666, column: 28)
!4301 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 664, column: 6)
!4302 = !DILocalVariable(name: "__ret_cond", scope: !4303, file: !3, line: 667, type: !833)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 667, column: 3)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 667, column: 3)
!4305 = !DILocalVariable(name: "__ret_once", scope: !4303, file: !3, line: 667, type: !833)
!4306 = !DILabel(scope: !4172, name: "err", file: !3, line: 675)
!4307 = !DILabel(scope: !4172, name: "the_end", file: !3, line: 678)
!4308 = !DIGlobalVariableExpression(var: !4309, expr: !DIExpression())
!4309 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 536, type: !833, isLocal: true, isDefinition: true)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !4312, isLocal: true, isDefinition: true)
!4312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 296, elements: !4313)
!4313 = !{!4314}
!4314 = !DISubrange(count: 37)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 544, type: !833, isLocal: true, isDefinition: true)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 544, type: !833, isLocal: true, isDefinition: true)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 544, type: !4312, isLocal: true, isDefinition: true)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 552, type: !833, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 552, type: !833, isLocal: true, isDefinition: true)
!4325 = !DIGlobalVariableExpression(var: !4326, expr: !DIExpression())
!4326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !4312, isLocal: true, isDefinition: true)
!4327 = !DIGlobalVariableExpression(var: !4328, expr: !DIExpression())
!4328 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 560, type: !833, isLocal: true, isDefinition: true)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 560, type: !833, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 560, type: !4333, isLocal: true, isDefinition: true)
!4333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 288, elements: !4334)
!4334 = !{!4335}
!4335 = !DISubrange(count: 36)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 567, type: !833, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !4340, isLocal: true, isDefinition: true)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 336, elements: !4341)
!4341 = !{!4342}
!4342 = !DISubrange(count: 42)
!4343 = !DIGlobalVariableExpression(var: !4344, expr: !DIExpression())
!4344 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 597, type: !833, isLocal: true, isDefinition: true)
!4345 = !DIGlobalVariableExpression(var: !4346, expr: !DIExpression())
!4346 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 597, type: !833, isLocal: true, isDefinition: true)
!4347 = !DIGlobalVariableExpression(var: !4348, expr: !DIExpression())
!4348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 597, type: !4340, isLocal: true, isDefinition: true)
!4349 = !DIGlobalVariableExpression(var: !4350, expr: !DIExpression())
!4350 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 620, type: !833, isLocal: true, isDefinition: true)
!4351 = !DIGlobalVariableExpression(var: !4352, expr: !DIExpression())
!4352 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 620, type: !833, isLocal: true, isDefinition: true)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 620, type: !4355, isLocal: true, isDefinition: true)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 376, elements: !4356)
!4356 = !{!4357}
!4357 = !DISubrange(count: 47)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 635, type: !833, isLocal: true, isDefinition: true)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 635, type: !4362, isLocal: true, isDefinition: true)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 424, elements: !4363)
!4363 = !{!4364}
!4364 = !DISubrange(count: 53)
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 658, type: !833, isLocal: true, isDefinition: true)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 658, type: !4369, isLocal: true, isDefinition: true)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 368, elements: !4370)
!4370 = !{!4371}
!4371 = !DISubrange(count: 46)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4172, file: !3, line: 667, type: !833, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "__already_done", scope: !4172, file: !3, line: 667, type: !833, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !4378, isLocal: true, isDefinition: true)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 440, elements: !4379)
!4379 = !{!4380}
!4380 = !DISubrange(count: 55)
!4381 = !DIGlobalVariableExpression(var: !4382, expr: !DIExpression())
!4382 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule313", scope: !4172, file: !3, line: 672, type: !103, isLocal: true, isDefinition: true)
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule314", scope: !4172, file: !3, line: 679, type: !103, isLocal: true, isDefinition: true)
!4385 = !DIGlobalVariableExpression(var: !4386, expr: !DIExpression())
!4386 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unwind_next_frame315", scope: !2, file: !3, line: 683, type: !103, isLocal: true, isDefinition: true)
!4387 = !DIGlobalVariableExpression(var: !4388, expr: !DIExpression())
!4388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___unwind_start318", scope: !2, file: !3, line: 769, type: !103, isLocal: true, isDefinition: true)
!4389 = !DIGlobalVariableExpression(var: !4390, expr: !DIExpression())
!4390 = distinct !DIGlobalVariable(name: "orc_init", scope: !2, file: !3, line: 34, type: !833, isLocal: true, isDefinition: true)
!4391 = !DIGlobalVariableExpression(var: !4392, expr: !DIExpression())
!4392 = distinct !DIGlobalVariable(name: "unwind_debug", scope: !2, file: !3, line: 35, type: !833, isLocal: true, isDefinition: true)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(name: "lookup_num_blocks", scope: !2, file: !3, line: 36, type: !7, isLocal: true, isDefinition: true)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "__setup_str_unwind_debug_cmdline", scope: !2, file: !3, line: 44, type: !4397, isLocal: true, isDefinition: true, align: 8)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 104, elements: !4398)
!4398 = !{!4399}
!4399 = !DISubrange(count: 13)
!4400 = !DIGlobalVariableExpression(var: !4401, expr: !DIExpression())
!4401 = distinct !DIGlobalVariable(name: "sort_mutex", scope: !2, file: !3, line: 246, type: !584, isLocal: true, isDefinition: true)
!4402 = !DIGlobalVariableExpression(var: !4403, expr: !DIExpression())
!4403 = distinct !DIGlobalVariable(name: "cur_orc_ip_table", scope: !2, file: !3, line: 247, type: !2162, isLocal: true, isDefinition: true)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "cur_orc_table", scope: !2, file: !3, line: 248, type: !2164, isLocal: true, isDefinition: true)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "orc", scope: !4408, file: !3, line: 200, type: !2164, isLocal: true, isDefinition: true)
!4408 = distinct !DISubprogram(name: "orc_find", scope: !3, file: !3, line: 198, type: !4409, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!2164, !104}
!4411 = !{!4412, !4413, !4416, !4417, !4418, !4422, !4425, !4426, !4430, !4433}
!4412 = !DILocalVariable(name: "ip", arg: 1, scope: !4408, file: !3, line: 198, type: !104)
!4413 = !DILocalVariable(name: "idx", scope: !4414, file: !3, line: 207, type: !7)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 206, column: 52)
!4415 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 206, column: 6)
!4416 = !DILocalVariable(name: "start", scope: !4414, file: !3, line: 207, type: !7)
!4417 = !DILocalVariable(name: "stop", scope: !4414, file: !3, line: 207, type: !7)
!4418 = !DILocalVariable(name: "__ret_do_once", scope: !4419, file: !3, line: 212, type: !833)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 212, column: 4)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 211, column: 47)
!4421 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 211, column: 7)
!4422 = !DILocalVariable(name: "__ret_cond", scope: !4423, file: !3, line: 212, type: !833)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 212, column: 4)
!4424 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 212, column: 4)
!4425 = !DILocalVariable(name: "__ret_once", scope: !4423, file: !3, line: 212, type: !833)
!4426 = !DILocalVariable(name: "__ret_do_once", scope: !4427, file: !3, line: 222, type: !833)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 222, column: 4)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 221, column: 59)
!4429 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 220, column: 7)
!4430 = !DILocalVariable(name: "__ret_cond", scope: !4431, file: !3, line: 222, type: !833)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 222, column: 4)
!4432 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 222, column: 4)
!4433 = !DILocalVariable(name: "__ret_once", scope: !4431, file: !3, line: 222, type: !833)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "__already_done", scope: !4408, file: !3, line: 212, type: !833, isLocal: true, isDefinition: true)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !4438, isLocal: true, isDefinition: true)
!4438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 464, elements: !4439)
!4439 = !{!4440}
!4440 = !DISubrange(count: 58)
!4441 = !DIGlobalVariableExpression(var: !4442, expr: !DIExpression())
!4442 = distinct !DIGlobalVariable(name: "__already_done", scope: !4408, file: !3, line: 222, type: !833, isLocal: true, isDefinition: true)
!4443 = !DIGlobalVariableExpression(var: !4444, expr: !DIExpression())
!4444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !4445, isLocal: true, isDefinition: true)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 616, elements: !4446)
!4446 = !{!4447}
!4447 = !DISubrange(count: 77)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(name: "null_orc_entry", scope: !2, file: !3, line: 182, type: !2165, isLocal: true, isDefinition: true)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "orc_fp_entry", scope: !2, file: !3, line: 190, type: !2165, isLocal: true, isDefinition: true)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "dumped_before", scope: !4454, file: !3, line: 48, type: !833, isLocal: true, isDefinition: true)
!4454 = distinct !DISubprogram(name: "unwind_dump", scope: !3, file: !3, line: 46, type: !4455, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4457)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !4175}
!4457 = !{!4458, !4459, !4460, !4461, !4462}
!4458 = !DILocalVariable(name: "state", arg: 1, scope: !4454, file: !3, line: 46, type: !4175)
!4459 = !DILocalVariable(name: "word", scope: !4454, file: !3, line: 49, type: !104)
!4460 = !DILocalVariable(name: "sp", scope: !4454, file: !3, line: 49, type: !105)
!4461 = !DILocalVariable(name: "stack_info", scope: !4454, file: !3, line: 50, type: !4180)
!4462 = !DILocalVariable(name: "visit_mask", scope: !4454, file: !3, line: 51, type: !104)
!4463 = !DIGlobalVariableExpression(var: !4464, expr: !DIExpression())
!4464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !4465, isLocal: true, isDefinition: true)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 456, elements: !4466)
!4466 = !{!4467}
!4467 = !DISubrange(count: 57)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !4470, isLocal: true, isDefinition: true)
!4470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 160, elements: !4007)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4472, size: 160, elements: !4007)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!4473 = !{!"rsp"}
!4474 = !{i32 7, !"Dwarf Version", i32 5}
!4475 = !{i32 2, !"Debug Info Version", i32 3}
!4476 = !{i32 1, !"wchar_size", i32 2}
!4477 = !{i32 8, !"cf-protection-branch", i32 1}
!4478 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4479 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4480 = !{i32 1, !"Code Model", i32 2}
!4481 = !{i32 1, !"override-stack-alignment", i32 8}
!4482 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4483 = distinct !DISubprogram(name: "unwind_debug_cmdline", scope: !3, file: !3, line: 38, type: !4110, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "str", arg: 1, scope: !4483, file: !3, line: 38, type: !846)
!4486 = !DILocation(line: 38, column: 46, scope: !4483)
!4487 = !DILocation(line: 40, column: 15, scope: !4483)
!4488 = !DILocation(line: 42, column: 2, scope: !4483)
!4489 = distinct !DISubprogram(name: "unwind_module_init", scope: !3, file: !3, line: 289, type: !4490, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4492)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !1227, !103, !1144, !103, !1144}
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4503}
!4493 = !DILocalVariable(name: "mod", arg: 1, scope: !4489, file: !3, line: 289, type: !1227)
!4494 = !DILocalVariable(name: "_orc_ip", arg: 2, scope: !4489, file: !3, line: 289, type: !103)
!4495 = !DILocalVariable(name: "orc_ip_size", arg: 3, scope: !4489, file: !3, line: 289, type: !1144)
!4496 = !DILocalVariable(name: "_orc", arg: 4, scope: !4489, file: !3, line: 290, type: !103)
!4497 = !DILocalVariable(name: "orc_size", arg: 5, scope: !4489, file: !3, line: 290, type: !1144)
!4498 = !DILocalVariable(name: "orc_ip", scope: !4489, file: !3, line: 292, type: !2162)
!4499 = !DILocalVariable(name: "orc", scope: !4489, file: !3, line: 293, type: !2164)
!4500 = !DILocalVariable(name: "num_entries", scope: !4489, file: !3, line: 294, type: !7)
!4501 = !DILocalVariable(name: "__ret_warn_on", scope: !4502, file: !3, line: 296, type: !166)
!4502 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 296, column: 2)
!4503 = !DILocalVariable(name: "__flags", scope: !4504, file: !3, line: 296, type: !166)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 296, column: 2)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 296, column: 2)
!4506 = !DILocation(line: 289, column: 40, scope: !4489)
!4507 = !DILocation(line: 289, column: 51, scope: !4489)
!4508 = !DILocation(line: 289, column: 67, scope: !4489)
!4509 = !DILocation(line: 290, column: 10, scope: !4489)
!4510 = !DILocation(line: 290, column: 23, scope: !4489)
!4511 = !DILocation(line: 292, column: 2, scope: !4489)
!4512 = !DILocation(line: 292, column: 7, scope: !4489)
!4513 = !DILocation(line: 292, column: 16, scope: !4489)
!4514 = !DILocation(line: 293, column: 2, scope: !4489)
!4515 = !DILocation(line: 293, column: 20, scope: !4489)
!4516 = !DILocation(line: 293, column: 26, scope: !4489)
!4517 = !DILocation(line: 294, column: 2, scope: !4489)
!4518 = !DILocation(line: 294, column: 15, scope: !4489)
!4519 = !DILocation(line: 294, column: 29, scope: !4489)
!4520 = !DILocation(line: 294, column: 41, scope: !4489)
!4521 = !DILocation(line: 296, column: 2, scope: !4502)
!4522 = !DILocation(line: 296, column: 2, scope: !4505)
!4523 = !DILocation(line: 296, column: 2, scope: !4504)
!4524 = !DILocation(line: 296, column: 2, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 296, column: 2)
!4526 = !DILocation(line: 296, column: 2, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 296, column: 2)
!4528 = !{i64 2154529287, i64 2154529316, i64 2154529362, i64 2154529420, i64 2154529474, i64 2154529528, i64 2154529583, i64 2154529614, i64 2154529922, i64 2154529928, i64 2154529975, i64 2154529998, i64 2154530024}
!4529 = !DILocation(line: 296, column: 2, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 296, column: 2)
!4531 = !DILocation(line: 296, column: 2, scope: !4489)
!4532 = !DILocation(line: 305, column: 2, scope: !4489)
!4533 = !DILocation(line: 306, column: 21, scope: !4489)
!4534 = !DILocation(line: 306, column: 19, scope: !4489)
!4535 = !DILocation(line: 307, column: 18, scope: !4489)
!4536 = !DILocation(line: 307, column: 16, scope: !4489)
!4537 = !DILocation(line: 308, column: 7, scope: !4489)
!4538 = !DILocation(line: 308, column: 15, scope: !4489)
!4539 = !DILocation(line: 308, column: 2, scope: !4489)
!4540 = !DILocation(line: 309, column: 2, scope: !4489)
!4541 = !DILocation(line: 311, column: 28, scope: !4489)
!4542 = !DILocation(line: 311, column: 2, scope: !4489)
!4543 = !DILocation(line: 311, column: 7, scope: !4489)
!4544 = !DILocation(line: 311, column: 12, scope: !4489)
!4545 = !DILocation(line: 311, column: 26, scope: !4489)
!4546 = !DILocation(line: 312, column: 25, scope: !4489)
!4547 = !DILocation(line: 312, column: 2, scope: !4489)
!4548 = !DILocation(line: 312, column: 7, scope: !4489)
!4549 = !DILocation(line: 312, column: 12, scope: !4489)
!4550 = !DILocation(line: 312, column: 23, scope: !4489)
!4551 = !DILocation(line: 313, column: 23, scope: !4489)
!4552 = !DILocation(line: 313, column: 2, scope: !4489)
!4553 = !DILocation(line: 313, column: 7, scope: !4489)
!4554 = !DILocation(line: 313, column: 12, scope: !4489)
!4555 = !DILocation(line: 313, column: 21, scope: !4489)
!4556 = !DILocation(line: 314, column: 1, scope: !4489)
!4557 = !DISubprogram(name: "mutex_lock", scope: !585, file: !585, line: 227, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!4561 = !DISubprogram(name: "sort", scope: !4562, file: !4562, line: 12, type: !4563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4562 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !103, !1144, !1144, !4565, !4569}
!4565 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !191, line: 245, baseType: !4566)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!166, !1880, !1880}
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !191, line: 242, baseType: !4570)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !103, !103, !166}
!4573 = distinct !DISubprogram(name: "orc_sort_cmp", scope: !3, file: !3, line: 267, type: !4567, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4580, !4581, !4582}
!4575 = !DILocalVariable(name: "_a", arg: 1, scope: !4573, file: !3, line: 267, type: !1880)
!4576 = !DILocalVariable(name: "_b", arg: 2, scope: !4573, file: !3, line: 267, type: !1880)
!4577 = !DILocalVariable(name: "orc_a", scope: !4573, file: !3, line: 269, type: !2164)
!4578 = !DILocalVariable(name: "a", scope: !4573, file: !3, line: 270, type: !4579)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!4580 = !DILocalVariable(name: "b", scope: !4573, file: !3, line: 270, type: !4579)
!4581 = !DILocalVariable(name: "a_val", scope: !4573, file: !3, line: 271, type: !104)
!4582 = !DILocalVariable(name: "b_val", scope: !4573, file: !3, line: 272, type: !104)
!4583 = !DILocation(line: 267, column: 37, scope: !4573)
!4584 = !DILocation(line: 267, column: 53, scope: !4573)
!4585 = !DILocation(line: 269, column: 2, scope: !4573)
!4586 = !DILocation(line: 269, column: 20, scope: !4573)
!4587 = !DILocation(line: 270, column: 2, scope: !4573)
!4588 = !DILocation(line: 270, column: 13, scope: !4573)
!4589 = !DILocation(line: 270, column: 17, scope: !4573)
!4590 = !DILocation(line: 270, column: 22, scope: !4573)
!4591 = !DILocation(line: 270, column: 26, scope: !4573)
!4592 = !DILocation(line: 271, column: 2, scope: !4573)
!4593 = !DILocation(line: 271, column: 16, scope: !4573)
!4594 = !DILocation(line: 271, column: 31, scope: !4573)
!4595 = !DILocation(line: 271, column: 24, scope: !4573)
!4596 = !DILocation(line: 272, column: 2, scope: !4573)
!4597 = !DILocation(line: 272, column: 16, scope: !4573)
!4598 = !DILocation(line: 272, column: 31, scope: !4573)
!4599 = !DILocation(line: 272, column: 24, scope: !4573)
!4600 = !DILocation(line: 274, column: 6, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 274, column: 6)
!4602 = !DILocation(line: 274, column: 14, scope: !4601)
!4603 = !DILocation(line: 274, column: 12, scope: !4601)
!4604 = !DILocation(line: 274, column: 6, scope: !4573)
!4605 = !DILocation(line: 275, column: 3, scope: !4601)
!4606 = !DILocation(line: 276, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 276, column: 6)
!4608 = !DILocation(line: 276, column: 14, scope: !4607)
!4609 = !DILocation(line: 276, column: 12, scope: !4607)
!4610 = !DILocation(line: 276, column: 6, scope: !4573)
!4611 = !DILocation(line: 277, column: 3, scope: !4607)
!4612 = !DILocation(line: 285, column: 10, scope: !4573)
!4613 = !DILocation(line: 285, column: 27, scope: !4573)
!4614 = !DILocation(line: 285, column: 31, scope: !4573)
!4615 = !DILocation(line: 285, column: 29, scope: !4573)
!4616 = !DILocation(line: 285, column: 24, scope: !4573)
!4617 = !DILocation(line: 285, column: 8, scope: !4573)
!4618 = !DILocation(line: 286, column: 9, scope: !4573)
!4619 = !DILocation(line: 286, column: 16, scope: !4573)
!4620 = !DILocation(line: 286, column: 21, scope: !4573)
!4621 = !DILocation(line: 286, column: 2, scope: !4573)
!4622 = !DILocation(line: 287, column: 1, scope: !4573)
!4623 = distinct !DISubprogram(name: "orc_sort_swap", scope: !3, file: !3, line: 250, type: !4571, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634}
!4625 = !DILocalVariable(name: "_a", arg: 1, scope: !4623, file: !3, line: 250, type: !103)
!4626 = !DILocalVariable(name: "_b", arg: 2, scope: !4623, file: !3, line: 250, type: !103)
!4627 = !DILocalVariable(name: "size", arg: 3, scope: !4623, file: !3, line: 250, type: !166)
!4628 = !DILocalVariable(name: "orc_a", scope: !4623, file: !3, line: 252, type: !2164)
!4629 = !DILocalVariable(name: "orc_b", scope: !4623, file: !3, line: 252, type: !2164)
!4630 = !DILocalVariable(name: "a", scope: !4623, file: !3, line: 253, type: !2162)
!4631 = !DILocalVariable(name: "b", scope: !4623, file: !3, line: 253, type: !2162)
!4632 = !DILocalVariable(name: "tmp", scope: !4623, file: !3, line: 253, type: !166)
!4633 = !DILocalVariable(name: "delta", scope: !4623, file: !3, line: 254, type: !166)
!4634 = !DILocalVariable(name: "__tmp", scope: !4635, file: !3, line: 264, type: !2165)
!4635 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 264, column: 2)
!4636 = !DILocation(line: 250, column: 33, scope: !4623)
!4637 = !DILocation(line: 250, column: 43, scope: !4623)
!4638 = !DILocation(line: 250, column: 51, scope: !4623)
!4639 = !DILocation(line: 252, column: 2, scope: !4623)
!4640 = !DILocation(line: 252, column: 20, scope: !4623)
!4641 = !DILocation(line: 252, column: 28, scope: !4623)
!4642 = !DILocation(line: 253, column: 2, scope: !4623)
!4643 = !DILocation(line: 253, column: 7, scope: !4623)
!4644 = !DILocation(line: 253, column: 11, scope: !4623)
!4645 = !DILocation(line: 253, column: 16, scope: !4623)
!4646 = !DILocation(line: 253, column: 20, scope: !4623)
!4647 = !DILocation(line: 253, column: 24, scope: !4623)
!4648 = !DILocation(line: 254, column: 2, scope: !4623)
!4649 = !DILocation(line: 254, column: 6, scope: !4623)
!4650 = !DILocation(line: 254, column: 14, scope: !4623)
!4651 = !DILocation(line: 254, column: 19, scope: !4623)
!4652 = !DILocation(line: 254, column: 17, scope: !4623)
!4653 = !DILocation(line: 257, column: 9, scope: !4623)
!4654 = !DILocation(line: 257, column: 8, scope: !4623)
!4655 = !DILocation(line: 257, column: 6, scope: !4623)
!4656 = !DILocation(line: 258, column: 8, scope: !4623)
!4657 = !DILocation(line: 258, column: 7, scope: !4623)
!4658 = !DILocation(line: 258, column: 12, scope: !4623)
!4659 = !DILocation(line: 258, column: 10, scope: !4623)
!4660 = !DILocation(line: 258, column: 3, scope: !4623)
!4661 = !DILocation(line: 258, column: 5, scope: !4623)
!4662 = !DILocation(line: 259, column: 7, scope: !4623)
!4663 = !DILocation(line: 259, column: 13, scope: !4623)
!4664 = !DILocation(line: 259, column: 11, scope: !4623)
!4665 = !DILocation(line: 259, column: 3, scope: !4623)
!4666 = !DILocation(line: 259, column: 5, scope: !4623)
!4667 = !DILocation(line: 262, column: 10, scope: !4623)
!4668 = !DILocation(line: 262, column: 27, scope: !4623)
!4669 = !DILocation(line: 262, column: 31, scope: !4623)
!4670 = !DILocation(line: 262, column: 29, scope: !4623)
!4671 = !DILocation(line: 262, column: 24, scope: !4623)
!4672 = !DILocation(line: 262, column: 8, scope: !4623)
!4673 = !DILocation(line: 263, column: 10, scope: !4623)
!4674 = !DILocation(line: 263, column: 27, scope: !4623)
!4675 = !DILocation(line: 263, column: 31, scope: !4623)
!4676 = !DILocation(line: 263, column: 29, scope: !4623)
!4677 = !DILocation(line: 263, column: 24, scope: !4623)
!4678 = !DILocation(line: 263, column: 8, scope: !4623)
!4679 = !DILocation(line: 264, column: 2, scope: !4623)
!4680 = !DILocation(line: 264, column: 2, scope: !4635)
!4681 = !DILocation(line: 265, column: 1, scope: !4623)
!4682 = !DISubprogram(name: "mutex_unlock", scope: !585, file: !585, line: 246, type: !4558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4683 = !DILocation(line: 319, column: 2, scope: !4120)
!4684 = !DILocation(line: 319, column: 9, scope: !4120)
!4685 = !DILocation(line: 320, column: 2, scope: !4120)
!4686 = !DILocation(line: 320, column: 9, scope: !4120)
!4687 = !DILocation(line: 321, column: 2, scope: !4120)
!4688 = !DILocation(line: 321, column: 9, scope: !4120)
!4689 = !DILocation(line: 321, column: 23, scope: !4120)
!4690 = !DILocation(line: 321, column: 35, scope: !4120)
!4691 = !DILocation(line: 322, column: 2, scope: !4120)
!4692 = !DILocation(line: 322, column: 20, scope: !4120)
!4693 = !DILocation(line: 323, column: 2, scope: !4120)
!4694 = !DILocation(line: 323, column: 6, scope: !4120)
!4695 = !DILocation(line: 325, column: 7, scope: !4130)
!4696 = !DILocation(line: 325, column: 19, scope: !4130)
!4697 = !DILocation(line: 325, column: 22, scope: !4130)
!4698 = !DILocation(line: 325, column: 34, scope: !4130)
!4699 = !DILocation(line: 325, column: 48, scope: !4130)
!4700 = !DILocation(line: 325, column: 53, scope: !4130)
!4701 = !DILocation(line: 326, column: 6, scope: !4130)
!4702 = !DILocation(line: 326, column: 15, scope: !4130)
!4703 = !DILocation(line: 326, column: 42, scope: !4130)
!4704 = !DILocation(line: 326, column: 47, scope: !4130)
!4705 = !DILocation(line: 327, column: 6, scope: !4130)
!4706 = !DILocation(line: 327, column: 21, scope: !4130)
!4707 = !DILocation(line: 327, column: 30, scope: !4130)
!4708 = !DILocation(line: 327, column: 18, scope: !4130)
!4709 = !DILocation(line: 325, column: 6, scope: !4120)
!4710 = !DILocation(line: 328, column: 3, scope: !4128)
!4711 = !DILocation(line: 328, column: 3, scope: !4132)
!4712 = !{i8 0, i8 2}
!4713 = !DILocation(line: 328, column: 3, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 328, column: 3)
!4715 = !DILocation(line: 0, scope: !4714)
!4716 = !DILocation(line: 328, column: 3, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 328, column: 3)
!4718 = !DILocation(line: 328, column: 3, scope: !4133)
!4719 = !DILocation(line: 328, column: 3, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 328, column: 3)
!4721 = !DILocation(line: 328, column: 3, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 328, column: 3)
!4723 = !DILocation(line: 328, column: 3, scope: !4129)
!4724 = !DILocation(line: 329, column: 3, scope: !4129)
!4725 = !DILocation(line: 339, column: 37, scope: !4120)
!4726 = !DILocation(line: 339, column: 22, scope: !4120)
!4727 = !DILocation(line: 339, column: 20, scope: !4120)
!4728 = !DILocation(line: 340, column: 9, scope: !4141)
!4729 = !DILocation(line: 340, column: 7, scope: !4141)
!4730 = !DILocation(line: 340, column: 14, scope: !4140)
!4731 = !DILocation(line: 340, column: 18, scope: !4140)
!4732 = !DILocation(line: 340, column: 35, scope: !4140)
!4733 = !DILocation(line: 340, column: 16, scope: !4140)
!4734 = !DILocation(line: 340, column: 2, scope: !4141)
!4735 = !DILocation(line: 342, column: 6, scope: !4139)
!4736 = !DILocation(line: 343, column: 45, scope: !4139)
!4737 = !DILocation(line: 343, column: 43, scope: !4139)
!4738 = !DILocation(line: 343, column: 24, scope: !4139)
!4739 = !DILocation(line: 343, column: 22, scope: !4139)
!4740 = !DILocation(line: 341, column: 9, scope: !4139)
!4741 = !DILocation(line: 341, column: 7, scope: !4139)
!4742 = !DILocation(line: 344, column: 8, scope: !4138)
!4743 = !DILocation(line: 344, column: 7, scope: !4139)
!4744 = !DILocation(line: 345, column: 4, scope: !4136)
!4745 = !DILocation(line: 345, column: 4, scope: !4143)
!4746 = !DILocation(line: 345, column: 4, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 345, column: 4)
!4748 = !DILocation(line: 0, scope: !4747)
!4749 = !DILocation(line: 345, column: 4, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 345, column: 4)
!4751 = !DILocation(line: 345, column: 4, scope: !4144)
!4752 = !DILocation(line: 345, column: 4, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 345, column: 4)
!4754 = !DILocation(line: 345, column: 4, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 345, column: 4)
!4756 = !DILocation(line: 345, column: 4, scope: !4137)
!4757 = !DILocation(line: 346, column: 4, scope: !4137)
!4758 = !DILocation(line: 349, column: 19, scope: !4139)
!4759 = !DILocation(line: 349, column: 23, scope: !4139)
!4760 = !DILocation(line: 349, column: 14, scope: !4139)
!4761 = !DILocation(line: 349, column: 3, scope: !4139)
!4762 = !DILocation(line: 349, column: 17, scope: !4139)
!4763 = !DILocation(line: 350, column: 2, scope: !4139)
!4764 = !DILocation(line: 340, column: 40, scope: !4140)
!4765 = !DILocation(line: 340, column: 2, scope: !4140)
!4766 = distinct !{!4766, !4734, !4767, !4768, !4769}
!4767 = !DILocation(line: 350, column: 2, scope: !4141)
!4768 = !{!"llvm.loop.mustprogress"}
!4769 = !{!"llvm.loop.unroll.disable"}
!4770 = !DILocation(line: 353, column: 62, scope: !4120)
!4771 = !DILocation(line: 353, column: 8, scope: !4120)
!4772 = !DILocation(line: 353, column: 6, scope: !4120)
!4773 = !DILocation(line: 355, column: 7, scope: !4149)
!4774 = !DILocation(line: 355, column: 6, scope: !4120)
!4775 = !DILocation(line: 356, column: 3, scope: !4147)
!4776 = !DILocation(line: 356, column: 3, scope: !4151)
!4777 = !DILocation(line: 356, column: 3, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 356, column: 3)
!4779 = !DILocation(line: 0, scope: !4778)
!4780 = !DILocation(line: 356, column: 3, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 356, column: 3)
!4782 = !DILocation(line: 356, column: 3, scope: !4152)
!4783 = !DILocation(line: 356, column: 3, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 356, column: 3)
!4785 = !DILocation(line: 356, column: 3, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 356, column: 3)
!4787 = !DILocation(line: 356, column: 3, scope: !4148)
!4788 = !DILocation(line: 357, column: 3, scope: !4148)
!4789 = !DILocation(line: 359, column: 36, scope: !4120)
!4790 = !DILocation(line: 359, column: 40, scope: !4120)
!4791 = !DILocation(line: 359, column: 13, scope: !4120)
!4792 = !DILocation(line: 359, column: 30, scope: !4120)
!4793 = !DILocation(line: 359, column: 2, scope: !4120)
!4794 = !DILocation(line: 359, column: 34, scope: !4120)
!4795 = !DILocation(line: 361, column: 11, scope: !4120)
!4796 = !DILocation(line: 362, column: 1, scope: !4120)
!4797 = !DISubprogram(name: "_printk_deferred", scope: !4798, file: !4798, line: 158, type: !4799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4798 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!166, !836, null}
!4801 = distinct !DISubprogram(name: "__orc_find", scope: !3, file: !3, line: 83, type: !4802, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!2164, !2162, !2164, !7, !104}
!4804 = !{!4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812}
!4805 = !DILocalVariable(name: "ip_table", arg: 1, scope: !4801, file: !3, line: 83, type: !2162)
!4806 = !DILocalVariable(name: "u_table", arg: 2, scope: !4801, file: !3, line: 83, type: !2164)
!4807 = !DILocalVariable(name: "num_entries", arg: 3, scope: !4801, file: !3, line: 84, type: !7)
!4808 = !DILocalVariable(name: "ip", arg: 4, scope: !4801, file: !3, line: 84, type: !104)
!4809 = !DILocalVariable(name: "first", scope: !4801, file: !3, line: 86, type: !2162)
!4810 = !DILocalVariable(name: "last", scope: !4801, file: !3, line: 87, type: !2162)
!4811 = !DILocalVariable(name: "mid", scope: !4801, file: !3, line: 88, type: !2162)
!4812 = !DILocalVariable(name: "found", scope: !4801, file: !3, line: 88, type: !2162)
!4813 = !DILocation(line: 83, column: 42, scope: !4801)
!4814 = !DILocation(line: 83, column: 70, scope: !4801)
!4815 = !DILocation(line: 84, column: 22, scope: !4801)
!4816 = !DILocation(line: 84, column: 49, scope: !4801)
!4817 = !DILocation(line: 86, column: 2, scope: !4801)
!4818 = !DILocation(line: 86, column: 7, scope: !4801)
!4819 = !DILocation(line: 86, column: 15, scope: !4801)
!4820 = !DILocation(line: 87, column: 2, scope: !4801)
!4821 = !DILocation(line: 87, column: 7, scope: !4801)
!4822 = !DILocation(line: 87, column: 14, scope: !4801)
!4823 = !DILocation(line: 87, column: 25, scope: !4801)
!4824 = !DILocation(line: 87, column: 23, scope: !4801)
!4825 = !DILocation(line: 87, column: 37, scope: !4801)
!4826 = !DILocation(line: 88, column: 2, scope: !4801)
!4827 = !DILocation(line: 88, column: 7, scope: !4801)
!4828 = !DILocation(line: 88, column: 13, scope: !4801)
!4829 = !DILocation(line: 88, column: 21, scope: !4801)
!4830 = !DILocation(line: 88, column: 29, scope: !4801)
!4831 = !DILocation(line: 90, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 90, column: 6)
!4833 = !DILocation(line: 90, column: 6, scope: !4801)
!4834 = !DILocation(line: 91, column: 3, scope: !4832)
!4835 = !DILocation(line: 99, column: 2, scope: !4801)
!4836 = !DILocation(line: 99, column: 9, scope: !4801)
!4837 = !DILocation(line: 99, column: 18, scope: !4801)
!4838 = !DILocation(line: 99, column: 15, scope: !4801)
!4839 = !DILocation(line: 100, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 99, column: 24)
!4841 = !DILocation(line: 100, column: 19, scope: !4840)
!4842 = !DILocation(line: 100, column: 26, scope: !4840)
!4843 = !DILocation(line: 100, column: 24, scope: !4840)
!4844 = !DILocation(line: 100, column: 33, scope: !4840)
!4845 = !DILocation(line: 100, column: 15, scope: !4840)
!4846 = !DILocation(line: 100, column: 7, scope: !4840)
!4847 = !DILocation(line: 102, column: 14, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 102, column: 7)
!4849 = !DILocation(line: 102, column: 7, scope: !4848)
!4850 = !DILocation(line: 102, column: 22, scope: !4848)
!4851 = !DILocation(line: 102, column: 19, scope: !4848)
!4852 = !DILocation(line: 102, column: 7, scope: !4840)
!4853 = !DILocation(line: 103, column: 12, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 102, column: 26)
!4855 = !DILocation(line: 103, column: 10, scope: !4854)
!4856 = !DILocation(line: 104, column: 12, scope: !4854)
!4857 = !DILocation(line: 104, column: 16, scope: !4854)
!4858 = !DILocation(line: 104, column: 10, scope: !4854)
!4859 = !DILocation(line: 105, column: 3, scope: !4854)
!4860 = !DILocation(line: 106, column: 11, scope: !4848)
!4861 = !DILocation(line: 106, column: 15, scope: !4848)
!4862 = !DILocation(line: 106, column: 9, scope: !4848)
!4863 = distinct !{!4863, !4835, !4864, !4768, !4769}
!4864 = !DILocation(line: 107, column: 2, scope: !4801)
!4865 = !DILocation(line: 109, column: 9, scope: !4801)
!4866 = !DILocation(line: 109, column: 20, scope: !4801)
!4867 = !DILocation(line: 109, column: 28, scope: !4801)
!4868 = !DILocation(line: 109, column: 26, scope: !4801)
!4869 = !DILocation(line: 109, column: 17, scope: !4801)
!4870 = !DILocation(line: 109, column: 2, scope: !4801)
!4871 = !DILocation(line: 110, column: 1, scope: !4801)
!4872 = distinct !DISubprogram(name: "unwind_get_return_address", scope: !3, file: !3, line: 364, type: !4873, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!104, !4175}
!4875 = !{!4876}
!4876 = !DILocalVariable(name: "state", arg: 1, scope: !4872, file: !3, line: 364, type: !4175)
!4877 = !DILocation(line: 364, column: 62, scope: !4872)
!4878 = !DILocation(line: 366, column: 18, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 366, column: 6)
!4880 = !DILocation(line: 366, column: 6, scope: !4879)
!4881 = !DILocation(line: 366, column: 6, scope: !4872)
!4882 = !DILocation(line: 367, column: 3, scope: !4879)
!4883 = !DILocation(line: 369, column: 31, scope: !4872)
!4884 = !DILocation(line: 369, column: 38, scope: !4872)
!4885 = !DILocation(line: 369, column: 9, scope: !4872)
!4886 = !DILocation(line: 369, column: 44, scope: !4872)
!4887 = !DILocation(line: 369, column: 51, scope: !4872)
!4888 = !DILocation(line: 369, column: 2, scope: !4872)
!4889 = !DILocation(line: 370, column: 1, scope: !4872)
!4890 = distinct !DISubprogram(name: "unwind_done", scope: !4177, file: !4177, line: 48, type: !4173, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4891)
!4891 = !{!4892}
!4892 = !DILocalVariable(name: "state", arg: 1, scope: !4890, file: !4177, line: 48, type: !4175)
!4893 = !DILocation(line: 48, column: 53, scope: !4890)
!4894 = !DILocation(line: 50, column: 9, scope: !4890)
!4895 = !DILocation(line: 50, column: 16, scope: !4890)
!4896 = !DILocation(line: 50, column: 27, scope: !4890)
!4897 = !DILocation(line: 50, column: 32, scope: !4890)
!4898 = !DILocation(line: 50, column: 2, scope: !4890)
!4899 = !DISubprogram(name: "__kernel_text_address", scope: !4900, file: !4900, line: 214, type: !4901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4900 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!166, !104}
!4903 = distinct !DISubprogram(name: "unwind_get_return_address_ptr", scope: !3, file: !3, line: 373, type: !4904, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!105, !4175}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "state", arg: 1, scope: !4903, file: !3, line: 373, type: !4175)
!4908 = !DILocation(line: 373, column: 67, scope: !4903)
!4909 = !DILocation(line: 375, column: 18, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 375, column: 6)
!4911 = !DILocation(line: 375, column: 6, scope: !4910)
!4912 = !DILocation(line: 375, column: 6, scope: !4903)
!4913 = !DILocation(line: 376, column: 3, scope: !4910)
!4914 = !DILocation(line: 378, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 378, column: 6)
!4916 = !DILocation(line: 378, column: 13, scope: !4915)
!4917 = !DILocation(line: 378, column: 6, scope: !4903)
!4918 = !DILocation(line: 379, column: 11, scope: !4915)
!4919 = !DILocation(line: 379, column: 18, scope: !4915)
!4920 = !DILocation(line: 379, column: 24, scope: !4915)
!4921 = !DILocation(line: 379, column: 3, scope: !4915)
!4922 = !DILocation(line: 381, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 381, column: 6)
!4924 = !DILocation(line: 381, column: 13, scope: !4923)
!4925 = !DILocation(line: 381, column: 6, scope: !4903)
!4926 = !DILocation(line: 382, column: 27, scope: !4923)
!4927 = !DILocation(line: 382, column: 34, scope: !4923)
!4928 = !DILocation(line: 382, column: 10, scope: !4923)
!4929 = !DILocation(line: 382, column: 37, scope: !4923)
!4930 = !DILocation(line: 382, column: 3, scope: !4923)
!4931 = !DILocation(line: 384, column: 2, scope: !4903)
!4932 = !DILocation(line: 385, column: 1, scope: !4903)
!4933 = !DILocation(line: 468, column: 45, scope: !4172)
!4934 = !DILocation(line: 470, column: 2, scope: !4172)
!4935 = !DILocation(line: 470, column: 16, scope: !4172)
!4936 = !DILocation(line: 470, column: 22, scope: !4172)
!4937 = !DILocation(line: 470, column: 26, scope: !4172)
!4938 = !DILocation(line: 470, column: 31, scope: !4172)
!4939 = !DILocation(line: 470, column: 41, scope: !4172)
!4940 = !DILocation(line: 470, column: 48, scope: !4172)
!4941 = !DILocation(line: 470, column: 52, scope: !4172)
!4942 = !DILocation(line: 470, column: 62, scope: !4172)
!4943 = !DILocation(line: 470, column: 69, scope: !4172)
!4944 = !DILocation(line: 471, column: 2, scope: !4172)
!4945 = !DILocation(line: 471, column: 18, scope: !4172)
!4946 = !DILocation(line: 471, column: 30, scope: !4172)
!4947 = !DILocation(line: 471, column: 37, scope: !4172)
!4948 = !DILocation(line: 471, column: 48, scope: !4172)
!4949 = !DILocation(line: 472, column: 2, scope: !4172)
!4950 = !DILocation(line: 472, column: 20, scope: !4172)
!4951 = !DILocation(line: 473, column: 2, scope: !4172)
!4952 = !DILocation(line: 473, column: 7, scope: !4172)
!4953 = !DILocation(line: 475, column: 18, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 475, column: 6)
!4955 = !DILocation(line: 475, column: 6, scope: !4954)
!4956 = !DILocation(line: 475, column: 6, scope: !4172)
!4957 = !DILocation(line: 476, column: 3, scope: !4954)
!4958 = !DILocation(line: 479, column: 2, scope: !4172)
!4959 = !DILocation(line: 479, column: 2, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 479, column: 2)
!4961 = !{i64 2154548688}
!4962 = !DILocation(line: 482, column: 6, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 482, column: 6)
!4964 = !DILocation(line: 482, column: 13, scope: !4963)
!4965 = !DILocation(line: 482, column: 18, scope: !4963)
!4966 = !DILocation(line: 482, column: 31, scope: !4963)
!4967 = !DILocation(line: 482, column: 38, scope: !4963)
!4968 = !DILocation(line: 482, column: 21, scope: !4963)
!4969 = !DILocation(line: 482, column: 6, scope: !4172)
!4970 = !DILocation(line: 483, column: 3, scope: !4963)
!4971 = !DILocation(line: 494, column: 17, scope: !4172)
!4972 = !DILocation(line: 494, column: 24, scope: !4172)
!4973 = !DILocation(line: 494, column: 33, scope: !4172)
!4974 = !DILocation(line: 494, column: 40, scope: !4172)
!4975 = !DILocation(line: 494, column: 45, scope: !4172)
!4976 = !DILocation(line: 494, column: 52, scope: !4172)
!4977 = !DILocation(line: 494, column: 55, scope: !4172)
!4978 = !DILocation(line: 494, column: 8, scope: !4172)
!4979 = !DILocation(line: 494, column: 6, scope: !4172)
!4980 = !DILocation(line: 495, column: 7, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 495, column: 6)
!4982 = !DILocation(line: 495, column: 6, scope: !4172)
!4983 = !DILocation(line: 502, column: 7, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 495, column: 12)
!4985 = !DILocation(line: 503, column: 3, scope: !4984)
!4986 = !DILocation(line: 503, column: 10, scope: !4984)
!4987 = !DILocation(line: 503, column: 16, scope: !4984)
!4988 = !DILocation(line: 504, column: 2, scope: !4984)
!4989 = !DILocation(line: 505, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 505, column: 7)
!4991 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 504, column: 9)
!4992 = !DILocation(line: 505, column: 12, scope: !4990)
!4993 = !DILocation(line: 505, column: 17, scope: !4990)
!4994 = !DILocation(line: 505, column: 7, scope: !4991)
!4995 = !DILocation(line: 506, column: 4, scope: !4990)
!4996 = !DILocation(line: 508, column: 7, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 508, column: 7)
!4998 = !DILocation(line: 508, column: 12, scope: !4997)
!4999 = !DILocation(line: 508, column: 17, scope: !4997)
!5000 = !DILocation(line: 508, column: 7, scope: !4991)
!5001 = !DILocation(line: 509, column: 4, scope: !4997)
!5002 = !DILocation(line: 512, column: 18, scope: !4172)
!5003 = !DILocation(line: 512, column: 23, scope: !4172)
!5004 = !DILocation(line: 512, column: 2, scope: !4172)
!5005 = !DILocation(line: 512, column: 9, scope: !4172)
!5006 = !DILocation(line: 512, column: 16, scope: !4172)
!5007 = !DILocation(line: 515, column: 10, scope: !4172)
!5008 = !DILocation(line: 515, column: 15, scope: !4172)
!5009 = !DILocation(line: 515, column: 2, scope: !4172)
!5010 = !DILocation(line: 517, column: 8, scope: !4215)
!5011 = !DILocation(line: 517, column: 15, scope: !4215)
!5012 = !DILocation(line: 517, column: 20, scope: !4215)
!5013 = !DILocation(line: 517, column: 25, scope: !4215)
!5014 = !DILocation(line: 517, column: 18, scope: !4215)
!5015 = !DILocation(line: 517, column: 6, scope: !4215)
!5016 = !DILocation(line: 518, column: 3, scope: !4215)
!5017 = !DILocation(line: 521, column: 8, scope: !4215)
!5018 = !DILocation(line: 521, column: 15, scope: !4215)
!5019 = !DILocation(line: 521, column: 20, scope: !4215)
!5020 = !DILocation(line: 521, column: 25, scope: !4215)
!5021 = !DILocation(line: 521, column: 18, scope: !4215)
!5022 = !DILocation(line: 521, column: 6, scope: !4215)
!5023 = !DILocation(line: 522, column: 3, scope: !4215)
!5024 = !DILocation(line: 525, column: 8, scope: !4215)
!5025 = !DILocation(line: 525, column: 15, scope: !4215)
!5026 = !DILocation(line: 525, column: 6, scope: !4215)
!5027 = !DILocation(line: 526, column: 12, scope: !4215)
!5028 = !DILocation(line: 527, column: 3, scope: !4215)
!5029 = !DILocation(line: 530, column: 8, scope: !4215)
!5030 = !DILocation(line: 530, column: 15, scope: !4215)
!5031 = !DILocation(line: 530, column: 20, scope: !4215)
!5032 = !DILocation(line: 530, column: 25, scope: !4215)
!5033 = !DILocation(line: 530, column: 18, scope: !4215)
!5034 = !DILocation(line: 530, column: 6, scope: !4215)
!5035 = !DILocation(line: 531, column: 12, scope: !4215)
!5036 = !DILocation(line: 532, column: 3, scope: !4215)
!5037 = !DILocation(line: 535, column: 16, scope: !4214)
!5038 = !DILocation(line: 535, column: 8, scope: !4214)
!5039 = !DILocation(line: 535, column: 7, scope: !4215)
!5040 = !DILocation(line: 536, column: 4, scope: !4211)
!5041 = !DILocation(line: 536, column: 4, scope: !4212)
!5042 = !DILocation(line: 536, column: 4, scope: !4209)
!5043 = !DILocation(line: 536, column: 4, scope: !4217)
!5044 = !DILocation(line: 536, column: 4, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 536, column: 4)
!5046 = !DILocation(line: 0, scope: !5045)
!5047 = !DILocation(line: 536, column: 4, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 536, column: 4)
!5049 = !DILocation(line: 536, column: 4, scope: !4218)
!5050 = !DILocation(line: 536, column: 4, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 536, column: 4)
!5052 = !DILocation(line: 536, column: 4, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 536, column: 4)
!5054 = !DILocation(line: 536, column: 4, scope: !4210)
!5055 = !DILocation(line: 536, column: 4, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 536, column: 4)
!5057 = !DILocation(line: 536, column: 4, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 536, column: 4)
!5059 = !DILocation(line: 538, column: 4, scope: !4213)
!5060 = !DILocation(line: 540, column: 3, scope: !4215)
!5061 = !DILocation(line: 543, column: 16, scope: !4226)
!5062 = !DILocation(line: 543, column: 8, scope: !4226)
!5063 = !DILocation(line: 543, column: 7, scope: !4215)
!5064 = !DILocation(line: 544, column: 4, scope: !4223)
!5065 = !DILocation(line: 544, column: 4, scope: !4224)
!5066 = !DILocation(line: 544, column: 4, scope: !4221)
!5067 = !DILocation(line: 544, column: 4, scope: !4228)
!5068 = !DILocation(line: 544, column: 4, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 544, column: 4)
!5070 = !DILocation(line: 0, scope: !5069)
!5071 = !DILocation(line: 544, column: 4, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 544, column: 4)
!5073 = !DILocation(line: 544, column: 4, scope: !4229)
!5074 = !DILocation(line: 544, column: 4, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 544, column: 4)
!5076 = !DILocation(line: 544, column: 4, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 544, column: 4)
!5078 = !DILocation(line: 544, column: 4, scope: !4222)
!5079 = !DILocation(line: 544, column: 4, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 544, column: 4)
!5081 = !DILocation(line: 544, column: 4, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 544, column: 4)
!5083 = !DILocation(line: 546, column: 4, scope: !4225)
!5084 = !DILocation(line: 548, column: 3, scope: !4215)
!5085 = !DILocation(line: 551, column: 16, scope: !4237)
!5086 = !DILocation(line: 551, column: 8, scope: !4237)
!5087 = !DILocation(line: 551, column: 7, scope: !4215)
!5088 = !DILocation(line: 552, column: 4, scope: !4234)
!5089 = !DILocation(line: 552, column: 4, scope: !4235)
!5090 = !DILocation(line: 552, column: 4, scope: !4232)
!5091 = !DILocation(line: 552, column: 4, scope: !4239)
!5092 = !DILocation(line: 552, column: 4, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 552, column: 4)
!5094 = !DILocation(line: 0, scope: !5093)
!5095 = !DILocation(line: 552, column: 4, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 552, column: 4)
!5097 = !DILocation(line: 552, column: 4, scope: !4240)
!5098 = !DILocation(line: 552, column: 4, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 552, column: 4)
!5100 = !DILocation(line: 552, column: 4, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 552, column: 4)
!5102 = !DILocation(line: 552, column: 4, scope: !4233)
!5103 = !DILocation(line: 552, column: 4, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 552, column: 4)
!5105 = !DILocation(line: 552, column: 4, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 552, column: 4)
!5107 = !DILocation(line: 554, column: 4, scope: !4236)
!5108 = !DILocation(line: 556, column: 3, scope: !4215)
!5109 = !DILocation(line: 559, column: 16, scope: !4248)
!5110 = !DILocation(line: 559, column: 8, scope: !4248)
!5111 = !DILocation(line: 559, column: 7, scope: !4215)
!5112 = !DILocation(line: 560, column: 4, scope: !4245)
!5113 = !DILocation(line: 560, column: 4, scope: !4246)
!5114 = !DILocation(line: 560, column: 4, scope: !4243)
!5115 = !DILocation(line: 560, column: 4, scope: !4250)
!5116 = !DILocation(line: 560, column: 4, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 560, column: 4)
!5118 = !DILocation(line: 0, scope: !5117)
!5119 = !DILocation(line: 560, column: 4, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 560, column: 4)
!5121 = !DILocation(line: 560, column: 4, scope: !4251)
!5122 = !DILocation(line: 560, column: 4, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 560, column: 4)
!5124 = !DILocation(line: 560, column: 4, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 560, column: 4)
!5126 = !DILocation(line: 560, column: 4, scope: !4244)
!5127 = !DILocation(line: 560, column: 4, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 560, column: 4)
!5129 = !DILocation(line: 560, column: 4, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 560, column: 4)
!5131 = !DILocation(line: 562, column: 4, scope: !4247)
!5132 = !DILocation(line: 564, column: 3, scope: !4215)
!5133 = !DILocation(line: 567, column: 3, scope: !4254)
!5134 = !DILocation(line: 567, column: 3, scope: !4256)
!5135 = !DILocation(line: 567, column: 3, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 567, column: 3)
!5137 = !DILocation(line: 0, scope: !5136)
!5138 = !DILocation(line: 567, column: 3, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 567, column: 3)
!5140 = !DILocation(line: 567, column: 3, scope: !4257)
!5141 = !DILocation(line: 567, column: 3, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 567, column: 3)
!5143 = !DILocation(line: 567, column: 3, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 567, column: 3)
!5145 = !DILocation(line: 567, column: 3, scope: !4215)
!5146 = !DILocation(line: 569, column: 3, scope: !4215)
!5147 = !DILocation(line: 572, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 572, column: 6)
!5149 = !DILocation(line: 572, column: 6, scope: !4172)
!5150 = !DILocation(line: 573, column: 24, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 573, column: 7)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 572, column: 16)
!5153 = !DILocation(line: 573, column: 31, scope: !5151)
!5154 = !DILocation(line: 573, column: 8, scope: !5151)
!5155 = !DILocation(line: 573, column: 7, scope: !5152)
!5156 = !DILocation(line: 574, column: 4, scope: !5151)
!5157 = !DILocation(line: 576, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 576, column: 7)
!5159 = !DILocation(line: 576, column: 12, scope: !5158)
!5160 = !DILocation(line: 576, column: 19, scope: !5158)
!5161 = !DILocation(line: 576, column: 7, scope: !5152)
!5162 = !DILocation(line: 577, column: 10, scope: !5158)
!5163 = !DILocation(line: 577, column: 15, scope: !5158)
!5164 = !DILocation(line: 577, column: 7, scope: !5158)
!5165 = !DILocation(line: 577, column: 4, scope: !5158)
!5166 = !DILocation(line: 578, column: 2, scope: !5152)
!5167 = !DILocation(line: 581, column: 10, scope: !4172)
!5168 = !DILocation(line: 581, column: 15, scope: !4172)
!5169 = !DILocation(line: 581, column: 2, scope: !4172)
!5170 = !DILocation(line: 583, column: 10, scope: !4266)
!5171 = !DILocation(line: 583, column: 13, scope: !4266)
!5172 = !DILocation(line: 583, column: 8, scope: !4266)
!5173 = !DILocation(line: 585, column: 24, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 585, column: 7)
!5175 = !DILocation(line: 585, column: 31, scope: !5174)
!5176 = !DILocation(line: 585, column: 38, scope: !5174)
!5177 = !DILocation(line: 585, column: 45, scope: !5174)
!5178 = !DILocation(line: 585, column: 8, scope: !5174)
!5179 = !DILocation(line: 585, column: 7, scope: !4266)
!5180 = !DILocation(line: 586, column: 4, scope: !5174)
!5181 = !DILocation(line: 588, column: 39, scope: !4266)
!5182 = !DILocation(line: 588, column: 46, scope: !4266)
!5183 = !DILocation(line: 588, column: 53, scope: !4266)
!5184 = !DILocation(line: 589, column: 28, scope: !4266)
!5185 = !DILocation(line: 589, column: 11, scope: !4266)
!5186 = !DILocation(line: 588, column: 15, scope: !4266)
!5187 = !DILocation(line: 588, column: 3, scope: !4266)
!5188 = !DILocation(line: 588, column: 10, scope: !4266)
!5189 = !DILocation(line: 588, column: 13, scope: !4266)
!5190 = !DILocation(line: 590, column: 15, scope: !4266)
!5191 = !DILocation(line: 590, column: 3, scope: !4266)
!5192 = !DILocation(line: 590, column: 10, scope: !4266)
!5193 = !DILocation(line: 590, column: 13, scope: !4266)
!5194 = !DILocation(line: 591, column: 3, scope: !4266)
!5195 = !DILocation(line: 591, column: 10, scope: !4266)
!5196 = !DILocation(line: 591, column: 15, scope: !4266)
!5197 = !DILocation(line: 592, column: 3, scope: !4266)
!5198 = !DILocation(line: 592, column: 10, scope: !4266)
!5199 = !DILocation(line: 592, column: 20, scope: !4266)
!5200 = !DILocation(line: 593, column: 3, scope: !4266)
!5201 = !DILocation(line: 596, column: 25, scope: !4265)
!5202 = !DILocation(line: 596, column: 32, scope: !4265)
!5203 = !DILocation(line: 596, column: 37, scope: !4265)
!5204 = !DILocation(line: 596, column: 44, scope: !4265)
!5205 = !DILocation(line: 596, column: 49, scope: !4265)
!5206 = !DILocation(line: 596, column: 56, scope: !4265)
!5207 = !DILocation(line: 596, column: 8, scope: !4265)
!5208 = !DILocation(line: 596, column: 7, scope: !4266)
!5209 = !DILocation(line: 597, column: 4, scope: !4262)
!5210 = !DILocation(line: 597, column: 4, scope: !4263)
!5211 = !DILocation(line: 597, column: 4, scope: !4260)
!5212 = !DILocation(line: 597, column: 4, scope: !4268)
!5213 = !DILocation(line: 597, column: 4, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 597, column: 4)
!5215 = !DILocation(line: 0, scope: !5214)
!5216 = !DILocation(line: 597, column: 4, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 597, column: 4)
!5218 = !DILocation(line: 597, column: 4, scope: !4269)
!5219 = !DILocation(line: 597, column: 4, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 597, column: 4)
!5221 = !DILocation(line: 597, column: 4, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 597, column: 4)
!5223 = !DILocation(line: 597, column: 4, scope: !4261)
!5224 = !DILocation(line: 597, column: 4, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 597, column: 4)
!5226 = !DILocation(line: 597, column: 4, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 597, column: 4)
!5228 = !DILocation(line: 599, column: 4, scope: !4264)
!5229 = !DILocation(line: 611, column: 38, scope: !4266)
!5230 = !DILocation(line: 611, column: 45, scope: !4266)
!5231 = !DILocation(line: 611, column: 52, scope: !4266)
!5232 = !DILocation(line: 612, column: 23, scope: !4266)
!5233 = !DILocation(line: 612, column: 30, scope: !4266)
!5234 = !DILocation(line: 612, column: 33, scope: !4266)
!5235 = !DILocation(line: 612, column: 5, scope: !4266)
!5236 = !DILocation(line: 611, column: 15, scope: !4266)
!5237 = !DILocation(line: 611, column: 3, scope: !4266)
!5238 = !DILocation(line: 611, column: 10, scope: !4266)
!5239 = !DILocation(line: 611, column: 13, scope: !4266)
!5240 = !DILocation(line: 613, column: 35, scope: !4266)
!5241 = !DILocation(line: 613, column: 17, scope: !4266)
!5242 = !DILocation(line: 613, column: 3, scope: !4266)
!5243 = !DILocation(line: 613, column: 10, scope: !4266)
!5244 = !DILocation(line: 613, column: 15, scope: !4266)
!5245 = !DILocation(line: 614, column: 3, scope: !4266)
!5246 = !DILocation(line: 614, column: 10, scope: !4266)
!5247 = !DILocation(line: 614, column: 20, scope: !4266)
!5248 = !DILocation(line: 615, column: 3, scope: !4266)
!5249 = !DILocation(line: 615, column: 10, scope: !4266)
!5250 = !DILocation(line: 615, column: 20, scope: !4266)
!5251 = !DILocation(line: 616, column: 3, scope: !4266)
!5252 = !DILocation(line: 619, column: 30, scope: !4277)
!5253 = !DILocation(line: 619, column: 37, scope: !4277)
!5254 = !DILocation(line: 619, column: 42, scope: !4277)
!5255 = !DILocation(line: 619, column: 49, scope: !4277)
!5256 = !DILocation(line: 619, column: 54, scope: !4277)
!5257 = !DILocation(line: 619, column: 61, scope: !4277)
!5258 = !DILocation(line: 619, column: 8, scope: !4277)
!5259 = !DILocation(line: 619, column: 7, scope: !4266)
!5260 = !DILocation(line: 620, column: 4, scope: !4274)
!5261 = !DILocation(line: 620, column: 4, scope: !4275)
!5262 = !DILocation(line: 620, column: 4, scope: !4272)
!5263 = !DILocation(line: 620, column: 4, scope: !4279)
!5264 = !DILocation(line: 620, column: 4, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 620, column: 4)
!5266 = !DILocation(line: 0, scope: !5265)
!5267 = !DILocation(line: 620, column: 4, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 620, column: 4)
!5269 = !DILocation(line: 620, column: 4, scope: !4280)
!5270 = !DILocation(line: 620, column: 4, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 620, column: 4)
!5272 = !DILocation(line: 620, column: 4, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 620, column: 4)
!5274 = !DILocation(line: 620, column: 4, scope: !4273)
!5275 = !DILocation(line: 620, column: 4, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 620, column: 4)
!5277 = !DILocation(line: 620, column: 4, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 620, column: 4)
!5279 = !DILocation(line: 622, column: 4, scope: !4276)
!5280 = !DILocation(line: 625, column: 38, scope: !4266)
!5281 = !DILocation(line: 625, column: 45, scope: !4266)
!5282 = !DILocation(line: 625, column: 52, scope: !4266)
!5283 = !DILocation(line: 626, column: 23, scope: !4266)
!5284 = !DILocation(line: 626, column: 30, scope: !4266)
!5285 = !DILocation(line: 626, column: 33, scope: !4266)
!5286 = !DILocation(line: 626, column: 5, scope: !4266)
!5287 = !DILocation(line: 625, column: 15, scope: !4266)
!5288 = !DILocation(line: 625, column: 3, scope: !4266)
!5289 = !DILocation(line: 625, column: 10, scope: !4266)
!5290 = !DILocation(line: 625, column: 13, scope: !4266)
!5291 = !DILocation(line: 628, column: 7, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 628, column: 7)
!5293 = !DILocation(line: 628, column: 14, scope: !5292)
!5294 = !DILocation(line: 628, column: 7, scope: !4266)
!5295 = !DILocation(line: 629, column: 23, scope: !5292)
!5296 = !DILocation(line: 629, column: 30, scope: !5292)
!5297 = !DILocation(line: 629, column: 4, scope: !5292)
!5298 = !DILocation(line: 629, column: 11, scope: !5292)
!5299 = !DILocation(line: 629, column: 21, scope: !5292)
!5300 = !DILocation(line: 630, column: 25, scope: !4266)
!5301 = !DILocation(line: 630, column: 17, scope: !4266)
!5302 = !DILocation(line: 630, column: 28, scope: !4266)
!5303 = !DILocation(line: 630, column: 3, scope: !4266)
!5304 = !DILocation(line: 630, column: 10, scope: !4266)
!5305 = !DILocation(line: 630, column: 15, scope: !4266)
!5306 = !DILocation(line: 631, column: 3, scope: !4266)
!5307 = !DILocation(line: 631, column: 10, scope: !4266)
!5308 = !DILocation(line: 631, column: 20, scope: !4266)
!5309 = !DILocation(line: 632, column: 3, scope: !4266)
!5310 = !DILocation(line: 635, column: 3, scope: !4283)
!5311 = !DILocation(line: 635, column: 3, scope: !4285)
!5312 = !DILocation(line: 635, column: 3, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 635, column: 3)
!5314 = !DILocation(line: 0, scope: !5313)
!5315 = !DILocation(line: 635, column: 3, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 635, column: 3)
!5317 = !DILocation(line: 635, column: 3, scope: !4286)
!5318 = !DILocation(line: 635, column: 3, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 635, column: 3)
!5320 = !DILocation(line: 635, column: 3, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 635, column: 3)
!5322 = !DILocation(line: 635, column: 3, scope: !4266)
!5323 = !DILocation(line: 637, column: 3, scope: !4266)
!5324 = !DILocation(line: 641, column: 10, scope: !4172)
!5325 = !DILocation(line: 641, column: 15, scope: !4172)
!5326 = !DILocation(line: 641, column: 2, scope: !4172)
!5327 = !DILocation(line: 643, column: 15, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 643, column: 7)
!5329 = !DILocation(line: 643, column: 7, scope: !5328)
!5330 = !DILocation(line: 643, column: 7, scope: !4290)
!5331 = !DILocation(line: 644, column: 16, scope: !5328)
!5332 = !DILocation(line: 644, column: 4, scope: !5328)
!5333 = !DILocation(line: 644, column: 11, scope: !5328)
!5334 = !DILocation(line: 644, column: 14, scope: !5328)
!5335 = !DILocation(line: 645, column: 3, scope: !4290)
!5336 = !DILocation(line: 648, column: 24, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 648, column: 7)
!5338 = !DILocation(line: 648, column: 31, scope: !5337)
!5339 = !DILocation(line: 648, column: 36, scope: !5337)
!5340 = !DILocation(line: 648, column: 41, scope: !5337)
!5341 = !DILocation(line: 648, column: 34, scope: !5337)
!5342 = !DILocation(line: 648, column: 53, scope: !5337)
!5343 = !DILocation(line: 648, column: 60, scope: !5337)
!5344 = !DILocation(line: 648, column: 8, scope: !5337)
!5345 = !DILocation(line: 648, column: 7, scope: !4290)
!5346 = !DILocation(line: 649, column: 4, scope: !5337)
!5347 = !DILocation(line: 650, column: 3, scope: !4290)
!5348 = !DILocation(line: 653, column: 24, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 653, column: 7)
!5350 = !DILocation(line: 653, column: 31, scope: !5349)
!5351 = !DILocation(line: 653, column: 38, scope: !5349)
!5352 = !DILocation(line: 653, column: 43, scope: !5349)
!5353 = !DILocation(line: 653, column: 48, scope: !5349)
!5354 = !DILocation(line: 653, column: 41, scope: !5349)
!5355 = !DILocation(line: 653, column: 60, scope: !5349)
!5356 = !DILocation(line: 653, column: 67, scope: !5349)
!5357 = !DILocation(line: 653, column: 8, scope: !5349)
!5358 = !DILocation(line: 653, column: 7, scope: !4290)
!5359 = !DILocation(line: 654, column: 4, scope: !5349)
!5360 = !DILocation(line: 655, column: 3, scope: !4290)
!5361 = !DILocation(line: 658, column: 3, scope: !4289)
!5362 = !DILocation(line: 658, column: 3, scope: !4292)
!5363 = !DILocation(line: 658, column: 3, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 658, column: 3)
!5365 = !DILocation(line: 0, scope: !5364)
!5366 = !DILocation(line: 658, column: 3, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 658, column: 3)
!5368 = !DILocation(line: 658, column: 3, scope: !4293)
!5369 = !DILocation(line: 658, column: 3, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 658, column: 3)
!5371 = !DILocation(line: 658, column: 3, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 658, column: 3)
!5373 = !DILocation(line: 658, column: 3, scope: !4290)
!5374 = !DILocation(line: 660, column: 3, scope: !4290)
!5375 = !DILocation(line: 664, column: 6, scope: !4301)
!5376 = !DILocation(line: 664, column: 13, scope: !4301)
!5377 = !DILocation(line: 664, column: 24, scope: !4301)
!5378 = !DILocation(line: 664, column: 32, scope: !4301)
!5379 = !DILocation(line: 664, column: 29, scope: !4301)
!5380 = !DILocation(line: 664, column: 42, scope: !4301)
!5381 = !DILocation(line: 665, column: 16, scope: !4301)
!5382 = !DILocation(line: 665, column: 23, scope: !4301)
!5383 = !DILocation(line: 665, column: 43, scope: !4301)
!5384 = !DILocation(line: 665, column: 50, scope: !4301)
!5385 = !DILocation(line: 665, column: 35, scope: !4301)
!5386 = !DILocation(line: 665, column: 6, scope: !4301)
!5387 = !DILocation(line: 665, column: 68, scope: !4301)
!5388 = !DILocation(line: 666, column: 6, scope: !4301)
!5389 = !DILocation(line: 666, column: 13, scope: !4301)
!5390 = !DILocation(line: 666, column: 19, scope: !4301)
!5391 = !DILocation(line: 666, column: 16, scope: !4301)
!5392 = !DILocation(line: 664, column: 6, scope: !4172)
!5393 = !DILocation(line: 667, column: 3, scope: !4298)
!5394 = !DILocation(line: 667, column: 3, scope: !4299)
!5395 = !DILocation(line: 667, column: 3, scope: !4296)
!5396 = !DILocation(line: 667, column: 3, scope: !4303)
!5397 = !DILocation(line: 667, column: 3, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 667, column: 3)
!5399 = !DILocation(line: 0, scope: !5398)
!5400 = !DILocation(line: 667, column: 3, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 667, column: 3)
!5402 = !DILocation(line: 667, column: 3, scope: !4304)
!5403 = !DILocation(line: 667, column: 3, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 667, column: 3)
!5405 = !DILocation(line: 667, column: 3, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 667, column: 3)
!5407 = !DILocation(line: 667, column: 3, scope: !4297)
!5408 = !DILocation(line: 667, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 667, column: 3)
!5410 = !DILocation(line: 667, column: 3, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 667, column: 3)
!5412 = !DILocation(line: 669, column: 3, scope: !4300)
!5413 = !DILocation(line: 672, column: 2, scope: !4172)
!5414 = !DILocation(line: 672, column: 2, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 672, column: 2)
!5416 = !{i64 2154567575}
!5417 = !DILocation(line: 672, column: 2, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 672, column: 2)
!5419 = !DILocation(line: 672, column: 2, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 672, column: 2)
!5421 = !{i64 2154567757}
!5422 = !DILocation(line: 673, column: 2, scope: !4172)
!5423 = !DILocation(line: 675, column: 1, scope: !4172)
!5424 = !DILocation(line: 676, column: 2, scope: !4172)
!5425 = !DILocation(line: 676, column: 9, scope: !4172)
!5426 = !DILocation(line: 676, column: 15, scope: !4172)
!5427 = !DILocation(line: 678, column: 1, scope: !4172)
!5428 = !DILocation(line: 679, column: 2, scope: !4172)
!5429 = !DILocation(line: 679, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 679, column: 2)
!5431 = !{i64 2154569486}
!5432 = !DILocation(line: 679, column: 2, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 679, column: 2)
!5434 = !DILocation(line: 679, column: 2, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 679, column: 2)
!5436 = !{i64 2154569668}
!5437 = !DILocation(line: 680, column: 2, scope: !4172)
!5438 = !DILocation(line: 680, column: 9, scope: !4172)
!5439 = !DILocation(line: 680, column: 20, scope: !4172)
!5440 = !DILocation(line: 680, column: 25, scope: !4172)
!5441 = !DILocation(line: 681, column: 2, scope: !4172)
!5442 = !DILocation(line: 682, column: 1, scope: !4172)
!5443 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5444, file: !5444, line: 78, type: !3583, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5444 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5445 = !{!5446, !5447, !5449}
!5446 = !DILocalVariable(name: "val", arg: 1, scope: !5443, file: !5444, line: 78, type: !166)
!5447 = !DILocalVariable(name: "pao_ID__", scope: !5448, file: !5444, line: 80, type: !2228)
!5448 = distinct !DILexicalBlock(scope: !5443, file: !5444, line: 80, column: 2)
!5449 = !DILocalVariable(name: "pto_val__", scope: !5450, file: !5444, line: 80, type: !167)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !5444, line: 80, column: 2)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !5444, line: 80, column: 2)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !5444, line: 80, column: 2)
!5453 = !DILocation(line: 78, column: 53, scope: !5443)
!5454 = !DILocation(line: 80, column: 2, scope: !5443)
!5455 = !DILocation(line: 80, column: 2, scope: !5448)
!5456 = !DILocation(line: 80, column: 2, scope: !5452)
!5457 = !DILocation(line: 80, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5452, file: !5444, line: 80, column: 2)
!5459 = !{i64 2149633327}
!5460 = !DILocation(line: 80, column: 2, scope: !5451)
!5461 = !DILocation(line: 80, column: 2, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5451, file: !5444, line: 80, column: 2)
!5463 = !{i64 2149633622}
!5464 = !DILocation(line: 80, column: 2, scope: !5450)
!5465 = !{i64 2149634327}
!5466 = !DILocation(line: 81, column: 1, scope: !5443)
!5467 = distinct !DISubprogram(name: "user_mode", scope: !108, file: !108, line: 209, type: !5468, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5470)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!166, !106}
!5470 = !{!5471}
!5471 = !DILocalVariable(name: "regs", arg: 1, scope: !5467, file: !108, line: 209, type: !106)
!5472 = !DILocation(line: 209, column: 54, scope: !5467)
!5473 = !DILocation(line: 214, column: 12, scope: !5467)
!5474 = !DILocation(line: 214, column: 18, scope: !5467)
!5475 = !DILocation(line: 214, column: 21, scope: !5467)
!5476 = !DILocation(line: 214, column: 10, scope: !5467)
!5477 = !DILocation(line: 214, column: 9, scope: !5467)
!5478 = !DILocation(line: 214, column: 2, scope: !5467)
!5479 = !DILocation(line: 198, column: 49, scope: !4408)
!5480 = !DILocation(line: 202, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 202, column: 6)
!5482 = !DILocation(line: 202, column: 9, scope: !5481)
!5483 = !DILocation(line: 202, column: 6, scope: !4408)
!5484 = !DILocation(line: 203, column: 3, scope: !5481)
!5485 = !DILocation(line: 206, column: 6, scope: !4415)
!5486 = !DILocation(line: 206, column: 9, scope: !4415)
!5487 = !DILocation(line: 206, column: 28, scope: !4415)
!5488 = !DILocation(line: 206, column: 31, scope: !4415)
!5489 = !DILocation(line: 206, column: 34, scope: !4415)
!5490 = !DILocation(line: 206, column: 6, scope: !4408)
!5491 = !DILocation(line: 207, column: 3, scope: !4414)
!5492 = !DILocation(line: 207, column: 16, scope: !4414)
!5493 = !DILocation(line: 207, column: 21, scope: !4414)
!5494 = !DILocation(line: 207, column: 28, scope: !4414)
!5495 = !DILocation(line: 209, column: 10, scope: !4414)
!5496 = !DILocation(line: 209, column: 13, scope: !4414)
!5497 = !DILocation(line: 209, column: 32, scope: !4414)
!5498 = !DILocation(line: 209, column: 9, scope: !4414)
!5499 = !DILocation(line: 209, column: 7, scope: !4414)
!5500 = !DILocation(line: 211, column: 7, scope: !4421)
!5501 = !DILocation(line: 211, column: 7, scope: !4414)
!5502 = !DILocation(line: 212, column: 4, scope: !4419)
!5503 = !DILocation(line: 212, column: 4, scope: !4423)
!5504 = !DILocation(line: 212, column: 4, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 212, column: 4)
!5506 = !DILocation(line: 0, scope: !5505)
!5507 = !DILocation(line: 212, column: 4, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 212, column: 4)
!5509 = !DILocation(line: 212, column: 4, scope: !4424)
!5510 = !DILocation(line: 212, column: 4, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 212, column: 4)
!5512 = !DILocation(line: 212, column: 4, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 212, column: 4)
!5514 = !DILocation(line: 212, column: 4, scope: !4420)
!5515 = !DILocation(line: 214, column: 4, scope: !4420)
!5516 = !DILocation(line: 217, column: 22, scope: !4414)
!5517 = !DILocation(line: 217, column: 11, scope: !4414)
!5518 = !DILocation(line: 217, column: 9, scope: !4414)
!5519 = !DILocation(line: 218, column: 21, scope: !4414)
!5520 = !DILocation(line: 218, column: 25, scope: !4414)
!5521 = !DILocation(line: 218, column: 10, scope: !4414)
!5522 = !DILocation(line: 218, column: 30, scope: !4414)
!5523 = !DILocation(line: 218, column: 8, scope: !4414)
!5524 = !DILocation(line: 220, column: 7, scope: !4429)
!5525 = !DILocation(line: 220, column: 7, scope: !4414)
!5526 = !DILocation(line: 222, column: 4, scope: !4427)
!5527 = !DILocation(line: 222, column: 4, scope: !4431)
!5528 = !DILocation(line: 222, column: 4, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 222, column: 4)
!5530 = !DILocation(line: 0, scope: !5529)
!5531 = !DILocation(line: 222, column: 4, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 222, column: 4)
!5533 = !DILocation(line: 222, column: 4, scope: !4432)
!5534 = !DILocation(line: 222, column: 4, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 222, column: 4)
!5536 = !DILocation(line: 222, column: 4, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 222, column: 4)
!5538 = !DILocation(line: 222, column: 4, scope: !4428)
!5539 = !DILocation(line: 224, column: 4, scope: !4428)
!5540 = !DILocation(line: 227, column: 45, scope: !4414)
!5541 = !DILocation(line: 227, column: 43, scope: !4414)
!5542 = !DILocation(line: 228, column: 28, scope: !4414)
!5543 = !DILocation(line: 228, column: 26, scope: !4414)
!5544 = !DILocation(line: 228, column: 35, scope: !4414)
!5545 = !DILocation(line: 228, column: 42, scope: !4414)
!5546 = !DILocation(line: 228, column: 40, scope: !4414)
!5547 = !DILocation(line: 228, column: 49, scope: !4414)
!5548 = !DILocation(line: 227, column: 10, scope: !4414)
!5549 = !DILocation(line: 227, column: 3, scope: !4414)
!5550 = !DILocation(line: 229, column: 2, scope: !4415)
!5551 = !DILocation(line: 232, column: 25, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 232, column: 6)
!5553 = !DILocation(line: 232, column: 6, scope: !5552)
!5554 = !DILocation(line: 232, column: 6, scope: !4408)
!5555 = !DILocation(line: 234, column: 28, scope: !5552)
!5556 = !DILocation(line: 234, column: 7, scope: !5552)
!5557 = !DILocation(line: 234, column: 53, scope: !5552)
!5558 = !DILocation(line: 233, column: 10, scope: !5552)
!5559 = !DILocation(line: 233, column: 3, scope: !5552)
!5560 = !DILocation(line: 237, column: 24, scope: !4408)
!5561 = !DILocation(line: 237, column: 8, scope: !4408)
!5562 = !DILocation(line: 237, column: 6, scope: !4408)
!5563 = !DILocation(line: 238, column: 6, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 238, column: 6)
!5565 = !DILocation(line: 238, column: 6, scope: !4408)
!5566 = !DILocation(line: 239, column: 10, scope: !5564)
!5567 = !DILocation(line: 239, column: 3, scope: !5564)
!5568 = !DILocation(line: 241, column: 25, scope: !4408)
!5569 = !DILocation(line: 241, column: 9, scope: !4408)
!5570 = !DILocation(line: 241, column: 2, scope: !4408)
!5571 = !DILocation(line: 242, column: 1, scope: !4408)
!5572 = distinct !DISubprogram(name: "get_reg", scope: !3, file: !3, line: 447, type: !5573, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!833, !4175, !7, !105}
!5575 = !{!5576, !5577, !5578, !5579}
!5576 = !DILocalVariable(name: "state", arg: 1, scope: !5572, file: !3, line: 447, type: !4175)
!5577 = !DILocalVariable(name: "reg_off", arg: 2, scope: !5572, file: !3, line: 447, type: !7)
!5578 = !DILocalVariable(name: "val", arg: 3, scope: !5572, file: !3, line: 448, type: !105)
!5579 = !DILocalVariable(name: "reg", scope: !5572, file: !3, line: 450, type: !7)
!5580 = !DILocation(line: 447, column: 42, scope: !5572)
!5581 = !DILocation(line: 447, column: 62, scope: !5572)
!5582 = !DILocation(line: 448, column: 22, scope: !5572)
!5583 = !DILocation(line: 450, column: 2, scope: !5572)
!5584 = !DILocation(line: 450, column: 15, scope: !5572)
!5585 = !DILocation(line: 450, column: 21, scope: !5572)
!5586 = !DILocation(line: 450, column: 28, scope: !5572)
!5587 = !DILocation(line: 452, column: 7, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 452, column: 6)
!5589 = !DILocation(line: 452, column: 14, scope: !5588)
!5590 = !DILocation(line: 452, column: 6, scope: !5572)
!5591 = !DILocation(line: 453, column: 3, scope: !5588)
!5592 = !DILocation(line: 455, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 455, column: 6)
!5594 = !DILocation(line: 455, column: 13, scope: !5593)
!5595 = !DILocation(line: 455, column: 6, scope: !5572)
!5596 = !DILocation(line: 456, column: 10, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 456, column: 10)
!5598 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 455, column: 24)
!5599 = !DILocation(line: 456, column: 10, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 456, column: 10)
!5601 = !DILocation(line: 456, column: 4, scope: !5598)
!5602 = !DILocation(line: 456, column: 8, scope: !5598)
!5603 = !DILocation(line: 457, column: 3, scope: !5598)
!5604 = !DILocation(line: 460, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 460, column: 6)
!5606 = !DILocation(line: 460, column: 13, scope: !5605)
!5607 = !DILocation(line: 460, column: 6, scope: !5572)
!5608 = !DILocation(line: 461, column: 10, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 461, column: 10)
!5610 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 460, column: 24)
!5611 = !DILocation(line: 461, column: 10, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 461, column: 10)
!5613 = !DILocation(line: 461, column: 4, scope: !5610)
!5614 = !DILocation(line: 461, column: 8, scope: !5610)
!5615 = !DILocation(line: 462, column: 3, scope: !5610)
!5616 = !DILocation(line: 465, column: 2, scope: !5572)
!5617 = !DILocation(line: 466, column: 1, scope: !5572)
!5618 = distinct !DISubprogram(name: "get_current", scope: !5619, file: !5619, line: 39, type: !5620, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5619 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!170}
!5622 = !{!5623, !5625, !5627}
!5623 = !DILocalVariable(name: "pscr_ret__", scope: !5624, file: !5619, line: 41, type: !170)
!5624 = distinct !DILexicalBlock(scope: !5618, file: !5619, line: 41, column: 9)
!5625 = !DILocalVariable(name: "__vpp_verify", scope: !5626, file: !5619, line: 41, type: !1880)
!5626 = distinct !DILexicalBlock(scope: !5624, file: !5619, line: 41, column: 9)
!5627 = !DILocalVariable(name: "pfo_val__", scope: !5628, file: !5619, line: 41, type: !137)
!5628 = distinct !DILexicalBlock(scope: !5624, file: !5619, line: 41, column: 9)
!5629 = !DILocation(line: 41, column: 9, scope: !5624)
!5630 = !DILocation(line: 41, column: 9, scope: !5626)
!5631 = !DILocation(line: 41, column: 9, scope: !5628)
!5632 = !{i64 2148551176}
!5633 = !DILocation(line: 41, column: 9, scope: !5618)
!5634 = !DILocation(line: 41, column: 2, scope: !5618)
!5635 = !DILocation(line: 46, column: 46, scope: !4454)
!5636 = !DILocation(line: 49, column: 2, scope: !4454)
!5637 = !DILocation(line: 49, column: 16, scope: !4454)
!5638 = !DILocation(line: 49, column: 23, scope: !4454)
!5639 = !DILocation(line: 50, column: 2, scope: !4454)
!5640 = !DILocation(line: 50, column: 20, scope: !4454)
!5641 = !DILocation(line: 51, column: 2, scope: !4454)
!5642 = !DILocation(line: 51, column: 16, scope: !4454)
!5643 = !DILocation(line: 53, column: 6, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 53, column: 6)
!5645 = !DILocation(line: 53, column: 6, scope: !4454)
!5646 = !DILocation(line: 54, column: 3, scope: !5644)
!5647 = !DILocation(line: 56, column: 16, scope: !4454)
!5648 = !DILocation(line: 58, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 58, column: 2)
!5650 = !DILocation(line: 58, column: 2, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 58, column: 2)
!5652 = !DILocation(line: 62, column: 12, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 62, column: 2)
!5654 = !DILocation(line: 62, column: 10, scope: !5653)
!5655 = !DILocation(line: 62, column: 7, scope: !5653)
!5656 = !DILocation(line: 62, column: 40, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 62, column: 2)
!5658 = !DILocation(line: 62, column: 2, scope: !5653)
!5659 = !DILocation(line: 64, column: 22, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 64, column: 7)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 63, column: 57)
!5662 = !DILocation(line: 64, column: 26, scope: !5660)
!5663 = !DILocation(line: 64, column: 33, scope: !5660)
!5664 = !DILocation(line: 64, column: 7, scope: !5660)
!5665 = !DILocation(line: 64, column: 7, scope: !5661)
!5666 = !DILocation(line: 65, column: 4, scope: !5660)
!5667 = !DILocation(line: 67, column: 3, scope: !5661)
!5668 = !DILocation(line: 67, column: 10, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 67, column: 3)
!5670 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 67, column: 3)
!5671 = !DILocation(line: 67, column: 26, scope: !5669)
!5672 = !DILocation(line: 67, column: 13, scope: !5669)
!5673 = !DILocation(line: 67, column: 3, scope: !5670)
!5674 = !DILocation(line: 69, column: 11, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 69, column: 11)
!5676 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 67, column: 37)
!5677 = !DILocation(line: 69, column: 11, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 69, column: 11)
!5679 = !DILocation(line: 69, column: 9, scope: !5676)
!5680 = !DILocation(line: 71, column: 4, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 71, column: 4)
!5682 = !DILocation(line: 71, column: 4, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 71, column: 4)
!5684 = !DILocation(line: 74, column: 3, scope: !5676)
!5685 = !DILocation(line: 67, column: 33, scope: !5669)
!5686 = !DILocation(line: 67, column: 3, scope: !5669)
!5687 = distinct !{!5687, !5673, !5688, !4768, !4769}
!5688 = !DILocation(line: 74, column: 3, scope: !5670)
!5689 = !DILocation(line: 75, column: 2, scope: !5661)
!5690 = !DILocation(line: 63, column: 12, scope: !5657)
!5691 = !DILocation(line: 63, column: 10, scope: !5657)
!5692 = !DILocation(line: 62, column: 2, scope: !5657)
!5693 = distinct !{!5693, !5658, !5694, !4768, !4769}
!5694 = !DILocation(line: 75, column: 2, scope: !5653)
!5695 = !DILocation(line: 76, column: 1, scope: !4454)
!5696 = distinct !DISubprogram(name: "deref_stack_reg", scope: !3, file: !3, line: 400, type: !5697, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5699)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!833, !4175, !104, !105}
!5699 = !{!5700, !5701, !5702}
!5700 = !DILocalVariable(name: "state", arg: 1, scope: !5696, file: !3, line: 400, type: !4175)
!5701 = !DILocalVariable(name: "addr", arg: 2, scope: !5696, file: !3, line: 400, type: !104)
!5702 = !DILocalVariable(name: "val", arg: 3, scope: !5696, file: !3, line: 401, type: !105)
!5703 = !DILocation(line: 400, column: 50, scope: !5696)
!5704 = !DILocation(line: 400, column: 71, scope: !5696)
!5705 = !DILocation(line: 401, column: 23, scope: !5696)
!5706 = !DILocation(line: 403, column: 23, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 403, column: 6)
!5708 = !DILocation(line: 403, column: 30, scope: !5707)
!5709 = !DILocation(line: 403, column: 7, scope: !5707)
!5710 = !DILocation(line: 403, column: 6, scope: !5696)
!5711 = !DILocation(line: 404, column: 3, scope: !5707)
!5712 = !DILocation(line: 406, column: 9, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 406, column: 9)
!5714 = !DILocation(line: 406, column: 9, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 406, column: 9)
!5716 = !DILocation(line: 406, column: 3, scope: !5696)
!5717 = !DILocation(line: 406, column: 7, scope: !5696)
!5718 = !DILocation(line: 407, column: 2, scope: !5696)
!5719 = !DILocation(line: 408, column: 1, scope: !5696)
!5720 = distinct !DISubprogram(name: "unwind_recover_ret_addr", scope: !4177, file: !4177, line: 120, type: !5721, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!104, !4175, !104, !105}
!5723 = !{!5724, !5725, !5726, !5727}
!5724 = !DILocalVariable(name: "state", arg: 1, scope: !5720, file: !4177, line: 120, type: !4175)
!5725 = !DILocalVariable(name: "addr", arg: 2, scope: !5720, file: !4177, line: 121, type: !104)
!5726 = !DILocalVariable(name: "addr_p", arg: 3, scope: !5720, file: !4177, line: 121, type: !105)
!5727 = !DILocalVariable(name: "ret", scope: !5720, file: !4177, line: 123, type: !104)
!5728 = !DILocation(line: 120, column: 60, scope: !5720)
!5729 = !DILocation(line: 121, column: 24, scope: !5720)
!5730 = !DILocation(line: 121, column: 45, scope: !5720)
!5731 = !DILocation(line: 123, column: 2, scope: !5720)
!5732 = !DILocation(line: 123, column: 16, scope: !5720)
!5733 = !DILocation(line: 125, column: 30, scope: !5720)
!5734 = !DILocation(line: 125, column: 37, scope: !5720)
!5735 = !DILocation(line: 125, column: 44, scope: !5720)
!5736 = !DILocation(line: 125, column: 51, scope: !5720)
!5737 = !DILocation(line: 126, column: 9, scope: !5720)
!5738 = !DILocation(line: 126, column: 15, scope: !5720)
!5739 = !DILocation(line: 125, column: 8, scope: !5720)
!5740 = !DILocation(line: 125, column: 6, scope: !5720)
!5741 = !DILocation(line: 127, column: 32, scope: !5720)
!5742 = !DILocation(line: 127, column: 39, scope: !5720)
!5743 = !DILocation(line: 127, column: 44, scope: !5720)
!5744 = !DILocation(line: 127, column: 9, scope: !5720)
!5745 = !DILocation(line: 128, column: 1, scope: !5720)
!5746 = !DILocation(line: 127, column: 2, scope: !5720)
!5747 = distinct !DISubprogram(name: "deref_stack_regs", scope: !3, file: !3, line: 410, type: !5748, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!833, !4175, !104, !105, !105}
!5750 = !{!5751, !5752, !5753, !5754, !5755}
!5751 = !DILocalVariable(name: "state", arg: 1, scope: !5747, file: !3, line: 410, type: !4175)
!5752 = !DILocalVariable(name: "addr", arg: 2, scope: !5747, file: !3, line: 410, type: !104)
!5753 = !DILocalVariable(name: "ip", arg: 3, scope: !5747, file: !3, line: 411, type: !105)
!5754 = !DILocalVariable(name: "sp", arg: 4, scope: !5747, file: !3, line: 411, type: !105)
!5755 = !DILocalVariable(name: "regs", scope: !5747, file: !3, line: 413, type: !106)
!5756 = !DILocation(line: 410, column: 51, scope: !5747)
!5757 = !DILocation(line: 410, column: 72, scope: !5747)
!5758 = !DILocation(line: 411, column: 24, scope: !5747)
!5759 = !DILocation(line: 411, column: 43, scope: !5747)
!5760 = !DILocation(line: 413, column: 2, scope: !5747)
!5761 = !DILocation(line: 413, column: 18, scope: !5747)
!5762 = !DILocation(line: 413, column: 43, scope: !5747)
!5763 = !DILocation(line: 413, column: 25, scope: !5747)
!5764 = !DILocation(line: 416, column: 2, scope: !5747)
!5765 = !DILocation(line: 416, column: 2, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 416, column: 2)
!5767 = !DILocation(line: 418, column: 23, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 418, column: 6)
!5769 = !DILocation(line: 418, column: 30, scope: !5768)
!5770 = !DILocation(line: 418, column: 7, scope: !5768)
!5771 = !DILocation(line: 418, column: 6, scope: !5747)
!5772 = !DILocation(line: 419, column: 3, scope: !5768)
!5773 = !DILocation(line: 421, column: 8, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 421, column: 8)
!5775 = !DILocation(line: 421, column: 8, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 421, column: 8)
!5777 = !DILocation(line: 421, column: 3, scope: !5747)
!5778 = !DILocation(line: 421, column: 6, scope: !5747)
!5779 = !DILocation(line: 422, column: 8, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 422, column: 8)
!5781 = !DILocation(line: 422, column: 8, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 422, column: 8)
!5783 = !DILocation(line: 422, column: 3, scope: !5747)
!5784 = !DILocation(line: 422, column: 6, scope: !5747)
!5785 = !DILocation(line: 423, column: 2, scope: !5747)
!5786 = !DILocation(line: 424, column: 1, scope: !5747)
!5787 = distinct !DISubprogram(name: "unwind_recover_rethook", scope: !4177, file: !4177, line: 107, type: !5721, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5788 = !{!5789, !5790, !5791}
!5789 = !DILocalVariable(name: "state", arg: 1, scope: !5787, file: !4177, line: 107, type: !4175)
!5790 = !DILocalVariable(name: "addr", arg: 2, scope: !5787, file: !4177, line: 108, type: !104)
!5791 = !DILocalVariable(name: "addr_p", arg: 3, scope: !5787, file: !4177, line: 108, type: !105)
!5792 = !DILocation(line: 107, column: 59, scope: !5787)
!5793 = !DILocation(line: 108, column: 24, scope: !5787)
!5794 = !DILocation(line: 108, column: 45, scope: !5787)
!5795 = !DILocation(line: 111, column: 28, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5787, file: !4177, line: 111, column: 6)
!5797 = !DILocation(line: 111, column: 6, scope: !5796)
!5798 = !DILocation(line: 111, column: 6, scope: !5787)
!5799 = !DILocation(line: 112, column: 32, scope: !5796)
!5800 = !DILocation(line: 112, column: 39, scope: !5796)
!5801 = !DILocation(line: 112, column: 60, scope: !5796)
!5802 = !DILocation(line: 112, column: 45, scope: !5796)
!5803 = !DILocation(line: 113, column: 12, scope: !5796)
!5804 = !DILocation(line: 113, column: 19, scope: !5796)
!5805 = !DILocation(line: 112, column: 10, scope: !5796)
!5806 = !DILocation(line: 112, column: 3, scope: !5796)
!5807 = !DILocation(line: 115, column: 9, scope: !5787)
!5808 = !DILocation(line: 115, column: 2, scope: !5787)
!5809 = !DILocation(line: 116, column: 1, scope: !5787)
!5810 = distinct !DISubprogram(name: "deref_stack_iret_regs", scope: !3, file: !3, line: 426, type: !5748, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5811)
!5811 = !{!5812, !5813, !5814, !5815, !5816}
!5812 = !DILocalVariable(name: "state", arg: 1, scope: !5810, file: !3, line: 426, type: !4175)
!5813 = !DILocalVariable(name: "addr", arg: 2, scope: !5810, file: !3, line: 426, type: !104)
!5814 = !DILocalVariable(name: "ip", arg: 3, scope: !5810, file: !3, line: 427, type: !105)
!5815 = !DILocalVariable(name: "sp", arg: 4, scope: !5810, file: !3, line: 427, type: !105)
!5816 = !DILocalVariable(name: "regs", scope: !5810, file: !3, line: 429, type: !106)
!5817 = !DILocation(line: 426, column: 56, scope: !5810)
!5818 = !DILocation(line: 426, column: 77, scope: !5810)
!5819 = !DILocation(line: 427, column: 22, scope: !5810)
!5820 = !DILocation(line: 427, column: 41, scope: !5810)
!5821 = !DILocation(line: 429, column: 2, scope: !5810)
!5822 = !DILocation(line: 429, column: 18, scope: !5810)
!5823 = !DILocation(line: 429, column: 33, scope: !5810)
!5824 = !DILocation(line: 429, column: 25, scope: !5810)
!5825 = !DILocation(line: 429, column: 38, scope: !5810)
!5826 = !DILocation(line: 431, column: 23, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 431, column: 6)
!5828 = !DILocation(line: 431, column: 30, scope: !5827)
!5829 = !DILocation(line: 431, column: 7, scope: !5827)
!5830 = !DILocation(line: 431, column: 6, scope: !5810)
!5831 = !DILocation(line: 432, column: 3, scope: !5827)
!5832 = !DILocation(line: 434, column: 8, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 434, column: 8)
!5834 = !DILocation(line: 434, column: 8, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 434, column: 8)
!5836 = !DILocation(line: 434, column: 3, scope: !5810)
!5837 = !DILocation(line: 434, column: 6, scope: !5810)
!5838 = !DILocation(line: 435, column: 8, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 435, column: 8)
!5840 = !DILocation(line: 435, column: 8, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 435, column: 8)
!5842 = !DILocation(line: 435, column: 3, scope: !5810)
!5843 = !DILocation(line: 435, column: 6, scope: !5810)
!5844 = !DILocation(line: 436, column: 2, scope: !5810)
!5845 = !DILocation(line: 437, column: 1, scope: !5810)
!5846 = distinct !DISubprogram(name: "on_stack", scope: !93, file: !93, line: 53, type: !5847, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!833, !5849, !103, !1144}
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!5850 = !{!5851, !5852, !5853, !5854, !5855}
!5851 = !DILocalVariable(name: "info", arg: 1, scope: !5846, file: !93, line: 53, type: !5849)
!5852 = !DILocalVariable(name: "addr", arg: 2, scope: !5846, file: !93, line: 53, type: !103)
!5853 = !DILocalVariable(name: "len", arg: 3, scope: !5846, file: !93, line: 53, type: !1144)
!5854 = !DILocalVariable(name: "begin", scope: !5846, file: !93, line: 55, type: !103)
!5855 = !DILocalVariable(name: "end", scope: !5846, file: !93, line: 56, type: !103)
!5856 = !DILocation(line: 53, column: 48, scope: !5846)
!5857 = !DILocation(line: 53, column: 60, scope: !5846)
!5858 = !DILocation(line: 53, column: 73, scope: !5846)
!5859 = !DILocation(line: 55, column: 2, scope: !5846)
!5860 = !DILocation(line: 55, column: 8, scope: !5846)
!5861 = !DILocation(line: 55, column: 16, scope: !5846)
!5862 = !DILocation(line: 55, column: 22, scope: !5846)
!5863 = !DILocation(line: 56, column: 2, scope: !5846)
!5864 = !DILocation(line: 56, column: 8, scope: !5846)
!5865 = !DILocation(line: 56, column: 16, scope: !5846)
!5866 = !DILocation(line: 56, column: 22, scope: !5846)
!5867 = !DILocation(line: 58, column: 10, scope: !5846)
!5868 = !DILocation(line: 58, column: 16, scope: !5846)
!5869 = !DILocation(line: 58, column: 21, scope: !5846)
!5870 = !DILocation(line: 58, column: 43, scope: !5846)
!5871 = !DILocation(line: 59, column: 3, scope: !5846)
!5872 = !DILocation(line: 59, column: 11, scope: !5846)
!5873 = !DILocation(line: 59, column: 8, scope: !5846)
!5874 = !DILocation(line: 59, column: 17, scope: !5846)
!5875 = !DILocation(line: 59, column: 20, scope: !5846)
!5876 = !DILocation(line: 59, column: 27, scope: !5846)
!5877 = !DILocation(line: 59, column: 25, scope: !5846)
!5878 = !DILocation(line: 59, column: 31, scope: !5846)
!5879 = !DILocation(line: 60, column: 3, scope: !5846)
!5880 = !DILocation(line: 60, column: 10, scope: !5846)
!5881 = !DILocation(line: 60, column: 8, scope: !5846)
!5882 = !DILocation(line: 60, column: 16, scope: !5846)
!5883 = !DILocation(line: 60, column: 14, scope: !5846)
!5884 = !DILocation(line: 60, column: 22, scope: !5846)
!5885 = !DILocation(line: 60, column: 25, scope: !5846)
!5886 = !DILocation(line: 60, column: 32, scope: !5846)
!5887 = !DILocation(line: 60, column: 30, scope: !5846)
!5888 = !DILocation(line: 60, column: 39, scope: !5846)
!5889 = !DILocation(line: 60, column: 36, scope: !5846)
!5890 = !DILocation(line: 0, scope: !5846)
!5891 = !DILocation(line: 61, column: 1, scope: !5846)
!5892 = !DILocation(line: 58, column: 2, scope: !5846)
!5893 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5444, file: !5444, line: 93, type: !1870, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5894 = !{!5895}
!5895 = !DILocalVariable(name: "c", scope: !5896, file: !5444, line: 95, type: !833)
!5896 = distinct !DILexicalBlock(scope: !5893, file: !5444, line: 95, column: 9)
!5897 = !DILocation(line: 95, column: 9, scope: !5896)
!5898 = !{i64 2149637683, i64 2149637776}
!5899 = !DILocation(line: 95, column: 9, scope: !5893)
!5900 = !DILocation(line: 95, column: 2, scope: !5893)
!5901 = distinct !DISubprogram(name: "__unwind_start", scope: !3, file: !3, line: 685, type: !5902, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5904)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !4175, !170, !106, !105}
!5904 = !{!5905, !5906, !5907, !5908, !5909, !5924, !5927, !5928}
!5905 = !DILocalVariable(name: "state", arg: 1, scope: !5901, file: !3, line: 685, type: !4175)
!5906 = !DILocalVariable(name: "task", arg: 2, scope: !5901, file: !3, line: 685, type: !170)
!5907 = !DILocalVariable(name: "regs", arg: 3, scope: !5901, file: !3, line: 686, type: !106)
!5908 = !DILocalVariable(name: "first_frame", arg: 4, scope: !5901, file: !3, line: 686, type: !105)
!5909 = !DILocalVariable(name: "frame", scope: !5910, file: !3, line: 721, type: !5913)
!5910 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 720, column: 9)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 713, column: 13)
!5912 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 702, column: 6)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inactive_task_frame", file: !5915, line: 23, size: 448, elements: !5916)
!5915 = !DIFile(filename: "./arch/x86/include/asm/switch_to.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f11b0dac22bc0ea76b79571d3f16200")
!5916 = !{!5917, !5918, !5919, !5920, !5921, !5922, !5923}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5914, file: !5915, line: 25, baseType: !104, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5914, file: !5915, line: 26, baseType: !104, size: 64, offset: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5914, file: !5915, line: 27, baseType: !104, size: 64, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5914, file: !5915, line: 28, baseType: !104, size: 64, offset: 192)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5914, file: !5915, line: 34, baseType: !104, size: 64, offset: 256)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5914, file: !5915, line: 40, baseType: !104, size: 64, offset: 320)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "ret_addr", scope: !5914, file: !5915, line: 41, baseType: !104, size: 64, offset: 384)
!5924 = !DILocalVariable(name: "next_page", scope: !5925, file: !3, line: 737, type: !103)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 730, column: 48)
!5926 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 729, column: 6)
!5927 = !DILabel(scope: !5901, name: "err", file: !3, line: 764)
!5928 = !DILabel(scope: !5901, name: "the_end", file: !3, line: 766)
!5929 = !DILocation(line: 685, column: 42, scope: !5901)
!5930 = !DILocation(line: 685, column: 69, scope: !5901)
!5931 = !DILocation(line: 686, column: 23, scope: !5901)
!5932 = !DILocation(line: 686, column: 44, scope: !5901)
!5933 = !DILocation(line: 688, column: 9, scope: !5901)
!5934 = !DILocation(line: 688, column: 2, scope: !5901)
!5935 = !DILocation(line: 689, column: 16, scope: !5901)
!5936 = !DILocation(line: 689, column: 2, scope: !5901)
!5937 = !DILocation(line: 689, column: 9, scope: !5901)
!5938 = !DILocation(line: 689, column: 14, scope: !5901)
!5939 = !DILocation(line: 691, column: 7, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 691, column: 6)
!5941 = !DILocation(line: 691, column: 6, scope: !5901)
!5942 = !DILocation(line: 692, column: 3, scope: !5940)
!5943 = !DILocation(line: 699, column: 26, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 699, column: 6)
!5945 = !DILocation(line: 699, column: 6, scope: !5944)
!5946 = !DILocation(line: 699, column: 6, scope: !5901)
!5947 = !DILocation(line: 700, column: 3, scope: !5944)
!5948 = !DILocation(line: 702, column: 6, scope: !5912)
!5949 = !DILocation(line: 702, column: 6, scope: !5901)
!5950 = !DILocation(line: 703, column: 17, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 703, column: 7)
!5952 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 702, column: 12)
!5953 = !DILocation(line: 703, column: 7, scope: !5951)
!5954 = !DILocation(line: 703, column: 7, scope: !5952)
!5955 = !DILocation(line: 704, column: 4, scope: !5951)
!5956 = !DILocation(line: 706, column: 15, scope: !5952)
!5957 = !DILocation(line: 706, column: 21, scope: !5952)
!5958 = !DILocation(line: 706, column: 3, scope: !5952)
!5959 = !DILocation(line: 706, column: 10, scope: !5952)
!5960 = !DILocation(line: 706, column: 13, scope: !5952)
!5961 = !DILocation(line: 707, column: 15, scope: !5952)
!5962 = !DILocation(line: 707, column: 21, scope: !5952)
!5963 = !DILocation(line: 707, column: 3, scope: !5952)
!5964 = !DILocation(line: 707, column: 10, scope: !5952)
!5965 = !DILocation(line: 707, column: 13, scope: !5952)
!5966 = !DILocation(line: 708, column: 15, scope: !5952)
!5967 = !DILocation(line: 708, column: 21, scope: !5952)
!5968 = !DILocation(line: 708, column: 3, scope: !5952)
!5969 = !DILocation(line: 708, column: 10, scope: !5952)
!5970 = !DILocation(line: 708, column: 13, scope: !5952)
!5971 = !DILocation(line: 709, column: 17, scope: !5952)
!5972 = !DILocation(line: 709, column: 3, scope: !5952)
!5973 = !DILocation(line: 709, column: 10, scope: !5952)
!5974 = !DILocation(line: 709, column: 15, scope: !5952)
!5975 = !DILocation(line: 710, column: 3, scope: !5952)
!5976 = !DILocation(line: 710, column: 10, scope: !5952)
!5977 = !DILocation(line: 710, column: 20, scope: !5952)
!5978 = !DILocation(line: 711, column: 3, scope: !5952)
!5979 = !DILocation(line: 711, column: 10, scope: !5952)
!5980 = !DILocation(line: 711, column: 17, scope: !5952)
!5981 = !DILocation(line: 713, column: 2, scope: !5952)
!5982 = !DILocation(line: 713, column: 13, scope: !5911)
!5983 = !DILocation(line: 713, column: 21, scope: !5911)
!5984 = !DILocation(line: 713, column: 18, scope: !5911)
!5985 = !DILocation(line: 713, column: 13, scope: !5912)
!5986 = !DILocation(line: 717, column: 17, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 713, column: 30)
!5988 = !DILocation(line: 717, column: 24, scope: !5987)
!5989 = !DILocation(line: 717, column: 35, scope: !5987)
!5990 = !DILocation(line: 717, column: 42, scope: !5987)
!5991 = !DILocation(line: 718, column: 17, scope: !5987)
!5992 = !DILocation(line: 718, column: 24, scope: !5987)
!5993 = !DILocation(line: 714, column: 3, scope: !5987)
!5994 = !{i64 18623, i64 18641, i64 18669, i64 18697}
!5995 = !DILocation(line: 720, column: 2, scope: !5987)
!5996 = !DILocation(line: 721, column: 3, scope: !5910)
!5997 = !DILocation(line: 721, column: 31, scope: !5910)
!5998 = !DILocation(line: 721, column: 47, scope: !5910)
!5999 = !DILocation(line: 721, column: 53, scope: !5910)
!6000 = !DILocation(line: 721, column: 60, scope: !5910)
!6001 = !DILocation(line: 721, column: 39, scope: !5910)
!6002 = !DILocation(line: 723, column: 15, scope: !5910)
!6003 = !DILocation(line: 723, column: 21, scope: !5910)
!6004 = !DILocation(line: 723, column: 28, scope: !5910)
!6005 = !DILocation(line: 723, column: 31, scope: !5910)
!6006 = !DILocation(line: 723, column: 3, scope: !5910)
!6007 = !DILocation(line: 723, column: 10, scope: !5910)
!6008 = !DILocation(line: 723, column: 13, scope: !5910)
!6009 = !DILocation(line: 724, column: 15, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 724, column: 15)
!6011 = !DILocation(line: 724, column: 15, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 724, column: 15)
!6013 = !DILocation(line: 724, column: 3, scope: !5910)
!6014 = !DILocation(line: 724, column: 10, scope: !5910)
!6015 = !DILocation(line: 724, column: 13, scope: !5910)
!6016 = !DILocation(line: 725, column: 15, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 725, column: 15)
!6018 = !DILocation(line: 725, column: 15, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 725, column: 15)
!6020 = !DILocation(line: 725, column: 3, scope: !5910)
!6021 = !DILocation(line: 725, column: 10, scope: !5910)
!6022 = !DILocation(line: 725, column: 13, scope: !5910)
!6023 = !DILocation(line: 726, column: 27, scope: !5910)
!6024 = !DILocation(line: 726, column: 34, scope: !5910)
!6025 = !DILocation(line: 726, column: 19, scope: !5910)
!6026 = !DILocation(line: 726, column: 37, scope: !5910)
!6027 = !DILocation(line: 726, column: 3, scope: !5910)
!6028 = !DILocation(line: 726, column: 10, scope: !5910)
!6029 = !DILocation(line: 726, column: 17, scope: !5910)
!6030 = !DILocation(line: 727, column: 2, scope: !5911)
!6031 = !DILocation(line: 729, column: 38, scope: !5926)
!6032 = !DILocation(line: 729, column: 45, scope: !5926)
!6033 = !DILocation(line: 729, column: 21, scope: !5926)
!6034 = !DILocation(line: 729, column: 49, scope: !5926)
!6035 = !DILocation(line: 729, column: 56, scope: !5926)
!6036 = !DILocation(line: 730, column: 8, scope: !5926)
!6037 = !DILocation(line: 730, column: 15, scope: !5926)
!6038 = !DILocation(line: 730, column: 28, scope: !5926)
!6039 = !DILocation(line: 730, column: 35, scope: !5926)
!6040 = !DILocation(line: 729, column: 6, scope: !5926)
!6041 = !DILocation(line: 729, column: 6, scope: !5901)
!6042 = !DILocation(line: 737, column: 3, scope: !5925)
!6043 = !DILocation(line: 737, column: 9, scope: !5925)
!6044 = !DILocation(line: 737, column: 29, scope: !5925)
!6045 = !DILocation(line: 737, column: 21, scope: !5925)
!6046 = !DILocation(line: 738, column: 3, scope: !5925)
!6047 = !DILocation(line: 738, column: 10, scope: !5925)
!6048 = !DILocation(line: 738, column: 16, scope: !5925)
!6049 = !DILocation(line: 739, column: 22, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 739, column: 7)
!6051 = !DILocation(line: 739, column: 33, scope: !6050)
!6052 = !DILocation(line: 739, column: 40, scope: !6050)
!6053 = !DILocation(line: 739, column: 47, scope: !6050)
!6054 = !DILocation(line: 739, column: 54, scope: !6050)
!6055 = !DILocation(line: 740, column: 9, scope: !6050)
!6056 = !DILocation(line: 740, column: 16, scope: !6050)
!6057 = !DILocation(line: 739, column: 7, scope: !6050)
!6058 = !DILocation(line: 739, column: 7, scope: !5925)
!6059 = !DILocation(line: 741, column: 4, scope: !6050)
!6060 = !DILocation(line: 742, column: 2, scope: !5926)
!6061 = !DILocation(line: 742, column: 2, scope: !5925)
!6062 = !DILocation(line: 751, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 751, column: 6)
!6064 = !DILocation(line: 751, column: 6, scope: !5901)
!6065 = !DILocation(line: 752, column: 21, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 751, column: 12)
!6067 = !DILocation(line: 752, column: 3, scope: !6066)
!6068 = !DILocation(line: 753, column: 3, scope: !6066)
!6069 = !DILocation(line: 757, column: 2, scope: !5901)
!6070 = !DILocation(line: 757, column: 22, scope: !5901)
!6071 = !DILocation(line: 757, column: 10, scope: !5901)
!6072 = !DILocation(line: 757, column: 29, scope: !5901)
!6073 = !DILocation(line: 758, column: 21, scope: !5901)
!6074 = !DILocation(line: 758, column: 28, scope: !5901)
!6075 = !DILocation(line: 758, column: 40, scope: !5901)
!6076 = !DILocation(line: 758, column: 11, scope: !5901)
!6077 = !DILocation(line: 758, column: 67, scope: !5901)
!6078 = !DILocation(line: 759, column: 4, scope: !5901)
!6079 = !DILocation(line: 759, column: 11, scope: !5901)
!6080 = !DILocation(line: 759, column: 32, scope: !5901)
!6081 = !DILocation(line: 759, column: 17, scope: !5901)
!6082 = !DILocation(line: 759, column: 14, scope: !5901)
!6083 = !DILocation(line: 0, scope: !5901)
!6084 = !DILocation(line: 760, column: 21, scope: !5901)
!6085 = !DILocation(line: 760, column: 3, scope: !5901)
!6086 = distinct !{!6086, !6069, !6087, !4768, !4769}
!6087 = !DILocation(line: 760, column: 26, scope: !5901)
!6088 = !DILocation(line: 762, column: 2, scope: !5901)
!6089 = !DILocation(line: 764, column: 1, scope: !5901)
!6090 = !DILocation(line: 765, column: 2, scope: !5901)
!6091 = !DILocation(line: 765, column: 9, scope: !5901)
!6092 = !DILocation(line: 765, column: 15, scope: !5901)
!6093 = !DILocation(line: 766, column: 1, scope: !5901)
!6094 = !DILocation(line: 767, column: 2, scope: !5901)
!6095 = !DILocation(line: 767, column: 9, scope: !5901)
!6096 = !DILocation(line: 767, column: 20, scope: !5901)
!6097 = !DILocation(line: 767, column: 25, scope: !5901)
!6098 = !DILocation(line: 768, column: 1, scope: !5901)
!6099 = distinct !DISubprogram(name: "task_on_another_cpu", scope: !4177, file: !4177, line: 145, type: !6100, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6102)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!833, !170}
!6102 = !{!6103}
!6103 = !DILocalVariable(name: "task", arg: 1, scope: !6099, file: !4177, line: 145, type: !170)
!6104 = !DILocation(line: 145, column: 60, scope: !6099)
!6105 = !DILocation(line: 148, column: 9, scope: !6099)
!6106 = !DILocation(line: 148, column: 17, scope: !6099)
!6107 = !DILocation(line: 148, column: 14, scope: !6099)
!6108 = !DILocation(line: 148, column: 25, scope: !6099)
!6109 = !DILocation(line: 148, column: 28, scope: !6099)
!6110 = !DILocation(line: 148, column: 34, scope: !6099)
!6111 = !DILocation(line: 0, scope: !6099)
!6112 = !DILocation(line: 148, column: 2, scope: !6099)
!6113 = distinct !DISubprogram(name: "__read_once_word_nocheck", scope: !6114, file: !6114, line: 65, type: !6115, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6114 = !DIFile(filename: "./include/asm-generic/rwonce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58a03ecb2752a04ef9d857f8e36ba5d6")
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!104, !1880}
!6117 = !{!6118}
!6118 = !DILocalVariable(name: "addr", arg: 1, scope: !6113, file: !6114, line: 65, type: !1880)
!6119 = !DILocation(line: 65, column: 52, scope: !6113)
!6120 = !DILocation(line: 67, column: 9, scope: !6113)
!6121 = !DILocation(line: 67, column: 2, scope: !6113)
!6122 = !DISubprogram(name: "get_stack_info", scope: !93, file: !93, line: 36, type: !6123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!166, !105, !170, !5849, !105}
!6125 = distinct !DISubprogram(name: "orc_ip", scope: !3, file: !3, line: 78, type: !6126, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!104, !4579}
!6128 = !{!6129}
!6129 = !DILocalVariable(name: "ip", arg: 1, scope: !6125, file: !3, line: 78, type: !4579)
!6130 = !DILocation(line: 78, column: 47, scope: !6125)
!6131 = !DILocation(line: 80, column: 24, scope: !6125)
!6132 = !DILocation(line: 80, column: 9, scope: !6125)
!6133 = !DILocation(line: 80, column: 30, scope: !6125)
!6134 = !DILocation(line: 80, column: 29, scope: !6125)
!6135 = !DILocation(line: 80, column: 27, scope: !6125)
!6136 = !DILocation(line: 80, column: 2, scope: !6125)
!6137 = distinct !DISubprogram(name: "is_kernel_inittext", scope: !6138, file: !6138, line: 191, type: !6139, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6138 = !DIFile(filename: "./include/asm-generic/sections.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f39e7a49fe27b92edee06ba1fa02c96a")
!6139 = !DISubroutineType(types: !6140)
!6140 = !{!833, !104}
!6141 = !{!6142}
!6142 = !DILocalVariable(name: "addr", arg: 1, scope: !6137, file: !6138, line: 191, type: !104)
!6143 = !DILocation(line: 191, column: 53, scope: !6137)
!6144 = !DILocation(line: 193, column: 9, scope: !6137)
!6145 = !DILocation(line: 193, column: 14, scope: !6137)
!6146 = !DILocation(line: 193, column: 43, scope: !6137)
!6147 = !DILocation(line: 194, column: 9, scope: !6137)
!6148 = !DILocation(line: 194, column: 14, scope: !6137)
!6149 = !DILocation(line: 0, scope: !6137)
!6150 = !DILocation(line: 193, column: 2, scope: !6137)
!6151 = distinct !DISubprogram(name: "orc_module_find", scope: !3, file: !3, line: 113, type: !4409, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6152 = !{!6153, !6154}
!6153 = !DILocalVariable(name: "ip", arg: 1, scope: !6151, file: !3, line: 113, type: !104)
!6154 = !DILocalVariable(name: "mod", scope: !6151, file: !3, line: 115, type: !1227)
!6155 = !DILocation(line: 113, column: 56, scope: !6151)
!6156 = !DILocation(line: 115, column: 2, scope: !6151)
!6157 = !DILocation(line: 115, column: 17, scope: !6151)
!6158 = !DILocation(line: 117, column: 25, scope: !6151)
!6159 = !DILocation(line: 117, column: 8, scope: !6151)
!6160 = !DILocation(line: 117, column: 6, scope: !6151)
!6161 = !DILocation(line: 118, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 118, column: 6)
!6163 = !DILocation(line: 118, column: 11, scope: !6162)
!6164 = !DILocation(line: 118, column: 15, scope: !6162)
!6165 = !DILocation(line: 118, column: 20, scope: !6162)
!6166 = !DILocation(line: 118, column: 25, scope: !6162)
!6167 = !DILocation(line: 118, column: 36, scope: !6162)
!6168 = !DILocation(line: 118, column: 40, scope: !6162)
!6169 = !DILocation(line: 118, column: 45, scope: !6162)
!6170 = !DILocation(line: 118, column: 50, scope: !6162)
!6171 = !DILocation(line: 118, column: 6, scope: !6151)
!6172 = !DILocation(line: 119, column: 3, scope: !6162)
!6173 = !DILocation(line: 120, column: 20, scope: !6151)
!6174 = !DILocation(line: 120, column: 25, scope: !6151)
!6175 = !DILocation(line: 120, column: 30, scope: !6151)
!6176 = !DILocation(line: 120, column: 45, scope: !6151)
!6177 = !DILocation(line: 120, column: 50, scope: !6151)
!6178 = !DILocation(line: 120, column: 55, scope: !6151)
!6179 = !DILocation(line: 121, column: 6, scope: !6151)
!6180 = !DILocation(line: 121, column: 11, scope: !6151)
!6181 = !DILocation(line: 121, column: 16, scope: !6151)
!6182 = !DILocation(line: 121, column: 26, scope: !6151)
!6183 = !DILocation(line: 120, column: 9, scope: !6151)
!6184 = !DILocation(line: 120, column: 2, scope: !6151)
!6185 = !DILocation(line: 122, column: 1, scope: !6151)
!6186 = distinct !DISubprogram(name: "orc_ftrace_find", scope: !3, file: !3, line: 169, type: !4409, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6187)
!6187 = !{!6188}
!6188 = !DILocalVariable(name: "ip", arg: 1, scope: !6186, file: !3, line: 169, type: !104)
!6189 = !DILocation(line: 169, column: 56, scope: !6186)
!6190 = !DILocation(line: 171, column: 2, scope: !6186)
!6191 = !DISubprogram(name: "__module_address", scope: !6, file: !6, line: 607, type: !6192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!1227, !104}
!6194 = distinct !DISubprogram(name: "stack_access_ok", scope: !3, file: !3, line: 387, type: !6195, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!833, !4175, !104, !1144}
!6197 = !{!6198, !6199, !6200, !6201, !6202}
!6198 = !DILocalVariable(name: "state", arg: 1, scope: !6194, file: !3, line: 387, type: !4175)
!6199 = !DILocalVariable(name: "_addr", arg: 2, scope: !6194, file: !3, line: 387, type: !104)
!6200 = !DILocalVariable(name: "len", arg: 3, scope: !6194, file: !3, line: 388, type: !1144)
!6201 = !DILocalVariable(name: "info", scope: !6194, file: !3, line: 390, type: !5849)
!6202 = !DILocalVariable(name: "addr", scope: !6194, file: !3, line: 391, type: !103)
!6203 = !DILocation(line: 387, column: 50, scope: !6194)
!6204 = !DILocation(line: 387, column: 71, scope: !6194)
!6205 = !DILocation(line: 388, column: 15, scope: !6194)
!6206 = !DILocation(line: 390, column: 2, scope: !6194)
!6207 = !DILocation(line: 390, column: 21, scope: !6194)
!6208 = !DILocation(line: 390, column: 29, scope: !6194)
!6209 = !DILocation(line: 390, column: 36, scope: !6194)
!6210 = !DILocation(line: 391, column: 2, scope: !6194)
!6211 = !DILocation(line: 391, column: 8, scope: !6194)
!6212 = !DILocation(line: 391, column: 23, scope: !6194)
!6213 = !DILocation(line: 391, column: 15, scope: !6194)
!6214 = !DILocation(line: 393, column: 15, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 393, column: 6)
!6216 = !DILocation(line: 393, column: 21, scope: !6215)
!6217 = !DILocation(line: 393, column: 27, scope: !6215)
!6218 = !DILocation(line: 393, column: 6, scope: !6215)
!6219 = !DILocation(line: 393, column: 6, scope: !6194)
!6220 = !DILocation(line: 394, column: 3, scope: !6215)
!6221 = !DILocation(line: 396, column: 25, scope: !6194)
!6222 = !DILocation(line: 396, column: 31, scope: !6194)
!6223 = !DILocation(line: 396, column: 38, scope: !6194)
!6224 = !DILocation(line: 396, column: 44, scope: !6194)
!6225 = !DILocation(line: 396, column: 51, scope: !6194)
!6226 = !DILocation(line: 396, column: 58, scope: !6194)
!6227 = !DILocation(line: 396, column: 10, scope: !6194)
!6228 = !DILocation(line: 396, column: 70, scope: !6194)
!6229 = !DILocation(line: 397, column: 12, scope: !6194)
!6230 = !DILocation(line: 397, column: 18, scope: !6194)
!6231 = !DILocation(line: 397, column: 24, scope: !6194)
!6232 = !DILocation(line: 397, column: 3, scope: !6194)
!6233 = !DILocation(line: 0, scope: !6194)
!6234 = !DILocation(line: 396, column: 2, scope: !6194)
!6235 = !DILocation(line: 398, column: 1, scope: !6194)
!6236 = distinct !DISubprogram(name: "ftrace_graph_ret_addr", scope: !6237, file: !6237, line: 1141, type: !6238, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6237 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!104, !170, !2162, !104, !105}
!6240 = !{!6241, !6242, !6243, !6244}
!6241 = !DILocalVariable(name: "task", arg: 1, scope: !6236, file: !6237, line: 1141, type: !170)
!6242 = !DILocalVariable(name: "idx", arg: 2, scope: !6236, file: !6237, line: 1141, type: !2162)
!6243 = !DILocalVariable(name: "ret", arg: 3, scope: !6236, file: !6237, line: 1141, type: !104)
!6244 = !DILocalVariable(name: "retp", arg: 4, scope: !6236, file: !6237, line: 1142, type: !105)
!6245 = !DILocation(line: 1141, column: 43, scope: !6236)
!6246 = !DILocation(line: 1141, column: 54, scope: !6236)
!6247 = !DILocation(line: 1141, column: 73, scope: !6236)
!6248 = !DILocation(line: 1142, column: 24, scope: !6236)
!6249 = !DILocation(line: 1144, column: 9, scope: !6236)
!6250 = !DILocation(line: 1144, column: 2, scope: !6236)
!6251 = distinct !DISubprogram(name: "is_rethook_trampoline", scope: !6252, file: !6252, line: 86, type: !6139, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6252 = !DIFile(filename: "./include/linux/rethook.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85ff586ed71ca39237544b8dc008a817")
!6253 = !{!6254}
!6254 = !DILocalVariable(name: "addr", arg: 1, scope: !6251, file: !6252, line: 86, type: !104)
!6255 = !DILocation(line: 86, column: 56, scope: !6251)
!6256 = !DILocation(line: 88, column: 9, scope: !6251)
!6257 = !DILocation(line: 88, column: 32, scope: !6251)
!6258 = !DILocation(line: 88, column: 17, scope: !6251)
!6259 = !DILocation(line: 88, column: 14, scope: !6251)
!6260 = !DILocation(line: 88, column: 2, scope: !6251)
!6261 = !DISubprogram(name: "rethook_find_ret_addr", scope: !6252, file: !6252, line: 73, type: !6262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6262 = !DISubroutineType(types: !6263)
!6263 = !{!104, !170, !104, !6264}
!6264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!6265 = distinct !DISubprogram(name: "dereference_symbol_descriptor", scope: !6266, file: !6266, line: 49, type: !6267, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6266 = !DIFile(filename: "./include/linux/kallsyms.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "797c3ad2c64a1b2c16a6a757c7a94236")
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!103, !103}
!6269 = !{!6270}
!6270 = !DILocalVariable(name: "ptr", arg: 1, scope: !6265, file: !6266, line: 49, type: !103)
!6271 = !DILocation(line: 49, column: 57, scope: !6265)
!6272 = !DILocation(line: 65, column: 9, scope: !6265)
!6273 = !DILocation(line: 65, column: 2, scope: !6265)
