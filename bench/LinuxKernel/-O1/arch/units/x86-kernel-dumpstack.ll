; ModuleID = 'arch/x86/kernel/dumpstack.c'
source_filename = "arch/x86/kernel/dumpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.15, i64, i64, %union.anon.16 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.17, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.19, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { i64, [88 x i8] }
%struct.stack_info = type { i32, ptr, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.entry_stack = type { [4096 x i8] }
%struct.cpu_entry_area = type { [4096 x i8], %struct.entry_stack_page, %struct.tss_struct, %struct.cea_exception_stacks, %struct.debug_store, %struct.debug_store_buffers }
%struct.entry_stack_page = type { %struct.entry_stack }
%struct.tss_struct = type { %struct.x86_hw_tss, %struct.x86_io_bitmap, [3960 x i8] }
%struct.x86_hw_tss = type <{ i32, i64, i64, i64, i64, [7 x i64], i32, i32, i16, i16 }>
%struct.x86_io_bitmap = type { i64, i32, [1025 x i64], [1025 x i64] }
%struct.cea_exception_stacks = type { [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8] }
%struct.debug_store = type { i64, i64, i64, i64, i64, i64, i64, i64, [48 x i64], [3648 x i8] }
%struct.debug_store_buffers = type { [65536 x i8], [65536 x i8] }
%struct.unwind_state = type { %struct.stack_info, i64, ptr, i32, ptr, i8, i8, i8, i64, i64, i64, ptr, ptr }
%struct.anon = type { i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [28 x i8] c"%sCode: %42ph <%02x> %21ph\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [49 x i8] c"%sCode: Unable to access opcode bytes at 0x%lx.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [17 x i8] c"%sRIP: %04x:%pS\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [33 x i8] c"%sRSP: %04x:%016lx EFLAGS: %08lx\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !27
@die_lock = internal global %struct.qspinlock zeroinitializer, align 4, !dbg !32
@die_owner = internal global i32 -1, align 4, !dbg !4302
@die_nest_count = internal global i32 0, align 4, !dbg !4277
@_kbl_addr_oops_begin = internal global i64 ptrtoint (ptr @oops_begin to i64), section "_kprobe_blacklist", align 8, !dbg !4254
@exec_summary_regs = internal global %struct.pt_regs zeroinitializer, align 8, !dbg !4275
@.str.6 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1, !dbg !4256
@panic_on_oops = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1, !dbg !4261
@_kbl_addr_oops_end = internal global i64 ptrtoint (ptr @oops_end to i64), section "_kprobe_blacklist", align 8, !dbg !4263
@_kbl_addr___die_header = internal global i64 ptrtoint (ptr @__die_header to i64), section "_kprobe_blacklist", align 8, !dbg !4265
@_kbl_addr___die_body = internal global i64 ptrtoint (ptr @__die_body to i64), section "_kprobe_blacklist", align 8, !dbg !4267
@_kbl_addr___die = internal global i64 ptrtoint (ptr @__die to i64), section "_kprobe_blacklist", align 8, !dbg !4269
@panic_on_unrecovered_nmi = hidden global i32 0, align 4, !dbg !4271
@panic_on_io_nmi = hidden global i32 0, align 4, !dbg !4273
@.str.8 = private unnamed_addr constant [15 x i8] c"%sCall Trace:\0A\00", align 1, !dbg !4279
@.str.9 = private unnamed_addr constant [9 x i8] c"%s <%s>\0A\00", align 1, !dbg !4284
@.str.10 = private unnamed_addr constant [10 x i8] c"%s </%s>\0A\00", align 1, !dbg !4289
@.str.11 = private unnamed_addr constant [11 x i8] c"%s %s%pBb\0A\00", align 1, !dbg !4294
@.str.12 = private unnamed_addr constant [3 x i8] c"? \00", align 1, !dbg !4299
@die_counter = internal global i32 0, align 4, !dbg !4320
@.str.13 = private unnamed_addr constant [9 x i8] c" PREEMPT\00", align 1, !dbg !4304
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: %04lx [#%d]%s%s%s%s%s\0A\00", align 1, !dbg !4306
@.str.15 = private unnamed_addr constant [5 x i8] c" SMP\00", align 1, !dbg !4311
@.str.16 = private unnamed_addr constant [17 x i8] c" DEBUG_PAGEALLOC\00", align 1, !dbg !4313
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c" PTI\00", align 1, !dbg !4315
@.str.18 = private unnamed_addr constant [7 x i8] c" NOPTI\00", align 1, !dbg !4317
@llvm.compiler.used = appending global [5 x ptr] [ptr @_kbl_addr_oops_begin, ptr @_kbl_addr_oops_end, ptr @_kbl_addr___die_header, ptr @_kbl_addr___die_body, ptr @_kbl_addr___die], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @in_task_stack(ptr noundef %stack, ptr noundef %task, ptr noundef %info) #0 section ".noinstr.text" align 16 !dbg !4331 {
entry:
  %retval = alloca i1, align 1
  %stack.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %begin = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stack, ptr %stack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !4342, metadata !DIExpression()), !dbg !4347
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4343, metadata !DIExpression()), !dbg !4348
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4344, metadata !DIExpression()), !dbg !4349
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #15, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !4345, metadata !DIExpression()), !dbg !4351
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4352
  %call = call ptr @task_stack_page(ptr noundef %0) #16, !dbg !4353
  store ptr %call, ptr %begin, align 8, !dbg !4351
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %end, metadata !4346, metadata !DIExpression()), !dbg !4355
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4356
  %call1 = call ptr @task_stack_page(ptr noundef %1) #16, !dbg !4357
  %add.ptr = getelementptr i8, ptr %call1, i64 16384, !dbg !4358
  store ptr %add.ptr, ptr %end, align 8, !dbg !4355
  %2 = load ptr, ptr %stack.addr, align 8, !dbg !4359
  %3 = load ptr, ptr %begin, align 8, !dbg !4361
  %cmp = icmp ult ptr %2, %3, !dbg !4362
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4363

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %stack.addr, align 8, !dbg !4364
  %5 = load ptr, ptr %end, align 8, !dbg !4365
  %cmp2 = icmp uge ptr %4, %5, !dbg !4366
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4367

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !4368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4368

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %info.addr, align 8, !dbg !4369
  %type = getelementptr inbounds %struct.stack_info, ptr %6, i32 0, i32 0, !dbg !4370
  store i32 1, ptr %type, align 8, !dbg !4371
  %7 = load ptr, ptr %begin, align 8, !dbg !4372
  %8 = load ptr, ptr %info.addr, align 8, !dbg !4373
  %begin3 = getelementptr inbounds %struct.stack_info, ptr %8, i32 0, i32 1, !dbg !4374
  store ptr %7, ptr %begin3, align 8, !dbg !4375
  %9 = load ptr, ptr %end, align 8, !dbg !4376
  %10 = load ptr, ptr %info.addr, align 8, !dbg !4377
  %end4 = getelementptr inbounds %struct.stack_info, ptr %10, i32 0, i32 2, !dbg !4378
  store ptr %9, ptr %end4, align 8, !dbg !4379
  %11 = load ptr, ptr %info.addr, align 8, !dbg !4380
  %next_sp = getelementptr inbounds %struct.stack_info, ptr %11, i32 0, i32 3, !dbg !4381
  store ptr null, ptr %next_sp, align 8, !dbg !4382
  store i1 true, ptr %retval, align 1, !dbg !4383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4383

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !4384
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #15, !dbg !4384
  %12 = load i1, ptr %retval, align 1, !dbg !4384
  ret i1 %12, !dbg !4384
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #3 align 16 !dbg !4385 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4394
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !4395
  %1 = load ptr, ptr %stack, align 32, !dbg !4395
  ret ptr %1, !dbg !4396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @in_entry_stack(ptr noundef %stack, ptr noundef %info) #0 section ".noinstr.text" align 16 !dbg !4397 {
entry:
  %retval = alloca i1, align 1
  %stack.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ss = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %begin = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stack, ptr %stack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !4401, metadata !DIExpression()), !dbg !4418
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4402, metadata !DIExpression()), !dbg !4419
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #15, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !4403, metadata !DIExpression()), !dbg !4421
  call void @__this_cpu_preempt_check(ptr noundef @.str) #16, !dbg !4422
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4409, metadata !DIExpression()), !dbg !4423
  br label %do.body, !dbg !4423

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4424
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4412, metadata !DIExpression()), !dbg !4424
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4424
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4423
  br label %do.cond, !dbg !4424

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4424

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4414, metadata !DIExpression()), !dbg !4425
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !4425, !srcloc !4426
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4425
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4425
  %conv = zext i32 %2 to i64, !dbg !4425
  %conv2 = trunc i64 %conv to i32, !dbg !4425
  store i32 %conv2, ptr %tmp1, align 4, !dbg !4425
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !4423
  %3 = load i32, ptr %tmp1, align 4, !dbg !4425
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4423
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4423
  store i32 %4, ptr %tmp3, align 4, !dbg !4423
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4422
  %5 = load i32, ptr %tmp3, align 4, !dbg !4423
  store i32 %5, ptr %tmp, align 4, !dbg !4422
  %6 = load i32, ptr %tmp, align 4, !dbg !4422
  %call = call ptr @cpu_entry_stack(i32 noundef %6) #16, !dbg !4427
  store ptr %call, ptr %ss, align 8, !dbg !4421
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #15, !dbg !4428
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !4416, metadata !DIExpression()), !dbg !4429
  %7 = load ptr, ptr %ss, align 8, !dbg !4430
  store ptr %7, ptr %begin, align 8, !dbg !4429
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %end, metadata !4417, metadata !DIExpression()), !dbg !4432
  %8 = load ptr, ptr %ss, align 8, !dbg !4433
  %add.ptr = getelementptr %struct.entry_stack, ptr %8, i64 1, !dbg !4434
  store ptr %add.ptr, ptr %end, align 8, !dbg !4432
  %9 = load ptr, ptr %stack.addr, align 8, !dbg !4435
  %10 = load ptr, ptr %begin, align 8, !dbg !4437
  %cmp = icmp ult ptr %9, %10, !dbg !4438
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4439

lor.lhs.false:                                    ; preds = %do.end
  %11 = load ptr, ptr %stack.addr, align 8, !dbg !4440
  %12 = load ptr, ptr %end, align 8, !dbg !4441
  %cmp5 = icmp uge ptr %11, %12, !dbg !4442
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4443

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i1 false, ptr %retval, align 1, !dbg !4444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4444

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %info.addr, align 8, !dbg !4445
  %type = getelementptr inbounds %struct.stack_info, ptr %13, i32 0, i32 0, !dbg !4446
  store i32 4, ptr %type, align 8, !dbg !4447
  %14 = load ptr, ptr %begin, align 8, !dbg !4448
  %15 = load ptr, ptr %info.addr, align 8, !dbg !4449
  %begin7 = getelementptr inbounds %struct.stack_info, ptr %15, i32 0, i32 1, !dbg !4450
  store ptr %14, ptr %begin7, align 8, !dbg !4451
  %16 = load ptr, ptr %end, align 8, !dbg !4452
  %17 = load ptr, ptr %info.addr, align 8, !dbg !4453
  %end8 = getelementptr inbounds %struct.stack_info, ptr %17, i32 0, i32 2, !dbg !4454
  store ptr %16, ptr %end8, align 8, !dbg !4455
  %18 = load ptr, ptr %info.addr, align 8, !dbg !4456
  %next_sp = getelementptr inbounds %struct.stack_info, ptr %18, i32 0, i32 3, !dbg !4457
  store ptr null, ptr %next_sp, align 8, !dbg !4458
  store i1 true, ptr %retval, align 1, !dbg !4459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4459

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !4460
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #15, !dbg !4460
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #15, !dbg !4460
  %19 = load i1, ptr %retval, align 1, !dbg !4460
  ret i1 %19, !dbg !4460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cpu_entry_stack(i32 noundef %cpu) #3 align 16 !dbg !4461 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4468
  %call = call ptr @get_cpu_entry_area(i32 noundef %0) #16, !dbg !4469
  %entry_stack_page = getelementptr inbounds %struct.cpu_entry_area, ptr %call, i32 0, i32 1, !dbg !4470
  %stack = getelementptr inbounds %struct.entry_stack_page, ptr %entry_stack_page, i32 0, i32 0, !dbg !4471
  ret ptr %stack, !dbg !4472
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !4473 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  ret void, !dbg !4480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_opcodes(ptr noundef %regs, ptr noundef %loglvl) #4 align 16 !dbg !4481 {
entry:
  %regs.addr = alloca ptr, align 8
  %loglvl.addr = alloca ptr, align 8
  %opcodes = alloca [64 x i8], align 16
  %prologue = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4485, metadata !DIExpression()), !dbg !4490
  store ptr %loglvl, ptr %loglvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %loglvl.addr, metadata !4486, metadata !DIExpression()), !dbg !4491
  call void @llvm.lifetime.start.p0(i64 64, ptr %opcodes) #15, !dbg !4492
  call void @llvm.dbg.declare(metadata ptr %opcodes, metadata !4487, metadata !DIExpression()), !dbg !4493
  call void @llvm.lifetime.start.p0(i64 8, ptr %prologue) #15, !dbg !4494
  call void @llvm.dbg.declare(metadata ptr %prologue, metadata !4489, metadata !DIExpression()), !dbg !4495
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4496
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !4497
  %1 = load i64, ptr %ip, align 8, !dbg !4497
  %sub = sub i64 %1, 42, !dbg !4498
  store i64 %sub, ptr %prologue, align 8, !dbg !4495
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !4499
  %arraydecay = getelementptr inbounds [64 x i8], ptr %opcodes, i64 0, i64 0, !dbg !4500
  %3 = load i64, ptr %prologue, align 8, !dbg !4501
  %call = call i32 @copy_code(ptr noundef %2, ptr noundef %arraydecay, i64 noundef %3, i32 noundef 64) #16, !dbg !4502
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.epilog
  ], !dbg !4503

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !4504

do.body:                                          ; preds = %sw.bb
  br label %do.cond, !dbg !4507

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4507

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %loglvl.addr, align 8, !dbg !4504
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %opcodes, i64 0, i64 0, !dbg !4504
  %arrayidx = getelementptr [64 x i8], ptr %opcodes, i64 0, i64 42, !dbg !4504
  %5 = load i8, ptr %arrayidx, align 2, !dbg !4504
  %conv = zext i8 %5 to i32, !dbg !4504
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %opcodes, i64 0, i64 0, !dbg !4504
  %add.ptr = getelementptr i8, ptr %arraydecay2, i64 42, !dbg !4504
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !4504
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %4, ptr noundef %arraydecay1, i32 noundef %conv, ptr noundef %add.ptr3) #18, !dbg !4504
  store i32 %call4, ptr %tmp, align 4, !dbg !4507
  %6 = load i32, ptr %tmp, align 4, !dbg !4504
  br label %sw.epilog, !dbg !4509

sw.default:                                       ; preds = %entry
  br label %do.body5, !dbg !4510

do.body5:                                         ; preds = %sw.default
  br label %do.cond6, !dbg !4512

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4512

do.end7:                                          ; preds = %do.cond6
  %7 = load ptr, ptr %loglvl.addr, align 8, !dbg !4510
  %8 = load i64, ptr %prologue, align 8, !dbg !4510
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %7, i64 noundef %8) #18, !dbg !4510
  store i32 %call9, ptr %tmp8, align 4, !dbg !4512
  %9 = load i32, ptr %tmp8, align 4, !dbg !4510
  br label %sw.epilog, !dbg !4514

sw.epilog:                                        ; preds = %do.end7, %entry, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %prologue) #15, !dbg !4515
  call void @llvm.lifetime.end.p0(i64 64, ptr %opcodes) #15, !dbg !4515
  ret void, !dbg !4515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @copy_code(ptr noundef %regs, ptr noundef %buf, i64 noundef %src, i32 noundef %nbytes) #4 align 16 !dbg !4516 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %src.addr = alloca i64, align 8
  %nbytes.addr = alloca i32, align 4
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4520, metadata !DIExpression()), !dbg !4527
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4521, metadata !DIExpression()), !dbg !4528
  store i64 %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4522, metadata !DIExpression()), !dbg !4529
  store i32 %nbytes, ptr %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4523, metadata !DIExpression()), !dbg !4530
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4531
  %call = call i32 @user_mode(ptr noundef %0) #16, !dbg !4533
  %tobool = icmp ne i32 %call, 0, !dbg !4533
  br i1 %tobool, label %if.end, label %if.then, !dbg !4534

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4535
  %2 = load i64, ptr %src.addr, align 8, !dbg !4536
  %3 = inttoptr i64 %2 to ptr, !dbg !4537
  %4 = load i32, ptr %nbytes.addr, align 4, !dbg !4538
  %conv = zext i32 %4 to i64, !dbg !4538
  %call1 = call i64 @copy_from_kernel_nofault(ptr noundef %1, ptr noundef %3, i64 noundef %conv) #16, !dbg !4539
  %conv2 = trunc i64 %call1 to i32, !dbg !4539
  store i32 %conv2, ptr %retval, align 4, !dbg !4540
  br label %return, !dbg !4540

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !4541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4542
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4524, metadata !DIExpression()), !dbg !4542
  %call3 = call ptr @get_current() #16, !dbg !4542
  %call4 = call ptr @task_stack_page(ptr noundef %call3) #16, !dbg !4542
  %6 = ptrtoint ptr %call4 to i64, !dbg !4542
  store i64 %6, ptr %__ptr, align 8, !dbg !4542
  %7 = load i64, ptr %__ptr, align 8, !dbg !4542
  %add = add i64 %7, 16384, !dbg !4542
  store i64 %add, ptr %__ptr, align 8, !dbg !4542
  %8 = load i64, ptr %__ptr, align 8, !dbg !4542
  %9 = inttoptr i64 %8 to ptr, !dbg !4542
  %add.ptr = getelementptr %struct.pt_regs, ptr %9, i64 -1, !dbg !4542
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4543
  %10 = load ptr, ptr %tmp, align 8, !dbg !4542
  %cmp = icmp ne ptr %5, %10, !dbg !4544
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4545

if.then6:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !4546
  br label %return, !dbg !4546

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !4547
  %12 = load i64, ptr %src.addr, align 8, !dbg !4548
  %13 = inttoptr i64 %12 to ptr, !dbg !4549
  %14 = load i32, ptr %nbytes.addr, align 4, !dbg !4550
  %conv8 = zext i32 %14 to i64, !dbg !4550
  %call9 = call i64 @copy_from_user_nmi(ptr noundef %11, ptr noundef %13, i64 noundef %conv8) #16, !dbg !4551
  %conv10 = trunc i64 %call9 to i32, !dbg !4551
  store i32 %conv10, ptr %retval, align 4, !dbg !4552
  br label %return, !dbg !4552

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !4553
  ret i32 %15, !dbg !4553
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4554 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_ip(ptr noundef %regs, ptr noundef %loglvl) #4 align 16 !dbg !4558 {
entry:
  %regs.addr = alloca ptr, align 8
  %loglvl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4560, metadata !DIExpression()), !dbg !4562
  store ptr %loglvl, ptr %loglvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %loglvl.addr, metadata !4561, metadata !DIExpression()), !dbg !4563
  br label %do.body, !dbg !4564

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4566

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %loglvl.addr, align 8, !dbg !4564
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4564
  %2 = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 17, !dbg !4564
  %3 = load i16, ptr %2, align 8, !dbg !4564
  %conv = zext i16 %3 to i32, !dbg !4564
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !4564
  %ip = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 16, !dbg !4564
  %5 = load i64, ptr %ip, align 8, !dbg !4564
  %6 = inttoptr i64 %5 to ptr, !dbg !4564
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %0, i32 noundef %conv, ptr noundef %6) #18, !dbg !4564
  store i32 %call, ptr %tmp, align 4, !dbg !4566
  %7 = load i32, ptr %tmp, align 4, !dbg !4564
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4568
  %9 = load ptr, ptr %loglvl.addr, align 8, !dbg !4569
  call void @show_opcodes(ptr noundef %8, ptr noundef %9) #16, !dbg !4570
  ret void, !dbg !4571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_iret_regs(ptr noundef %regs, ptr noundef %log_lvl) #4 align 16 !dbg !4572 {
entry:
  %regs.addr = alloca ptr, align 8
  %log_lvl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4574, metadata !DIExpression()), !dbg !4576
  store ptr %log_lvl, ptr %log_lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_lvl.addr, metadata !4575, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4578
  %1 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4579
  call void @show_ip(ptr noundef %0, ptr noundef %1) #16, !dbg !4580
  br label %do.body, !dbg !4581

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4583

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4581
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !4581
  %4 = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 20, !dbg !4581
  %5 = load i16, ptr %4, align 8, !dbg !4581
  %conv = zext i16 %5 to i32, !dbg !4581
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !4581
  %sp = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 19, !dbg !4581
  %7 = load i64, ptr %sp, align 8, !dbg !4581
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4581
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !4581
  %9 = load i64, ptr %flags, align 8, !dbg !4581
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %2, i32 noundef %conv, i64 noundef %7, i64 noundef %9) #18, !dbg !4581
  store i32 %call, ptr %tmp, align 4, !dbg !4583
  %10 = load i32, ptr %tmp, align 4, !dbg !4581
  ret void, !dbg !4585
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_stack(ptr noundef %task, ptr noundef %sp, ptr noundef %loglvl) #4 align 16 !dbg !4586 {
entry:
  %task.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %loglvl.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4590, metadata !DIExpression()), !dbg !4593
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !4591, metadata !DIExpression()), !dbg !4594
  store ptr %loglvl, ptr %loglvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %loglvl.addr, metadata !4592, metadata !DIExpression()), !dbg !4595
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4596
  %tobool = icmp ne ptr %0, null, !dbg !4596
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4596

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4596

cond.false:                                       ; preds = %entry
  %call = call ptr @get_current() #16, !dbg !4597
  br label %cond.end, !dbg !4596

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %0, %cond.true ], [ %call, %cond.false ], !dbg !4596
  store ptr %cond, ptr %task.addr, align 8, !dbg !4598
  %1 = load ptr, ptr %sp.addr, align 8, !dbg !4599
  %tobool1 = icmp ne ptr %1, null, !dbg !4599
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !4601

land.lhs.true:                                    ; preds = %cond.end
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4602
  %call2 = call ptr @get_current() #16, !dbg !4603
  %cmp = icmp eq ptr %2, %call2, !dbg !4604
  br i1 %cmp, label %if.then, label %if.end, !dbg !4605

if.then:                                          ; preds = %land.lhs.true
  %call3 = call ptr @get_current() #16, !dbg !4606
  %call4 = call ptr @get_stack_pointer(ptr noundef %call3, ptr noundef null) #16, !dbg !4607
  store ptr %call4, ptr %sp.addr, align 8, !dbg !4608
  br label %if.end, !dbg !4609

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %3 = load ptr, ptr %task.addr, align 8, !dbg !4610
  %4 = load ptr, ptr %sp.addr, align 8, !dbg !4611
  %5 = load ptr, ptr %loglvl.addr, align 8, !dbg !4612
  call void @show_trace_log_lvl(ptr noundef %3, ptr noundef null, ptr noundef %4, ptr noundef %5) #16, !dbg !4613
  ret void, !dbg !4614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !4615 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4626
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4620, metadata !DIExpression()), !dbg !4626
  br label %do.body, !dbg !4626

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4627
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4622, metadata !DIExpression()), !dbg !4627
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4627
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4626
  br label %do.cond, !dbg !4627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4627

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4628
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4624, metadata !DIExpression()), !dbg !4628
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !4628, !srcloc !4629
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4628
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4628
  %3 = inttoptr i64 %2 to ptr, !dbg !4628
  store ptr %3, ptr %tmp, align 8, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4626
  %4 = load ptr, ptr %tmp, align 8, !dbg !4628
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4626
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4626
  store ptr %5, ptr %tmp1, align 8, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4630
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4626
  ret ptr %6, !dbg !4631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_stack_pointer(ptr noundef %task, ptr noundef %regs) #6 align 16 !dbg !4632 {
entry:
  %retval = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4636, metadata !DIExpression()), !dbg !4638
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4637, metadata !DIExpression()), !dbg !4639
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4640
  %tobool = icmp ne ptr %0, null, !dbg !4640
  br i1 %tobool, label %if.then, label %if.end, !dbg !4642

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4643
  %sp = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 19, !dbg !4644
  %2 = load i64, ptr %sp, align 8, !dbg !4644
  %3 = inttoptr i64 %2 to ptr, !dbg !4645
  store ptr %3, ptr %retval, align 8, !dbg !4646
  br label %return, !dbg !4646

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %task.addr, align 8, !dbg !4647
  %call = call ptr @get_current() #16, !dbg !4649
  %cmp = icmp eq ptr %4, %call, !dbg !4650
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4651

if.then1:                                         ; preds = %if.end
  %5 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !4652
  store ptr %5, ptr %retval, align 8, !dbg !4653
  br label %return, !dbg !4653

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %task.addr, align 8, !dbg !4654
  %thread = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 197, !dbg !4655
  %sp3 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 1, !dbg !4656
  %7 = load i64, ptr %sp3, align 8, !dbg !4656
  %8 = inttoptr i64 %7 to ptr, !dbg !4657
  store ptr %8, ptr %retval, align 8, !dbg !4658
  br label %return, !dbg !4658

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !4659
  ret ptr %9, !dbg !4659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_trace_log_lvl(ptr noundef %task, ptr noundef %regs, ptr noundef %stack, ptr noundef %log_lvl) #4 align 16 !dbg !4660 {
entry:
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %stack.addr = alloca ptr, align 8
  %log_lvl.addr = alloca ptr, align 8
  %state = alloca %struct.unwind_state, align 8
  %stack_info = alloca %struct.stack_info, align 8
  %visit_mask = alloca i64, align 8
  %graph_idx = alloca i32, align 4
  %partial = alloca i8, align 1
  %tmp = alloca i32, align 4
  %stack_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %real_addr = alloca i64, align 8
  %reliable = alloca i32, align 4
  %addr = alloca i64, align 8
  %tmp30 = alloca i64, align 8
  %ret_addr_p = alloca ptr, align 8
  %tmp65 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4664, metadata !DIExpression()), !dbg !4701
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4665, metadata !DIExpression()), !dbg !4702
  store ptr %stack, ptr %stack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !4666, metadata !DIExpression()), !dbg !4703
  store ptr %log_lvl, ptr %log_lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_lvl.addr, metadata !4667, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 112, ptr %state) #15, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4668, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 32, ptr %stack_info) #15, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %stack_info, metadata !4685, metadata !DIExpression()), !dbg !4708
  call void @llvm.memset.p0.i64(ptr align 8 %stack_info, i8 0, i64 32, i1 false), !dbg !4708
  call void @llvm.lifetime.start.p0(i64 8, ptr %visit_mask) #15, !dbg !4709
  call void @llvm.dbg.declare(metadata ptr %visit_mask, metadata !4686, metadata !DIExpression()), !dbg !4710
  store i64 0, ptr %visit_mask, align 8, !dbg !4710
  call void @llvm.lifetime.start.p0(i64 4, ptr %graph_idx) #15, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %graph_idx, metadata !4687, metadata !DIExpression()), !dbg !4712
  store i32 0, ptr %graph_idx, align 4, !dbg !4712
  call void @llvm.lifetime.start.p0(i64 1, ptr %partial) #15, !dbg !4713
  call void @llvm.dbg.declare(metadata ptr %partial, metadata !4688, metadata !DIExpression()), !dbg !4714
  store i8 0, ptr %partial, align 1, !dbg !4714
  br label %do.body, !dbg !4715

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4717

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4717

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4715
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %0) #18, !dbg !4715
  store i32 %call, ptr %tmp, align 4, !dbg !4717
  %1 = load i32, ptr %tmp, align 4, !dbg !4715
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4719
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !4720
  %4 = load ptr, ptr %stack.addr, align 8, !dbg !4721
  call void @unwind_start(ptr noundef %state, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16, !dbg !4722
  %call1 = call ptr @unwind_get_entry_regs(ptr noundef %state, ptr noundef %partial) #16, !dbg !4723
  store ptr %call1, ptr %regs.addr, align 8, !dbg !4724
  %5 = load ptr, ptr %stack.addr, align 8, !dbg !4725
  %tobool = icmp ne ptr %5, null, !dbg !4725
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4725

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !4725

cond.false:                                       ; preds = %do.end
  %6 = load ptr, ptr %task.addr, align 8, !dbg !4726
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !4727
  %call2 = call ptr @get_stack_pointer(ptr noundef %6, ptr noundef %7) #16, !dbg !4728
  br label %cond.end, !dbg !4725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ %call2, %cond.false ], !dbg !4725
  store ptr %cond, ptr %stack.addr, align 8, !dbg !4729
  br label %for.cond, !dbg !4730

for.cond:                                         ; preds = %for.inc71, %cond.end
  %8 = load ptr, ptr %stack.addr, align 8, !dbg !4731
  %tobool3 = icmp ne ptr %8, null, !dbg !4732
  br i1 %tobool3, label %for.body, label %for.end72, !dbg !4732

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack_name) #15, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %stack_name, metadata !4689, metadata !DIExpression()), !dbg !4734
  %9 = load ptr, ptr %stack.addr, align 8, !dbg !4735
  %10 = ptrtoint ptr %9 to i64, !dbg !4735
  %add = add i64 %10, 7, !dbg !4735
  %and = and i64 %add, -8, !dbg !4735
  %11 = inttoptr i64 %and to ptr, !dbg !4735
  store ptr %11, ptr %stack.addr, align 8, !dbg !4736
  %12 = load ptr, ptr %stack.addr, align 8, !dbg !4737
  %13 = load ptr, ptr %task.addr, align 8, !dbg !4739
  %call4 = call i32 @get_stack_info(ptr noundef %12, ptr noundef %13, ptr noundef %stack_info, ptr noundef %visit_mask) #16, !dbg !4740
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4740
  br i1 %tobool5, label %if.then, label %if.end11, !dbg !4741

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %stack.addr, align 8, !dbg !4742
  %15 = ptrtoint ptr %14 to i64, !dbg !4742
  %add6 = add i64 %15, 4095, !dbg !4742
  %and7 = and i64 %add6, -4096, !dbg !4742
  %16 = inttoptr i64 %and7 to ptr, !dbg !4744
  store ptr %16, ptr %stack.addr, align 8, !dbg !4745
  %17 = load ptr, ptr %stack.addr, align 8, !dbg !4746
  %18 = load ptr, ptr %task.addr, align 8, !dbg !4748
  %call8 = call i32 @get_stack_info(ptr noundef %17, ptr noundef %18, ptr noundef %stack_info, ptr noundef %visit_mask) #16, !dbg !4749
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4749
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4750

if.then10:                                        ; preds = %if.then
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !4751

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !4752

if.end11:                                         ; preds = %if.end, %for.body
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 0, !dbg !4753
  %19 = load i32, ptr %type, align 8, !dbg !4753
  %call12 = call ptr @stack_type_name(i32 noundef %19) #16, !dbg !4754
  store ptr %call12, ptr %stack_name, align 8, !dbg !4755
  %20 = load ptr, ptr %stack_name, align 8, !dbg !4756
  %tobool13 = icmp ne ptr %20, null, !dbg !4756
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !4758

if.then14:                                        ; preds = %if.end11
  br label %do.body15, !dbg !4759

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !4761

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4761

do.end17:                                         ; preds = %do.cond16
  %21 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4759
  %22 = load ptr, ptr %stack_name, align 8, !dbg !4759
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %21, ptr noundef %22) #18, !dbg !4759
  store i32 %call19, ptr %tmp18, align 4, !dbg !4761
  %23 = load i32, ptr %tmp18, align 4, !dbg !4759
  br label %if.end20, !dbg !4763

if.end20:                                         ; preds = %do.end17, %if.end11
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !4764
  %tobool21 = icmp ne ptr %24, null, !dbg !4764
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !4766

if.then22:                                        ; preds = %if.end20
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !4767
  %26 = load i8, ptr %partial, align 1, !dbg !4768, !range !4769, !noundef !604
  %tobool23 = trunc i8 %26 to i1, !dbg !4768
  %27 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4770
  call void @show_regs_if_on_stack(ptr noundef %stack_info, ptr noundef %25, i1 noundef zeroext %tobool23, ptr noundef %27) #16, !dbg !4771
  br label %if.end24, !dbg !4771

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %for.cond25, !dbg !4772

for.cond25:                                       ; preds = %for.inc, %if.end24
  %28 = load ptr, ptr %stack.addr, align 8, !dbg !4773
  %end = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 2, !dbg !4774
  %29 = load ptr, ptr %end, align 8, !dbg !4774
  %cmp = icmp ult ptr %28, %29, !dbg !4775
  br i1 %cmp, label %for.body26, label %for.end, !dbg !4776

for.body26:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_addr) #15, !dbg !4777
  call void @llvm.dbg.declare(metadata ptr %real_addr, metadata !4693, metadata !DIExpression()), !dbg !4778
  call void @llvm.lifetime.start.p0(i64 4, ptr %reliable) #15, !dbg !4779
  call void @llvm.dbg.declare(metadata ptr %reliable, metadata !4697, metadata !DIExpression()), !dbg !4780
  store i32 0, ptr %reliable, align 4, !dbg !4780
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !4781
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4698, metadata !DIExpression()), !dbg !4782
  br label %do.body27, !dbg !4783

do.body27:                                        ; preds = %for.body26
  br label %do.cond28, !dbg !4785

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4785

do.end29:                                         ; preds = %do.cond28
  %30 = load ptr, ptr %stack.addr, align 8, !dbg !4783
  %call31 = call i64 @__read_once_word_nocheck(ptr noundef %30) #16, !dbg !4783
  store i64 %call31, ptr %tmp30, align 8, !dbg !4785
  %31 = load i64, ptr %tmp30, align 8, !dbg !4783
  store i64 %31, ptr %addr, align 8, !dbg !4782
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_addr_p) #15, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %ret_addr_p, metadata !4699, metadata !DIExpression()), !dbg !4788
  %call32 = call ptr @unwind_get_return_address_ptr(ptr noundef %state) #16, !dbg !4789
  store ptr %call32, ptr %ret_addr_p, align 8, !dbg !4788
  %32 = load i64, ptr %addr, align 8, !dbg !4790
  %call33 = call i32 @__kernel_text_address(i64 noundef %32) #16, !dbg !4792
  %tobool34 = icmp ne i32 %call33, 0, !dbg !4792
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4793

if.then35:                                        ; preds = %do.end29
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4794

if.end36:                                         ; preds = %do.end29
  %33 = load ptr, ptr %regs.addr, align 8, !dbg !4795
  %tobool37 = icmp ne ptr %33, null, !dbg !4795
  br i1 %tobool37, label %land.lhs.true, label %if.end40, !dbg !4797

land.lhs.true:                                    ; preds = %if.end36
  %34 = load ptr, ptr %stack.addr, align 8, !dbg !4798
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !4799
  %ip = getelementptr inbounds %struct.pt_regs, ptr %35, i32 0, i32 16, !dbg !4800
  %cmp38 = icmp eq ptr %34, %ip, !dbg !4801
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !4802

if.then39:                                        ; preds = %land.lhs.true
  br label %next, !dbg !4803

if.end40:                                         ; preds = %land.lhs.true, %if.end36
  %36 = load ptr, ptr %stack.addr, align 8, !dbg !4804
  %37 = load ptr, ptr %ret_addr_p, align 8, !dbg !4806
  %cmp41 = icmp eq ptr %36, %37, !dbg !4807
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !4808

if.then42:                                        ; preds = %if.end40
  store i32 1, ptr %reliable, align 4, !dbg !4809
  br label %if.end43, !dbg !4810

if.end43:                                         ; preds = %if.then42, %if.end40
  %38 = load ptr, ptr %task.addr, align 8, !dbg !4811
  %39 = load i64, ptr %addr, align 8, !dbg !4812
  %40 = load ptr, ptr %stack.addr, align 8, !dbg !4813
  %call44 = call i64 @ftrace_graph_ret_addr(ptr noundef %38, ptr noundef %graph_idx, i64 noundef %39, ptr noundef %40) #16, !dbg !4814
  store i64 %call44, ptr %real_addr, align 8, !dbg !4815
  %41 = load i64, ptr %real_addr, align 8, !dbg !4816
  %42 = load i64, ptr %addr, align 8, !dbg !4818
  %cmp45 = icmp ne i64 %41, %42, !dbg !4819
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4820

if.then46:                                        ; preds = %if.end43
  %43 = load i64, ptr %addr, align 8, !dbg !4821
  %44 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4822
  call void @printk_stack_address(i64 noundef %43, i32 noundef 0, ptr noundef %44) #16, !dbg !4823
  br label %if.end47, !dbg !4823

if.end47:                                         ; preds = %if.then46, %if.end43
  %45 = load i64, ptr %real_addr, align 8, !dbg !4824
  %46 = load i32, ptr %reliable, align 4, !dbg !4825
  %47 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4826
  call void @printk_stack_address(i64 noundef %45, i32 noundef %46, ptr noundef %47) #16, !dbg !4827
  %48 = load i32, ptr %reliable, align 4, !dbg !4828
  %tobool48 = icmp ne i32 %48, 0, !dbg !4828
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !4830

if.then49:                                        ; preds = %if.end47
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4831

if.end50:                                         ; preds = %if.end47
  br label %next, !dbg !4828

next:                                             ; preds = %if.end50, %if.then39
  call void @llvm.dbg.label(metadata !4700), !dbg !4832
  %call51 = call zeroext i1 @unwind_next_frame(ptr noundef %state) #16, !dbg !4833
  %call52 = call ptr @unwind_get_entry_regs(ptr noundef %state, ptr noundef %partial) #16, !dbg !4834
  store ptr %call52, ptr %regs.addr, align 8, !dbg !4835
  %49 = load ptr, ptr %regs.addr, align 8, !dbg !4836
  %tobool53 = icmp ne ptr %49, null, !dbg !4836
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !4838

if.then54:                                        ; preds = %next
  %50 = load ptr, ptr %regs.addr, align 8, !dbg !4839
  %51 = load i8, ptr %partial, align 1, !dbg !4840, !range !4769, !noundef !604
  %tobool55 = trunc i8 %51 to i1, !dbg !4840
  %52 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4841
  call void @show_regs_if_on_stack(ptr noundef %stack_info, ptr noundef %50, i1 noundef zeroext %tobool55, ptr noundef %52) #16, !dbg !4842
  br label %if.end56, !dbg !4842

if.end56:                                         ; preds = %if.then54, %next
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4843
  br label %cleanup, !dbg !4843

cleanup:                                          ; preds = %if.end56, %if.then49, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_addr_p) #15, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 4, ptr %reliable) #15, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_addr) #15, !dbg !4843
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 11, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4844

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %53 = load ptr, ptr %stack.addr, align 8, !dbg !4845
  %incdec.ptr = getelementptr i64, ptr %53, i32 1, !dbg !4845
  store ptr %incdec.ptr, ptr %stack.addr, align 8, !dbg !4845
  br label %for.cond25, !dbg !4846, !llvm.loop !4847

for.end:                                          ; preds = %for.cond25
  %54 = load ptr, ptr %stack_name, align 8, !dbg !4851
  %tobool60 = icmp ne ptr %54, null, !dbg !4851
  br i1 %tobool60, label %if.then61, label %if.end67, !dbg !4853

if.then61:                                        ; preds = %for.end
  br label %do.body62, !dbg !4854

do.body62:                                        ; preds = %if.then61
  br label %do.cond63, !dbg !4856

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !4856

do.end64:                                         ; preds = %do.cond63
  %55 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4854
  %56 = load ptr, ptr %stack_name, align 8, !dbg !4854
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %55, ptr noundef %56) #18, !dbg !4854
  store i32 %call66, ptr %tmp65, align 4, !dbg !4856
  %57 = load i32, ptr %tmp65, align 4, !dbg !4854
  br label %if.end67, !dbg !4858

if.end67:                                         ; preds = %do.end64, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4859
  br label %cleanup68, !dbg !4859

cleanup68:                                        ; preds = %if.end67, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack_name) #15, !dbg !4859
  %cleanup.dest69 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest69, label %unreachable [
    i32 0, label %cleanup.cont70
    i32 4, label %for.end72
  ]

cleanup.cont70:                                   ; preds = %cleanup68
  br label %for.inc71, !dbg !4860

for.inc71:                                        ; preds = %cleanup.cont70
  %next_sp = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 3, !dbg !4861
  %58 = load ptr, ptr %next_sp, align 8, !dbg !4861
  store ptr %58, ptr %stack.addr, align 8, !dbg !4862
  br label %for.cond, !dbg !4863, !llvm.loop !4864

for.end72:                                        ; preds = %cleanup68, %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %partial) #15, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 4, ptr %graph_idx) #15, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 8, ptr %visit_mask) #15, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 32, ptr %stack_info) #15, !dbg !4866
  call void @llvm.lifetime.end.p0(i64 112, ptr %state) #15, !dbg !4866
  ret void, !dbg !4866

unreachable:                                      ; preds = %cleanup68, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_stack_regs(ptr noundef %regs) #4 align 16 !dbg !4867 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  %call = call ptr @get_current() #16, !dbg !4873
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4874
  call void @show_trace_log_lvl(ptr noundef %call, ptr noundef %0, ptr noundef null, ptr noundef @.str.5) #16, !dbg !4875
  ret void, !dbg !4876
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @oops_begin() #4 align 16 !dbg !4877 {
entry:
  %cpu = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4881, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4882, metadata !DIExpression()), !dbg !4897
  call void @oops_enter() #16, !dbg !4898
  br label %do.body, !dbg !4899

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4883, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4886, metadata !DIExpression()), !dbg !4900
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4900
  %conv = zext i1 %cmp to i32, !dbg !4900
  store i32 1, ptr %tmp, align 4, !dbg !4900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4901
  %0 = load i32, ptr %tmp, align 4, !dbg !4900
  %call = call i64 @arch_local_irq_save() #16, !dbg !4901
  store i64 %call, ptr %flags, align 8, !dbg !4901
  br label %do.cond, !dbg !4901

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4901

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #16, !dbg !4902
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4887, metadata !DIExpression()), !dbg !4903
  br label %do.body2, !dbg !4903

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4890, metadata !DIExpression()), !dbg !4904
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4904
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4903
  br label %do.cond3, !dbg !4904

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4904

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4892, metadata !DIExpression()), !dbg !4905
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !4905, !srcloc !4906
  store i32 %2, ptr %pfo_val__, align 4, !dbg !4905
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !4905
  %conv6 = zext i32 %3 to i64, !dbg !4905
  %conv7 = trunc i64 %conv6 to i32, !dbg !4905
  store i32 %conv7, ptr %tmp5, align 4, !dbg !4905
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !4903
  %4 = load i32, ptr %tmp5, align 4, !dbg !4905
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !4903
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !4903
  store i32 %5, ptr %tmp8, align 4, !dbg !4903
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4902
  %6 = load i32, ptr %tmp8, align 4, !dbg !4903
  store i32 %6, ptr %tmp1, align 4, !dbg !4902
  %7 = load i32, ptr %tmp1, align 4, !dbg !4902
  store i32 %7, ptr %cpu, align 4, !dbg !4907
  %call9 = call i32 @queued_spin_trylock(ptr noundef @die_lock) #16, !dbg !4908
  %tobool = icmp ne i32 %call9, 0, !dbg !4908
  br i1 %tobool, label %if.end13, label %if.then, !dbg !4910

if.then:                                          ; preds = %do.end4
  %8 = load i32, ptr %cpu, align 4, !dbg !4911
  %9 = load i32, ptr @die_owner, align 4, !dbg !4914
  %cmp10 = icmp eq i32 %8, %9, !dbg !4915
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !4916

if.then12:                                        ; preds = %if.then
  br label %if.end, !dbg !4916

if.else:                                          ; preds = %if.then
  call void @queued_spin_lock(ptr noundef @die_lock) #16, !dbg !4917
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end13, !dbg !4918

if.end13:                                         ; preds = %if.end, %do.end4
  %10 = load i32, ptr @die_nest_count, align 4, !dbg !4919
  %inc = add i32 %10, 1, !dbg !4919
  store i32 %inc, ptr @die_nest_count, align 4, !dbg !4919
  %11 = load i32, ptr %cpu, align 4, !dbg !4920
  store i32 %11, ptr @die_owner, align 4, !dbg !4921
  call void @console_verbose() #16, !dbg !4922
  call void @bust_spinlocks(i32 noundef 1) #16, !dbg !4923
  %12 = load i64, ptr %flags, align 8, !dbg !4924
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4925
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !4925
  ret i64 %12, !dbg !4926
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4927 dso_local void @oops_enter() #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !4928 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4931, metadata !DIExpression()), !dbg !4933
  %call = call i64 @arch_local_save_flags() #16, !dbg !4934
  store i64 %call, ptr %flags, align 8, !dbg !4933
  call void @arch_local_irq_disable() #16, !dbg !4935
  %0 = load i64, ptr %flags, align 8, !dbg !4936
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4937
  ret i64 %0, !dbg !4938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_trylock(ptr noundef %lock) #3 align 16 !dbg !4939 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4945, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4946, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4950
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !4951
  %call = call i32 @atomic_read(ptr noundef %1) #16, !dbg !4952
  store i32 %call, ptr %val, align 4, !dbg !4949
  %2 = load i32, ptr %val, align 4, !dbg !4953
  %tobool = icmp ne i32 %2, 0, !dbg !4953
  %lnot = xor i1 %tobool, true, !dbg !4953
  %lnot1 = xor i1 %lnot, true, !dbg !4953
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4953
  %conv = sext i32 %lnot.ext to i64, !dbg !4953
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4953
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4953
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4955

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4956

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !4957
  %4 = getelementptr inbounds %struct.qspinlock, ptr %3, i32 0, i32 0, !dbg !4957
  %call3 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %4, ptr noundef %val, i32 noundef 1) #16, !dbg !4957
  %lnot4 = xor i1 %call3, true, !dbg !4957
  %lnot6 = xor i1 %lnot4, true, !dbg !4957
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4957
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !4957
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !4957
  %conv10 = trunc i64 %expval9 to i32, !dbg !4957
  store i32 %conv10, ptr %retval, align 4, !dbg !4958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4958

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !4959
  %5 = load i32, ptr %retval, align 4, !dbg !4959
  ret i32 %5, !dbg !4959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_lock(ptr noundef %lock) #3 align 16 !dbg !4960 {
entry:
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4964, metadata !DIExpression()), !dbg !4966
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4965, metadata !DIExpression()), !dbg !4968
  store i32 0, ptr %val, align 4, !dbg !4968
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4969
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !4969
  %call = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %1, ptr noundef %val, i32 noundef 1) #16, !dbg !4969
  %lnot = xor i1 %call, true, !dbg !4969
  %lnot1 = xor i1 %lnot, true, !dbg !4969
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4969
  %conv = sext i32 %lnot.ext to i64, !dbg !4969
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4969
  %tobool = icmp ne i64 %expval, 0, !dbg !4969
  br i1 %tobool, label %if.then, label %if.end, !dbg !4971

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4972

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4973
  %3 = load i32, ptr %val, align 4, !dbg !4974
  call void @queued_spin_lock_slowpath(ptr noundef %2, i32 noundef %3) #16, !dbg !4975
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4976
  br label %cleanup, !dbg !4976

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !4976
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4976

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4977 dso_local void @console_verbose() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4978 dso_local void @bust_spinlocks(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @oops_end(i64 noundef %flags, ptr noundef %regs, i32 noundef %signr) #4 align 16 !dbg !4980 {
entry:
  %flags.addr = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %signr.addr = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4984, metadata !DIExpression()), !dbg !4991
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4985, metadata !DIExpression()), !dbg !4992
  store i32 %signr, ptr %signr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %signr.addr, metadata !4986, metadata !DIExpression()), !dbg !4993
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4994
  %tobool = icmp ne ptr %0, null, !dbg !4994
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4996

land.lhs.true:                                    ; preds = %entry
  %call = call ptr @get_current() #16, !dbg !4997
  %call1 = call i32 @kexec_should_crash(ptr noundef %call) #16, !dbg !4998
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4998
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5000
  call void @crash_kexec(ptr noundef %1) #16, !dbg !5001
  br label %if.end, !dbg !5001

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @bust_spinlocks(i32 noundef 0) #16, !dbg !5002
  store i32 -1, ptr @die_owner, align 4, !dbg !5003
  call void @add_taint(i32 noundef 7, i32 noundef 1) #16, !dbg !5004
  %2 = load i32, ptr @die_nest_count, align 4, !dbg !5005
  %dec = add i32 %2, -1, !dbg !5005
  store i32 %dec, ptr @die_nest_count, align 4, !dbg !5005
  %3 = load i32, ptr @die_nest_count, align 4, !dbg !5006
  %tobool3 = icmp ne i32 %3, 0, !dbg !5006
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5008

if.then4:                                         ; preds = %if.end
  call void @queued_spin_unlock(ptr noundef @die_lock) #16, !dbg !5009
  br label %if.end5, !dbg !5009

if.end5:                                          ; preds = %if.then4, %if.end
  br label %do.body, !dbg !5010

do.body:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4987, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4990, metadata !DIExpression()), !dbg !5011
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5011
  %conv = zext i1 %cmp to i32, !dbg !5011
  store i32 1, ptr %tmp, align 4, !dbg !5011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5012
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5012
  %4 = load i32, ptr %tmp, align 4, !dbg !5011
  br label %do.body6, !dbg !5012

do.body6:                                         ; preds = %do.body
  br label %do.end, !dbg !5013

do.end:                                           ; preds = %do.body6
  %5 = load i64, ptr %flags.addr, align 8, !dbg !5012
  call void @arch_local_irq_restore(i64 noundef %5) #16, !dbg !5012
  br label %do.end7, !dbg !5012

do.end7:                                          ; preds = %do.end
  call void @oops_exit() #16, !dbg !5015
  call void @__show_regs(ptr noundef @exec_summary_regs, i32 noundef 2, ptr noundef @.str.5) #16, !dbg !5016
  %6 = load i32, ptr %signr.addr, align 4, !dbg !5017
  %tobool8 = icmp ne i32 %6, 0, !dbg !5017
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5019

if.then9:                                         ; preds = %do.end7
  ret void, !dbg !5020

if.end10:                                         ; preds = %do.end7
  %call11 = call i32 @preempt_count() #16, !dbg !5021
  %conv12 = sext i32 %call11 to i64, !dbg !5021
  %and = and i64 %conv12, 16776960, !dbg !5021
  %tobool13 = icmp ne i64 %and, 0, !dbg !5021
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5023

if.then14:                                        ; preds = %if.end10
  call void (ptr, ...) @panic(ptr noundef @.str.6) #20, !dbg !5024
  unreachable, !dbg !5024

if.end15:                                         ; preds = %if.end10
  %7 = load i32, ptr @panic_on_oops, align 4, !dbg !5025
  %tobool16 = icmp ne i32 %7, 0, !dbg !5025
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5027

if.then17:                                        ; preds = %if.end15
  call void (ptr, ...) @panic(ptr noundef @.str.7) #20, !dbg !5028
  unreachable, !dbg !5028

if.end18:                                         ; preds = %if.end15
  %call19 = call ptr @get_current() #16, !dbg !5029
  call void @kasan_unpoison_task_stack(ptr noundef %call19) #16, !dbg !5030
  %8 = load i32, ptr %signr.addr, align 4, !dbg !5031
  call void @rewind_stack_and_make_dead(i32 noundef %8) #21, !dbg !5032
  unreachable, !dbg !5032
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5033 dso_local i32 @kexec_should_crash(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5037 dso_local void @crash_kexec(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5038 dso_local void @add_taint(i32 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_unlock(ptr noundef %lock) #3 align 16 !dbg !5041 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  br label %do.body, !dbg !5045

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5046

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5048

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5046

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5050

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5052

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5050, !srcloc !5054
  br label %do.body5, !dbg !5050

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5055

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5057

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5055

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5059
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !5059
  %locked = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !5059
  store volatile i8 0, ptr %locked, align 4, !dbg !5059
  br label %do.end9, !dbg !5059

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5055

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !5050

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !5046

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !5061
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !5062 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5068
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #16, !dbg !5070
  %tobool = icmp ne i32 %call, 0, !dbg !5070
  br i1 %tobool, label %if.end, label %if.then, !dbg !5071

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #16, !dbg !5072
  br label %if.end, !dbg !5072

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5074 dso_local void @oops_exit() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5075 dso_local void @__show_regs(ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #3 align 16 !dbg !5078 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5081, metadata !DIExpression()), !dbg !5083
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !5083, !srcloc !5084
  store i32 %0, ptr %pfo_val__, align 4, !dbg !5083
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !5083
  %conv = zext i32 %1 to i64, !dbg !5083
  %conv1 = trunc i64 %conv to i32, !dbg !5083
  store i32 %conv1, ptr %tmp, align 4, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !5085
  %2 = load i32, ptr %tmp, align 4, !dbg !5083
  %and = and i32 %2, 2147483647, !dbg !5086
  ret i32 %and, !dbg !5087
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !5088 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_unpoison_task_stack(ptr noundef %task) #6 align 16 !dbg !5091 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  ret void, !dbg !5097
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5098 dso_local void @rewind_stack_and_make_dead(i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__die_header(ptr noundef %str, ptr noundef %regs, i64 noundef %err) #4 align 16 !dbg !5099 {
entry:
  %str.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %err.addr = alloca i64, align 8
  %pr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5103, metadata !DIExpression()), !dbg !5107
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5104, metadata !DIExpression()), !dbg !5108
  store i64 %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5105, metadata !DIExpression()), !dbg !5109
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #15, !dbg !5110
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !5106, metadata !DIExpression()), !dbg !5111
  store ptr @.str.5, ptr %pr, align 8, !dbg !5111
  %0 = load i32, ptr @die_counter, align 4, !dbg !5112
  %tobool = icmp ne i32 %0, 0, !dbg !5112
  br i1 %tobool, label %if.end, label %if.then, !dbg !5114

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5115
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @exec_summary_regs, ptr align 8 %1, i64 168, i1 false), !dbg !5116
  br label %if.end, !dbg !5117

if.end:                                           ; preds = %if.then, %entry
  store ptr @.str.13, ptr %pr, align 8, !dbg !5118
  br label %do.body, !dbg !5120

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5122

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5122

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !5120
  %3 = load i64, ptr %err.addr, align 8, !dbg !5120
  %and = and i64 %3, 65535, !dbg !5120
  %4 = load i32, ptr @die_counter, align 4, !dbg !5120
  %inc = add i32 %4, 1, !dbg !5120
  store i32 %inc, ptr @die_counter, align 4, !dbg !5120
  %5 = load ptr, ptr %pr, align 8, !dbg !5120
  %call = call zeroext i1 @debug_pagealloc_enabled() #16, !dbg !5120
  %6 = zext i1 %call to i64, !dbg !5120
  %cond = select i1 %call, ptr @.str.16, ptr @.str.5, !dbg !5120
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !5120
  %7 = zext i1 %call1 to i64, !dbg !5120
  %cond2 = select i1 %call1, ptr @.str.17, ptr @.str.18, !dbg !5120
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %2, i64 noundef %and, i32 noundef %inc, ptr noundef %5, ptr noundef @.str.15, ptr noundef %cond, ptr noundef @.str.5, ptr noundef %cond2) #18, !dbg !5120
  store i32 %call3, ptr %tmp, align 4, !dbg !5122
  %8 = load i32, ptr %tmp, align 4, !dbg !5120
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #15, !dbg !5124
  ret void, !dbg !5124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__die_body(ptr noundef %str, ptr noundef %regs, i64 noundef %err) #4 align 16 !dbg !5125 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %err.addr = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5129, metadata !DIExpression()), !dbg !5132
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5130, metadata !DIExpression()), !dbg !5133
  store i64 %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5131, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5135
  call void @show_regs(ptr noundef %0) #16, !dbg !5136
  call void @print_modules() #16, !dbg !5137
  %1 = load ptr, ptr %str.addr, align 8, !dbg !5138
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5140
  %3 = load i64, ptr %err.addr, align 8, !dbg !5141
  %call = call ptr @get_current() #16, !dbg !5142
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !5143
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !5144
  %4 = load i64, ptr %trap_nr, align 16, !dbg !5144
  %conv = trunc i64 %4 to i32, !dbg !5142
  %call1 = call i32 @notify_die(i32 noundef 1, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %conv, i32 noundef 11) #16, !dbg !5145
  %cmp = icmp eq i32 %call1, 32769, !dbg !5146
  br i1 %cmp, label %if.then, label %if.end, !dbg !5147

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5150
  ret i32 %5, !dbg !5150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__die(ptr noundef %str, ptr noundef %regs, i64 noundef %err) #4 align 16 !dbg !5151 {
entry:
  %str.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %err.addr = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5153, metadata !DIExpression()), !dbg !5156
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5154, metadata !DIExpression()), !dbg !5157
  store i64 %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5155, metadata !DIExpression()), !dbg !5158
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5159
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5160
  %2 = load i64, ptr %err.addr, align 8, !dbg !5161
  call void @__die_header(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5162
  %3 = load ptr, ptr %str.addr, align 8, !dbg !5163
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5164
  %5 = load i64, ptr %err.addr, align 8, !dbg !5165
  %call = call i32 @__die_body(ptr noundef %3, ptr noundef %4, i64 noundef %5) #16, !dbg !5166
  ret i32 %call, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @die(ptr noundef %str, ptr noundef %regs, i64 noundef %err) #4 align 16 !dbg !5168 {
entry:
  %str.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %err.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %sig = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5170, metadata !DIExpression()), !dbg !5175
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5171, metadata !DIExpression()), !dbg !5176
  store i64 %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5172, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5173, metadata !DIExpression()), !dbg !5179
  %call = call i64 @oops_begin() #16, !dbg !5180
  store i64 %call, ptr %flags, align 8, !dbg !5179
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #15, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5174, metadata !DIExpression()), !dbg !5182
  store i32 11, ptr %sig, align 4, !dbg !5182
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5183
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5185
  %2 = load i64, ptr %err.addr, align 8, !dbg !5186
  %call1 = call i32 @__die(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5187
  %tobool = icmp ne i32 %call1, 0, !dbg !5187
  br i1 %tobool, label %if.then, label %if.end, !dbg !5188

if.then:                                          ; preds = %entry
  store i32 0, ptr %sig, align 4, !dbg !5189
  br label %if.end, !dbg !5190

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %flags, align 8, !dbg !5191
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5192
  %5 = load i32, ptr %sig, align 4, !dbg !5193
  call void @oops_end(i64 noundef %3, ptr noundef %4, i32 noundef %5) #16, !dbg !5194
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #15, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5195
  ret void, !dbg !5195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @die_addr(ptr noundef %str, ptr noundef %regs, i64 noundef %err, i64 noundef %gp_addr) #4 align 16 !dbg !5196 {
entry:
  %str.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %err.addr = alloca i64, align 8
  %gp_addr.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %sig = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5200, metadata !DIExpression()), !dbg !5206
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5201, metadata !DIExpression()), !dbg !5207
  store i64 %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5202, metadata !DIExpression()), !dbg !5208
  store i64 %gp_addr, ptr %gp_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gp_addr.addr, metadata !5203, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5204, metadata !DIExpression()), !dbg !5211
  %call = call i64 @oops_begin() #16, !dbg !5212
  store i64 %call, ptr %flags, align 8, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 4, ptr %sig) #15, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5205, metadata !DIExpression()), !dbg !5214
  store i32 11, ptr %sig, align 4, !dbg !5214
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5215
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5216
  %2 = load i64, ptr %err.addr, align 8, !dbg !5217
  call void @__die_header(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5218
  %3 = load i64, ptr %gp_addr.addr, align 8, !dbg !5219
  %tobool = icmp ne i64 %3, 0, !dbg !5219
  br i1 %tobool, label %if.then, label %if.end, !dbg !5221

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %gp_addr.addr, align 8, !dbg !5222
  call void @kasan_non_canonical_hook(i64 noundef %4) #16, !dbg !5223
  br label %if.end, !dbg !5223

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %str.addr, align 8, !dbg !5224
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5226
  %7 = load i64, ptr %err.addr, align 8, !dbg !5227
  %call1 = call i32 @__die_body(ptr noundef %5, ptr noundef %6, i64 noundef %7) #16, !dbg !5228
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5228
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5229

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %sig, align 4, !dbg !5230
  br label %if.end4, !dbg !5231

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load i64, ptr %flags, align 8, !dbg !5232
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !5233
  %10 = load i32, ptr %sig, align 4, !dbg !5234
  call void @oops_end(i64 noundef %8, ptr noundef %9, i32 noundef %10) #16, !dbg !5235
  call void @llvm.lifetime.end.p0(i64 4, ptr %sig) #15, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5236
  ret void, !dbg !5236
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_non_canonical_hook(i64 noundef %addr) #6 align 16 !dbg !5237 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  ret void, !dbg !5241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @show_regs(ptr noundef %regs) #4 align 16 !dbg !5242 {
entry:
  %regs.addr = alloca ptr, align 8
  %print_kernel_regs = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5244, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 4, ptr %print_kernel_regs) #15, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %print_kernel_regs, metadata !5245, metadata !DIExpression()), !dbg !5248
  call void @show_regs_print_info(ptr noundef @.str.5) #16, !dbg !5249
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5250
  %call = call i32 @user_mode(ptr noundef %0) #16, !dbg !5251
  %tobool = icmp ne i32 %call, 0, !dbg !5251
  %1 = zext i1 %tobool to i64, !dbg !5251
  %cond = select i1 %tobool, i32 1, i32 2, !dbg !5251
  store i32 %cond, ptr %print_kernel_regs, align 4, !dbg !5252
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5253
  %3 = load i32, ptr %print_kernel_regs, align 4, !dbg !5254
  call void @__show_regs(ptr noundef %2, i32 noundef %3, ptr noundef @.str.5) #16, !dbg !5255
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5256
  %call1 = call i32 @user_mode(ptr noundef %4) #16, !dbg !5258
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5258
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5259

if.then:                                          ; preds = %entry
  %call3 = call ptr @get_current() #16, !dbg !5260
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5261
  call void @show_trace_log_lvl(ptr noundef %call3, ptr noundef %5, ptr noundef null, ptr noundef @.str.5) #16, !dbg !5262
  br label %if.end, !dbg !5262

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %print_kernel_regs) #15, !dbg !5263
  ret void, !dbg !5263
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5264 dso_local void @show_regs_print_info(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #3 align 16 !dbg !5265 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5271
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !5272
  %2 = load i16, ptr %1, align 8, !dbg !5272
  %conv = zext i16 %2 to i32, !dbg !5271
  %and = and i32 %conv, 3, !dbg !5273
  %tobool = icmp ne i32 %and, 0, !dbg !5274
  %lnot = xor i1 %tobool, true, !dbg !5274
  %lnot1 = xor i1 %lnot, true, !dbg !5275
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5275
  ret i32 %lnot.ext, !dbg !5276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5277 dso_local ptr @get_cpu_entry_area(i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5358 dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5362 dso_local i64 @copy_from_user_nmi(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unwind_start(ptr noundef %state, ptr noundef %task, ptr noundef %regs, ptr noundef %first_frame) #6 align 16 !dbg !5366 {
entry:
  %state.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %first_frame.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5371, metadata !DIExpression()), !dbg !5375
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5372, metadata !DIExpression()), !dbg !5376
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5373, metadata !DIExpression()), !dbg !5377
  store ptr %first_frame, ptr %first_frame.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_frame.addr, metadata !5374, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %first_frame.addr, align 8, !dbg !5379
  %tobool = icmp ne ptr %0, null, !dbg !5379
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5379

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5379

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5380
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5381
  %call = call ptr @get_stack_pointer(ptr noundef %1, ptr noundef %2) #16, !dbg !5382
  br label %cond.end, !dbg !5379

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %0, %cond.true ], [ %call, %cond.false ], !dbg !5379
  store ptr %cond, ptr %first_frame.addr, align 8, !dbg !5383
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5384
  %4 = load ptr, ptr %task.addr, align 8, !dbg !5385
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !5386
  %6 = load ptr, ptr %first_frame.addr, align 8, !dbg !5387
  call void @__unwind_start(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #16, !dbg !5388
  ret void, !dbg !5389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @unwind_get_entry_regs(ptr noundef %state, ptr noundef %partial) #6 align 16 !dbg !5390 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %partial.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5394, metadata !DIExpression()), !dbg !5396
  store ptr %partial, ptr %partial.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %partial.addr, metadata !5395, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5398
  %call = call zeroext i1 @unwind_done(ptr noundef %0) #16, !dbg !5400
  br i1 %call, label %if.then, label %if.end, !dbg !5401

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5402
  br label %return, !dbg !5402

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %partial.addr, align 8, !dbg !5403
  %tobool = icmp ne ptr %1, null, !dbg !5403
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !5405

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %state.addr, align 8, !dbg !5406
  %full_regs = getelementptr inbounds %struct.unwind_state, ptr %2, i32 0, i32 7, !dbg !5408
  %3 = load i8, ptr %full_regs, align 2, !dbg !5408, !range !4769, !noundef !604
  %tobool2 = trunc i8 %3 to i1, !dbg !5408
  %lnot = xor i1 %tobool2, true, !dbg !5409
  %4 = load ptr, ptr %partial.addr, align 8, !dbg !5410
  %frombool = zext i1 %lnot to i8, !dbg !5411
  store i8 %frombool, ptr %4, align 1, !dbg !5411
  br label %if.end3, !dbg !5412

if.end3:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %state.addr, align 8, !dbg !5413
  %regs = getelementptr inbounds %struct.unwind_state, ptr %5, i32 0, i32 11, !dbg !5414
  %6 = load ptr, ptr %regs, align 8, !dbg !5414
  store ptr %6, ptr %retval, align 8, !dbg !5415
  br label %return, !dbg !5415

return:                                           ; preds = %if.end3, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !5416
  ret ptr %7, !dbg !5416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5417 dso_local i32 @get_stack_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5420 dso_local ptr @stack_type_name(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_regs_if_on_stack(ptr noundef %info, ptr noundef %regs, i1 noundef zeroext %partial, ptr noundef %log_lvl) #4 align 16 !dbg !5423 {
entry:
  %info.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %partial.addr = alloca i8, align 1
  %log_lvl.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5428, metadata !DIExpression()), !dbg !5432
  %frombool = zext i1 %partial to i8
  store i8 %frombool, ptr %partial.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %partial.addr, metadata !5429, metadata !DIExpression()), !dbg !5433
  store ptr %log_lvl, ptr %log_lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_lvl.addr, metadata !5430, metadata !DIExpression()), !dbg !5434
  %0 = load i8, ptr %partial.addr, align 1, !dbg !5435, !range !4769, !noundef !604
  %tobool = trunc i8 %0 to i1, !dbg !5435
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5437

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5438
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5439
  %call = call zeroext i1 @on_stack(ptr noundef %1, ptr noundef %2, i64 noundef 168) #16, !dbg !5440
  br i1 %call, label %if.then, label %if.else, !dbg !5441

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5442
  %4 = load ptr, ptr %log_lvl.addr, align 8, !dbg !5444
  call void @__show_regs(ptr noundef %3, i32 noundef 0, ptr noundef %4) #16, !dbg !5445
  br label %if.end5, !dbg !5446

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i8, ptr %partial.addr, align 1, !dbg !5447, !range !4769, !noundef !604
  %tobool1 = trunc i8 %5 to i1, !dbg !5447
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5449

land.lhs.true2:                                   ; preds = %if.else
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5450
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5451
  %add.ptr = getelementptr i8, ptr %7, i64 128, !dbg !5452
  %call3 = call zeroext i1 @on_stack(ptr noundef %6, ptr noundef %add.ptr, i64 noundef 40) #16, !dbg !5453
  br i1 %call3, label %if.then4, label %if.end, !dbg !5454

if.then4:                                         ; preds = %land.lhs.true2
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5455
  %9 = load ptr, ptr %log_lvl.addr, align 8, !dbg !5457
  call void @show_iret_regs(ptr noundef %8, ptr noundef %9) #16, !dbg !5458
  br label %if.end, !dbg !5459

if.end:                                           ; preds = %if.then4, %land.lhs.true2, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !5460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_once_word_nocheck(ptr noundef %addr) #3 align 16 !dbg !5461 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5468
  %1 = load volatile i64, ptr %0, align 8, !dbg !5468
  ret i64 %1, !dbg !5469
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5470 dso_local ptr @unwind_get_return_address_ptr(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5473 dso_local i32 @__kernel_text_address(i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ftrace_graph_ret_addr(ptr noundef %task, ptr noundef %idx, i64 noundef %ret, ptr noundef %retp) #6 align 16 !dbg !5476 {
entry:
  %task.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %ret.addr = alloca i64, align 8
  %retp.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5481, metadata !DIExpression()), !dbg !5485
  store ptr %idx, ptr %idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5482, metadata !DIExpression()), !dbg !5486
  store i64 %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !5483, metadata !DIExpression()), !dbg !5487
  store ptr %retp, ptr %retp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retp.addr, metadata !5484, metadata !DIExpression()), !dbg !5488
  %0 = load i64, ptr %ret.addr, align 8, !dbg !5489
  ret i64 %0, !dbg !5490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @printk_stack_address(i64 noundef %address, i32 noundef %reliable, ptr noundef %log_lvl) #4 align 16 !dbg !5491 {
entry:
  %address.addr = alloca i64, align 8
  %reliable.addr = alloca i32, align 4
  %log_lvl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5495, metadata !DIExpression()), !dbg !5498
  store i32 %reliable, ptr %reliable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reliable.addr, metadata !5496, metadata !DIExpression()), !dbg !5499
  store ptr %log_lvl, ptr %log_lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_lvl.addr, metadata !5497, metadata !DIExpression()), !dbg !5500
  call void @touch_nmi_watchdog() #16, !dbg !5501
  br label %do.body, !dbg !5502

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5504

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %log_lvl.addr, align 8, !dbg !5502
  %1 = load i32, ptr %reliable.addr, align 4, !dbg !5502
  %tobool = icmp ne i32 %1, 0, !dbg !5502
  %2 = zext i1 %tobool to i64, !dbg !5502
  %cond = select i1 %tobool, ptr @.str.5, ptr @.str.12, !dbg !5502
  %3 = load i64, ptr %address.addr, align 8, !dbg !5502
  %4 = inttoptr i64 %3 to ptr, !dbg !5502
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef %0, ptr noundef %cond, ptr noundef %4) #18, !dbg !5502
  store i32 %call, ptr %tmp, align 4, !dbg !5504
  %5 = load i32, ptr %tmp, align 4, !dbg !5502
  ret void, !dbg !5506
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5507 dso_local zeroext i1 @unwind_next_frame(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local void @__unwind_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unwind_done(ptr noundef %state) #6 align 16 !dbg !5511 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5515
  %stack_info = getelementptr inbounds %struct.unwind_state, ptr %0, i32 0, i32 0, !dbg !5516
  %type = getelementptr inbounds %struct.stack_info, ptr %stack_info, i32 0, i32 0, !dbg !5517
  %1 = load i32, ptr %type, align 8, !dbg !5517
  %cmp = icmp eq i32 %1, 0, !dbg !5518
  ret i1 %cmp, !dbg !5519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @on_stack(ptr noundef %info, ptr noundef %addr, i64 noundef %len) #6 align 16 !dbg !5520 {
entry:
  %info.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %begin = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5524, metadata !DIExpression()), !dbg !5529
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5525, metadata !DIExpression()), !dbg !5530
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5526, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #15, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !5527, metadata !DIExpression()), !dbg !5533
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5534
  %begin1 = getelementptr inbounds %struct.stack_info, ptr %0, i32 0, i32 1, !dbg !5535
  %1 = load ptr, ptr %begin1, align 8, !dbg !5535
  store ptr %1, ptr %begin, align 8, !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5528, metadata !DIExpression()), !dbg !5537
  %2 = load ptr, ptr %info.addr, align 8, !dbg !5538
  %end2 = getelementptr inbounds %struct.stack_info, ptr %2, i32 0, i32 2, !dbg !5539
  %3 = load ptr, ptr %end2, align 8, !dbg !5539
  store ptr %3, ptr %end, align 8, !dbg !5537
  %4 = load ptr, ptr %info.addr, align 8, !dbg !5540
  %type = getelementptr inbounds %struct.stack_info, ptr %4, i32 0, i32 0, !dbg !5541
  %5 = load i32, ptr %type, align 8, !dbg !5541
  %cmp = icmp ne i32 %5, 0, !dbg !5542
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !5543

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !5544
  %7 = load ptr, ptr %begin, align 8, !dbg !5545
  %cmp3 = icmp uge ptr %6, %7, !dbg !5546
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !5547

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !5548
  %9 = load ptr, ptr %end, align 8, !dbg !5549
  %cmp5 = icmp ult ptr %8, %9, !dbg !5550
  br i1 %cmp5, label %land.lhs.true6, label %land.end, !dbg !5551

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %10 = load ptr, ptr %addr.addr, align 8, !dbg !5552
  %11 = load i64, ptr %len.addr, align 8, !dbg !5553
  %add.ptr = getelementptr i8, ptr %10, i64 %11, !dbg !5554
  %12 = load ptr, ptr %begin, align 8, !dbg !5555
  %cmp7 = icmp ugt ptr %add.ptr, %12, !dbg !5556
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !5557

land.rhs:                                         ; preds = %land.lhs.true6
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !5558
  %14 = load i64, ptr %len.addr, align 8, !dbg !5559
  %add.ptr8 = getelementptr i8, ptr %13, i64 %14, !dbg !5560
  %15 = load ptr, ptr %end, align 8, !dbg !5561
  %cmp9 = icmp ule ptr %add.ptr8, %15, !dbg !5562
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp9, %land.rhs ], !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #15, !dbg !5564
  ret i1 %16, !dbg !5565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_nmi_watchdog() #6 align 16 !dbg !5566 {
entry:
  call void @arch_touch_nmi_watchdog() #16, !dbg !5568
  call void @touch_softlockup_watchdog() #16, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_touch_nmi_watchdog() #6 align 16 !dbg !5571 {
entry:
  ret void, !dbg !5572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #6 align 16 !dbg !5573 {
entry:
  ret void, !dbg !5574
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !5575 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !5576
  ret i64 %call, !dbg !5577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !5578 {
entry:
  call void @native_irq_disable() #16, !dbg !5579
  ret void, !dbg !5580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !5581 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5583, metadata !DIExpression()), !dbg !5585
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !5586, !srcloc !5587
  %0 = load i64, ptr %flags, align 8, !dbg !5588
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5589
  ret i64 %0, !dbg !5590
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !5591 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5592, !srcloc !5593
  ret void, !dbg !5594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !5595 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5604
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !5605
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5606
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !5607
  ret i32 %call, !dbg !5608
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !5609 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5614, metadata !DIExpression()), !dbg !5617
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5615, metadata !DIExpression()), !dbg !5618
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5616, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5620
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5621
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5622
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #16, !dbg !5623
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5624
  %3 = load ptr, ptr %old.addr, align 8, !dbg !5625
  %4 = load i32, ptr %new.addr, align 4, !dbg !5626
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !5627
  ret i1 %call, !dbg !5628
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5629 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5637, metadata !DIExpression()), !dbg !5639
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5638, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5641
  %1 = load i64, ptr %size.addr, align 8, !dbg !5642
  %conv = trunc i64 %1 to i32, !dbg !5642
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !5643
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5644
  %3 = load i64, ptr %size.addr, align 8, !dbg !5644
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !5646 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5651
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !5652
  ret i32 %call, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5654 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5659, metadata !DIExpression()), !dbg !5661
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5660, metadata !DIExpression()), !dbg !5662
  ret i1 true, !dbg !5663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5664 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5669, metadata !DIExpression()), !dbg !5672
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5670, metadata !DIExpression()), !dbg !5673
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5671, metadata !DIExpression()), !dbg !5674
  ret void, !dbg !5675
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !5676 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5681
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5681
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5681
  ret i32 %1, !dbg !5682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5683 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5685, metadata !DIExpression()), !dbg !5687
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5689
  %1 = load i64, ptr %size.addr, align 8, !dbg !5690
  %conv = trunc i64 %1 to i32, !dbg !5690
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5691
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5692
  %3 = load i64, ptr %size.addr, align 8, !dbg !5692
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !5692
  ret void, !dbg !5693
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !5694 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5696, metadata !DIExpression()), !dbg !5699
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5697, metadata !DIExpression()), !dbg !5700
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5698, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5702
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5703
  %2 = load i32, ptr %new.addr, align 4, !dbg !5704
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16, !dbg !5705
  ret i1 %call, !dbg !5706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5707 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5709, metadata !DIExpression()), !dbg !5711
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5710, metadata !DIExpression()), !dbg !5712
  ret i1 true, !dbg !5713
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !5714 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5716, metadata !DIExpression()), !dbg !5725
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5717, metadata !DIExpression()), !dbg !5726
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5718, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5719, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5721, metadata !DIExpression()), !dbg !5728
  %0 = load ptr, ptr %old.addr, align 8, !dbg !5728
  store ptr %0, ptr %_old, align 8, !dbg !5728
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5722, metadata !DIExpression()), !dbg !5728
  %1 = load ptr, ptr %_old, align 8, !dbg !5728
  %2 = load i32, ptr %1, align 4, !dbg !5728
  store i32 %2, ptr %__old, align 4, !dbg !5728
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5723, metadata !DIExpression()), !dbg !5728
  %3 = load i32, ptr %new.addr, align 4, !dbg !5728
  store i32 %3, ptr %__new, align 4, !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5724, metadata !DIExpression()), !dbg !5728
  %4 = load ptr, ptr %v.addr, align 8, !dbg !5728
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5728
  store ptr %counter, ptr %__ptr, align 8, !dbg !5728
  %5 = load ptr, ptr %__ptr, align 8, !dbg !5728
  %6 = load i32, ptr %__old, align 4, !dbg !5728
  %7 = load i32, ptr %__new, align 4, !dbg !5728
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #15, !dbg !5728, !srcloc !5729
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !5728
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !5728
  %9 = icmp ult i8 %asmresult, 2, !dbg !5728
  call void @llvm.assume(i1 %9), !dbg !5728
  store i8 %asmresult, ptr %success, align 1, !dbg !5728
  store i32 %asmresult1, ptr %__old, align 4, !dbg !5728
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5728
  %10 = load i8, ptr %success, align 1, !dbg !5730, !range !4769, !noundef !604
  %tobool = trunc i8 %10 to i1, !dbg !5730
  %lnot = xor i1 %tobool, true, !dbg !5730
  %lnot2 = xor i1 %lnot, true, !dbg !5730
  %lnot3 = xor i1 %lnot2, true, !dbg !5730
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5730
  %conv = sext i32 %lnot.ext to i64, !dbg !5730
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5730
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5730
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !5730
  %12 = load ptr, ptr %_old, align 8, !dbg !5730
  store i32 %11, ptr %12, align 4, !dbg !5730
  br label %if.end, !dbg !5730

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !5728, !range !4769, !noundef !604
  %tobool5 = trunc i8 %13 to i1, !dbg !5728
  %lnot6 = xor i1 %tobool5, true, !dbg !5728
  %lnot8 = xor i1 %lnot6, true, !dbg !5728
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5728
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5728
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !5728
  store i64 %expval11, ptr %tmp, align 8, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #15, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #15, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #15, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #15, !dbg !5732
  %14 = load i64, ptr %tmp, align 8, !dbg !5728
  %tobool12 = icmp ne i64 %14, 0, !dbg !5732
  ret i1 %tobool12, !dbg !5733
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5734 dso_local void @queued_spin_lock_slowpath(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !5737 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5741
  %and = and i64 %0, 512, !dbg !5742
  %tobool = icmp ne i64 %and, 0, !dbg !5743
  %lnot = xor i1 %tobool, true, !dbg !5743
  %lnot.ext = zext i1 %lnot to i32, !dbg !5743
  ret i32 %lnot.ext, !dbg !5744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !5745 {
entry:
  call void @native_irq_enable() #16, !dbg !5746
  ret void, !dbg !5747
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !5748 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5749, !srcloc !5750
  ret void, !dbg !5751
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @debug_pagealloc_enabled() #6 align 16 !dbg !5752 {
entry:
  ret i1 false, !dbg !5753
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5754 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5759, metadata !DIExpression()), !dbg !5761
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5760, metadata !DIExpression()), !dbg !5762
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5763
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5764
  br i1 %1, label %cond.true, label %cond.false, !dbg !5764

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5765
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5766
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5767
  %conv = zext i1 %call to i32, !dbg !5767
  br label %cond.end, !dbg !5764

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5768
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5769
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !5770
  %conv2 = zext i1 %call1 to i32, !dbg !5770
  br label %cond.end, !dbg !5764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5764
  %tobool = icmp ne i32 %cond, 0, !dbg !5764
  ret i1 %tobool, !dbg !5771
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5772 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5780
  %and = and i64 %0, 63, !dbg !5781
  %shl = shl i64 1, %and, !dbg !5782
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5783
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5784
  %shr = ashr i64 %2, 6, !dbg !5785
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5783
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5783
  %and1 = and i64 %shl, %3, !dbg !5786
  %cmp = icmp ne i64 %and1, 0, !dbg !5787
  ret i1 %cmp, !dbg !5788
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5789 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5791, metadata !DIExpression()), !dbg !5794
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5793, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5798
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5799
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !5800, !srcloc !5801
  %3 = icmp ult i8 %2, 2, !dbg !5800
  call void @llvm.assume(i1 %3), !dbg !5800
  store i8 %2, ptr %oldbit, align 1, !dbg !5800
  %4 = load i8, ptr %oldbit, align 1, !dbg !5802, !range !4769, !noundef !604
  %tobool = trunc i8 %4 to i1, !dbg !5802
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !5803
  ret i1 %tobool, !dbg !5804
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5805 dso_local void @print_modules() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5806 dso_local i32 @notify_die(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #7

attributes #0 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { nounwind memory(read) }
attributes #18 = { cold noredzone }
attributes #19 = { nounwind memory(none) }
attributes #20 = { cold noredzone noreturn }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329}
!llvm.ident = !{!4330}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/dumpstack.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e97ed587b5079d0272af5f382417c89")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 17)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 33)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "die_lock", scope: !34, file: !2, line: 329, type: !402, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.dumpstack.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/dumpstack\22 -D KBUILD_BASENAME=\22dumpstack\22 -D KBUILD_MODNAME=\22dumpstack\22 -D __KBUILD_MODNAME=kmod_dumpstack -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/dumpstack.ll arch/x86/kernel/dumpstack.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !158, globals: !4253, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36, !42, !50, !57, !65, !81, !88, !94, !99, !105, !111, !118, !128, !133, !138, !144}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !37, line: 65, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!41 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !43, line: 9, baseType: !38, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!46 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!47 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!48 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!49 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !51, line: 312, baseType: !38, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!54 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!55 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!56 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !58, line: 68, baseType: !38, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !66, line: 1325, baseType: !38, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!68 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!69 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!70 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!71 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!72 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!73 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!74 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!75 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!76 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!77 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!78 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!79 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!80 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !82, line: 15, baseType: !38, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!86 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!87 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !89, line: 26, baseType: !38, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!93 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !95, line: 2052, baseType: !38, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!98 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !100, line: 54, baseType: !38, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "USRQUOTA", value: 0)
!103 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!104 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !106, line: 16, baseType: !38, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "TT_NONE", value: 0)
!109 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!110 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !112, line: 51, baseType: !38, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!115 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!116 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!117 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stack_type", file: !119, line: 16, baseType: !38, size: 32, elements: !120)
!119 = !DIFile(filename: "./arch/x86/include/asm/stacktrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e6a63c03b7a7be099532a7e8a892b2d")
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DIEnumerator(name: "STACK_TYPE_UNKNOWN", value: 0)
!122 = !DIEnumerator(name: "STACK_TYPE_TASK", value: 1)
!123 = !DIEnumerator(name: "STACK_TYPE_IRQ", value: 2)
!124 = !DIEnumerator(name: "STACK_TYPE_SOFTIRQ", value: 3)
!125 = !DIEnumerator(name: "STACK_TYPE_ENTRY", value: 4)
!126 = !DIEnumerator(name: "STACK_TYPE_EXCEPTION", value: 5)
!127 = !DIEnumerator(name: "STACK_TYPE_EXCEPTION_LAST", value: 10)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 10, baseType: !38, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "false", value: 0)
!132 = !DIEnumerator(name: "true", value: 1)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !134, line: 87, baseType: !38, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!137 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "show_regs_mode", file: !139, line: 25, baseType: !38, size: 32, elements: !140)
!139 = !DIFile(filename: "./arch/x86/include/asm/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b9e116c256f8ca47b10b852f08e11a")
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "SHOW_REGS_SHORT", value: 0)
!142 = !DIEnumerator(name: "SHOW_REGS_USER", value: 1)
!143 = !DIEnumerator(name: "SHOW_REGS_ALL", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "die_val", file: !139, line: 10, baseType: !38, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!146 = !DIEnumerator(name: "DIE_OOPS", value: 1)
!147 = !DIEnumerator(name: "DIE_INT3", value: 2)
!148 = !DIEnumerator(name: "DIE_DEBUG", value: 3)
!149 = !DIEnumerator(name: "DIE_PANIC", value: 4)
!150 = !DIEnumerator(name: "DIE_NMI", value: 5)
!151 = !DIEnumerator(name: "DIE_DIE", value: 6)
!152 = !DIEnumerator(name: "DIE_KERNELDEBUG", value: 7)
!153 = !DIEnumerator(name: "DIE_TRAP", value: 8)
!154 = !DIEnumerator(name: "DIE_GPF", value: 9)
!155 = !DIEnumerator(name: "DIE_CALL", value: 10)
!156 = !DIEnumerator(name: "DIE_PAGE_FAULT", value: 11)
!157 = !DIEnumerator(name: "DIE_NMIUNKNOWN", value: 12)
!158 = !{!159, !161, !160, !162, !163, !169, !227, !228, !2469, !4243, !4246, !4249, !4251}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !165, line: 17, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !167, line: 21, baseType: !168)
!167 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !171, line: 103, size: 1344, elements: !172)
!171 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !207, !208, !209}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !170, file: !171, line: 109, baseType: !162, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !170, file: !171, line: 110, baseType: !162, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !170, file: !171, line: 111, baseType: !162, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !170, file: !171, line: 112, baseType: !162, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !170, file: !171, line: 113, baseType: !162, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !170, file: !171, line: 114, baseType: !162, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !170, file: !171, line: 117, baseType: !162, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !170, file: !171, line: 118, baseType: !162, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !170, file: !171, line: 119, baseType: !162, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !170, file: !171, line: 120, baseType: !162, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !170, file: !171, line: 121, baseType: !162, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !170, file: !171, line: 122, baseType: !162, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !170, file: !171, line: 123, baseType: !162, size: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !170, file: !171, line: 124, baseType: !162, size: 64, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !170, file: !171, line: 125, baseType: !162, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !170, file: !171, line: 139, baseType: !162, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !170, file: !171, line: 142, baseType: !162, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !171, line: 144, baseType: !191, size: 64, offset: 1088)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !171, line: 144, size: 64, elements: !192)
!192 = !{!193, !197, !201}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !191, file: !171, line: 146, baseType: !194, size: 16)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !165, line: 19, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !167, line: 24, baseType: !196)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !191, file: !171, line: 148, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !165, line: 23, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !167, line: 31, baseType: !200)
!200 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !191, file: !171, line: 150, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !171, line: 59, size: 64, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !202, file: !171, line: 61, baseType: !198, size: 16, flags: DIFlagBitField, extraData: i64 0)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !202, file: !171, line: 63, baseType: !198, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !202, file: !171, line: 65, baseType: !198, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !171, line: 153, baseType: !162, size: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !170, file: !171, line: 154, baseType: !162, size: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !171, line: 156, baseType: !210, size: 64, offset: 1280)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !171, line: 156, size: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !210, file: !171, line: 158, baseType: !194, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !210, file: !171, line: 160, baseType: !198, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !210, file: !171, line: 162, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !171, line: 69, size: 64, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !215, file: !171, line: 71, baseType: !198, size: 16, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !215, file: !171, line: 73, baseType: !198, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !215, file: !171, line: 75, baseType: !198, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !215, file: !171, line: 77, baseType: !198, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !215, file: !171, line: 80, baseType: !198, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !171, line: 83, baseType: !198, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !215, file: !171, line: 86, baseType: !198, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !215, file: !171, line: 88, baseType: !198, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !215, file: !171, line: 93, baseType: !198, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !215, file: !171, line: 100, baseType: !198, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !230, line: 746, size: 58368, elements: !231)
!230 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!231 = !{!232, !242, !243, !244, !255, !256, !257, !258, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !344, !355, !479, !483, !486, !517, !518, !519, !520, !529, !531, !532, !533, !534, !535, !536, !547, !548, !551, !552, !553, !554, !555, !556, !557, !558, !565, !566, !573, !574, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3420, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3468, !3474, !3475, !3476, !3477, !3478, !3480, !3483, !3490, !3495, !3498, !3501, !3504, !3548, !3686, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3724, !3725, !3726, !3735, !3743, !3744, !3745, !3746, !3747, !3752, !3753, !3754, !3757, !3758, !3761, !3764, !3767, !3775, !3778, !3779, !3865, !3866, !3867, !3868, !3869, !3875, !3876, !3877, !3878, !3881, !3882, !3885, !3899, !3900, !3903, !3904, !3905, !3908, !3909, !3910, !3911, !3912, !3913, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3945, !3946, !3952, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3964, !4036, !4038, !4039, !4040, !4041, !4042, !4043, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4072, !4073, !4074}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !229, file: !230, line: 752, baseType: !233, size: 192)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !234, line: 56, size: 192, elements: !235)
!234 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!235 = !{!236, !237, !238, !241}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !234, line: 57, baseType: !162, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !233, file: !234, line: 58, baseType: !162, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !233, file: !234, line: 59, baseType: !239, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !165, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !167, line: 27, baseType: !38)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !233, file: !234, line: 61, baseType: !239, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !229, file: !230, line: 754, baseType: !38, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !229, file: !230, line: 767, baseType: !161, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !229, file: !230, line: 768, baseType: !245, size: 32, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !246, line: 113, baseType: !247)
!246 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !246, line: 111, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !247, file: !246, line: 112, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !251, line: 174, baseType: !252)
!251 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 172, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !251, line: 173, baseType: !160, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !230, line: 770, baseType: !38, size: 32, offset: 352)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !229, file: !230, line: 771, baseType: !38, size: 32, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !229, file: !230, line: 774, baseType: !160, size: 32, offset: 416)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !229, file: !230, line: 775, baseType: !259, size: 128, offset: 448)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !260, line: 58, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!261 = !{!262, !268, !273, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !259, file: !260, line: 59, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !264, line: 60, size: 64, elements: !265)
!264 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !264, line: 61, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !260, line: 60, baseType: !269, size: 32, offset: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !260, line: 60, size: 32, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !269, file: !260, line: 61, baseType: !38, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !269, file: !260, line: 62, baseType: !250, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !259, file: !260, line: 65, baseType: !194, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !259, file: !260, line: 65, baseType: !194, size: 16, offset: 112)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !229, file: !230, line: 776, baseType: !38, size: 32, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !229, file: !230, line: 777, baseType: !162, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !229, file: !230, line: 778, baseType: !228, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !229, file: !230, line: 787, baseType: !160, size: 32, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !229, file: !230, line: 788, baseType: !160, size: 32, offset: 800)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !229, file: !230, line: 790, baseType: !160, size: 32, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !229, file: !230, line: 792, baseType: !160, size: 32, offset: 864)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !229, file: !230, line: 793, baseType: !160, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !229, file: !230, line: 794, baseType: !160, size: 32, offset: 928)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !229, file: !230, line: 795, baseType: !38, size: 32, offset: 960)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !229, file: !230, line: 797, baseType: !286, size: 2048, offset: 1024)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !230, line: 551, size: 2048, elements: !287)
!287 = !{!288, !293, !301, !302, !303, !309, !310, !311, !312, !313, !314, !318, !319, !320, !321, !323, !326, !327, !328}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !286, file: !230, line: 553, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !230, line: 411, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !289, file: !230, line: 412, baseType: !162, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !289, file: !230, line: 413, baseType: !239, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !286, file: !230, line: 554, baseType: !294, size: 192, align: 64, offset: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !295, line: 5, size: 192, align: 64, elements: !296)
!295 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!296 = !{!297, !298, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !294, file: !295, line: 6, baseType: !162, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !294, file: !295, line: 7, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !294, file: !295, line: 8, baseType: !299, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !286, file: !230, line: 555, baseType: !198, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !286, file: !230, line: 556, baseType: !198, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !286, file: !230, line: 558, baseType: !304, size: 128, offset: 448)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !251, line: 190, size: 128, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !251, line: 191, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !304, file: !251, line: 191, baseType: !307, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !286, file: !230, line: 559, baseType: !38, size: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !286, file: !230, line: 561, baseType: !198, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !286, file: !230, line: 562, baseType: !198, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !286, file: !230, line: 563, baseType: !198, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !286, file: !230, line: 564, baseType: !198, size: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !286, file: !230, line: 565, baseType: !315, size: 64, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !165, line: 22, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !167, line: 30, baseType: !317)
!317 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !286, file: !230, line: 566, baseType: !198, size: 64, offset: 960)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !286, file: !230, line: 568, baseType: !198, size: 64, offset: 1024)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !286, file: !230, line: 571, baseType: !160, size: 32, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !230, line: 572, baseType: !322, size: 64, offset: 1152)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !286, file: !230, line: 574, baseType: !324, size: 64, offset: 1216)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !230, line: 49, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !286, file: !230, line: 576, baseType: !324, size: 64, offset: 1280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !286, file: !230, line: 578, baseType: !162, size: 64, offset: 1344)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !286, file: !230, line: 588, baseType: !329, size: 512, align: 512, offset: 1536)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !230, line: 497, size: 512, align: 512, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !329, file: !230, line: 498, baseType: !198, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !329, file: !230, line: 499, baseType: !198, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !329, file: !230, line: 500, baseType: !198, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !329, file: !230, line: 501, baseType: !239, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !329, file: !230, line: 502, baseType: !239, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !329, file: !230, line: 503, baseType: !162, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !329, file: !230, line: 504, baseType: !162, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !329, file: !230, line: 505, baseType: !162, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !329, file: !230, line: 506, baseType: !340, size: 64, align: 64, offset: 448)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !230, line: 445, size: 64, align: 64, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !340, file: !230, line: 446, baseType: !38, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !340, file: !230, line: 447, baseType: !38, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !229, file: !230, line: 798, baseType: !345, size: 384, offset: 3072)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !230, line: 592, size: 384, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !345, file: !230, line: 593, baseType: !304, size: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !345, file: !230, line: 594, baseType: !162, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !345, file: !230, line: 595, baseType: !162, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !345, file: !230, line: 596, baseType: !38, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !345, file: !230, line: 597, baseType: !196, size: 16, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !345, file: !230, line: 598, baseType: !196, size: 16, offset: 304)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !345, file: !230, line: 600, baseType: !354, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !229, file: !230, line: 799, baseType: !356, size: 1792, offset: 3456)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !230, line: 610, size: 1792, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !476, !477}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !356, file: !230, line: 611, baseType: !294, size: 192, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !356, file: !230, line: 618, baseType: !198, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !356, file: !230, line: 619, baseType: !198, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !356, file: !230, line: 620, baseType: !198, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !356, file: !230, line: 621, baseType: !198, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !356, file: !230, line: 622, baseType: !198, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !356, file: !230, line: 629, baseType: !315, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !356, file: !230, line: 630, baseType: !198, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !230, line: 631, baseType: !38, size: 32, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !356, file: !230, line: 653, baseType: !38, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !356, file: !230, line: 654, baseType: !38, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !356, file: !230, line: 655, baseType: !38, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !356, file: !230, line: 656, baseType: !38, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !356, file: !230, line: 662, baseType: !372, size: 512, offset: 704)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !37, line: 118, size: 512, elements: !373)
!373 = !{!374, !382, !383, !388, !472, !473, !474, !475}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !372, file: !37, line: 119, baseType: !375, size: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !376, line: 9, size: 256, elements: !377)
!376 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !375, file: !376, line: 10, baseType: !294, size: 192, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !375, file: !376, line: 11, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !381, line: 29, baseType: !315)
!381 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !372, file: !37, line: 120, baseType: !380, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !372, file: !37, line: 121, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!36, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !372, file: !37, line: 122, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !37, line: 159, size: 512, align: 512, elements: !391)
!391 = !{!392, !440, !441, !445, !455, !456, !467, !471}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !390, file: !37, line: 160, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !37, line: 215, size: 4608, align: 512, elements: !395)
!395 = !{!396, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !394, file: !37, line: 216, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !398, line: 23, baseType: !399)
!398 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !398, line: 14, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !399, file: !398, line: 15, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !403, line: 44, baseType: !404)
!403 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !403, line: 14, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !403, line: 15, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !403, line: 15, size: 32, elements: !408)
!408 = !{!409, !410, !415}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !403, line: 16, baseType: !250, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !403, line: 24, baseType: !411, size: 16)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !403, line: 24, size: 16, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !411, file: !403, line: 25, baseType: !164, size: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !411, file: !403, line: 26, baseType: !164, size: 8, offset: 8)
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !403, line: 28, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !403, line: 28, size: 32, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !416, file: !403, line: 29, baseType: !194, size: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !416, file: !403, line: 30, baseType: !194, size: 16, offset: 16)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !394, file: !37, line: 217, baseType: !38, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !394, file: !37, line: 218, baseType: !38, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !394, file: !37, line: 219, baseType: !38, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !394, file: !37, line: 220, baseType: !38, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !394, file: !37, line: 221, baseType: !38, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !394, file: !37, line: 222, baseType: !38, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !394, file: !37, line: 223, baseType: !38, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !394, file: !37, line: 224, baseType: !38, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !394, file: !37, line: 226, baseType: !38, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !394, file: !37, line: 227, baseType: !196, size: 16, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !394, file: !37, line: 228, baseType: !196, size: 16, offset: 208)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !394, file: !37, line: 229, baseType: !38, size: 32, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !394, file: !37, line: 235, baseType: !380, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !394, file: !37, line: 236, baseType: !387, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !394, file: !37, line: 237, baseType: !380, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !394, file: !37, line: 238, baseType: !387, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !394, file: !37, line: 239, baseType: !437, size: 4096, align: 512, offset: 512)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 4096, align: 512, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 8)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !390, file: !37, line: 161, baseType: !38, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !390, file: !37, line: 162, baseType: !442, size: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !251, line: 32, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !444, line: 96, baseType: !160)
!444 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !390, file: !37, line: 163, baseType: !446, size: 32, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !447, line: 274, baseType: !448)
!447 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !447, line: 274, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !448, file: !447, line: 274, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !447, line: 69, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !447, line: 64, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !452, file: !447, line: 65, baseType: !38, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !390, file: !37, line: 164, baseType: !387, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !390, file: !37, line: 165, baseType: !457, size: 128, offset: 256)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !376, line: 14, size: 128, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !457, file: !376, line: 15, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !295, line: 26, size: 128, elements: !461)
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !460, file: !295, line: 27, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !295, line: 12, size: 64, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !463, file: !295, line: 13, baseType: !299, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !460, file: !295, line: 28, baseType: !299, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !390, file: !37, line: 166, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!380}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !390, file: !37, line: 167, baseType: !380, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !37, line: 123, baseType: !164, size: 8, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !372, file: !37, line: 124, baseType: !164, size: 8, offset: 456)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !372, file: !37, line: 125, baseType: !164, size: 8, offset: 464)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !372, file: !37, line: 126, baseType: !164, size: 8, offset: 472)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !356, file: !230, line: 671, baseType: !372, size: 512, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !356, file: !230, line: 679, baseType: !478, size: 64, offset: 1728)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !229, file: !230, line: 800, baseType: !480, size: 64, offset: 5248)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !230, line: 800, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !229, file: !230, line: 809, baseType: !484, size: 64, offset: 5312)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !230, line: 70, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !229, file: !230, line: 825, baseType: !487, size: 2048, align: 512, offset: 5632)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !230, line: 509, size: 2048, align: 512, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !487, file: !230, line: 511, baseType: !198, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !487, file: !230, line: 512, baseType: !198, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !487, file: !230, line: 513, baseType: !198, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !487, file: !230, line: 514, baseType: !198, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !487, file: !230, line: 515, baseType: !198, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !487, file: !230, line: 516, baseType: !198, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !487, file: !230, line: 518, baseType: !198, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !487, file: !230, line: 519, baseType: !198, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !487, file: !230, line: 520, baseType: !315, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !487, file: !230, line: 522, baseType: !198, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !487, file: !230, line: 523, baseType: !198, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !487, file: !230, line: 524, baseType: !315, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !487, file: !230, line: 526, baseType: !315, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !487, file: !230, line: 527, baseType: !198, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !487, file: !230, line: 529, baseType: !198, size: 64, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !487, file: !230, line: 530, baseType: !198, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !487, file: !230, line: 531, baseType: !198, size: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !487, file: !230, line: 532, baseType: !198, size: 64, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !487, file: !230, line: 533, baseType: !198, size: 64, offset: 1152)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !487, file: !230, line: 535, baseType: !198, size: 64, offset: 1216)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !487, file: !230, line: 536, baseType: !198, size: 64, offset: 1280)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !487, file: !230, line: 537, baseType: !198, size: 64, offset: 1344)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !487, file: !230, line: 538, baseType: !198, size: 64, offset: 1408)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !487, file: !230, line: 539, baseType: !198, size: 64, offset: 1472)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !487, file: !230, line: 540, baseType: !198, size: 64, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !487, file: !230, line: 541, baseType: !198, size: 64, offset: 1600)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !487, file: !230, line: 542, baseType: !198, size: 64, offset: 1664)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !487, file: !230, line: 543, baseType: !198, size: 64, offset: 1728)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !229, file: !230, line: 833, baseType: !38, size: 32, offset: 7680)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !229, file: !230, line: 836, baseType: !38, size: 32, offset: 7712)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !229, file: !230, line: 837, baseType: !160, size: 32, offset: 7744)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !229, file: !230, line: 838, baseType: !521, size: 64, offset: 7808)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !524, line: 19, baseType: !525)
!524 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !524, line: 19, size: 64, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !525, file: !524, line: 19, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !30)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !229, file: !230, line: 839, baseType: !530, size: 64, offset: 7872)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !229, file: !230, line: 840, baseType: !523, size: 64, offset: 7936)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !229, file: !230, line: 841, baseType: !161, size: 64, offset: 8000)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !229, file: !230, line: 843, baseType: !196, size: 16, offset: 8064)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !229, file: !230, line: 845, baseType: !196, size: 16, offset: 8080)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !229, file: !230, line: 848, baseType: !160, size: 32, offset: 8096)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !229, file: !230, line: 849, baseType: !537, size: 32, offset: 8128)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !230, line: 718, size: 32, elements: !538)
!538 = !{!539, !546}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !537, file: !230, line: 724, baseType: !540, size: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !537, file: !230, line: 719, size: 32, elements: !541)
!541 = !{!542, !543, !544, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !540, file: !230, line: 720, baseType: !164, size: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !540, file: !230, line: 721, baseType: !164, size: 8, offset: 8)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !540, file: !230, line: 722, baseType: !164, size: 8, offset: 16)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !540, file: !230, line: 723, baseType: !164, size: 8, offset: 24)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !537, file: !230, line: 725, baseType: !239, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !229, file: !230, line: 850, baseType: !304, size: 128, offset: 8192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !229, file: !230, line: 851, baseType: !549, size: 64, offset: 8320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !230, line: 60, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !229, file: !230, line: 855, baseType: !162, size: 64, offset: 8384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !229, file: !230, line: 856, baseType: !164, size: 8, offset: 8448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !229, file: !230, line: 857, baseType: !164, size: 8, offset: 8456)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !229, file: !230, line: 858, baseType: !160, size: 32, offset: 8480)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !229, file: !230, line: 859, baseType: !304, size: 128, offset: 8512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !229, file: !230, line: 860, baseType: !160, size: 32, offset: 8640)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !229, file: !230, line: 861, baseType: !304, size: 128, offset: 8704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !229, file: !230, line: 873, baseType: !559, size: 256, offset: 8832)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !230, line: 376, size: 256, elements: !560)
!560 = !{!561, !562, !563, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !559, file: !230, line: 381, baseType: !162, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !559, file: !230, line: 384, baseType: !200, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !559, file: !230, line: 389, baseType: !200, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !559, file: !230, line: 392, baseType: !200, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !229, file: !230, line: 875, baseType: !304, size: 128, offset: 9088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !229, file: !230, line: 877, baseType: !567, size: 320, offset: 9216)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !568, line: 86, size: 320, elements: !569)
!568 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !567, file: !568, line: 87, baseType: !160, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !567, file: !568, line: 88, baseType: !304, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !567, file: !568, line: 89, baseType: !304, size: 128, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !229, file: !230, line: 878, baseType: !294, size: 192, align: 64, offset: 9536)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !229, file: !230, line: 881, baseType: !575, size: 64, offset: 9728)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !66, line: 733, size: 10240, elements: !577)
!577 = !{!578, !3339}
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !66, line: 734, baseType: !579, size: 10240)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !576, file: !66, line: 734, size: 10240, elements: !580)
!580 = !{!581, !585, !607, !3218, !3219, !3220, !3221, !3222, !3223, !3230, !3231, !3232, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3271, !3273, !3276, !3319, !3320, !3321, !3324, !3325, !3326, !3329, !3330, !3331, !3337, !3338}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !66, line: 739, baseType: !582, size: 512, align: 512)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !579, file: !66, line: 739, size: 512, align: 512, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !582, file: !66, line: 747, baseType: !250, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !579, file: !66, line: 750, baseType: !586, size: 128, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !587, line: 218, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!588 = !{!589, !605, !606}
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !587, line: 219, baseType: !590, size: 32)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !587, line: 219, size: 32, elements: !591)
!591 = !{!592, !601}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !590, file: !587, line: 220, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !594, line: 29, baseType: !595)
!594 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !594, line: 17, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !594, line: 18, baseType: !598, size: 32)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !594, line: 18, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !598, file: !594, line: 19, baseType: !399, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !590, file: !587, line: 221, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !587, line: 197, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 197, elements: !604)
!604 = !{}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !586, file: !587, line: 223, baseType: !38, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !586, file: !587, line: 224, baseType: !161, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !579, file: !66, line: 752, baseType: !608, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!162, !611, !162, !162, !162, !162}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !95, line: 994, size: 1856, align: 64, elements: !613)
!613 = !{!614, !628, !629, !631, !638, !650, !653, !654, !778, !987, !996, !3208, !3209, !3210, !3211, !3212, !3213, !3215, !3216, !3217}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !95, line: 995, baseType: !615, size: 128)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !95, line: 995, size: 128, elements: !616)
!616 = !{!617, !618, !627}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !615, file: !95, line: 996, baseType: !263, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !615, file: !95, line: 997, baseType: !619, size: 128, align: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !251, line: 232, size: 128, align: 64, elements: !620)
!620 = !{!621, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !251, line: 233, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !619, file: !251, line: 234, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !622}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !615, file: !95, line: 998, baseType: !38, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !612, file: !95, line: 1005, baseType: !593, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !612, file: !95, line: 1006, baseType: !630, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !251, line: 156, baseType: !38)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !612, file: !95, line: 1007, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !633, line: 13, baseType: !634)
!633 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !251, line: 181, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 179, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !635, file: !251, line: 180, baseType: !315, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !612, file: !95, line: 1008, baseType: !639, size: 256, offset: 256)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !640, line: 66, size: 256, elements: !641)
!640 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!641 = !{!642, !643, !644, !649}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !639, file: !640, line: 67, baseType: !632, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !639, file: !640, line: 68, baseType: !397, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !639, file: !640, line: 70, baseType: !645, size: 32, offset: 96)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !646, line: 15, size: 32, elements: !647)
!646 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !645, file: !646, line: 20, baseType: !250, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !639, file: !640, line: 72, baseType: !304, size: 128, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !612, file: !95, line: 1009, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !251, line: 52, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !444, line: 88, baseType: !317)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !612, file: !95, line: 1010, baseType: !38, size: 32, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !612, file: !95, line: 1011, baseType: !655, size: 256, offset: 640)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !95, line: 948, size: 256, elements: !656)
!656 = !{!657, !680, !767, !768, !776, !777}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !655, file: !95, line: 949, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !659, line: 34, baseType: !660)
!659 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 25, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !660, file: !659, line: 26, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !664, line: 27, baseType: !665)
!664 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !664, line: 13, size: 64, elements: !666)
!666 = !{!667, !679}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !664, line: 14, baseType: !668, size: 32)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !664, line: 14, size: 32, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !668, file: !664, line: 15, baseType: !250, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !664, line: 16, baseType: !672, size: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !664, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !672, file: !664, line: 18, baseType: !164, size: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !672, file: !664, line: 19, baseType: !676, size: 24, offset: 8)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 24, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 3)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !664, line: 26, baseType: !402, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !655, file: !95, line: 950, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !43, line: 59, size: 768, elements: !683)
!683 = !{!684, !685, !686, !687, !700, !701, !708, !709}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !682, file: !43, line: 61, baseType: !245, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !682, file: !43, line: 62, baseType: !38, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !43, line: 63, baseType: !593, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !682, file: !43, line: 65, baseType: !688, size: 256, offset: 128)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !698)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !251, line: 194, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !689, file: !251, line: 195, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !251, line: 198, size: 128, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !251, line: 199, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !693, file: !251, line: 199, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!698 = !{!699}
!699 = !DISubrange(count: 4)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !682, file: !43, line: 66, baseType: !689, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !682, file: !43, line: 68, baseType: !702, size: 192, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !703, line: 41, baseType: !704)
!703 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !703, line: 37, size: 192, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !703, line: 38, baseType: !593, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !704, file: !703, line: 39, baseType: !304, size: 128, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !43, line: 69, baseType: !619, size: 128, align: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !682, file: !43, line: 70, baseType: !710, offset: 768)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, elements: !765)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !43, line: 54, size: 128, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !711, file: !43, line: 55, baseType: !160, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !711, file: !43, line: 56, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !717, line: 26, size: 1152, elements: !718)
!717 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!718 = !{!719, !733, !734, !735, !736, !740, !741, !742, !745, !748, !752, !753, !764}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !716, file: !717, line: 27, baseType: !720, size: 192)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !721, line: 19, size: 192, elements: !722)
!721 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!722 = !{!723, !731, !732}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !720, file: !721, line: 20, baseType: !724, size: 128)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !725, line: 296, size: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!726 = !{!727, !728, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !724, file: !725, line: 297, baseType: !593, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !724, file: !725, line: 299, baseType: !729, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !251, line: 154, baseType: !38)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !724, file: !725, line: 300, baseType: !161, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !720, file: !721, line: 21, baseType: !38, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !720, file: !721, line: 22, baseType: !38, size: 32, offset: 160)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !716, file: !717, line: 28, baseType: !619, size: 128, align: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !716, file: !717, line: 29, baseType: !38, size: 32, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !716, file: !717, line: 30, baseType: !228, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !716, file: !717, line: 31, baseType: !737, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !739, line: 11, flags: DIFlagFwdDecl)
!739 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!740 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !716, file: !717, line: 32, baseType: !38, size: 32, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !716, file: !717, line: 33, baseType: !715, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !716, file: !717, line: 35, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !717, line: 17, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !716, file: !717, line: 37, baseType: !746, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !66, line: 901, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !716, file: !717, line: 38, baseType: !749, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !751, line: 16, flags: DIFlagFwdDecl)
!751 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !716, file: !717, line: 39, baseType: !160, size: 32, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !716, file: !717, line: 40, baseType: !754, size: 192, offset: 896)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !755, line: 9, size: 192, elements: !756)
!755 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!756 = !{!757, !758, !762, !763}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !754, file: !755, line: 10, baseType: !632, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !754, file: !755, line: 11, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !755, line: 7, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !754, file: !755, line: 12, baseType: !38, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !755, line: 13, baseType: !245, size: 32, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !716, file: !717, line: 42, baseType: !160, size: 32, offset: 1088)
!765 = !{!766}
!766 = !DISubrange(count: -1)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !655, file: !95, line: 951, baseType: !42, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !655, file: !95, line: 952, baseType: !769, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !770, line: 23, baseType: !771)
!770 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 21, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !771, file: !770, line: 22, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !251, line: 37, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !444, line: 49, baseType: !38)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !655, file: !95, line: 952, baseType: !769, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !655, file: !95, line: 953, baseType: !160, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !612, file: !95, line: 1012, baseType: !779, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !782, line: 110, size: 1472, elements: !783)
!782 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!783 = !{!784, !785, !786, !793, !794, !795, !796, !797, !798, !799, !800, !806, !807, !808, !809, !810, !811, !937, !938, !939, !940, !941, !972, !973, !974, !982}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !781, file: !782, line: 111, baseType: !632, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !781, file: !782, line: 112, baseType: !769, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !781, file: !782, line: 113, baseType: !787, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !770, line: 28, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 26, size: 32, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !788, file: !770, line: 27, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !251, line: 38, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !444, line: 50, baseType: !38)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !781, file: !782, line: 114, baseType: !769, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !781, file: !782, line: 115, baseType: !787, size: 32, offset: 160)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !781, file: !782, line: 116, baseType: !769, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !781, file: !782, line: 117, baseType: !787, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !781, file: !782, line: 118, baseType: !769, size: 32, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !781, file: !782, line: 119, baseType: !787, size: 32, offset: 288)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !781, file: !782, line: 120, baseType: !38, size: 32, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !781, file: !782, line: 121, baseType: !801, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !802, line: 24, baseType: !803)
!802 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 24, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !803, file: !802, line: 24, baseType: !198, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !781, file: !782, line: 122, baseType: !801, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !781, file: !782, line: 123, baseType: !801, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !781, file: !782, line: 124, baseType: !801, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !781, file: !782, line: 125, baseType: !801, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !781, file: !782, line: 127, baseType: !168, size: 8, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !781, file: !782, line: 129, baseType: !812, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !814, line: 195, size: 1728, elements: !815)
!814 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!815 = !{!816, !817, !822, !827, !836, !839, !840, !847, !848, !849, !850, !853, !854, !855, !857, !858, !901, !922}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !813, file: !814, line: 196, baseType: !245, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !813, file: !814, line: 197, baseType: !818, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !814, line: 28, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !251, line: 104, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !165, line: 20, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !167, line: 26, baseType: !160)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !814, line: 198, baseType: !823, size: 192, offset: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !814, line: 198, size: 192, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !823, file: !814, line: 199, baseType: !304, size: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !823, file: !814, line: 200, baseType: !294, size: 192, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !813, file: !814, line: 205, baseType: !828, size: 320, offset: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !829, line: 48, size: 320, elements: !830)
!829 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!830 = !{!831, !832, !833, !834, !835}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !828, file: !829, line: 49, baseType: !632, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !828, file: !829, line: 55, baseType: !632, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !828, file: !829, line: 57, baseType: !645, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !828, file: !829, line: 59, baseType: !397, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !828, file: !829, line: 60, baseType: !304, size: 128, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !813, file: !814, line: 206, baseType: !837, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !814, line: 206, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !813, file: !814, line: 207, baseType: !161, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !814, line: 208, baseType: !841, size: 64, offset: 704)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !814, line: 208, size: 64, elements: !842)
!842 = !{!843, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !841, file: !814, line: 209, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !845, line: 8, baseType: !316)
!845 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !841, file: !814, line: 210, baseType: !844, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !813, file: !814, line: 212, baseType: !844, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !813, file: !814, line: 213, baseType: !769, size: 32, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !813, file: !814, line: 214, baseType: !787, size: 32, offset: 864)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !813, file: !814, line: 215, baseType: !851, size: 32, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !814, line: 31, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !251, line: 110, baseType: !239)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !813, file: !814, line: 216, baseType: !196, size: 16, offset: 928)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !813, file: !814, line: 217, baseType: !196, size: 16, offset: 944)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !813, file: !814, line: 221, baseType: !856, size: 16, offset: 960)
!856 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 228, baseType: !162, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !814, line: 245, baseType: !859, size: 320, offset: 1088)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !814, line: 245, size: 320, elements: !860)
!860 = !{!861, !892}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !859, file: !814, line: 246, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !814, line: 114, size: 320, elements: !863)
!863 = !{!864, !865, !877, !880, !889}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !862, file: !814, line: 116, baseType: !162, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !814, line: 117, baseType: !866, size: 64, offset: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !814, line: 117, size: 64, elements: !867)
!867 = !{!868, !876}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !814, line: 118, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !814, line: 118, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !869, file: !814, line: 120, baseType: !194, size: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !869, file: !814, line: 121, baseType: !873, size: 48, offset: 16)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 6)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !866, file: !814, line: 127, baseType: !162, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !814, line: 129, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !814, line: 102, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !862, file: !814, line: 130, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !814, line: 108, size: 192, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !882, file: !814, line: 109, baseType: !619, size: 128, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !882, file: !814, line: 110, baseType: !245, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !882, file: !814, line: 111, baseType: !887, size: 8, offset: 160)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !251, line: 35, baseType: !888)
!888 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !862, file: !814, line: 131, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !814, line: 247, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !814, line: 247, size: 320, elements: !894)
!894 = !{!895, !896, !897, !898, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !893, file: !814, line: 248, baseType: !162, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !893, file: !814, line: 249, baseType: !162, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !814, line: 250, baseType: !878, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !893, file: !814, line: 251, baseType: !881, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !814, line: 252, baseType: !900, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !814, line: 260, baseType: !902, size: 256, offset: 1408)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !814, line: 260, size: 256, elements: !903)
!903 = !{!904, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !902, file: !814, line: 261, baseType: !905, size: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !814, line: 134, size: 256, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !905, file: !814, line: 135, baseType: !161, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !905, file: !814, line: 136, baseType: !909, size: 256)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !698)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !814, line: 262, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !902, file: !814, line: 262, size: 256, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !911, file: !814, line: 264, baseType: !304, size: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !911, file: !814, line: 265, baseType: !915, size: 128, offset: 128)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !916, line: 22, size: 128, elements: !917)
!916 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!917 = !{!918, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !915, file: !916, line: 23, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !916, line: 23, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !915, file: !916, line: 24, baseType: !162, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !813, file: !814, line: 280, baseType: !923, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !814, line: 176, size: 192, elements: !925)
!925 = !{!926, !935, !936}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !924, file: !814, line: 177, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !814, line: 171, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!160, !812, !931, !933, !812}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !924, file: !814, line: 178, baseType: !812, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !924, file: !814, line: 179, baseType: !878, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !781, file: !782, line: 130, baseType: !812, size: 64, offset: 832)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !781, file: !782, line: 131, baseType: !812, size: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !781, file: !782, line: 132, baseType: !812, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !781, file: !782, line: 135, baseType: !161, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !781, file: !782, line: 137, baseType: !942, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !944, line: 14, size: 1088, elements: !945)
!944 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!945 = !{!946, !947, !956, !957, !958, !959, !960, !961}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !943, file: !944, line: 15, baseType: !245, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !943, file: !944, line: 17, baseType: !948, size: 320, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !949, line: 22, size: 320, elements: !950)
!949 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!950 = !{!951, !952, !953, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !948, file: !949, line: 23, baseType: !397, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !948, file: !949, line: 24, baseType: !315, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !948, file: !949, line: 26, baseType: !304, size: 128, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !948, file: !949, line: 28, baseType: !955, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !943, file: !944, line: 19, baseType: !162, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !943, file: !944, line: 20, baseType: !632, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !943, file: !944, line: 23, baseType: !693, size: 128, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !943, file: !944, line: 24, baseType: !769, size: 32, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !943, file: !944, line: 29, baseType: !632, size: 64, offset: 704)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !943, file: !944, line: 36, baseType: !962, size: 320, offset: 768)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !963, line: 15, size: 320, elements: !964)
!963 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!964 = !{!965, !966, !967, !968, !969, !970, !971}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !962, file: !963, line: 16, baseType: !397, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !962, file: !963, line: 18, baseType: !160, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !962, file: !963, line: 19, baseType: !160, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !962, file: !963, line: 20, baseType: !160, size: 32, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !962, file: !963, line: 21, baseType: !160, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !962, file: !963, line: 22, baseType: !162, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !963, line: 23, baseType: !162, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !781, file: !782, line: 138, baseType: !746, size: 64, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !781, file: !782, line: 139, baseType: !749, size: 64, offset: 1216)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !781, file: !782, line: 140, baseType: !975, size: 64, offset: 1280)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !782, line: 25, size: 64, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !976, file: !782, line: 26, baseType: !250, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !976, file: !782, line: 27, baseType: !160, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !976, file: !782, line: 28, baseType: !981, offset: 64)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, elements: !765)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 142, baseType: !983, size: 128, offset: 1344)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 142, size: 128, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !983, file: !782, line: 143, baseType: !160, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !983, file: !782, line: 144, baseType: !619, size: 128, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !612, file: !95, line: 1013, baseType: !988, size: 256, offset: 960)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !95, line: 970, size: 256, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !988, file: !95, line: 971, baseType: !162, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !988, file: !95, line: 972, baseType: !38, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !988, file: !95, line: 973, baseType: !38, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !988, file: !95, line: 974, baseType: !38, size: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !988, file: !95, line: 975, baseType: !38, size: 32, offset: 160)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !988, file: !95, line: 976, baseType: !651, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !612, file: !95, line: 1014, baseType: !997, size: 128, offset: 1216)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !998, line: 8, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!999 = !{!1000, !3207}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !997, file: !998, line: 9, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1003, line: 70, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1004 = !{!1005, !3204, !3205, !3206}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1002, file: !1003, line: 71, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1008, line: 82, size: 1536, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1009 = !{!1010, !1011, !1016, !1024, !1025, !1040, !3171, !3173, !3186, !3187, !3188, !3189, !3190, !3196, !3197, !3198}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1007, file: !1008, line: 84, baseType: !38, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1007, file: !1008, line: 85, baseType: !1012, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !447, line: 275, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !447, line: 275, size: 32, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1013, file: !447, line: 275, baseType: !451, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1007, file: !1008, line: 86, baseType: !1017, size: 128, offset: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1018, line: 38, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1019 = !{!1020, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !1018, line: 39, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1017, file: !1018, line: 39, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1007, file: !1008, line: 87, baseType: !1006, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1007, file: !1008, line: 88, baseType: !1026, size: 128, offset: 256)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1008, line: 49, size: 128, elements: !1027)
!1027 = !{!1028, !1037}
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !1008, line: 50, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !1008, line: 50, size: 64, elements: !1030)
!1030 = !{!1031, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !1008, line: 51, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !1008, line: 51, size: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1032, file: !1008, line: 52, baseType: !239, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1032, file: !1008, line: 52, baseType: !239, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1029, file: !1008, line: 54, baseType: !198, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1026, file: !1008, line: 56, baseType: !1038, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1007, file: !1008, line: 89, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !95, line: 641, size: 4800, elements: !1043)
!1043 = !{!1044, !1046, !1047, !1048, !1049, !1050, !1051, !1054, !1055, !1246, !2985, !2986, !2987, !2988, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3153, !3156, !3157, !3158, !3167, !3168, !3169, !3170}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1042, file: !95, line: 642, baseType: !1045, size: 16)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !251, line: 24, baseType: !196)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1042, file: !95, line: 643, baseType: !196, size: 16, offset: 16)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1042, file: !95, line: 644, baseType: !769, size: 32, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1042, file: !95, line: 645, baseType: !304, size: 128, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1042, file: !95, line: 646, baseType: !787, size: 32, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1042, file: !95, line: 647, baseType: !38, size: 32, offset: 224)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1042, file: !95, line: 650, baseType: !1052, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !95, line: 607, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1042, file: !95, line: 651, baseType: !1052, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1042, file: !95, line: 654, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !95, line: 1966, size: 2048, align: 512, elements: !1059)
!1059 = !{!1060, !1064, !1077, !1083, !1087, !1091, !1095, !1099, !1103, !1107, !1111, !1112, !1118, !1122, !1160, !1191, !1201, !1207, !1211, !1215, !1219, !1223, !1227, !1233, !1237}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1058, file: !95, line: 1967, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1006, !1041, !1006, !38}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1058, file: !95, line: 1968, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!890, !1006, !1041, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1070, line: 10, size: 128, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1071 = !{!1072, !1076}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1069, file: !1070, line: 11, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !161}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1069, file: !1070, line: 12, baseType: !161, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1058, file: !95, line: 1969, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!160, !1081, !1041, !160}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !802, line: 42, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1058, file: !95, line: 1970, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1052, !1041, !160, !887}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1058, file: !95, line: 1972, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!160, !1006, !900, !160}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1058, file: !95, line: 1974, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!160, !1081, !1041, !1006, !1045, !887}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1058, file: !95, line: 1976, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!160, !1006, !1041, !1006}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1058, file: !95, line: 1977, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!160, !1041, !1006}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1058, file: !95, line: 1978, baseType: !1104, size: 64, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!160, !1081, !1041, !1006, !890}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1058, file: !95, line: 1980, baseType: !1108, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!160, !1081, !1041, !1006, !1045}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1058, file: !95, line: 1982, baseType: !1100, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1058, file: !95, line: 1983, baseType: !1113, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!160, !1081, !1041, !1006, !1045, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !251, line: 21, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !251, line: 18, baseType: !239)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1058, file: !95, line: 1985, baseType: !1119, size: 64, offset: 768)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!160, !1081, !1041, !1006, !1041, !1006, !38}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1058, file: !95, line: 1987, baseType: !1123, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!160, !1081, !1006, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !95, line: 226, size: 640, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1141, !1150, !1151, !1157, !1158, !1159}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1127, file: !95, line: 227, baseType: !38, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1127, file: !95, line: 228, baseType: !1045, size: 16, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !95, line: 241, baseType: !1132, size: 32, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !95, line: 241, size: 32, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1132, file: !95, line: 242, baseType: !769, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1132, file: !95, line: 243, baseType: !1136, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1137, line: 16, baseType: !1138)
!1137 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1137, line: 14, size: 32, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1138, file: !1137, line: 15, baseType: !774, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !95, line: 245, baseType: !1142, size: 32, offset: 96)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !95, line: 245, size: 32, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1142, file: !95, line: 246, baseType: !787, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1142, file: !95, line: 247, baseType: !1146, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1137, line: 20, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1137, line: 18, size: 32, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1147, file: !1137, line: 19, baseType: !791, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1127, file: !95, line: 249, baseType: !651, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1127, file: !95, line: 250, baseType: !1152, size: 128, offset: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !845, line: 13, size: 128, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1152, file: !845, line: 14, baseType: !844, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1152, file: !845, line: 15, baseType: !1156, size: 64, offset: 64)
!1156 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1127, file: !95, line: 251, baseType: !1152, size: 128, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1127, file: !95, line: 252, baseType: !1152, size: 128, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1127, file: !95, line: 259, baseType: !611, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1058, file: !95, line: 1988, baseType: !1161, size: 64, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!160, !1081, !1164, !1166, !239, !38}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1168, line: 22, size: 1280, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1167, file: !1168, line: 23, baseType: !239, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1167, file: !1168, line: 24, baseType: !1045, size: 16, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1167, file: !1168, line: 25, baseType: !38, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1167, file: !1168, line: 26, baseType: !852, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1167, file: !1168, line: 27, baseType: !198, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1167, file: !1168, line: 28, baseType: !198, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1167, file: !1168, line: 41, baseType: !198, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1167, file: !1168, line: 42, baseType: !1116, size: 32, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1167, file: !1168, line: 43, baseType: !1116, size: 32, offset: 352)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1167, file: !1168, line: 44, baseType: !769, size: 32, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1167, file: !1168, line: 45, baseType: !787, size: 32, offset: 416)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1167, file: !1168, line: 46, baseType: !651, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1167, file: !1168, line: 47, baseType: !1152, size: 128, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1167, file: !1168, line: 48, baseType: !1152, size: 128, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1167, file: !1168, line: 49, baseType: !1152, size: 128, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1167, file: !1168, line: 50, baseType: !1152, size: 128, offset: 896)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1167, file: !1168, line: 51, baseType: !198, size: 64, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1167, file: !1168, line: 52, baseType: !198, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1167, file: !1168, line: 53, baseType: !239, size: 32, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1167, file: !1168, line: 54, baseType: !239, size: 32, offset: 1184)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1167, file: !1168, line: 55, baseType: !198, size: 64, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1058, file: !95, line: 1990, baseType: !1192, size: 64, offset: 960)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1195, !1006, !900, !1198}
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 66, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !444, line: 73, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !444, line: 15, baseType: !1156)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 61, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !444, line: 72, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !444, line: 16, baseType: !162)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1058, file: !95, line: 1991, baseType: !1202, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!160, !1041, !1205, !198, !198}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !95, line: 55, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1058, file: !95, line: 1993, baseType: !1208, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!160, !1041, !160}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1058, file: !95, line: 1994, baseType: !1212, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!160, !1041, !1006, !611, !38, !1045}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1058, file: !95, line: 1997, baseType: !1216, size: 64, offset: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!160, !1081, !1041, !611, !1045}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1058, file: !95, line: 1999, baseType: !1220, size: 64, offset: 1280)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1052, !1081, !1006, !160}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1058, file: !95, line: 2001, baseType: !1224, size: 64, offset: 1344)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!160, !1081, !1006, !1052, !160}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1058, file: !95, line: 2003, baseType: !1228, size: 64, offset: 1408)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!160, !1081, !1006, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !95, line: 76, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1058, file: !95, line: 2005, baseType: !1234, size: 64, offset: 1472)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!160, !1006, !1231}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1058, file: !95, line: 2006, baseType: !1238, size: 64, offset: 1536)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1241, !1041}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !95, line: 3192, size: 192, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1242, file: !95, line: 3193, baseType: !724, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1242, file: !95, line: 3194, baseType: !239, size: 32, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1042, file: !95, line: 655, baseType: !1247, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !95, line: 1190, size: 10752, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !2498, !2630, !2670, !2753, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2770, !2774, !2775, !2778, !2781, !2784, !2787, !2788, !2789, !2830, !2856, !2857, !2858, !2859, !2860, !2861, !2864, !2868, !2877, !2878, !2879, !2880, !2939, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1248, file: !95, line: 1191, baseType: !304, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1248, file: !95, line: 1192, baseType: !1116, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1248, file: !95, line: 1193, baseType: !168, size: 8, offset: 160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1248, file: !95, line: 1194, baseType: !162, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1248, file: !95, line: 1195, baseType: !651, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1248, file: !95, line: 1196, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !95, line: 2366, size: 576, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1267, !1271, !1275, !1279, !2486, !2487, !2488, !2490, !2491, !2492, !2494, !2495, !2496, !2497}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1257, file: !95, line: 2367, baseType: !890, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1257, file: !95, line: 2368, baseType: !160, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1257, file: !95, line: 2376, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!160, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1003, line: 21, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1257, file: !95, line: 2377, baseType: !1268, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !95, line: 75, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1257, file: !95, line: 2378, baseType: !1272, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1006, !1256, !160, !890, !161}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1257, file: !95, line: 2380, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1247}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1257, file: !95, line: 2381, baseType: !1280, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !51, line: 402, size: 9216, align: 512, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1289, !2130, !2156, !2157, !2158, !2159, !2163, !2166, !2167, !2168, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2236, !2240, !2260, !2279, !2280, !2281, !2282, !2291, !2314, !2315, !2318, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2332, !2333, !2444, !2452, !2453, !2454, !2456, !2460, !2461, !2465, !2466, !2467, !2468, !2470, !2471, !2472, !2479, !2480, !2481, !2485}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1281, file: !51, line: 403, baseType: !50, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1281, file: !51, line: 406, baseType: !304, size: 128, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1281, file: !51, line: 409, baseType: !1286, size: 448, offset: 192)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 56)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1281, file: !51, line: 417, baseType: !1290, size: 768, offset: 640)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !51, line: 45, size: 768, elements: !1291)
!1291 = !{!1292, !2123, !2124, !2125, !2128}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1290, file: !51, line: 46, baseType: !1293, size: 512)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1294, line: 64, size: 512, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1295 = !{!1296, !1297, !1298, !1300, !1344, !2002, !2113, !2118, !2119, !2120, !2121, !2122}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1293, file: !1294, line: 65, baseType: !890, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1293, file: !1294, line: 66, baseType: !304, size: 128, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1293, file: !1294, line: 67, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1293, file: !1294, line: 68, baseType: !1301, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1294, line: 168, size: 768, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1302, file: !1294, line: 169, baseType: !304, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1302, file: !1294, line: 170, baseType: !593, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1302, file: !1294, line: 171, baseType: !1293, size: 512, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1302, file: !1294, line: 172, baseType: !1308, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1294, line: 133, size: 192, elements: !1311)
!1311 = !{!1312, !1319, !1324}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1310, file: !1294, line: 134, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!160, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1310, file: !1294, line: 135, baseType: !1320, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!890, !1317}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1310, file: !1294, line: 136, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!160, !1317, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1294, line: 125, size: 20736, elements: !1331)
!1331 = !{!1332, !1334, !1338, !1339, !1343}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1330, file: !1294, line: 126, baseType: !1333, size: 192)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 192, elements: !677)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1330, file: !1294, line: 127, baseType: !1335, size: 4096, offset: 192)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 4096, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1330, file: !1294, line: 128, baseType: !160, size: 32, offset: 4288)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1330, file: !1294, line: 129, baseType: !1340, size: 16384, offset: 4320)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 2048)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1330, file: !1294, line: 130, baseType: !160, size: 32, offset: 20704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1293, file: !1294, line: 69, baseType: !1345, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1294, line: 116, size: 384, elements: !1348)
!1348 = !{!1349, !1353, !1372, !1962, !1992, !1996}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1347, file: !1294, line: 117, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !1299}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1347, file: !1294, line: 118, baseType: !1354, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1357, line: 254, size: 128, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1358 = !{!1359, !1368}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1356, file: !1357, line: 255, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1195, !1299, !1363, !900}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1357, line: 30, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1364, file: !1357, line: 31, baseType: !890, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1364, file: !1357, line: 32, baseType: !1045, size: 16, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1356, file: !1357, line: 256, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1195, !1299, !1363, !890, !1198}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1347, file: !1294, line: 119, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1357, line: 84, size: 320, elements: !1377)
!1377 = !{!1378, !1379, !1383, !1958, !1960}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1376, file: !1357, line: 85, baseType: !890, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1376, file: !1357, line: 86, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1045, !1299, !1363, !160}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1376, file: !1357, line: 88, baseType: !1384, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1045, !1299, !1387, !160}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1357, line: 175, size: 512, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1949, !1953, !1954}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1388, file: !1357, line: 176, baseType: !1364, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1388, file: !1357, line: 177, baseType: !1198, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1388, file: !1357, line: 178, baseType: !161, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1388, file: !1357, line: 179, baseType: !1394, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !95, line: 472, size: 1536, align: 64, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1941, !1942, !1943, !1946, !1947, !1948}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1398, file: !95, line: 473, baseType: !1041, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1398, file: !95, line: 474, baseType: !724, size: 128, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1398, file: !95, line: 475, baseType: !828, size: 320, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1398, file: !95, line: 476, baseType: !729, size: 32, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1398, file: !95, line: 477, baseType: !250, size: 32, offset: 544)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1398, file: !95, line: 482, baseType: !460, size: 128, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1398, file: !95, line: 483, baseType: !162, size: 64, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1398, file: !95, line: 484, baseType: !162, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1398, file: !95, line: 485, baseType: !1409, size: 64, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !95, line: 404, size: 1280, elements: !1412)
!1412 = !{!1413, !1716, !1786, !1790, !1794, !1800, !1806, !1810, !1815, !1819, !1823, !1827, !1905, !1909, !1913, !1917, !1922, !1926, !1933, !1937}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1411, file: !95, line: 405, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!160, !1417, !1714}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !66, line: 74, size: 512, align: 128, elements: !1419)
!1419 = !{!1420, !1421, !1708, !1713}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1418, file: !66, line: 75, baseType: !162, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !66, line: 83, baseType: !1422, size: 320, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !66, line: 83, size: 320, elements: !1423)
!1423 = !{!1424, !1445, !1459, !1463, !1707}
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !66, line: 84, baseType: !1425, size: 320)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !66, line: 84, size: 320, elements: !1426)
!1426 = !{!1427, !1438, !1439, !1444}
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !66, line: 90, baseType: !1428, size: 128)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !66, line: 90, size: 128, elements: !1429)
!1429 = !{!1430, !1431, !1436, !1437}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1428, file: !66, line: 91, baseType: !304, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !66, line: 94, baseType: !1432, size: 128)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !66, line: 94, size: 128, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1432, file: !66, line: 96, baseType: !161, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1432, file: !66, line: 98, baseType: !38, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1428, file: !66, line: 102, baseType: !304, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1428, file: !66, line: 103, baseType: !304, size: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1425, file: !66, line: 106, baseType: !1397, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !66, line: 107, baseType: !1440, size: 64, offset: 192)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !66, line: 107, size: 64, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1440, file: !66, line: 108, baseType: !162, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1440, file: !66, line: 109, baseType: !162, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1425, file: !66, line: 117, baseType: !162, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !66, line: 119, baseType: !1446, size: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !66, line: 119, size: 320, elements: !1447)
!1447 = !{!1448, !1449, !1452, !1453, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1446, file: !66, line: 124, baseType: !162, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1446, file: !66, line: 125, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !66, line: 125, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1446, file: !66, line: 126, baseType: !162, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1446, file: !66, line: 127, baseType: !162, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !66, line: 128, baseType: !1455, size: 64, offset: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !66, line: 128, size: 64, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1455, file: !66, line: 133, baseType: !162, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1455, file: !66, line: 138, baseType: !632, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !66, line: 141, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !66, line: 141, size: 64, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1460, file: !66, line: 142, baseType: !162, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !66, line: 144, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !66, line: 144, size: 128, elements: !1465)
!1465 = !{!1466, !1706}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1464, file: !66, line: 146, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !58, line: 126, size: 1216, elements: !1469)
!1469 = !{!1470, !1480, !1501, !1512, !1513, !1514, !1515, !1688, !1689, !1690}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1468, file: !58, line: 127, baseType: !1471, size: 384)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !58, line: 21, size: 384, elements: !1472)
!1472 = !{!1473, !1474, !1476, !1477, !1478, !1479}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1471, file: !58, line: 22, baseType: !162, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1471, file: !58, line: 23, baseType: !1475, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1471, file: !58, line: 24, baseType: !1475, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1471, file: !58, line: 25, baseType: !162, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1471, file: !58, line: 26, baseType: !162, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1471, file: !58, line: 27, baseType: !162, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1468, file: !58, line: 128, baseType: !1481, size: 128, offset: 384)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1482, line: 105, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1481, file: !1482, line: 110, baseType: !162, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1481, file: !1482, line: 118, baseType: !1486, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1482, line: 95, size: 448, elements: !1488)
!1488 = !{!1489, !1490, !1496, !1497, !1498, !1499, !1500}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1487, file: !1482, line: 96, baseType: !632, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1487, file: !1482, line: 97, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1482, line: 60, baseType: !1493)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1487, file: !1482, line: 98, baseType: !1491, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1487, file: !1482, line: 99, baseType: !887, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1487, file: !1482, line: 100, baseType: !887, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1487, file: !1482, line: 101, baseType: !619, size: 128, align: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1487, file: !1482, line: 102, baseType: !1495, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1468, file: !58, line: 129, baseType: !1502, size: 256, offset: 512)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1503, line: 26, size: 256, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1502, file: !1503, line: 27, baseType: !38, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1502, file: !1503, line: 28, baseType: !1507, size: 192, offset: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1508, line: 43, size: 192, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !1508, line: 44, baseType: !397, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1507, file: !1508, line: 45, baseType: !304, size: 128, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !58, line: 130, baseType: !57, size: 32, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !58, line: 131, baseType: !38, size: 32, offset: 800)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1468, file: !58, line: 132, baseType: !162, size: 64, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1468, file: !58, line: 133, baseType: !1516, size: 64, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !58, line: 77, size: 192, elements: !1519)
!1519 = !{!1520, !1524, !1684}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1518, file: !58, line: 83, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1417}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1518, file: !58, line: 89, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !66, line: 1184, baseType: !38)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1531, line: 512, size: 896, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1532 = !{!1533, !1651, !1652, !1659, !1666, !1676, !1677, !1678, !1680, !1682}
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 513, baseType: !1534, size: 320)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !1531, line: 513, size: 320, elements: !1535)
!1535 = !{!1536, !1647, !1648, !1649, !1650}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1534, file: !1531, line: 514, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !66, line: 625, size: 1344, elements: !1539)
!1539 = !{!1540, !1549, !1550, !1558, !1565, !1566, !1571, !1572, !1577, !1578, !1581, !1640, !1641, !1642, !1643, !1644, !1645}
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !66, line: 628, baseType: !1541, size: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !66, line: 628, size: 128, elements: !1542)
!1542 = !{!1543, !1548}
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !66, line: 629, baseType: !1544, size: 128)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !66, line: 629, size: 128, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1544, file: !66, line: 631, baseType: !162, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1544, file: !66, line: 632, baseType: !162, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1541, file: !66, line: 635, baseType: !619, size: 128, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1538, file: !66, line: 639, baseType: !575, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1538, file: !66, line: 640, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1552, line: 297, baseType: !1553)
!1552 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1552, line: 297, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1553, file: !1552, line: 297, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1557, line: 19, baseType: !162)
!1557 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !66, line: 646, baseType: !1559, size: 64, offset: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !66, line: 646, size: 64, elements: !1560)
!1560 = !{!1561, !1564}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1559, file: !66, line: 647, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !66, line: 542, baseType: !162)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1559, file: !66, line: 648, baseType: !1563, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1538, file: !66, line: 666, baseType: !160, size: 32, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1538, file: !66, line: 667, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !66, line: 579, size: 320, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1568, file: !66, line: 580, baseType: !828, size: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1538, file: !66, line: 670, baseType: !887, size: 8, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1538, file: !66, line: 681, baseType: !1573, size: 256, offset: 512)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !66, line: 678, size: 256, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1573, file: !66, line: 679, baseType: !294, size: 192, align: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1573, file: !66, line: 680, baseType: !162, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1538, file: !66, line: 689, baseType: !304, size: 128, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1538, file: !66, line: 691, baseType: !1579, size: 64, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !66, line: 691, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1538, file: !66, line: 694, baseType: !1582, size: 64, offset: 960)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1531, line: 563, size: 1024, elements: !1585)
!1585 = !{!1586, !1590, !1591, !1595, !1599, !1603, !1604, !1608, !1612, !1616, !1617, !1618, !1622, !1626, !1632, !1636}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1584, file: !1531, line: 564, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1537}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1584, file: !1531, line: 569, baseType: !1587, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1584, file: !1531, line: 571, baseType: !1592, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!160, !1537, !162}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1584, file: !1531, line: 572, baseType: !1596, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!160, !1537}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1584, file: !1531, line: 578, baseType: !1600, size: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!160, !1537, !162, !162, !162}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1584, file: !1531, line: 580, baseType: !1525, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1584, file: !1531, line: 581, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1528, !1529, !38}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1584, file: !1531, line: 582, baseType: !1609, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1528, !1529, !162, !162}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1584, file: !1531, line: 584, baseType: !1613, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!162, !1537}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1584, file: !1531, line: 588, baseType: !1525, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1584, file: !1531, line: 591, baseType: !1525, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1584, file: !1531, line: 597, baseType: !1619, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!160, !1537, !162, !161, !160, !160}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1584, file: !1531, line: 603, baseType: !1623, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!890, !1537}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1584, file: !1531, line: 613, baseType: !1627, size: 64, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!160, !1537, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !66, line: 717, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1584, file: !1531, line: 625, baseType: !1633, size: 64, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1630, !1537, !162}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1584, file: !1531, line: 633, baseType: !1637, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1417, !1537, !162}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1538, file: !66, line: 697, baseType: !162, size: 64, offset: 1024)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1538, file: !66, line: 699, baseType: !611, size: 64, offset: 1088)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1538, file: !66, line: 700, baseType: !161, size: 64, offset: 1152)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1538, file: !66, line: 711, baseType: !632, size: 64, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1538, file: !66, line: 717, baseType: !1630, size: 64, offset: 1280)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1538, file: !66, line: 722, baseType: !1646, offset: 1344)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !66, line: 570, elements: !604)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1534, file: !1531, line: 515, baseType: !729, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1534, file: !1531, line: 516, baseType: !162, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1534, file: !1531, line: 517, baseType: !162, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1534, file: !1531, line: 518, baseType: !162, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1531, line: 520, baseType: !65, size: 32, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1530, file: !1531, line: 522, baseType: !1653, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1557, line: 22, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1557, line: 22, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1655, file: !1557, line: 22, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1557, line: 15, baseType: !162)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1530, file: !1531, line: 524, baseType: !1660, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1552, line: 372, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 372, size: 64, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1662, file: !1552, line: 372, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1557, line: 16, baseType: !162)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 527, baseType: !1667, size: 64, offset: 512)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 527, size: 64, elements: !1668)
!1668 = !{!1669, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1667, file: !1531, line: 528, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1557, line: 21, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1557, line: 21, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1671, file: !1557, line: 21, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1557, line: 14, baseType: !162)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1667, file: !1531, line: 529, baseType: !1654, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1530, file: !1531, line: 534, baseType: !1417, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1530, file: !1531, line: 535, baseType: !1417, size: 64, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1530, file: !1531, line: 541, baseType: !1679, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1530, file: !1531, line: 545, baseType: !1681, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1530, file: !1531, line: 549, baseType: !1683, size: 64, offset: 832)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1552, line: 520, baseType: !1417)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1518, file: !58, line: 100, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!160, !1467, !162, !162, !160}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1468, file: !58, line: 134, baseType: !161, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1468, file: !58, line: 135, baseType: !160, size: 32, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !58, line: 136, baseType: !1691, size: 128, offset: 1088)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !58, line: 136, size: 128, elements: !1692)
!1692 = !{!1693, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1691, file: !58, line: 137, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1695, line: 6, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1694, file: !1695, line: 7, baseType: !198, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1694, file: !1695, line: 8, baseType: !198, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !58, line: 138, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !58, line: 138, elements: !1701)
!1701 = !{!1702, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1700, file: !58, line: 138, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !58, line: 138, elements: !604)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1700, file: !58, line: 138, baseType: !1705)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, elements: !765)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1464, file: !66, line: 147, baseType: !161, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1422, file: !66, line: 161, baseType: !619, size: 128, align: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !66, line: 164, baseType: !1709, size: 32, offset: 384)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !66, line: 164, size: 32, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1709, file: !66, line: 169, baseType: !250, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1709, file: !66, line: 177, baseType: !38, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1418, file: !66, line: 181, baseType: !250, size: 32, offset: 416)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !95, line: 309, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1411, file: !95, line: 406, baseType: !1717, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!160, !611, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !66, line: 293, size: 1536, elements: !1722)
!1722 = !{!1723, !1753, !1767}
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !66, line: 295, baseType: !1724, size: 512)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !66, line: 295, size: 512, elements: !1725)
!1725 = !{!1726, !1752}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !66, line: 296, baseType: !1727, size: 448)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !66, line: 296, size: 448, elements: !1728)
!1728 = !{!1729, !1730, !1739, !1740, !1741, !1750, !1751}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !66, line: 298, baseType: !162, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !66, line: 299, baseType: !1731, size: 128, offset: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !66, line: 299, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1731, file: !66, line: 300, baseType: !304, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !66, line: 302, baseType: !1735, size: 128)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1731, file: !66, line: 302, size: 128, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1735, file: !66, line: 303, baseType: !161, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1735, file: !66, line: 305, baseType: !38, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1727, file: !66, line: 310, baseType: !1397, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1727, file: !66, line: 311, baseType: !162, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !66, line: 312, baseType: !1742, size: 64, offset: 320)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !66, line: 312, size: 64, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1742, file: !66, line: 313, baseType: !161, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1742, file: !66, line: 314, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !66, line: 257, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 255, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1747, file: !66, line: 256, baseType: !162, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1727, file: !66, line: 316, baseType: !250, size: 32, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1727, file: !66, line: 317, baseType: !250, size: 32, offset: 416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1724, file: !66, line: 323, baseType: !1418, size: 512, align: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !66, line: 325, baseType: !1754, size: 512, offset: 512)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !66, line: 325, size: 512, elements: !1755)
!1755 = !{!1756, !1766}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !66, line: 326, baseType: !1757, size: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !66, line: 326, size: 320, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1757, file: !66, line: 327, baseType: !162, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1757, file: !66, line: 328, baseType: !162, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1757, file: !66, line: 329, baseType: !162, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1757, file: !66, line: 331, baseType: !250, size: 32, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1757, file: !66, line: 332, baseType: !250, size: 32, offset: 224)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1757, file: !66, line: 333, baseType: !250, size: 32, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1757, file: !66, line: 335, baseType: !38, size: 32, offset: 288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1754, file: !66, line: 339, baseType: !1418, size: 512, align: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !66, line: 341, baseType: !1768, size: 512, offset: 1024)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !66, line: 341, size: 512, elements: !1769)
!1769 = !{!1770, !1779, !1785}
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !66, line: 342, baseType: !1771, size: 384)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !66, line: 342, size: 384, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1771, file: !66, line: 343, baseType: !162, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1771, file: !66, line: 344, baseType: !162, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1771, file: !66, line: 346, baseType: !161, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1771, file: !66, line: 347, baseType: !161, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1771, file: !66, line: 348, baseType: !161, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1771, file: !66, line: 349, baseType: !161, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !66, line: 352, baseType: !1780, size: 256)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !66, line: 352, size: 256, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1780, file: !66, line: 353, baseType: !162, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1780, file: !66, line: 354, baseType: !162, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1780, file: !66, line: 356, baseType: !304, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1768, file: !66, line: 359, baseType: !1418, size: 512, align: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1411, file: !95, line: 409, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!160, !1397, !1714}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1411, file: !95, line: 412, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!887, !1397, !1720}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1411, file: !95, line: 414, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !95, line: 310, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1411, file: !95, line: 416, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!160, !611, !1397, !651, !38, !1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1411, file: !95, line: 419, baseType: !1807, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!160, !611, !1397, !651, !38, !38, !1417, !161}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1411, file: !95, line: 424, baseType: !1811, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1814, !1397, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !251, line: 131, baseType: !198)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1411, file: !95, line: 425, baseType: !1816, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1720, !1198, !1198}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1411, file: !95, line: 426, baseType: !1820, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!887, !1720, !729}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1411, file: !95, line: 427, baseType: !1824, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1720}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1411, file: !95, line: 428, baseType: !1828, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1195, !1831, !1853}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !95, line: 373, size: 384, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1840, !1841, !1842, !1843}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1832, file: !95, line: 374, baseType: !611, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1832, file: !95, line: 375, baseType: !651, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1832, file: !95, line: 376, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1831, !1156}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1832, file: !95, line: 377, baseType: !161, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1832, file: !95, line: 378, baseType: !160, size: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1832, file: !95, line: 379, baseType: !194, size: 16, offset: 288)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !95, line: 380, baseType: !1844, size: 64, offset: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !95, line: 380, size: 64, elements: !1845)
!1845 = !{!1846, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1844, file: !95, line: 386, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !95, line: 386, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1844, file: !95, line: 395, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1195, !161}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1855, line: 41, size: 320, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1867, !1900}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1854, file: !1855, line: 42, baseType: !164, size: 8)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1854, file: !1855, line: 43, baseType: !887, size: 8, offset: 8)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1854, file: !1855, line: 44, baseType: !887, size: 8, offset: 16)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1854, file: !1855, line: 45, baseType: !887, size: 8, offset: 24)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1854, file: !1855, line: 46, baseType: !887, size: 8, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 47, baseType: !1863, size: 64, offset: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 47, size: 64, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1863, file: !1855, line: 48, baseType: !1198, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1863, file: !1855, line: 49, baseType: !160, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 61, baseType: !1868, size: 128, offset: 128)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 61, size: 128, elements: !1869)
!1869 = !{!1870, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1868, file: !1855, line: 67, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1872, line: 17, size: 128, elements: !1873)
!1872 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1871, file: !1872, line: 19, baseType: !161, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1871, file: !1872, line: 20, baseType: !1199, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1855, line: 68, baseType: !1877, size: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !1855, line: 68, size: 128, elements: !1878)
!1878 = !{!1879, !1899}
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !1855, line: 69, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !1855, line: 69, size: 64, elements: !1881)
!1881 = !{!1882, !1885, !1892, !1896, !1898}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1880, file: !1855, line: 71, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1880, file: !1855, line: 72, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1855, line: 17, size: 128, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1888, file: !1855, line: 18, baseType: !161, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1888, file: !1855, line: 19, baseType: !1198, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1880, file: !1855, line: 73, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1855, line: 73, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1880, file: !1855, line: 74, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1880, file: !1855, line: 75, baseType: !161, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1877, file: !1855, line: 77, baseType: !1198, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1855, line: 80, baseType: !1901, size: 64, offset: 256)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1855, line: 80, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1901, file: !1855, line: 81, baseType: !162, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1901, file: !1855, line: 82, baseType: !651, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1411, file: !95, line: 433, baseType: !1906, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!160, !1397, !1720, !1720, !81}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1411, file: !95, line: 435, baseType: !1910, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!160, !1720}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1411, file: !95, line: 436, baseType: !1914, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!887, !1720, !1198, !1198}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1411, file: !95, line: 438, baseType: !1918, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1720, !1921, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1411, file: !95, line: 439, baseType: !1923, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!160, !1397, !1417}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1411, file: !95, line: 442, baseType: !1927, size: 64, offset: 1088)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!160, !1930, !611, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !95, line: 66, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1411, file: !95, line: 444, baseType: !1934, size: 64, offset: 1152)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !611}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1411, file: !95, line: 445, baseType: !1938, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!160, !1831, !1853}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !95, line: 486, baseType: !162, size: 64, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1398, file: !95, line: 487, baseType: !828, size: 320, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1398, file: !95, line: 488, baseType: !1944, size: 32, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1945, line: 8, baseType: !239)
!1945 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1398, file: !95, line: 489, baseType: !593, size: 32, offset: 1312)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1398, file: !95, line: 490, baseType: !304, size: 128, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1398, file: !95, line: 491, baseType: !161, size: 64, offset: 1472)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1388, file: !1357, line: 180, baseType: !1950, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1195, !611, !1299, !1387, !900, !651, !1198}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1388, file: !1357, line: 182, baseType: !1950, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1388, file: !1357, line: 184, baseType: !1955, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!160, !611, !1299, !1387, !1537}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1376, file: !1357, line: 90, baseType: !1959, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1376, file: !1357, line: 91, baseType: !1961, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1347, file: !1294, line: 120, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1966, !1317}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !89, line: 39, size: 384, elements: !1969)
!1969 = !{!1970, !1971, !1975, !1979, !1987, !1991}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1968, file: !89, line: 40, baseType: !88, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1968, file: !89, line: 41, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!887}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1968, file: !89, line: 42, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!161}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1968, file: !89, line: 43, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1983, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !89, line: 19, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1968, file: !89, line: 44, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1983}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1968, file: !89, line: 45, baseType: !1073, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1347, file: !1294, line: 121, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1983, !1317}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1347, file: !1294, line: 122, baseType: !1997, size: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1317, !2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1293, file: !1294, line: 70, baseType: !2003, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2005, line: 190, size: 1152, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2105, !2106, !2107, !2108, !2109, !2112}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2004, file: !2005, line: 191, baseType: !250, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2004, file: !2005, line: 192, baseType: !250, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2004, file: !2005, line: 202, baseType: !2003, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !2005, line: 203, baseType: !890, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2004, file: !2005, line: 205, baseType: !294, size: 192, align: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2004, file: !2005, line: 207, baseType: !1983, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2004, file: !2005, line: 208, baseType: !38, size: 32, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !2005, line: 209, baseType: !2015, size: 256, offset: 512)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !2005, line: 209, size: 256, elements: !2016)
!2016 = !{!2017, !2026, !2030}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2015, file: !2005, line: 210, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2005, line: 153, size: 256, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2025}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2018, file: !2005, line: 154, baseType: !162, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2018, file: !2005, line: 156, baseType: !463, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2018, file: !2005, line: 162, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2005, line: 162, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2018, file: !2005, line: 167, baseType: !162, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2015, file: !2005, line: 211, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2005, line: 170, size: 64, elements: !2028)
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2027, file: !2005, line: 171, baseType: !2003, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2015, file: !2005, line: 212, baseType: !2031, size: 256)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2005, line: 174, size: 256, elements: !2032)
!2032 = !{!2033, !2100, !2103, !2104}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2031, file: !2005, line: 175, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2005, line: 271, size: 768, elements: !2037)
!2037 = !{!2038, !2060, !2064, !2068, !2073, !2077, !2081, !2085, !2086, !2087, !2088, !2096}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2036, file: !2005, line: 276, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!160, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2005, line: 251, size: 1216, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2043, file: !2005, line: 253, baseType: !2003, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2043, file: !2005, line: 254, baseType: !611, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2043, file: !2005, line: 255, baseType: !2048, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !230, line: 66, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2043, file: !2005, line: 256, baseType: !161, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2043, file: !2005, line: 259, baseType: !639, size: 256, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2043, file: !2005, line: 260, baseType: !639, size: 256, offset: 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2043, file: !2005, line: 261, baseType: !160, size: 32, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2043, file: !2005, line: 262, baseType: !304, size: 128, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2043, file: !2005, line: 263, baseType: !900, size: 64, offset: 960)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2043, file: !2005, line: 265, baseType: !1198, size: 64, offset: 1024)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2043, file: !2005, line: 266, baseType: !887, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2043, file: !2005, line: 267, baseType: !887, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2043, file: !2005, line: 268, baseType: !1582, size: 64, offset: 1152)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2036, file: !2005, line: 277, baseType: !2061, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !2042}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2036, file: !2005, line: 290, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!160, !2048, !161}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2036, file: !2005, line: 292, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!161, !2048, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2036, file: !2005, line: 293, baseType: !2074, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!161, !2048, !161, !2072}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2036, file: !2005, line: 294, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2048, !161}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2036, file: !2005, line: 296, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!1195, !2042, !900, !1198, !651}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2036, file: !2005, line: 306, baseType: !1198, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2036, file: !2005, line: 313, baseType: !887, size: 8, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2036, file: !2005, line: 314, baseType: !2082, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2036, file: !2005, line: 317, baseType: !2089, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2092, !2042, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2093, line: 59, baseType: !38)
!2093 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !95, line: 61, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2036, file: !2005, line: 320, baseType: !2097, size: 64, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!160, !2042, !1537}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2031, file: !2005, line: 176, baseType: !2101, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2005, line: 35, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2031, file: !2005, line: 177, baseType: !651, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2031, file: !2005, line: 178, baseType: !2003, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2004, file: !2005, line: 215, baseType: !161, size: 64, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2004, file: !2005, line: 221, baseType: !198, size: 64, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !2005, line: 223, baseType: !196, size: 16, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2004, file: !2005, line: 224, baseType: !1045, size: 16, offset: 912)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2004, file: !2005, line: 225, baseType: !2110, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2005, line: 36, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2004, file: !2005, line: 227, baseType: !619, size: 128, align: 64, offset: 1024)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1293, file: !1294, line: 71, baseType: !2114, size: 32, offset: 448)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2115, line: 19, size: 32, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2114, file: !2115, line: 20, baseType: !245, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1293, file: !1294, line: 73, baseType: !38, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1293, file: !1294, line: 74, baseType: !38, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1293, file: !1294, line: 75, baseType: !38, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1293, file: !1294, line: 76, baseType: !38, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1293, file: !1294, line: 77, baseType: !38, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1290, file: !51, line: 47, baseType: !1280, size: 64, offset: 512)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1290, file: !51, line: 48, baseType: !1299, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1290, file: !51, line: 49, baseType: !2126, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !51, line: 49, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1290, file: !51, line: 50, baseType: !2129, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1281, file: !51, line: 418, baseType: !2131, size: 64, offset: 1408)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !51, line: 53, size: 448, elements: !2133)
!2133 = !{!2134, !2135, !2140, !2144, !2148, !2152}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2132, file: !51, line: 54, baseType: !1364, size: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2132, file: !51, line: 55, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!1195, !2131, !2139, !900}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2132, file: !51, line: 57, baseType: !2141, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1195, !2131, !2139, !890, !1198}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2132, file: !51, line: 59, baseType: !2145, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !1280, !890}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2132, file: !51, line: 60, baseType: !2149, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!160, !1280}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2132, file: !51, line: 61, baseType: !2153, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !1280}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1281, file: !51, line: 419, baseType: !890, size: 64, offset: 1472)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1281, file: !51, line: 420, baseType: !890, size: 64, offset: 1536)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1281, file: !51, line: 421, baseType: !1299, size: 64, offset: 1600)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1281, file: !51, line: 424, baseType: !2160, size: 64, offset: 1664)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2162)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !51, line: 424, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1281, file: !51, line: 425, baseType: !2164, size: 64, offset: 1728)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1281, file: !51, line: 426, baseType: !38, size: 32, offset: 1792)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1281, file: !51, line: 435, baseType: !639, size: 256, offset: 1856)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1281, file: !51, line: 437, baseType: !2169, size: 64, offset: 2112)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2171, line: 69, size: 320, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2172 = !{!2173, !2174, !2175, !2192, !2194, !2198, !2199}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2170, file: !2171, line: 70, baseType: !890, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2170, file: !2171, line: 71, baseType: !1280, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2170, file: !2171, line: 72, baseType: !2176, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2171, line: 47, size: 256, elements: !2179)
!2179 = !{!2180, !2181, !2187, !2191}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2171, line: 49, baseType: !38, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2178, file: !2171, line: 51, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!160, !890, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2178, file: !2171, line: 53, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!160, !900, !2185}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2178, file: !2171, line: 55, baseType: !1073, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2170, file: !2171, line: 73, baseType: !2193, size: 16, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2170, file: !2171, line: 74, baseType: !2195, size: 8, offset: 208)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !165, line: 16, baseType: !2196)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !167, line: 20, baseType: !2197)
!2197 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2170, file: !2171, line: 75, baseType: !164, size: 8, offset: 216)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !2171, line: 76, baseType: !2200, size: 64, offset: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !2171, line: 76, size: 64, elements: !2201)
!2201 = !{!2202, !2203, !2210}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2200, file: !2171, line: 77, baseType: !161, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2200, file: !2171, line: 78, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2171, line: 86, size: 128, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2206, file: !2171, line: 87, baseType: !38, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2206, file: !2171, line: 88, baseType: !900, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2200, file: !2171, line: 79, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2171, line: 92, size: 256, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2219, !2220}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2213, file: !2171, line: 94, baseType: !38, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2213, file: !2171, line: 95, baseType: !38, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2213, file: !2171, line: 96, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2213, file: !2171, line: 97, baseType: !2176, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2213, file: !2171, line: 98, baseType: !161, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1281, file: !51, line: 438, baseType: !38, size: 32, offset: 2176)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1281, file: !51, line: 441, baseType: !38, size: 32, offset: 2208)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1281, file: !51, line: 442, baseType: !2160, size: 64, offset: 2240)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1281, file: !51, line: 443, baseType: !2164, size: 64, offset: 2304)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1281, file: !51, line: 444, baseType: !887, size: 8, offset: 2368)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1281, file: !51, line: 451, baseType: !887, size: 8, offset: 2376)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1281, file: !51, line: 454, baseType: !38, size: 32, offset: 2400)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1281, file: !51, line: 455, baseType: !2229, size: 64, offset: 2432)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2231, line: 23, size: 96, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2232 = !{!2233, !2234, !2235}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2230, file: !2231, line: 24, baseType: !160, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2230, file: !2231, line: 24, baseType: !160, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2230, file: !2231, line: 24, baseType: !160, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1281, file: !51, line: 458, baseType: !2237, size: 64, offset: 2496)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!160}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1281, file: !51, line: 460, baseType: !2241, size: 4032, align: 512, offset: 2560)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 4032, elements: !2258)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !51, line: 362, size: 576, elements: !2243)
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2242, file: !51, line: 363, baseType: !161, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2242, file: !51, line: 364, baseType: !38, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2242, file: !51, line: 367, baseType: !2247, size: 448, offset: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !51, line: 319, size: 448, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2247, file: !51, line: 320, baseType: !1280, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2247, file: !51, line: 321, baseType: !2251, size: 384, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2252, line: 40, size: 384, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2251, file: !2252, line: 41, baseType: !2255, size: 384, align: 64)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 384, align: 64, elements: !2256)
!2256 = !{!2257}
!2257 = !DISubrange(count: 2)
!2258 = !{!2259}
!2259 = !DISubrange(count: 7)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1281, file: !51, line: 463, baseType: !2261, size: 192, offset: 6592)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2262, line: 8, size: 192, elements: !2263)
!2262 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2263 = !{!2264, !2265, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2261, file: !2262, line: 10, baseType: !38, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2261, file: !2262, line: 11, baseType: !159, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2261, file: !2262, line: 12, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2269, line: 59, size: 48, elements: !2270)
!2269 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2270 = !{!2271, !2274, !2275, !2276, !2277, !2278}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2268, file: !2269, line: 60, baseType: !2272, size: 16)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !165, line: 18, baseType: !2273)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !167, line: 23, baseType: !856)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2268, file: !2269, line: 61, baseType: !2272, size: 16, offset: 16)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2268, file: !2269, line: 63, baseType: !38, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2268, file: !2269, line: 64, baseType: !38, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2268, file: !2269, line: 65, baseType: !38, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2268, file: !2269, line: 66, baseType: !38, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1281, file: !51, line: 465, baseType: !162, size: 64, offset: 6784)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1281, file: !51, line: 469, baseType: !38, size: 32, offset: 6848)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1281, file: !51, line: 470, baseType: !304, size: 128, offset: 6912)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1281, file: !51, line: 471, baseType: !2283, size: 64, offset: 7040)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2285, line: 33, size: 96, elements: !2286)
!2285 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2284, file: !2285, line: 37, baseType: !160, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2284, file: !2285, line: 43, baseType: !160, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2284, file: !2285, line: 45, baseType: !196, size: 16, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !2285, line: 47, baseType: !196, size: 16, offset: 80)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1281, file: !51, line: 476, baseType: !2292, size: 64, offset: 7104)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !51, line: 378, size: 256, elements: !2294)
!2294 = !{!2295, !2311, !2312, !2313}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2293, file: !51, line: 379, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2298, line: 204, baseType: !2299)
!2298 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2298, line: 197, size: 192, elements: !2300)
!2300 = !{!2301, !2303, !2304, !2305, !2307, !2309}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2299, file: !2298, line: 198, baseType: !2302, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2298, line: 21, baseType: !240)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2299, file: !2298, line: 199, baseType: !168, size: 8, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2299, file: !2298, line: 200, baseType: !168, size: 8, offset: 40)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2299, file: !2298, line: 201, baseType: !2306, size: 16, offset: 48)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2298, line: 17, baseType: !195)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2299, file: !2298, line: 202, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2298, line: 16, baseType: !199)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2299, file: !2298, line: 203, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2298, line: 22, baseType: !199)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2293, file: !51, line: 380, baseType: !38, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2293, file: !51, line: 381, baseType: !900, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2293, file: !51, line: 382, baseType: !900, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1281, file: !51, line: 477, baseType: !2293, size: 256, offset: 7168)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1281, file: !51, line: 480, baseType: !2316, size: 64, offset: 7424)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !51, line: 480, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1281, file: !51, line: 483, baseType: !2319, size: 64, offset: 7488)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !51, line: 483, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1281, file: !51, line: 488, baseType: !900, size: 64, offset: 7552)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1281, file: !51, line: 492, baseType: !161, size: 64, offset: 7616)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1281, file: !51, line: 493, baseType: !38, size: 32, offset: 7680)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1281, file: !51, line: 495, baseType: !161, size: 64, offset: 7744)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1281, file: !51, line: 496, baseType: !38, size: 32, offset: 7808)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1281, file: !51, line: 499, baseType: !38, size: 32, offset: 7840)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1281, file: !51, line: 500, baseType: !2328, size: 64, offset: 7872)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2330, line: 45, baseType: !2331)
!2330 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1281, file: !51, line: 503, baseType: !38, size: 32, offset: 7936)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1281, file: !51, line: 504, baseType: !2334, size: 64, offset: 8000)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2337, line: 96, size: 192, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2338 = !{!2339, !2340, !2405, !2408}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2336, file: !2337, line: 97, baseType: !38, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2336, file: !2337, line: 98, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2337, line: 24, size: 3072, elements: !2343)
!2343 = !{!2344, !2346, !2347, !2348, !2349, !2363, !2364, !2365, !2366, !2378, !2390, !2391, !2402, !2403, !2404}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2342, file: !2337, line: 26, baseType: !2345, size: 128)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 128, elements: !2256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2342, file: !2337, line: 27, baseType: !2345, size: 128, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2342, file: !2337, line: 28, baseType: !160, size: 32, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2342, file: !2337, line: 31, baseType: !593, size: 32, align: 512, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2342, file: !2337, line: 32, baseType: !2350, size: 960, offset: 576)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2351, line: 206, size: 960, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2352 = !{!2353, !2354, !2357, !2359, !2360, !2362}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2350, file: !2351, line: 207, baseType: !622, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2350, file: !2351, line: 208, baseType: !2355, size: 256, offset: 64)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2356, size: 256, elements: !698)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2350, file: !2351, line: 209, baseType: !2358, size: 256, offset: 320)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !698)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2350, file: !2351, line: 213, baseType: !1156, size: 64, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2350, file: !2351, line: 215, baseType: !2361, size: 256, offset: 640)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 256, elements: !698)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !2351, line: 216, baseType: !164, size: 8, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2342, file: !2337, line: 33, baseType: !162, size: 64, offset: 1536)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2342, file: !2337, line: 34, baseType: !162, size: 64, offset: 1600)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2342, file: !2337, line: 35, baseType: !887, size: 8, offset: 1664)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2342, file: !2337, line: 36, baseType: !2367, size: 320, offset: 1728)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2368, line: 11, size: 320, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2369 = !{!2370, !2371, !2372, !2377}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2367, file: !2368, line: 16, baseType: !693, size: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2367, file: !2368, line: 17, baseType: !162, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2367, file: !2368, line: 18, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !2368, line: 19, baseType: !239, size: 32, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2342, file: !2337, line: 37, baseType: !2379, size: 256, offset: 2048)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2380, line: 98, size: 256, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2381 = !{!2382, !2383, !2384}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2379, file: !2380, line: 99, baseType: !632, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2379, file: !2380, line: 100, baseType: !304, size: 128, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2379, file: !2380, line: 101, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2380, line: 21, baseType: !2386)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2342, file: !2337, line: 38, baseType: !619, size: 128, align: 64, offset: 2304)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2342, file: !2337, line: 39, baseType: !2392, size: 64, offset: 2432)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2337, line: 49, size: 768, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2393, file: !2337, line: 50, baseType: !593, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2393, file: !2337, line: 51, baseType: !2358, size: 256, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2393, file: !2337, line: 53, baseType: !2358, size: 256, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2393, file: !2337, line: 54, baseType: !162, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2393, file: !2337, line: 55, baseType: !2392, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2393, file: !2337, line: 56, baseType: !160, size: 32, offset: 704)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2393, file: !2337, line: 57, baseType: !160, size: 32, offset: 736)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2342, file: !2337, line: 40, baseType: !162, size: 64, offset: 2496)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2342, file: !2337, line: 42, baseType: !160, size: 32, offset: 2560)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2342, file: !2337, line: 43, baseType: !2335, size: 64, offset: 2624)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2336, file: !2337, line: 99, baseType: !2406, offset: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2407, line: 211, elements: !604)
!2407 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2336, file: !2337, line: 100, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2337, line: 63, size: 3008, elements: !2411)
!2411 = !{!2412, !2413, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2443}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2410, file: !2337, line: 64, baseType: !2392, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2410, file: !2337, line: 65, baseType: !2414, size: 192, offset: 64)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2392, size: 192, elements: !677)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2410, file: !2337, line: 67, baseType: !160, size: 32, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2410, file: !2337, line: 68, baseType: !639, size: 256, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2410, file: !2337, line: 69, baseType: !593, size: 32, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2410, file: !2337, line: 70, baseType: !639, size: 256, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2410, file: !2337, line: 71, baseType: !162, size: 64, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2410, file: !2337, line: 72, baseType: !162, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2410, file: !2337, line: 73, baseType: !162, size: 64, offset: 1024)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2410, file: !2337, line: 74, baseType: !162, size: 64, offset: 1088)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2410, file: !2337, line: 75, baseType: !162, size: 64, offset: 1152)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2410, file: !2337, line: 76, baseType: !162, size: 64, offset: 1216)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2410, file: !2337, line: 77, baseType: !162, size: 64, offset: 1280)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2410, file: !2337, line: 78, baseType: !162, size: 64, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2410, file: !2337, line: 79, baseType: !887, size: 8, offset: 1408)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2410, file: !2337, line: 80, baseType: !162, size: 64, offset: 1472)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2410, file: !2337, line: 81, baseType: !639, size: 256, offset: 1536)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2410, file: !2337, line: 82, baseType: !1502, size: 256, offset: 1792)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2410, file: !2337, line: 84, baseType: !250, size: 32, offset: 2048)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2410, file: !2337, line: 87, baseType: !162, size: 64, offset: 2112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2410, file: !2337, line: 88, baseType: !162, size: 64, offset: 2176)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2410, file: !2337, line: 89, baseType: !2435, size: 704, offset: 2240)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2380, line: 111, size: 704, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2442}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2435, file: !2380, line: 112, baseType: !2379, size: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2435, file: !2380, line: 113, baseType: !2367, size: 320, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2435, file: !2380, line: 116, baseType: !2440, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2380, line: 18, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2435, file: !2380, line: 117, baseType: !160, size: 32, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2410, file: !2337, line: 90, baseType: !2335, size: 64, offset: 2944)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1281, file: !51, line: 515, baseType: !2445, size: 64, offset: 8064)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2447, line: 117, size: 128, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2446, file: !2447, line: 118, baseType: !820, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2446, file: !2447, line: 119, baseType: !820, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2446, file: !2447, line: 120, baseType: !1156, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1281, file: !51, line: 516, baseType: !38, size: 32, offset: 8128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1281, file: !51, line: 519, baseType: !38, size: 32, offset: 8160)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1281, file: !51, line: 520, baseType: !2455, size: 64, offset: 8192)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1281, file: !51, line: 523, baseType: !2457, size: 64, offset: 8256)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !51, line: 523, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1281, file: !51, line: 524, baseType: !38, size: 32, offset: 8320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1281, file: !51, line: 525, baseType: !2462, size: 64, offset: 8384)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !51, line: 525, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1281, file: !51, line: 526, baseType: !38, size: 32, offset: 8448)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1281, file: !51, line: 533, baseType: !161, size: 64, offset: 8512)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1281, file: !51, line: 534, baseType: !38, size: 32, offset: 8576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1281, file: !51, line: 535, baseType: !2469, size: 64, offset: 8640)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1281, file: !51, line: 536, baseType: !38, size: 32, offset: 8704)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1281, file: !51, line: 539, baseType: !160, size: 32, offset: 8736)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1281, file: !51, line: 540, baseType: !2473, size: 64, offset: 8768)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2475, line: 32, size: 64, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2474, file: !2475, line: 33, baseType: !820, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2474, file: !2475, line: 34, baseType: !820, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1281, file: !51, line: 563, baseType: !304, size: 128, offset: 8832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1281, file: !51, line: 565, baseType: !304, size: 128, offset: 8960)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1281, file: !51, line: 568, baseType: !2482, size: 64, offset: 9088)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1281, file: !51, line: 570, baseType: !250, size: 32, offset: 9152)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1257, file: !95, line: 2382, baseType: !1256, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1257, file: !95, line: 2383, baseType: !689, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1257, file: !95, line: 2385, baseType: !2489, offset: 576)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2407, line: 206, elements: !604)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1257, file: !95, line: 2386, baseType: !2489, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1257, file: !95, line: 2387, baseType: !2489, offset: 576)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1257, file: !95, line: 2388, baseType: !2493, offset: 576)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, elements: !677)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1257, file: !95, line: 2390, baseType: !2489, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1257, file: !95, line: 2391, baseType: !2489, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1257, file: !95, line: 2392, baseType: !2489, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1257, file: !95, line: 2393, baseType: !2489, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1248, file: !95, line: 1197, baseType: !2499, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !95, line: 2057, size: 1664, elements: !2502)
!2502 = !{!2503, !2507, !2511, !2512, !2516, !2520, !2524, !2525, !2526, !2530, !2534, !2538, !2539, !2540, !2546, !2550, !2551, !2555, !2556, !2557, !2558, !2562, !2566, !2613, !2628, !2629}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2501, file: !95, line: 2058, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!1041, !1247}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2501, file: !95, line: 2059, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !1041}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2501, file: !95, line: 2060, baseType: !2508, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2501, file: !95, line: 2062, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !1041, !160}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2501, file: !95, line: 2063, baseType: !2517, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!160, !1041, !1714}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2501, file: !95, line: 2064, baseType: !2521, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!160, !1041}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2501, file: !95, line: 2065, baseType: !2508, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2501, file: !95, line: 2066, baseType: !1276, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2501, file: !95, line: 2067, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!160, !1247, !160}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2501, file: !95, line: 2068, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!160, !1247, !94}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2501, file: !95, line: 2069, baseType: !2535, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!160, !1247}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2501, file: !95, line: 2070, baseType: !2531, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2501, file: !95, line: 2071, baseType: !2535, size: 64, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2501, file: !95, line: 2072, baseType: !2541, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!160, !1006, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !95, line: 62, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2501, file: !95, line: 2073, baseType: !2547, size: 64, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!160, !1247, !159, !900}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2501, file: !95, line: 2074, baseType: !1276, size: 64, offset: 960)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2501, file: !95, line: 2076, baseType: !2552, size: 64, offset: 1024)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!160, !2048, !1006}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2501, file: !95, line: 2077, baseType: !2552, size: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2501, file: !95, line: 2078, baseType: !2552, size: 64, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2501, file: !95, line: 2079, baseType: !2552, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2501, file: !95, line: 2081, baseType: !2559, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!1195, !1247, !160, !900, !1198, !651}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2501, file: !95, line: 2082, baseType: !2563, size: 64, offset: 1344)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!1195, !1247, !160, !890, !1198, !651}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2501, file: !95, line: 2083, baseType: !2567, size: 64, offset: 1408)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !1041}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !100, line: 296, size: 1664, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2598, !2599, !2600}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2572, file: !100, line: 297, baseType: !693, size: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2572, file: !100, line: 298, baseType: !304, size: 128, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2572, file: !100, line: 299, baseType: !304, size: 128, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2572, file: !100, line: 300, baseType: !304, size: 128, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2572, file: !100, line: 301, baseType: !639, size: 256, offset: 512)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2572, file: !100, line: 302, baseType: !593, size: 32, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2572, file: !100, line: 303, baseType: !250, size: 32, offset: 800)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2572, file: !100, line: 304, baseType: !1247, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2572, file: !100, line: 305, baseType: !2583, size: 64, offset: 896)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !100, line: 68, size: 64, elements: !2584)
!2584 = !{!2585, !2597}
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !100, line: 69, baseType: !2586, size: 32)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !100, line: 69, size: 32, elements: !2587)
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2586, file: !100, line: 70, baseType: !769, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2586, file: !100, line: 71, baseType: !787, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2586, file: !100, line: 72, baseType: !2591, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2592, line: 24, baseType: !2593)
!2592 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2592, line: 22, size: 32, elements: !2594)
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2593, file: !2592, line: 23, baseType: !2596, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2592, line: 20, baseType: !775)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2583, file: !100, line: 74, baseType: !99, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2572, file: !100, line: 306, baseType: !651, size: 64, offset: 960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2572, file: !100, line: 307, baseType: !162, size: 64, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2572, file: !100, line: 308, baseType: !2601, size: 576, offset: 1088)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !100, line: 205, size: 576, elements: !2602)
!2602 = !{!2603, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2601, file: !100, line: 206, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !100, line: 66, baseType: !317)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2601, file: !100, line: 207, baseType: !2604, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2601, file: !100, line: 208, baseType: !2604, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2601, file: !100, line: 209, baseType: !2604, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2601, file: !100, line: 210, baseType: !2604, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2601, file: !100, line: 211, baseType: !2604, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2601, file: !100, line: 212, baseType: !2604, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2601, file: !100, line: 213, baseType: !844, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2601, file: !100, line: 214, baseType: !844, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2501, file: !95, line: 2085, baseType: !2614, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!1156, !1247, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2619, line: 15, size: 256, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2620 = !{!2621, !2622, !2623, !2624, !2625}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2618, file: !2619, line: 16, baseType: !729, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2618, file: !2619, line: 19, baseType: !160, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2618, file: !2619, line: 26, baseType: !162, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2618, file: !2619, line: 33, baseType: !162, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2618, file: !2619, line: 36, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !66, line: 33, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2501, file: !95, line: 2087, baseType: !2614, size: 64, offset: 1536)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2501, file: !95, line: 2089, baseType: !1276, size: 64, offset: 1600)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1248, file: !95, line: 1198, baseType: !2631, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !100, line: 324, size: 704, elements: !2634)
!2634 = !{!2635, !2639, !2643, !2647, !2648, !2649, !2650, !2651, !2656, !2661, !2665}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2633, file: !100, line: 325, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!160, !2571}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2633, file: !100, line: 326, baseType: !2640, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2571, !1247, !160}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2633, file: !100, line: 327, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2571}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2633, file: !100, line: 328, baseType: !2636, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2633, file: !100, line: 329, baseType: !2636, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2633, file: !100, line: 330, baseType: !2636, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2633, file: !100, line: 331, baseType: !2527, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2633, file: !100, line: 334, baseType: !2652, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!2655, !1041}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2633, file: !100, line: 335, baseType: !2657, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!160, !1041, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2633, file: !100, line: 337, baseType: !2662, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!160, !1041, !2655}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2633, file: !100, line: 339, baseType: !2666, size: 64, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!160, !1247, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1248, file: !95, line: 1199, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !100, line: 430, size: 704, elements: !2674)
!2674 = !{!2675, !2679, !2680, !2684, !2685, !2686, !2701, !2724, !2728, !2729, !2752}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2673, file: !100, line: 431, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!160, !1247, !160, !160, !1164}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2673, file: !100, line: 432, baseType: !2527, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2673, file: !100, line: 433, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!160, !1247, !38}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2673, file: !100, line: 434, baseType: !2681, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2673, file: !100, line: 435, baseType: !2527, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2673, file: !100, line: 436, baseType: !2687, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!160, !1247, !160, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !100, line: 417, size: 256, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2691, file: !100, line: 418, baseType: !160, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2691, file: !100, line: 419, baseType: !38, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2691, file: !100, line: 420, baseType: !38, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2691, file: !100, line: 422, baseType: !38, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2691, file: !100, line: 423, baseType: !38, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2691, file: !100, line: 424, baseType: !38, size: 32, offset: 160)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2691, file: !100, line: 425, baseType: !38, size: 32, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2691, file: !100, line: 426, baseType: !38, size: 32, offset: 224)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2673, file: !100, line: 437, baseType: !2702, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!160, !1247, !2583, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !100, line: 345, size: 960, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2706, file: !100, line: 346, baseType: !160, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2706, file: !100, line: 347, baseType: !198, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2706, file: !100, line: 348, baseType: !198, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2706, file: !100, line: 349, baseType: !198, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2706, file: !100, line: 350, baseType: !198, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2706, file: !100, line: 351, baseType: !198, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2706, file: !100, line: 352, baseType: !198, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2706, file: !100, line: 353, baseType: !315, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2706, file: !100, line: 355, baseType: !315, size: 64, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2706, file: !100, line: 356, baseType: !160, size: 32, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2706, file: !100, line: 357, baseType: !160, size: 32, offset: 608)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2706, file: !100, line: 358, baseType: !198, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2706, file: !100, line: 359, baseType: !198, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2706, file: !100, line: 360, baseType: !198, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2706, file: !100, line: 361, baseType: !315, size: 64, offset: 832)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2706, file: !100, line: 362, baseType: !160, size: 32, offset: 896)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2673, file: !100, line: 438, baseType: !2725, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!160, !1247, !2669, !2705}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2673, file: !100, line: 440, baseType: !2702, size: 64, offset: 512)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2673, file: !100, line: 441, baseType: !2730, size: 64, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!160, !1247, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !100, line: 411, size: 1408, elements: !2735)
!2735 = !{!2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2734, file: !100, line: 412, baseType: !38, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2734, file: !100, line: 413, baseType: !2738, size: 1344, offset: 64)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2739, size: 1344, elements: !677)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !100, line: 397, size: 448, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2751}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2739, file: !100, line: 398, baseType: !38, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2739, file: !100, line: 399, baseType: !38, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2739, file: !100, line: 401, baseType: !38, size: 32, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2739, file: !100, line: 402, baseType: !38, size: 32, offset: 96)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2739, file: !100, line: 403, baseType: !38, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2739, file: !100, line: 404, baseType: !38, size: 32, offset: 160)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2739, file: !100, line: 405, baseType: !38, size: 32, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2739, file: !100, line: 406, baseType: !200, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2739, file: !100, line: 407, baseType: !2750, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !251, line: 132, baseType: !198)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2739, file: !100, line: 408, baseType: !2750, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2673, file: !100, line: 442, baseType: !2681, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1248, file: !95, line: 1200, baseType: !2754, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2756)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !95, line: 54, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1248, file: !95, line: 1201, baseType: !162, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1248, file: !95, line: 1202, baseType: !162, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1248, file: !95, line: 1203, baseType: !162, size: 64, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1248, file: !95, line: 1204, baseType: !1006, size: 64, offset: 832)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1248, file: !95, line: 1205, baseType: !828, size: 320, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1248, file: !95, line: 1206, baseType: !160, size: 32, offset: 1216)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1248, file: !95, line: 1207, baseType: !250, size: 32, offset: 1248)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1248, file: !95, line: 1209, baseType: !161, size: 64, offset: 1280)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1248, file: !95, line: 1211, baseType: !2766, size: 64, offset: 1344)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2769)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !95, line: 1211, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1248, file: !95, line: 1223, baseType: !2771, size: 64, offset: 1408)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1018, line: 34, size: 64, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2771, file: !1018, line: 35, baseType: !1021, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1248, file: !95, line: 1224, baseType: !304, size: 128, offset: 1472)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1248, file: !95, line: 1225, baseType: !2776, size: 64, offset: 1600)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !95, line: 1225, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1248, file: !95, line: 1226, baseType: !2779, size: 64, offset: 1664)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !95, line: 1226, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1248, file: !95, line: 1227, baseType: !2782, size: 64, offset: 1728)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !95, line: 50, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1248, file: !95, line: 1228, baseType: !2785, size: 64, offset: 1792)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !95, line: 1228, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1248, file: !95, line: 1229, baseType: !693, size: 128, offset: 1856)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1248, file: !95, line: 1230, baseType: !38, size: 32, offset: 1984)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1248, file: !95, line: 1231, baseType: !2790, size: 2496, offset: 2048)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !100, line: 521, size: 2496, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2796, !2828}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2790, file: !100, line: 522, baseType: !38, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2790, file: !100, line: 523, baseType: !828, size: 320, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2790, file: !100, line: 524, baseType: !2795, size: 192, offset: 384)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 192, elements: !677)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2790, file: !100, line: 525, baseType: !2797, size: 1728, offset: 576)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2798, size: 1728, elements: !677)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !100, line: 222, size: 576, elements: !2799)
!2799 = !{!2800, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2798, file: !100, line: 223, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !100, line: 445, size: 256, elements: !2803)
!2803 = !{!2804, !2805, !2818, !2819}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2802, file: !100, line: 446, baseType: !160, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2802, file: !100, line: 447, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !100, line: 312, size: 512, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2808, file: !100, line: 313, baseType: !2527, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2808, file: !100, line: 314, baseType: !2527, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2808, file: !100, line: 315, baseType: !2527, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2808, file: !100, line: 316, baseType: !2527, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2808, file: !100, line: 317, baseType: !2636, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2808, file: !100, line: 318, baseType: !2636, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2808, file: !100, line: 319, baseType: !2636, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2808, file: !100, line: 320, baseType: !2666, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2802, file: !100, line: 448, baseType: !1280, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2802, file: !100, line: 449, baseType: !2801, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2798, file: !100, line: 224, baseType: !160, size: 32, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2798, file: !100, line: 226, baseType: !304, size: 128, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2798, file: !100, line: 227, baseType: !162, size: 64, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2798, file: !100, line: 228, baseType: !38, size: 32, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2798, file: !100, line: 229, baseType: !38, size: 32, offset: 352)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2798, file: !100, line: 230, baseType: !2604, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2798, file: !100, line: 231, baseType: !2604, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2798, file: !100, line: 232, baseType: !161, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2790, file: !100, line: 526, baseType: !2829, size: 192, offset: 2304)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 192, elements: !677)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1248, file: !95, line: 1233, baseType: !2831, size: 2368, offset: 4544)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !95, line: 1184, size: 2368, elements: !2832)
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2831, file: !95, line: 1185, baseType: !196, size: 16)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2831, file: !95, line: 1186, baseType: !196, size: 16, offset: 16)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2831, file: !95, line: 1187, baseType: !2836, size: 2304, offset: 64)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2837, size: 2304, elements: !677)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2838, line: 12, size: 768, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2839 = !{!2840, !2848, !2849, !2854, !2855}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2837, file: !2838, line: 13, baseType: !2841, size: 384)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2842, line: 17, size: 384, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2843 = !{!2844, !2845, !2846, !2847}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2841, file: !2842, line: 18, baseType: !160, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2841, file: !2842, line: 19, baseType: !160, size: 32, offset: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2841, file: !2842, line: 20, baseType: !702, size: 192, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2841, file: !2842, line: 22, baseType: !619, size: 128, align: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2837, file: !2838, line: 14, baseType: !2218, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2837, file: !2838, line: 15, baseType: !2850, size: 64, offset: 448)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2851, line: 16, size: 64, elements: !2852)
!2851 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2850, file: !2851, line: 17, baseType: !228, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2837, file: !2838, line: 16, baseType: !702, size: 192, offset: 512)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2837, file: !2838, line: 17, baseType: !250, size: 32, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1248, file: !95, line: 1240, baseType: !161, size: 64, offset: 6912)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1248, file: !95, line: 1243, baseType: !239, size: 32, offset: 6976)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1248, file: !95, line: 1245, baseType: !844, size: 64, offset: 7040)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1248, file: !95, line: 1246, baseType: !844, size: 64, offset: 7104)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1248, file: !95, line: 1248, baseType: !240, size: 32, offset: 7168)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1248, file: !95, line: 1249, baseType: !2862, size: 64, offset: 7232)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !95, line: 634, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1248, file: !95, line: 1252, baseType: !2865, size: 256, offset: 7296)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2866)
!2866 = !{!2867}
!2867 = !DISubrange(count: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1248, file: !95, line: 1253, baseType: !2869, size: 128, offset: 7552)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2870, line: 21, baseType: !2871)
!2870 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2870, line: 19, size: 128, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2871, file: !2870, line: 20, baseType: !2874, size: 128)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !2875)
!2875 = !{!2876}
!2876 = !DISubrange(count: 16)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1248, file: !95, line: 1255, baseType: !38, size: 32, offset: 7680)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1248, file: !95, line: 1261, baseType: !639, size: 256, offset: 7744)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1248, file: !95, line: 1267, baseType: !890, size: 64, offset: 8000)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1248, file: !95, line: 1269, baseType: !2881, size: 64, offset: 8064)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1008, line: 128, size: 1024, align: 512, elements: !2884)
!2884 = !{!2885, !2889, !2890, !2897, !2903, !2907, !2911, !2915, !2916, !2920, !2924, !2929, !2933}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2883, file: !1008, line: 129, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!160, !1006, !38}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2883, file: !1008, line: 130, baseType: !2886, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2883, file: !1008, line: 131, baseType: !2891, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!160, !2894, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2883, file: !1008, line: 132, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!160, !2894, !38, !890, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2883, file: !1008, line: 134, baseType: !2904, size: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!160, !2894}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2883, file: !1008, line: 135, baseType: !2908, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!160, !1006}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2883, file: !1008, line: 136, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !1006}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2883, file: !1008, line: 137, baseType: !2912, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2883, file: !1008, line: 138, baseType: !2917, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{null, !1006, !1041}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2883, file: !1008, line: 139, baseType: !2921, size: 64, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!900, !1006, !900, !160}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2883, file: !1008, line: 140, baseType: !2925, size: 64, offset: 640)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!1001, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2883, file: !1008, line: 141, baseType: !2930, size: 64, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!160, !1164, !887}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2883, file: !1008, line: 142, baseType: !2934, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!1006, !1006, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1248, file: !95, line: 1271, baseType: !2940, size: 448, offset: 8128)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2619, line: 63, size: 448, elements: !2941)
!2941 = !{!2942, !2947, !2948, !2949, !2950, !2951, !2952}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2940, file: !2619, line: 64, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!162, !2946, !2617}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2940, file: !2619, line: 66, baseType: !2943, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2940, file: !2619, line: 69, baseType: !1156, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2940, file: !2619, line: 70, baseType: !160, size: 32, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2940, file: !2619, line: 71, baseType: !38, size: 32, offset: 224)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2940, file: !2619, line: 74, baseType: !304, size: 128, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2940, file: !2619, line: 85, baseType: !2953, size: 64, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1248, file: !95, line: 1274, baseType: !632, size: 64, offset: 8576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1248, file: !95, line: 1280, baseType: !632, size: 64, offset: 8640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1248, file: !95, line: 1283, baseType: !160, size: 32, offset: 8704)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1248, file: !95, line: 1286, baseType: !1944, size: 32, offset: 8736)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1248, file: !95, line: 1289, baseType: !2440, size: 64, offset: 8768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1248, file: !95, line: 1290, baseType: !689, size: 64, offset: 8832)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1248, file: !95, line: 1297, baseType: !746, size: 64, offset: 8896)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1248, file: !95, line: 1304, baseType: !2962, size: 64, offset: 8960)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2963, line: 49, size: 64, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2964 = !{!2965}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2962, file: !2963, line: 50, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2963, line: 41, size: 512, align: 512, elements: !2968)
!2968 = !{!2969, !2970, !2975}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2967, file: !2963, line: 43, baseType: !593, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2967, file: !2963, line: 45, baseType: !2971, size: 192, offset: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2963, line: 29, size: 192, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2971, file: !2963, line: 30, baseType: !304, size: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2971, file: !2963, line: 32, baseType: !1156, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2967, file: !2963, line: 46, baseType: !1156, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1248, file: !95, line: 1305, baseType: !2962, size: 64, offset: 9024)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1248, file: !95, line: 1306, baseType: !619, size: 128, align: 64, offset: 9088)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1248, file: !95, line: 1307, baseType: !2379, size: 256, offset: 9216)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1248, file: !95, line: 1309, baseType: !639, size: 256, offset: 9472)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1248, file: !95, line: 1314, baseType: !160, size: 32, offset: 9728)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1248, file: !95, line: 1317, baseType: !593, size: 32, align: 512, offset: 10240)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1248, file: !95, line: 1318, baseType: !304, size: 128, offset: 10304)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1248, file: !95, line: 1320, baseType: !593, size: 32, offset: 10432)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1248, file: !95, line: 1321, baseType: !304, size: 128, offset: 10496)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1042, file: !95, line: 656, baseType: !1397, size: 64, offset: 512)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1042, file: !95, line: 659, baseType: !161, size: 64, offset: 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1042, file: !95, line: 663, baseType: !162, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !95, line: 671, baseType: !2989, size: 32, offset: 704)
!2989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !95, line: 671, size: 32, elements: !2990)
!2990 = !{!2991, !2993}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2989, file: !95, line: 672, baseType: !2992, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2989, file: !95, line: 673, baseType: !38, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1042, file: !95, line: 675, baseType: !1116, size: 32, offset: 736)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1042, file: !95, line: 676, baseType: !651, size: 64, offset: 768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1042, file: !95, line: 677, baseType: !1152, size: 128, offset: 832)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1042, file: !95, line: 678, baseType: !1152, size: 128, offset: 960)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1042, file: !95, line: 679, baseType: !1152, size: 128, offset: 1088)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1042, file: !95, line: 680, baseType: !593, size: 32, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1042, file: !95, line: 681, baseType: !196, size: 16, offset: 1248)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1042, file: !95, line: 682, baseType: !164, size: 8, offset: 1264)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1042, file: !95, line: 683, baseType: !164, size: 8, offset: 1272)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1042, file: !95, line: 684, baseType: !2750, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1042, file: !95, line: 691, baseType: !162, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1042, file: !95, line: 692, baseType: !828, size: 320, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1042, file: !95, line: 694, baseType: !162, size: 64, offset: 1728)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1042, file: !95, line: 695, baseType: !162, size: 64, offset: 1792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1042, file: !95, line: 697, baseType: !693, size: 128, offset: 1856)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1042, file: !95, line: 698, baseType: !304, size: 128, offset: 1984)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1042, file: !95, line: 707, baseType: !304, size: 128, offset: 2112)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1042, file: !95, line: 708, baseType: !304, size: 128, offset: 2240)
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !95, line: 709, baseType: !3013, size: 128, offset: 2368)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !95, line: 709, size: 128, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3013, file: !95, line: 710, baseType: !689, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3013, file: !95, line: 711, baseType: !619, size: 128, align: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1042, file: !95, line: 713, baseType: !634, size: 64, offset: 2496)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1042, file: !95, line: 714, baseType: !634, size: 64, offset: 2560)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1042, file: !95, line: 715, baseType: !250, size: 32, offset: 2624)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1042, file: !95, line: 716, baseType: !250, size: 32, offset: 2656)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1042, file: !95, line: 717, baseType: !250, size: 32, offset: 2688)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1042, file: !95, line: 719, baseType: !250, size: 32, offset: 2720)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !95, line: 721, baseType: !3024, size: 64, offset: 2752)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !95, line: 721, size: 64, elements: !3025)
!3025 = !{!3026, !3152}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3024, file: !95, line: 722, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !95, line: 1914, size: 2112, elements: !3030)
!3030 = !{!3031, !3032, !3036, !3040, !3044, !3045, !3046, !3052, !3065, !3069, !3073, !3074, !3078, !3079, !3083, !3088, !3089, !3093, !3097, !3103, !3104, !3108, !3109, !3115, !3119, !3120, !3125, !3129, !3133, !3137, !3141, !3142, !3148}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3029, file: !95, line: 1915, baseType: !1280, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3029, file: !95, line: 1916, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!651, !611, !651, !160}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3029, file: !95, line: 1917, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1195, !611, !900, !1198, !2072}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3029, file: !95, line: 1918, baseType: !3041, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!1195, !611, !890, !1198, !2072}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3029, file: !95, line: 1919, baseType: !1828, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3029, file: !95, line: 1920, baseType: !1828, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3029, file: !95, line: 1921, baseType: !3047, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!160, !1831, !3050, !38}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !95, line: 53, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3029, file: !95, line: 1923, baseType: !3053, size: 64, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!160, !611, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !95, line: 1858, size: 128, elements: !3058)
!3058 = !{!3059, !3064}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3057, file: !95, line: 1859, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !95, line: 1855, baseType: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!887, !3056, !890, !160, !651, !198, !38}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3057, file: !95, line: 1860, baseType: !651, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3029, file: !95, line: 1924, baseType: !3066, size: 64, offset: 512)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!2092, !611, !2094}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3029, file: !95, line: 1925, baseType: !3070, size: 64, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!1156, !611, !38, !162}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3029, file: !95, line: 1926, baseType: !3070, size: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3029, file: !95, line: 1927, baseType: !3075, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!160, !611, !1537}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3029, file: !95, line: 1928, baseType: !162, size: 64, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3029, file: !95, line: 1929, baseType: !3080, size: 64, offset: 832)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!160, !1041, !611}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3029, file: !95, line: 1930, baseType: !3084, size: 64, offset: 896)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!160, !611, !3087}
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !95, line: 1061, baseType: !161)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3029, file: !95, line: 1931, baseType: !3080, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3029, file: !95, line: 1932, baseType: !3090, size: 64, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!160, !611, !651, !651, !160}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3029, file: !95, line: 1933, baseType: !3094, size: 64, offset: 1088)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!160, !160, !611, !160}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3029, file: !95, line: 1934, baseType: !3098, size: 64, offset: 1152)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!160, !611, !160, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !95, line: 1063, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3029, file: !95, line: 1935, baseType: !608, size: 64, offset: 1216)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3029, file: !95, line: 1936, baseType: !3105, size: 64, offset: 1280)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!160, !160}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3029, file: !95, line: 1937, baseType: !3098, size: 64, offset: 1344)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3029, file: !95, line: 1938, baseType: !3110, size: 64, offset: 1408)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!1195, !3113, !611, !2072, !1198, !38}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !230, line: 59, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3029, file: !95, line: 1939, baseType: !3116, size: 64, offset: 1472)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!1195, !611, !2072, !3113, !1198, !38}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3029, file: !95, line: 1940, baseType: !1934, size: 64, offset: 1536)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3029, file: !95, line: 1941, baseType: !3121, size: 64, offset: 1600)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!160, !611, !160, !3124, !1805}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3029, file: !95, line: 1942, baseType: !3126, size: 64, offset: 1664)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!1156, !611, !160, !651, !651}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3029, file: !95, line: 1944, baseType: !3130, size: 64, offset: 1728)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !2048, !611}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3029, file: !95, line: 1948, baseType: !3134, size: 64, offset: 1792)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!1195, !611, !651, !611, !651, !1198, !38}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3029, file: !95, line: 1950, baseType: !3138, size: 64, offset: 1856)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!651, !611, !651, !611, !651, !651, !38}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3029, file: !95, line: 1953, baseType: !3090, size: 64, offset: 1920)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3029, file: !95, line: 1954, baseType: !3143, size: 64, offset: 1984)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!160, !3146, !38}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !95, line: 1911, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3029, file: !95, line: 1955, baseType: !3149, size: 64, offset: 2048)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!160, !3146, !3050, !38}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3024, file: !95, line: 723, baseType: !2508, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1042, file: !95, line: 725, baseType: !3154, size: 64, offset: 2816)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !95, line: 725, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1042, file: !95, line: 726, baseType: !1398, size: 1536, align: 64, offset: 2880)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1042, file: !95, line: 727, baseType: !304, size: 128, offset: 4416)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !95, line: 728, baseType: !3159, size: 64, offset: 4544)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !95, line: 728, size: 64, elements: !3160)
!3160 = !{!3161, !3162, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3159, file: !95, line: 729, baseType: !3113, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3159, file: !95, line: 730, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !95, line: 730, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3159, file: !95, line: 731, baseType: !900, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3159, file: !95, line: 732, baseType: !38, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1042, file: !95, line: 735, baseType: !240, size: 32, offset: 4608)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1042, file: !95, line: 738, baseType: !240, size: 32, offset: 4640)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1042, file: !95, line: 739, baseType: !2862, size: 64, offset: 4672)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1042, file: !95, line: 750, baseType: !161, size: 64, offset: 4736)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1007, file: !1008, line: 91, baseType: !3172, size: 256, offset: 448)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !2866)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1007, file: !1008, line: 94, baseType: !3174, size: 64, offset: 704)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3175, line: 25, size: 64, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3174, file: !3175, line: 26, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3174, file: !3175, line: 26, size: 64, elements: !3179)
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3178, file: !3175, line: 28, baseType: !199, size: 64, align: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3178, file: !3175, line: 30, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3178, file: !3175, line: 30, size: 64, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3182, file: !3175, line: 31, baseType: !593, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3182, file: !3175, line: 32, baseType: !160, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1007, file: !1008, line: 95, baseType: !2881, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1007, file: !1008, line: 96, baseType: !1247, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1007, file: !1008, line: 97, baseType: !162, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1007, file: !1008, line: 98, baseType: !161, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !1008, line: 100, baseType: !3191, size: 128, offset: 1024)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 100, size: 128, elements: !3192)
!3192 = !{!3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3191, file: !1008, line: 101, baseType: !304, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3191, file: !1008, line: 102, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1007, file: !1008, line: 104, baseType: !304, size: 128, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1007, file: !1008, line: 105, baseType: !304, size: 128, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1007, file: !1008, line: 113, baseType: !3199, size: 128, offset: 1408)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 109, size: 128, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3199, file: !1008, line: 110, baseType: !693, size: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3199, file: !1008, line: 111, baseType: !1017, size: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3199, file: !1008, line: 112, baseType: !619, size: 128, align: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1002, file: !1003, line: 72, baseType: !1247, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1002, file: !1003, line: 73, baseType: !160, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1002, file: !1003, line: 74, baseType: !1081, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !997, file: !998, line: 10, baseType: !1006, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !612, file: !95, line: 1015, baseType: !1041, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !612, file: !95, line: 1016, baseType: !3027, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !612, file: !95, line: 1018, baseType: !198, size: 64, offset: 1472)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !612, file: !95, line: 1020, baseType: !161, size: 64, offset: 1536)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !612, file: !95, line: 1023, baseType: !161, size: 64, offset: 1600)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !612, file: !95, line: 1027, baseType: !3214, size: 64, offset: 1664)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !612, file: !95, line: 1029, baseType: !1397, size: 64, offset: 1728)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !612, file: !95, line: 1030, baseType: !1944, size: 32, offset: 1792)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !612, file: !95, line: 1031, baseType: !1944, size: 32, offset: 1824)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !579, file: !66, line: 756, baseType: !162, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !579, file: !66, line: 757, baseType: !162, size: 64, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !579, file: !66, line: 760, baseType: !162, size: 64, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !579, file: !66, line: 761, baseType: !162, size: 64, offset: 896)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !579, file: !66, line: 763, baseType: !162, size: 64, offset: 960)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !579, file: !66, line: 764, baseType: !3224, size: 64, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1552, line: 299, baseType: !3226)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 299, size: 64, elements: !3227)
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3226, file: !1552, line: 299, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1557, line: 18, baseType: !162)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !579, file: !66, line: 773, baseType: !250, size: 32, offset: 1088)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !579, file: !66, line: 785, baseType: !250, size: 32, offset: 1120)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !579, file: !66, line: 795, baseType: !3233, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !66, line: 726, size: 128, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3234, file: !66, line: 727, baseType: !198, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3234, file: !66, line: 728, baseType: !160, size: 32, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !579, file: !66, line: 801, baseType: !162, size: 64, offset: 1216)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !579, file: !66, line: 804, baseType: !632, size: 64, offset: 1280)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !579, file: !66, line: 806, baseType: !160, size: 32, offset: 1344)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !579, file: !66, line: 808, baseType: !593, size: 32, offset: 1376)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !579, file: !66, line: 823, baseType: !828, size: 320, offset: 1408)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !579, file: !66, line: 825, baseType: !304, size: 128, offset: 1728)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !579, file: !66, line: 845, baseType: !160, size: 32, offset: 1856)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !579, file: !66, line: 849, baseType: !162, size: 64, offset: 1920)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !579, file: !66, line: 850, baseType: !162, size: 64, offset: 1984)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !579, file: !66, line: 852, baseType: !162, size: 64, offset: 2048)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !579, file: !66, line: 853, baseType: !162, size: 64, offset: 2112)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !579, file: !66, line: 854, baseType: !634, size: 64, offset: 2176)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !579, file: !66, line: 855, baseType: !162, size: 64, offset: 2240)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !579, file: !66, line: 856, baseType: !162, size: 64, offset: 2304)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !579, file: !66, line: 857, baseType: !162, size: 64, offset: 2368)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !579, file: !66, line: 858, baseType: !162, size: 64, offset: 2432)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !579, file: !66, line: 865, baseType: !451, size: 32, offset: 2496)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !579, file: !66, line: 867, baseType: !593, size: 32, offset: 2528)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !579, file: !66, line: 869, baseType: !162, size: 64, offset: 2560)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !579, file: !66, line: 869, baseType: !162, size: 64, offset: 2624)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !579, file: !66, line: 869, baseType: !162, size: 64, offset: 2688)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !579, file: !66, line: 869, baseType: !162, size: 64, offset: 2752)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !579, file: !66, line: 870, baseType: !162, size: 64, offset: 2816)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !579, file: !66, line: 870, baseType: !162, size: 64, offset: 2880)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !579, file: !66, line: 870, baseType: !162, size: 64, offset: 2944)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !579, file: !66, line: 871, baseType: !162, size: 64, offset: 3008)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !579, file: !66, line: 871, baseType: !162, size: 64, offset: 3072)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !579, file: !66, line: 871, baseType: !162, size: 64, offset: 3136)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !579, file: !66, line: 871, baseType: !162, size: 64, offset: 3200)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !579, file: !66, line: 873, baseType: !3268, size: 3328, offset: 3264)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 3328, elements: !3269)
!3269 = !{!3270}
!3270 = !DISubrange(count: 52)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !579, file: !66, line: 875, baseType: !3272, size: 1280, offset: 6592)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 1280, elements: !698)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !579, file: !66, line: 877, baseType: !3274, size: 64, offset: 7872)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !66, line: 877, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !579, file: !66, line: 880, baseType: !3277, size: 1088, offset: 7936)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3278, line: 72, baseType: !3279)
!3278 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3278, line: 23, size: 1088, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3288, !3289, !3290, !3291, !3316, !3317, !3318}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3279, file: !3278, line: 28, baseType: !198, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3279, file: !3278, line: 38, baseType: !634, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3279, file: !3278, line: 40, baseType: !162, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3279, file: !3278, line: 43, baseType: !828, size: 320, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3279, file: !3278, line: 44, baseType: !3286, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3278, line: 44, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3279, file: !3278, line: 48, baseType: !162, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3279, file: !3278, line: 59, baseType: !639, size: 256, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3279, file: !3278, line: 60, baseType: !161, size: 64, offset: 896)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3279, file: !3278, line: 61, baseType: !3292, size: 64, offset: 960)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3295, line: 13, size: 1216, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3294, file: !3295, line: 14, baseType: !161, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3294, file: !3295, line: 15, baseType: !162, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3294, file: !3295, line: 17, baseType: !162, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3294, file: !3295, line: 17, baseType: !162, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3294, file: !3295, line: 18, baseType: !162, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3294, file: !3295, line: 18, baseType: !162, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3294, file: !3295, line: 19, baseType: !1983, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3294, file: !3295, line: 21, baseType: !1156, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3294, file: !3295, line: 23, baseType: !1156, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3294, file: !3295, line: 24, baseType: !1156, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3294, file: !3295, line: 25, baseType: !1156, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3294, file: !3295, line: 26, baseType: !1156, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3294, file: !3295, line: 27, baseType: !1156, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3294, file: !3295, line: 28, baseType: !1156, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3294, file: !3295, line: 29, baseType: !1156, size: 64, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3294, file: !3295, line: 30, baseType: !1156, size: 64, offset: 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3294, file: !3295, line: 31, baseType: !1156, size: 64, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3294, file: !3295, line: 32, baseType: !1156, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3294, file: !3295, line: 33, baseType: !1156, size: 64, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3279, file: !3278, line: 63, baseType: !250, size: 32, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3279, file: !3278, line: 69, baseType: !194, size: 16, offset: 1056)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3279, file: !3278, line: 70, baseType: !2272, size: 16, offset: 1072)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !66, line: 882, baseType: !162, size: 64, offset: 9024)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !579, file: !66, line: 885, baseType: !593, size: 32, offset: 9088)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !579, file: !66, line: 886, baseType: !3322, size: 64, offset: 9152)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !66, line: 732, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !579, file: !66, line: 901, baseType: !746, size: 64, offset: 9216)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !579, file: !66, line: 904, baseType: !611, size: 64, offset: 9280)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !579, file: !66, line: 906, baseType: !3327, size: 64, offset: 9344)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !66, line: 906, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !579, file: !66, line: 930, baseType: !250, size: 32, offset: 9408)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !579, file: !66, line: 933, baseType: !250, size: 32, offset: 9440)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !579, file: !66, line: 935, baseType: !3332, size: 64, offset: 9472)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !112, line: 103, size: 64, elements: !3333)
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3332, file: !112, line: 104, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !112, line: 101, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !579, file: !66, line: 940, baseType: !632, size: 64, offset: 9536)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !579, file: !66, line: 942, baseType: !2379, size: 256, offset: 9600)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !576, file: !66, line: 986, baseType: !3340, offset: 10240)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !765)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !229, file: !230, line: 882, baseType: !575, size: 64, offset: 9792)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !229, file: !230, line: 884, baseType: !160, size: 32, offset: 9856)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !229, file: !230, line: 885, baseType: !160, size: 32, offset: 9888)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !229, file: !230, line: 886, baseType: !160, size: 32, offset: 9920)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !229, file: !230, line: 888, baseType: !160, size: 32, offset: 9952)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !229, file: !230, line: 890, baseType: !162, size: 64, offset: 9984)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !229, file: !230, line: 893, baseType: !38, size: 32, offset: 10048)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !229, file: !230, line: 896, baseType: !38, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !229, file: !230, line: 897, baseType: !38, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !229, file: !230, line: 898, baseType: !38, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !229, file: !230, line: 899, baseType: !38, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !229, file: !230, line: 919, baseType: !38, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !229, file: !230, line: 922, baseType: !38, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !229, file: !230, line: 923, baseType: !38, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !229, file: !230, line: 925, baseType: !38, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !229, file: !230, line: 939, baseType: !38, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !229, file: !230, line: 941, baseType: !38, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !229, file: !230, line: 944, baseType: !38, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !229, file: !230, line: 956, baseType: !38, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !229, file: !230, line: 962, baseType: !38, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !229, file: !230, line: 966, baseType: !38, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !229, file: !230, line: 969, baseType: !162, size: 64, offset: 10176)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !229, file: !230, line: 971, baseType: !3364, size: 448, offset: 10240)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !106, line: 25, size: 448, elements: !3365)
!3365 = !{!3366, !3367, !3372}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3364, file: !106, line: 26, baseType: !162, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3364, file: !106, line: 27, baseType: !3368, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!1156, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, scope: !3364, file: !106, line: 28, baseType: !3373, size: 320, offset: 128)
!3373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3364, file: !106, line: 28, size: 320, elements: !3374)
!3374 = !{!3375, !3385, !3410}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3373, file: !106, line: 37, baseType: !3376, size: 320)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3373, file: !106, line: 30, size: 320, elements: !3377)
!3377 = !{!3378, !3380, !3381, !3382, !3383, !3384}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3376, file: !106, line: 31, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3376, file: !106, line: 32, baseType: !239, size: 32, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3376, file: !106, line: 33, baseType: !239, size: 32, offset: 96)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3376, file: !106, line: 34, baseType: !239, size: 32, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3376, file: !106, line: 35, baseType: !198, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3376, file: !106, line: 36, baseType: !3379, size: 64, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3373, file: !106, line: 47, baseType: !3386, size: 192)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3373, file: !106, line: 39, size: 192, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3409}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3386, file: !106, line: 40, baseType: !442, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3386, file: !106, line: 41, baseType: !105, size: 32, offset: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !106, line: 42, baseType: !3391, size: 64, offset: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !106, line: 42, size: 64, elements: !3392)
!3392 = !{!3393, !3401}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3391, file: !106, line: 43, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3396, line: 7, size: 128, elements: !3397)
!3396 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3397 = !{!3398, !3400}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3395, file: !3396, line: 8, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !444, line: 93, baseType: !317)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3395, file: !3396, line: 9, baseType: !317, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3391, file: !106, line: 44, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3404, line: 7, size: 64, elements: !3405)
!3404 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3405 = !{!3406, !3408}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3403, file: !3404, line: 8, baseType: !3407, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3404, line: 5, baseType: !820)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3403, file: !3404, line: 9, baseType: !820, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3386, file: !106, line: 46, baseType: !198, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3373, file: !106, line: 55, baseType: !3411, size: 256)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3373, file: !106, line: 49, size: 256, elements: !3412)
!3412 = !{!3413, !3416, !3417, !3418, !3419}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3411, file: !106, line: 50, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !106, line: 14, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3411, file: !106, line: 51, baseType: !160, size: 32, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3411, file: !106, line: 52, baseType: !160, size: 32, offset: 96)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3411, file: !106, line: 53, baseType: !162, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3411, file: !106, line: 54, baseType: !162, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !229, file: !230, line: 973, baseType: !3421, size: 32, offset: 10688)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !251, line: 27, baseType: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !444, line: 28, baseType: !160)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !229, file: !230, line: 974, baseType: !3421, size: 32, offset: 10720)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !229, file: !230, line: 978, baseType: !162, size: 64, offset: 10752)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !229, file: !230, line: 987, baseType: !228, size: 64, offset: 10816)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !230, line: 990, baseType: !228, size: 64, offset: 10880)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !229, file: !230, line: 995, baseType: !304, size: 128, offset: 10944)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !229, file: !230, line: 996, baseType: !304, size: 128, offset: 11072)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !229, file: !230, line: 997, baseType: !228, size: 64, offset: 11200)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !229, file: !230, line: 1005, baseType: !304, size: 128, offset: 11264)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !229, file: !230, line: 1006, baseType: !304, size: 128, offset: 11392)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !229, file: !230, line: 1009, baseType: !681, size: 64, offset: 11520)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !229, file: !230, line: 1010, baseType: !3434, size: 512, offset: 11584)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, elements: !698)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !229, file: !230, line: 1011, baseType: !304, size: 128, offset: 12096)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !229, file: !230, line: 1012, baseType: !304, size: 128, offset: 12224)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !229, file: !230, line: 1014, baseType: !2129, size: 64, offset: 12352)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !229, file: !230, line: 1017, baseType: !159, size: 64, offset: 12416)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !229, file: !230, line: 1020, baseType: !159, size: 64, offset: 12480)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !229, file: !230, line: 1023, baseType: !161, size: 64, offset: 12544)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !229, file: !230, line: 1025, baseType: !198, size: 64, offset: 12608)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !229, file: !230, line: 1026, baseType: !198, size: 64, offset: 12672)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !229, file: !230, line: 1031, baseType: !198, size: 64, offset: 12736)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !229, file: !230, line: 1032, baseType: !3445, size: 192, offset: 12800)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !230, line: 324, size: 192, elements: !3446)
!3446 = !{!3447, !3448, !3449}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3445, file: !230, line: 326, baseType: !198, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3445, file: !230, line: 327, baseType: !198, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3445, file: !230, line: 328, baseType: !397, size: 32, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !229, file: !230, line: 1041, baseType: !162, size: 64, offset: 12992)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !229, file: !230, line: 1042, baseType: !162, size: 64, offset: 13056)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !229, file: !230, line: 1045, baseType: !198, size: 64, offset: 13120)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !229, file: !230, line: 1048, baseType: !198, size: 64, offset: 13184)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !229, file: !230, line: 1051, baseType: !162, size: 64, offset: 13248)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !229, file: !230, line: 1052, baseType: !162, size: 64, offset: 13312)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !229, file: !230, line: 1055, baseType: !3457, size: 640, offset: 13376)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3458, line: 132, size: 640, elements: !3459)
!3458 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3459 = !{!3460, !3466, !3467}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3457, file: !3458, line: 133, baseType: !3461, size: 576)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3462, size: 576, elements: !677)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3458, line: 117, size: 192, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3462, file: !3458, line: 118, baseType: !198, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3462, file: !3458, line: 119, baseType: !457, size: 128, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3457, file: !3458, line: 134, baseType: !38, size: 32, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3457, file: !3458, line: 135, baseType: !38, size: 32, offset: 608)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !229, file: !230, line: 1058, baseType: !3469, size: 448, offset: 14016)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3458, line: 144, size: 448, elements: !3470)
!3470 = !{!3471, !3472, !3473}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3469, file: !3458, line: 145, baseType: !619, size: 128, align: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3469, file: !3458, line: 146, baseType: !639, size: 256, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3469, file: !3458, line: 147, baseType: !38, size: 32, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !229, file: !230, line: 1064, baseType: !779, size: 64, offset: 14464)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !229, file: !230, line: 1067, baseType: !779, size: 64, offset: 14528)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !229, file: !230, line: 1070, baseType: !779, size: 64, offset: 14592)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !229, file: !230, line: 1074, baseType: !812, size: 64, offset: 14656)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !229, file: !230, line: 1084, baseType: !3479, size: 128, offset: 14720)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2875)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !229, file: !230, line: 1086, baseType: !3481, size: 64, offset: 14848)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !230, line: 55, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !229, file: !230, line: 1089, baseType: !3484, size: 64, offset: 14912)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3485, line: 12, size: 64, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3486 = !{!3487}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3484, file: !3485, line: 13, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3485, line: 8, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !229, file: !230, line: 1090, baseType: !3491, size: 128, offset: 14976)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3492, line: 13, size: 128, elements: !3493)
!3492 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3491, file: !3492, line: 14, baseType: !304, size: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !229, file: !230, line: 1097, baseType: !3496, size: 64, offset: 15104)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !230, line: 50, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !229, file: !230, line: 1100, baseType: !3499, size: 64, offset: 15168)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !230, line: 1100, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !229, file: !230, line: 1103, baseType: !3502, size: 64, offset: 15232)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !230, line: 53, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !229, file: !230, line: 1107, baseType: !3505, size: 64, offset: 15296)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3507, line: 31, size: 576, elements: !3508)
!3507 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3508 = !{!3509, !3510, !3531, !3534, !3537, !3538, !3541, !3544, !3545}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3506, file: !3507, line: 32, baseType: !245, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3506, file: !3507, line: 33, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3513, line: 24, size: 3456, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3514 = !{!3515, !3528, !3529, !3530}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3512, file: !3513, line: 25, baseType: !3516, size: 3120)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3517, line: 25, size: 3120, elements: !3518)
!3517 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3518 = !{!3519, !3523, !3524, !3525, !3526, !3527}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3516, file: !3517, line: 26, baseType: !3520, size: 520)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !3521)
!3521 = !{!3522}
!3522 = !DISubrange(count: 65)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3516, file: !3517, line: 27, baseType: !3520, size: 520, offset: 520)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3516, file: !3517, line: 28, baseType: !3520, size: 520, offset: 1040)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3516, file: !3517, line: 29, baseType: !3520, size: 520, offset: 1560)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3516, file: !3517, line: 30, baseType: !3520, size: 520, offset: 2080)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3516, file: !3517, line: 31, baseType: !3520, size: 520, offset: 2600)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3512, file: !3513, line: 26, baseType: !746, size: 64, offset: 3136)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3512, file: !3513, line: 27, baseType: !749, size: 64, offset: 3200)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3512, file: !3513, line: 28, baseType: !754, size: 192, offset: 3264)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3506, file: !3507, line: 34, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3507, line: 10, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3506, file: !3507, line: 35, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3507, line: 8, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3506, file: !3507, line: 36, baseType: !715, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3506, file: !3507, line: 37, baseType: !3539, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !814, line: 34, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3506, file: !3507, line: 38, baseType: !3542, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3507, line: 38, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3506, file: !3507, line: 39, baseType: !3542, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3506, file: !3507, line: 40, baseType: !3546, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3507, line: 12, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !229, file: !230, line: 1110, baseType: !3549, size: 64, offset: 15360)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3551, line: 93, size: 8768, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3600, !3609, !3610, !3612, !3613, !3614, !3617, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3655, !3656, !3663, !3673, !3676, !3677, !3680, !3681, !3682, !3683, !3684, !3685}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3550, file: !3551, line: 94, baseType: !245, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3550, file: !3551, line: 95, baseType: !250, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3550, file: !3551, line: 96, baseType: !160, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3550, file: !3551, line: 97, baseType: !160, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3550, file: !3551, line: 98, baseType: !304, size: 128, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3550, file: !3551, line: 100, baseType: !702, size: 192, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3550, file: !3551, line: 103, baseType: !228, size: 64, offset: 448)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3550, file: !3551, line: 106, baseType: !3561, size: 192, offset: 512)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !751, line: 32, size: 192, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3561, file: !751, line: 33, baseType: !304, size: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3561, file: !751, line: 34, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3566, line: 25, baseType: !3567)
!3566 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3566, line: 23, size: 64, elements: !3568)
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3567, file: !3566, line: 24, baseType: !528, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3550, file: !3551, line: 109, baseType: !689, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3550, file: !3551, line: 112, baseType: !160, size: 32, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3550, file: !3551, line: 114, baseType: !160, size: 32, offset: 800)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3550, file: !3551, line: 115, baseType: !228, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3550, file: !3551, line: 118, baseType: !160, size: 32, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3551, line: 119, baseType: !38, size: 32, offset: 928)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3550, file: !3551, line: 121, baseType: !3577, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3551, line: 80, size: 448, elements: !3579)
!3579 = !{!3580, !3581, !3587}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3578, file: !3551, line: 81, baseType: !250, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3578, file: !3551, line: 82, baseType: !3582, size: 128, offset: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3551, line: 75, size: 128, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3582, file: !3551, line: 76, baseType: !228, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3582, file: !3551, line: 77, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3578, file: !3551, line: 83, baseType: !1502, size: 256, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3550, file: !3551, line: 132, baseType: !38, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3550, file: !3551, line: 133, baseType: !38, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3550, file: !3551, line: 138, baseType: !38, size: 32, offset: 1056)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3550, file: !3551, line: 139, baseType: !304, size: 128, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3550, file: !3551, line: 142, baseType: !372, size: 512, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3550, file: !3551, line: 143, baseType: !380, size: 64, offset: 1728)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3550, file: !3551, line: 150, baseType: !3595, size: 256, offset: 1792)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3596, size: 256, elements: !2256)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3551, line: 38, size: 128, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3596, file: !3551, line: 39, baseType: !198, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3596, file: !3551, line: 40, baseType: !198, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3550, file: !3551, line: 156, baseType: !3601, size: 192, offset: 2048)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3551, line: 66, size: 192, elements: !3602)
!3602 = !{!3603}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3601, file: !3551, line: 67, baseType: !3604, size: 192)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3551, line: 47, size: 192, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3604, file: !3551, line: 48, baseType: !634, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3604, file: !3551, line: 49, baseType: !634, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3604, file: !3551, line: 50, baseType: !634, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3550, file: !3551, line: 160, baseType: !3457, size: 640, offset: 2240)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3550, file: !3551, line: 163, baseType: !3611, size: 256, offset: 2880)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !698)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3550, file: !3551, line: 169, baseType: !681, size: 64, offset: 3136)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3550, file: !3551, line: 172, baseType: !160, size: 32, offset: 3200)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3550, file: !3551, line: 174, baseType: !3615, size: 64, offset: 3264)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3551, line: 174, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3550, file: !3551, line: 185, baseType: !3618, size: 64, offset: 3328)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !447, line: 860, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 853, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3619, file: !447, line: 858, baseType: !1012, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !447, line: 859, baseType: !593, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3550, file: !3551, line: 186, baseType: !198, size: 64, offset: 3392)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3550, file: !3551, line: 186, baseType: !198, size: 64, offset: 3456)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3550, file: !3551, line: 186, baseType: !198, size: 64, offset: 3520)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3550, file: !3551, line: 186, baseType: !198, size: 64, offset: 3584)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3550, file: !3551, line: 187, baseType: !198, size: 64, offset: 3648)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3550, file: !3551, line: 188, baseType: !198, size: 64, offset: 3712)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3550, file: !3551, line: 189, baseType: !3445, size: 192, offset: 3776)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3550, file: !3551, line: 190, baseType: !162, size: 64, offset: 3968)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3550, file: !3551, line: 190, baseType: !162, size: 64, offset: 4032)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3550, file: !3551, line: 190, baseType: !162, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3550, file: !3551, line: 190, baseType: !162, size: 64, offset: 4160)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3550, file: !3551, line: 191, baseType: !162, size: 64, offset: 4224)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3550, file: !3551, line: 191, baseType: !162, size: 64, offset: 4288)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3550, file: !3551, line: 191, baseType: !162, size: 64, offset: 4352)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3550, file: !3551, line: 191, baseType: !162, size: 64, offset: 4416)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3550, file: !3551, line: 192, baseType: !162, size: 64, offset: 4480)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3550, file: !3551, line: 192, baseType: !162, size: 64, offset: 4544)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3550, file: !3551, line: 192, baseType: !162, size: 64, offset: 4608)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3550, file: !3551, line: 192, baseType: !162, size: 64, offset: 4672)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3550, file: !3551, line: 193, baseType: !162, size: 64, offset: 4736)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3550, file: !3551, line: 193, baseType: !162, size: 64, offset: 4800)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3550, file: !3551, line: 194, baseType: !3645, size: 448, offset: 4864)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3646, line: 12, size: 448, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3645, file: !3646, line: 15, baseType: !198, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3645, file: !3646, line: 17, baseType: !198, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3645, file: !3646, line: 19, baseType: !198, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3645, file: !3646, line: 21, baseType: !198, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3645, file: !3646, line: 29, baseType: !198, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3645, file: !3646, line: 35, baseType: !198, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3645, file: !3646, line: 44, baseType: !198, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3550, file: !3551, line: 202, baseType: !200, size: 64, offset: 5312)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3550, file: !3551, line: 213, baseType: !3657, size: 2048, offset: 5376)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 2048, elements: !2875)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3659, line: 43, size: 128, elements: !3660)
!3659 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3658, file: !3659, line: 44, baseType: !1200, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3658, file: !3659, line: 45, baseType: !1200, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3550, file: !3551, line: 216, baseType: !3664, size: 448, offset: 7424)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3551, line: 30, size: 448, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3664, file: !3551, line: 31, baseType: !160, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3664, file: !3551, line: 32, baseType: !1156, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3664, file: !3551, line: 33, baseType: !162, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3664, file: !3551, line: 34, baseType: !198, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3664, file: !3551, line: 34, baseType: !198, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3664, file: !3551, line: 35, baseType: !162, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3664, file: !3551, line: 35, baseType: !162, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3550, file: !3551, line: 219, baseType: !3674, size: 64, offset: 7872)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3551, line: 219, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3550, file: !3551, line: 222, baseType: !38, size: 32, offset: 7936)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3550, file: !3551, line: 223, baseType: !3678, size: 64, offset: 8000)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3551, line: 223, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3550, file: !3551, line: 230, baseType: !887, size: 8, offset: 8064)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3550, file: !3551, line: 231, baseType: !856, size: 16, offset: 8080)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3550, file: !3551, line: 232, baseType: !856, size: 16, offset: 8096)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3550, file: !3551, line: 234, baseType: !575, size: 64, offset: 8128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3550, file: !3551, line: 237, baseType: !639, size: 256, offset: 8192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3550, file: !3551, line: 243, baseType: !828, size: 320, offset: 8448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !229, file: !230, line: 1111, baseType: !3687, size: 64, offset: 15424)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3551, line: 20, size: 16640, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3688, file: !3551, line: 21, baseType: !593, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3688, file: !3551, line: 22, baseType: !245, size: 32, offset: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3688, file: !3551, line: 23, baseType: !702, size: 192, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3688, file: !3551, line: 24, baseType: !3694, size: 16384, offset: 256)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3695, size: 16384, elements: !1336)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !751, line: 51, size: 256, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3695, file: !751, line: 52, baseType: !3698, size: 256)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !751, line: 37, size: 256, elements: !3699)
!3699 = !{!3700, !3707, !3708, !3712}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3698, file: !751, line: 39, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3702, line: 83, baseType: !3703)
!3702 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3702, line: 82, baseType: !3705)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !160}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3698, file: !751, line: 40, baseType: !162, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3698, file: !751, line: 46, baseType: !3709, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3702, line: 86, baseType: !3710)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3702, line: 85, baseType: !2483)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3698, file: !751, line: 48, baseType: !3565, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !229, file: !230, line: 1112, baseType: !3565, size: 64, offset: 15488)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !229, file: !230, line: 1113, baseType: !3565, size: 64, offset: 15552)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !229, file: !230, line: 1115, baseType: !3565, size: 64, offset: 15616)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !229, file: !230, line: 1116, baseType: !3561, size: 192, offset: 15680)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !229, file: !230, line: 1117, baseType: !162, size: 64, offset: 15872)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !229, file: !230, line: 1118, baseType: !1198, size: 64, offset: 15936)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !229, file: !230, line: 1119, baseType: !38, size: 32, offset: 16000)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !229, file: !230, line: 1121, baseType: !622, size: 64, offset: 16064)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !229, file: !230, line: 1125, baseType: !3722, size: 64, offset: 16128)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !230, line: 43, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !229, file: !230, line: 1127, baseType: !769, size: 32, offset: 16192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !229, file: !230, line: 1128, baseType: !38, size: 32, offset: 16224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !229, file: !230, line: 1130, baseType: !3727, size: 128, offset: 16256)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3728, line: 37, size: 128, elements: !3729)
!3728 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3727, file: !3728, line: 38, baseType: !160, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3727, file: !3728, line: 39, baseType: !250, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3727, file: !3728, line: 40, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3728, line: 24, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !229, file: !230, line: 1131, baseType: !3736, size: 256, offset: 16384)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3737, line: 12, size: 256, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3736, file: !3737, line: 13, baseType: !900, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3736, file: !3737, line: 14, baseType: !162, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3736, file: !3737, line: 15, baseType: !162, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3736, file: !3737, line: 16, baseType: !887, size: 8, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !229, file: !230, line: 1134, baseType: !198, size: 64, offset: 16640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !229, file: !230, line: 1135, baseType: !198, size: 64, offset: 16704)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !229, file: !230, line: 1138, baseType: !593, size: 32, offset: 16768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !229, file: !230, line: 1141, baseType: !397, size: 32, offset: 16800)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !229, file: !230, line: 1143, baseType: !3748, size: 64, offset: 16832)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !230, line: 735, size: 64, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3748, file: !230, line: 736, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !229, file: !230, line: 1147, baseType: !460, size: 128, offset: 16896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !229, file: !230, line: 1149, baseType: !228, size: 64, offset: 17024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !229, file: !230, line: 1151, baseType: !3755, size: 64, offset: 17088)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !230, line: 1151, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !229, file: !230, line: 1188, baseType: !161, size: 64, offset: 17152)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !229, file: !230, line: 1191, baseType: !3759, size: 64, offset: 17216)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !230, line: 44, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !229, file: !230, line: 1194, baseType: !3762, size: 64, offset: 17280)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !230, line: 45, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !229, file: !230, line: 1197, baseType: !3765, size: 64, offset: 17344)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !230, line: 61, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !229, file: !230, line: 1199, baseType: !3768, size: 64, offset: 17408)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3770, line: 99, size: 128, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3771 = !{!3772, !3773, !3774}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3769, file: !3770, line: 100, baseType: !632, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3769, file: !3770, line: 101, baseType: !250, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3769, file: !3770, line: 103, baseType: !196, size: 16, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !229, file: !230, line: 1202, baseType: !3776, size: 64, offset: 17472)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !230, line: 48, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !229, file: !230, line: 1205, baseType: !162, size: 64, offset: 17536)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !229, file: !230, line: 1206, baseType: !3780, size: 64, offset: 17600)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !751, line: 14, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !751, line: 12, size: 384, elements: !3783)
!3783 = !{!3784}
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !751, line: 13, baseType: !3785, size: 384)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3782, file: !751, line: 13, size: 384, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3785, file: !751, line: 13, baseType: !160, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3785, file: !751, line: 13, baseType: !160, size: 32, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3785, file: !751, line: 13, baseType: !160, size: 32, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3785, file: !751, line: 13, baseType: !3791, size: 256, offset: 128)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3792, line: 37, size: 256, elements: !3793)
!3792 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3793 = !{!3794, !3799, !3812, !3818, !3827, !3854, !3859}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3791, file: !3792, line: 42, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 39, size: 64, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3795, file: !3792, line: 40, baseType: !3422, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3795, file: !3792, line: 41, baseType: !775, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3791, file: !3792, line: 50, baseType: !3800, size: 192)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 45, size: 192, elements: !3801)
!3801 = !{!3802, !3804, !3805, !3811}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3800, file: !3792, line: 46, baseType: !3803, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !444, line: 95, baseType: !160)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3800, file: !3792, line: 47, baseType: !160, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3800, file: !3792, line: 48, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3792, line: 11, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3792, line: 8, size: 64, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3807, file: !3792, line: 9, baseType: !160, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3807, file: !3792, line: 10, baseType: !161, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3800, file: !3792, line: 49, baseType: !160, size: 32, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3791, file: !3792, line: 57, baseType: !3813, size: 128)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 53, size: 128, elements: !3814)
!3814 = !{!3815, !3816, !3817}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3813, file: !3792, line: 54, baseType: !3422, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3813, file: !3792, line: 55, baseType: !775, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3813, file: !3792, line: 56, baseType: !3806, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3791, file: !3792, line: 66, baseType: !3819, size: 256)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 60, size: 256, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3826}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3819, file: !3792, line: 61, baseType: !3422, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3819, file: !3792, line: 62, baseType: !775, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3819, file: !3792, line: 63, baseType: !160, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3819, file: !3792, line: 64, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !444, line: 94, baseType: !1197)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3819, file: !3792, line: 65, baseType: !3825, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3791, file: !3792, line: 105, baseType: !3828, size: 256)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 69, size: 256, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3828, file: !3792, line: 70, baseType: !161, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !3792, line: 79, baseType: !3832, size: 192, offset: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3828, file: !3792, line: 79, size: 192, elements: !3833)
!3833 = !{!3834, !3835, !3836, !3843, !3848}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3832, file: !3792, line: 81, baseType: !160, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3832, file: !3792, line: 86, baseType: !856, size: 16)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3832, file: !3792, line: 92, baseType: !3837, size: 192)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 88, size: 192, elements: !3838)
!3838 = !{!3839, !3841, !3842}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3837, file: !3792, line: 89, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !438)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3837, file: !3792, line: 90, baseType: !161, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3837, file: !3792, line: 91, baseType: !161, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3832, file: !3792, line: 97, baseType: !3844, size: 96)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 94, size: 96, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3844, file: !3792, line: 95, baseType: !3840, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3844, file: !3792, line: 96, baseType: !240, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3832, file: !3792, line: 103, baseType: !3849, size: 128)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !3792, line: 99, size: 128, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3849, file: !3792, line: 100, baseType: !162, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3849, file: !3792, line: 101, baseType: !240, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !3792, line: 102, baseType: !240, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3791, file: !3792, line: 111, baseType: !3855, size: 128)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 108, size: 128, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3855, file: !3792, line: 109, baseType: !1156, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3855, file: !3792, line: 110, baseType: !160, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3791, file: !3792, line: 118, baseType: !3860, size: 128)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3791, file: !3792, line: 114, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3860, file: !3792, line: 115, baseType: !161, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3860, file: !3792, line: 116, baseType: !160, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3860, file: !3792, line: 117, baseType: !38, size: 32, offset: 96)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !229, file: !230, line: 1208, baseType: !3645, size: 448, offset: 17664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !229, file: !230, line: 1215, baseType: !198, size: 64, offset: 18112)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !229, file: !230, line: 1217, baseType: !198, size: 64, offset: 18176)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !229, file: !230, line: 1219, baseType: !198, size: 64, offset: 18240)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !229, file: !230, line: 1223, baseType: !3870, size: 64, offset: 18304)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3871, line: 99, baseType: !3872)
!3871 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3871, line: 99, size: 64, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3872, file: !3871, line: 99, baseType: !528, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !229, file: !230, line: 1225, baseType: !1012, size: 32, offset: 18368)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !229, file: !230, line: 1226, baseType: !160, size: 32, offset: 18400)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !229, file: !230, line: 1227, baseType: !160, size: 32, offset: 18432)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !229, file: !230, line: 1231, baseType: !3879, size: 64, offset: 18496)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !230, line: 1231, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !229, file: !230, line: 1233, baseType: !304, size: 128, offset: 18560)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !229, file: !230, line: 1240, baseType: !3883, size: 64, offset: 18688)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !230, line: 62, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !229, file: !230, line: 1242, baseType: !3886, size: 64, offset: 18752)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3888, line: 392, size: 96, elements: !3889)
!3888 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3889 = !{!3890, !3896, !3898}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3887, file: !3888, line: 393, baseType: !3891, size: 32)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3888, line: 388, size: 32, elements: !3892)
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3891, file: !3888, line: 389, baseType: !3894, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3895, line: 46, baseType: !239)
!3895 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3887, file: !3888, line: 394, baseType: !3897, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3895, line: 42, baseType: !820)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3887, file: !3888, line: 395, baseType: !3894, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !229, file: !230, line: 1244, baseType: !304, size: 128, offset: 18816)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !229, file: !230, line: 1245, baseType: !3901, size: 64, offset: 18944)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !230, line: 51, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !229, file: !230, line: 1246, baseType: !639, size: 256, offset: 19008)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !229, file: !230, line: 1247, baseType: !38, size: 32, offset: 19264)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !229, file: !230, line: 1250, baseType: !3906, size: 64, offset: 19328)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !230, line: 57, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !229, file: !230, line: 1251, baseType: !639, size: 256, offset: 19392)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !229, file: !230, line: 1252, baseType: !304, size: 128, offset: 19648)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !229, file: !230, line: 1259, baseType: !1630, size: 64, offset: 19776)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !229, file: !230, line: 1260, baseType: !856, size: 16, offset: 19840)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !229, file: !230, line: 1261, baseType: !856, size: 16, offset: 19856)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !229, file: !230, line: 1314, baseType: !3914, size: 64, offset: 19904)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3916, line: 62, size: 256, align: 256, elements: !3917)
!3916 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3915, file: !3916, line: 75, baseType: !240, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3915, file: !3916, line: 90, baseType: !240, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3915, file: !3916, line: 112, baseType: !199, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3915, file: !3916, line: 132, baseType: !240, size: 32, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3915, file: !3916, line: 140, baseType: !240, size: 32, offset: 160)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3915, file: !3916, line: 149, baseType: !240, size: 32, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3915, file: !3916, line: 154, baseType: !3925, offset: 224)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !765)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !229, file: !230, line: 1315, baseType: !239, size: 32, offset: 19968)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !229, file: !230, line: 1316, baseType: !239, size: 32, offset: 20000)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !229, file: !230, line: 1321, baseType: !162, size: 64, offset: 20032)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !229, file: !230, line: 1325, baseType: !160, size: 32, offset: 20096)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !229, file: !230, line: 1326, baseType: !160, size: 32, offset: 20128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !229, file: !230, line: 1327, baseType: !160, size: 32, offset: 20160)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !229, file: !230, line: 1328, baseType: !160, size: 32, offset: 20192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !229, file: !230, line: 1329, baseType: !619, size: 128, align: 64, offset: 20224)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !229, file: !230, line: 1332, baseType: !3935, size: 128, offset: 20352)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3936, line: 51, size: 128, elements: !3937)
!3936 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3937 = !{!3938, !3943, !3944}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3935, file: !3936, line: 60, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3940, line: 7, size: 64, elements: !3941)
!3940 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3939, file: !3940, line: 12, baseType: !525, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3935, file: !3936, line: 63, baseType: !887, size: 8, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3935, file: !3936, line: 70, baseType: !887, size: 8, offset: 72)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !229, file: !230, line: 1335, baseType: !3113, size: 64, offset: 20480)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !229, file: !230, line: 1337, baseType: !3947, size: 128, offset: 20544)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3936, line: 39, size: 128, elements: !3948)
!3948 = !{!3949, !3950, !3951}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3947, file: !3936, line: 40, baseType: !1417, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3947, file: !3936, line: 42, baseType: !240, size: 32, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3947, file: !3936, line: 43, baseType: !240, size: 32, offset: 96)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !229, file: !230, line: 1340, baseType: !3953, size: 64, offset: 20672)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !230, line: 69, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !229, file: !230, line: 1351, baseType: !160, size: 32, offset: 20736)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !229, file: !230, line: 1352, baseType: !160, size: 32, offset: 20768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !229, file: !230, line: 1354, baseType: !162, size: 64, offset: 20800)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !229, file: !230, line: 1364, baseType: !198, size: 64, offset: 20864)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !229, file: !230, line: 1365, baseType: !198, size: 64, offset: 20928)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !229, file: !230, line: 1412, baseType: !162, size: 64, offset: 20992)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !229, file: !230, line: 1453, baseType: !3962, size: 64, offset: 21056)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !230, line: 1453, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !229, file: !230, line: 1457, baseType: !3965, size: 64, offset: 21120)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !112, line: 61, size: 576, elements: !3967)
!3967 = !{!3968, !3969, !3988, !3991, !3992, !4025, !4035}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3966, file: !112, line: 62, baseType: !111, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3966, file: !112, line: 64, baseType: !3970, size: 192, offset: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3966, file: !112, line: 64, size: 192, elements: !3971)
!3971 = !{!3972, !3983}
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !112, line: 65, baseType: !3973, size: 192)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !112, line: 65, size: 192, elements: !3974)
!3974 = !{!3975, !3982}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3973, file: !112, line: 66, baseType: !3976, size: 128)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3977, line: 50, size: 128, elements: !3978)
!3977 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3978 = !{!3979, !3980, !3981}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3976, file: !3977, line: 52, baseType: !162, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3976, file: !3977, line: 54, baseType: !38, size: 32, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3976, file: !3977, line: 55, baseType: !38, size: 32, offset: 96)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3973, file: !112, line: 67, baseType: !162, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !112, line: 70, baseType: !3984, size: 192)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !112, line: 70, size: 192, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3984, file: !112, line: 71, baseType: !619, size: 128, align: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3984, file: !112, line: 72, baseType: !162, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3966, file: !112, line: 76, baseType: !3989, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !112, line: 76, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3966, file: !112, line: 77, baseType: !162, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3966, file: !112, line: 79, baseType: !3993, size: 64, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3977, line: 25, size: 256, elements: !3995)
!3995 = !{!3996, !4002, !4006}
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3977, line: 26, baseType: !3997, size: 128)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3994, file: !3977, line: 26, size: 128, elements: !3998)
!3998 = !{!3999, !4001}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3997, file: !3977, line: 27, baseType: !4000, size: 128)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !2875)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3997, file: !3977, line: 28, baseType: !4000, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3994, file: !3977, line: 31, baseType: !4003, size: 64, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3977, line: 23, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3977, line: 33, baseType: !4007, size: 64, offset: 192)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3994, file: !3977, line: 33, size: 64, elements: !4008)
!4008 = !{!4009, !4015, !4020}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4007, file: !3977, line: 38, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !3977, line: 34, size: 64, elements: !4011)
!4011 = !{!4012, !4013, !4014}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4010, file: !3977, line: 35, baseType: !820, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4010, file: !3977, line: 36, baseType: !164, size: 8, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4010, file: !3977, line: 37, baseType: !164, size: 8, offset: 40)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4007, file: !3977, line: 42, baseType: !4016, size: 16)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !3977, line: 39, size: 16, elements: !4017)
!4017 = !{!4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4016, file: !3977, line: 40, baseType: !164, size: 8)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4016, file: !3977, line: 41, baseType: !164, size: 8, offset: 8)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4007, file: !3977, line: 46, baseType: !4021, size: 16)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4007, file: !3977, line: 43, size: 16, elements: !4022)
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4021, file: !3977, line: 44, baseType: !164, size: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4021, file: !3977, line: 45, baseType: !164, size: 8, offset: 8)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3966, file: !112, line: 81, baseType: !4026, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !112, line: 85, size: 384, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4027, file: !112, line: 86, baseType: !3989, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4027, file: !112, line: 87, baseType: !162, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4027, file: !112, line: 88, baseType: !162, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4027, file: !112, line: 89, baseType: !162, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4027, file: !112, line: 90, baseType: !887, size: 8, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4027, file: !112, line: 92, baseType: !4026, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3966, file: !112, line: 82, baseType: !38, size: 32, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !229, file: !230, line: 1463, baseType: !4037, offset: 21184)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !230, line: 739, elements: !604)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !229, file: !230, line: 1470, baseType: !619, size: 128, align: 64, offset: 21184)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !229, file: !230, line: 1471, baseType: !245, size: 32, offset: 21312)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !229, file: !230, line: 1472, baseType: !160, size: 32, offset: 21344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !229, file: !230, line: 1474, baseType: !228, size: 64, offset: 21376)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !229, file: !230, line: 1475, baseType: !2367, size: 320, offset: 21440)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !229, file: !230, line: 1478, baseType: !4044, size: 64, offset: 21760)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4046, line: 49, size: 512, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4057}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4045, file: !4046, line: 50, baseType: !4044, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4045, file: !4046, line: 51, baseType: !161, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4045, file: !4046, line: 52, baseType: !162, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4045, file: !4046, line: 53, baseType: !162, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4045, file: !4046, line: 54, baseType: !1804, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4045, file: !4046, line: 56, baseType: !38, size: 32, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4045, file: !4046, line: 58, baseType: !38, size: 32, offset: 352)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4045, file: !4046, line: 59, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !251, line: 159, baseType: !198)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4045, file: !4046, line: 60, baseType: !1983, size: 64, offset: 448)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !229, file: !230, line: 1482, baseType: !245, size: 32, offset: 21824)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !229, file: !230, line: 1489, baseType: !161, size: 64, offset: 21888)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !229, file: !230, line: 1504, baseType: !161, size: 64, offset: 21952)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !229, file: !230, line: 1505, baseType: !199, size: 64, offset: 22016)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !229, file: !230, line: 1506, baseType: !198, size: 64, offset: 22080)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !229, file: !230, line: 1507, baseType: !199, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !229, file: !230, line: 1508, baseType: !199, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !229, file: !230, line: 1509, baseType: !199, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !229, file: !230, line: 1510, baseType: !619, size: 128, align: 64, offset: 22208)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !229, file: !230, line: 1511, baseType: !160, size: 32, offset: 22336)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !229, file: !230, line: 1515, baseType: !4069, size: 64, offset: 22400)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !264, line: 56, size: 64, elements: !4070)
!4070 = !{!4071}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4069, file: !264, line: 57, baseType: !267, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !229, file: !230, line: 1518, baseType: !4069, size: 64, offset: 22464)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !229, file: !230, line: 1528, baseType: !619, size: 128, align: 64, offset: 22528)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !229, file: !230, line: 1552, baseType: !4075, size: 35328, offset: 23040)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4076, line: 430, size: 35328, elements: !4077)
!4076 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4077 = !{!4078, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4107, !4108, !4109, !4110, !4111, !4112, !4115, !4116, !4117, !4118}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4075, file: !4076, line: 432, baseType: !4079, size: 192)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4080, size: 192, elements: !677)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4081, line: 16, size: 64, elements: !4082)
!4081 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4080, file: !4081, line: 17, baseType: !194, size: 16)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4080, file: !4081, line: 18, baseType: !194, size: 16, offset: 16)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4080, file: !4081, line: 19, baseType: !194, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4080, file: !4081, line: 19, baseType: !194, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4080, file: !4081, line: 19, baseType: !194, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4080, file: !4081, line: 19, baseType: !194, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4080, file: !4081, line: 19, baseType: !194, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4080, file: !4081, line: 20, baseType: !194, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4080, file: !4081, line: 20, baseType: !194, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4080, file: !4081, line: 20, baseType: !194, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4080, file: !4081, line: 20, baseType: !194, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4080, file: !4081, line: 20, baseType: !194, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4080, file: !4081, line: 20, baseType: !194, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4075, file: !4076, line: 436, baseType: !162, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4075, file: !4076, line: 440, baseType: !196, size: 16, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4075, file: !4076, line: 441, baseType: !196, size: 16, offset: 272)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4075, file: !4076, line: 442, baseType: !196, size: 16, offset: 288)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4075, file: !4076, line: 443, baseType: !196, size: 16, offset: 304)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4075, file: !4076, line: 447, baseType: !162, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4075, file: !4076, line: 448, baseType: !162, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4075, file: !4076, line: 459, baseType: !4104, size: 256, offset: 448)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4105, size: 256, elements: !698)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4076, line: 428, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4075, file: !4076, line: 461, baseType: !162, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4075, file: !4076, line: 463, baseType: !162, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4075, file: !4076, line: 465, baseType: !162, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4075, file: !4076, line: 466, baseType: !162, size: 64, offset: 896)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4075, file: !4076, line: 467, baseType: !162, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4075, file: !4076, line: 473, baseType: !4113, size: 64, offset: 1024)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4076, line: 10, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4075, file: !4076, line: 480, baseType: !162, size: 64, offset: 1088)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4075, file: !4076, line: 482, baseType: !38, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4075, file: !4076, line: 491, baseType: !239, size: 32, offset: 1184)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4075, file: !4076, line: 501, baseType: !4119, size: 33792, offset: 1536)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4120, line: 448, size: 33792, elements: !4121)
!4120 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4121 = !{!4122, !4123, !4124, !4234, !4235, !4241, !4242}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4119, file: !4120, line: 461, baseType: !38, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4119, file: !4120, line: 468, baseType: !162, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4119, file: !4120, line: 476, baseType: !4125, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4120, line: 356, size: 33280, align: 512, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4126, file: !4120, line: 358, baseType: !38, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4126, file: !4120, line: 361, baseType: !38, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4126, file: !4120, line: 364, baseType: !198, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4126, file: !4120, line: 367, baseType: !198, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4126, file: !4120, line: 370, baseType: !198, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4126, file: !4120, line: 373, baseType: !38, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4126, file: !4120, line: 376, baseType: !38, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4126, file: !4120, line: 391, baseType: !38, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4126, file: !4120, line: 394, baseType: !38, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4126, file: !4120, line: 397, baseType: !4138, size: 32768, offset: 512)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4120, line: 348, size: 32768, elements: !4139)
!4139 = !{!4140, !4155, !4192, !4217, !4230}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4138, file: !4120, line: 349, baseType: !4141, size: 896)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4120, line: 12, size: 896, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4154}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4141, file: !4120, line: 13, baseType: !239, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4141, file: !4120, line: 14, baseType: !239, size: 32, offset: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4141, file: !4120, line: 15, baseType: !239, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4141, file: !4120, line: 16, baseType: !239, size: 32, offset: 96)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4141, file: !4120, line: 17, baseType: !239, size: 32, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4141, file: !4120, line: 18, baseType: !239, size: 32, offset: 160)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4141, file: !4120, line: 19, baseType: !239, size: 32, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4141, file: !4120, line: 22, baseType: !4151, size: 640, offset: 224)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 640, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 20)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4141, file: !4120, line: 25, baseType: !239, size: 32, offset: 864)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4138, file: !4120, line: 350, baseType: !4156, size: 4096, align: 128)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4120, line: 34, size: 4096, align: 128, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4177, !4178, !4179, !4181, !4183, !4187}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4156, file: !4120, line: 35, baseType: !194, size: 16)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4156, file: !4120, line: 36, baseType: !194, size: 16, offset: 16)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4156, file: !4120, line: 37, baseType: !194, size: 16, offset: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4156, file: !4120, line: 38, baseType: !194, size: 16, offset: 48)
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !4120, line: 39, baseType: !4163, size: 128, offset: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4156, file: !4120, line: 39, size: 128, elements: !4164)
!4164 = !{!4165, !4170}
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !4120, line: 40, baseType: !4166, size: 128)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4120, line: 40, size: 128, elements: !4167)
!4167 = !{!4168, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4166, file: !4120, line: 41, baseType: !198, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4166, file: !4120, line: 42, baseType: !198, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !4120, line: 44, baseType: !4171, size: 128)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4120, line: 44, size: 128, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4171, file: !4120, line: 45, baseType: !239, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4171, file: !4120, line: 46, baseType: !239, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4171, file: !4120, line: 47, baseType: !239, size: 32, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4171, file: !4120, line: 48, baseType: !239, size: 32, offset: 96)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4156, file: !4120, line: 51, baseType: !239, size: 32, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4156, file: !4120, line: 52, baseType: !239, size: 32, offset: 224)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4156, file: !4120, line: 55, baseType: !4180, size: 1024, offset: 256)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !2866)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4156, file: !4120, line: 58, baseType: !4182, size: 2048, offset: 1280)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2048, elements: !1336)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4156, file: !4120, line: 60, baseType: !4184, size: 384, offset: 3328)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, elements: !4185)
!4185 = !{!4186}
!4186 = !DISubrange(count: 12)
!4187 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !4120, line: 62, baseType: !4188, size: 384, offset: 3712)
!4188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4156, file: !4120, line: 62, size: 384, elements: !4189)
!4189 = !{!4190, !4191}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4188, file: !4120, line: 63, baseType: !4184, size: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4188, file: !4120, line: 64, baseType: !4184, size: 384)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4138, file: !4120, line: 351, baseType: !4193, size: 1088)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4120, line: 79, size: 1088, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4216}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4193, file: !4120, line: 80, baseType: !239, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4193, file: !4120, line: 81, baseType: !239, size: 32, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4193, file: !4120, line: 82, baseType: !239, size: 32, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4193, file: !4120, line: 83, baseType: !239, size: 32, offset: 96)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4193, file: !4120, line: 84, baseType: !239, size: 32, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4193, file: !4120, line: 85, baseType: !239, size: 32, offset: 160)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4193, file: !4120, line: 86, baseType: !239, size: 32, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4193, file: !4120, line: 88, baseType: !4151, size: 640, offset: 224)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4193, file: !4120, line: 89, baseType: !164, size: 8, offset: 864)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4193, file: !4120, line: 90, baseType: !164, size: 8, offset: 872)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4193, file: !4120, line: 91, baseType: !164, size: 8, offset: 880)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4193, file: !4120, line: 92, baseType: !164, size: 8, offset: 888)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4193, file: !4120, line: 93, baseType: !164, size: 8, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4193, file: !4120, line: 94, baseType: !164, size: 8, offset: 904)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4193, file: !4120, line: 95, baseType: !4210, size: 64, offset: 960)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4212, line: 11, size: 128, elements: !4213)
!4212 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4213 = !{!4214, !4215}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4211, file: !4212, line: 12, baseType: !1156, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4211, file: !4212, line: 13, baseType: !169, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4193, file: !4120, line: 96, baseType: !239, size: 32, offset: 1024)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4138, file: !4120, line: 352, baseType: !4218, size: 4608, align: 512)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4120, line: 333, size: 4608, align: 512, elements: !4219)
!4219 = !{!4220, !4221, !4228}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4218, file: !4120, line: 334, baseType: !4156, size: 4096, align: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4218, file: !4120, line: 335, baseType: !4222, size: 512, offset: 4096)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4120, line: 312, size: 512, elements: !4223)
!4223 = !{!4224, !4225, !4226}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4222, file: !4120, line: 313, baseType: !198, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4222, file: !4120, line: 314, baseType: !198, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4222, file: !4120, line: 315, baseType: !4227, size: 384, offset: 128)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !874)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4218, file: !4120, line: 336, baseType: !4229, offset: 4608)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !765)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4138, file: !4120, line: 353, baseType: !4231, size: 32768)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32768, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 4096)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4119, file: !4120, line: 484, baseType: !4125, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4119, file: !4120, line: 491, baseType: !4236, size: 128, offset: 256)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4120, line: 404, size: 128, elements: !4237)
!4237 = !{!4238, !4239, !4240}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4236, file: !4120, line: 424, baseType: !198, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4236, file: !4120, line: 432, baseType: !38, size: 32, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4236, file: !4120, line: 440, baseType: !38, size: 32, offset: 96)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4119, file: !4120, line: 498, baseType: !4236, size: 128, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4119, file: !4120, line: 508, baseType: !4126, size: 33280, align: 512, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !162)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4248)
!4248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !239)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!4253 = !{!0, !7, !12, !17, !22, !27, !4254, !4256, !4261, !4263, !4265, !4267, !4269, !4271, !4273, !4275, !4277, !4279, !4284, !4289, !4294, !4299, !32, !4302, !4304, !4306, !4311, !4313, !4315, !4317, !4320}
!4254 = !DIGlobalVariableExpression(var: !4255, expr: !DIExpression())
!4255 = distinct !DIGlobalVariable(name: "_kbl_addr_oops_begin", scope: !34, file: !2, line: 355, type: !162, isLocal: true, isDefinition: true)
!4256 = !DIGlobalVariableExpression(var: !4257, expr: !DIExpression())
!4257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !4258, isLocal: true, isDefinition: true)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !4259)
!4259 = !{!4260}
!4260 = !DISubrange(count: 29)
!4261 = !DIGlobalVariableExpression(var: !4262, expr: !DIExpression())
!4262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !3479, isLocal: true, isDefinition: true)
!4263 = !DIGlobalVariableExpression(var: !4264, expr: !DIExpression())
!4264 = distinct !DIGlobalVariable(name: "_kbl_addr_oops_end", scope: !34, file: !2, line: 394, type: !162, isLocal: true, isDefinition: true)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "_kbl_addr___die_header", scope: !34, file: !2, line: 416, type: !162, isLocal: true, isDefinition: true)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "_kbl_addr___die_body", scope: !34, file: !2, line: 429, type: !162, isLocal: true, isDefinition: true)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "_kbl_addr___die", scope: !34, file: !2, line: 436, type: !162, isLocal: true, isDefinition: true)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(name: "panic_on_unrecovered_nmi", scope: !34, file: !2, line: 26, type: !160, isLocal: false, isDefinition: true)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "panic_on_io_nmi", scope: !34, file: !2, line: 27, type: !160, isLocal: false, isDefinition: true)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "exec_summary_regs", scope: !34, file: !2, line: 30, type: !170, isLocal: true, isDefinition: true)
!4277 = !DIGlobalVariableExpression(var: !4278, expr: !DIExpression())
!4278 = distinct !DIGlobalVariable(name: "die_nest_count", scope: !34, file: !2, line: 331, type: !38, isLocal: true, isDefinition: true)
!4279 = !DIGlobalVariableExpression(var: !4280, expr: !DIExpression())
!4280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !4281, isLocal: true, isDefinition: true)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 15)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !4286, isLocal: true, isDefinition: true)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4287)
!4287 = !{!4288}
!4288 = !DISubrange(count: 9)
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !4291, isLocal: true, isDefinition: true)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !4292)
!4292 = !{!4293}
!4293 = !DISubrange(count: 10)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !4296, isLocal: true, isDefinition: true)
!4296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4297)
!4297 = !{!4298}
!4298 = !DISubrange(count: 11)
!4299 = !DIGlobalVariableExpression(var: !4300, expr: !DIExpression())
!4300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !4301, isLocal: true, isDefinition: true)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !677)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "die_owner", scope: !34, file: !2, line: 330, type: !160, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !4286, isLocal: true, isDefinition: true)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !4308, isLocal: true, isDefinition: true)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4309)
!4309 = !{!4310}
!4310 = !DISubrange(count: 27)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !3, isLocal: true, isDefinition: true)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !19, isLocal: true, isDefinition: true)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !3, isLocal: true, isDefinition: true)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !4319, isLocal: true, isDefinition: true)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !2258)
!4320 = !DIGlobalVariableExpression(var: !4321, expr: !DIExpression())
!4321 = distinct !DIGlobalVariable(name: "die_counter", scope: !34, file: !2, line: 28, type: !160, isLocal: true, isDefinition: true)
!4322 = !{i32 7, !"Dwarf Version", i32 5}
!4323 = !{i32 2, !"Debug Info Version", i32 3}
!4324 = !{i32 1, !"wchar_size", i32 2}
!4325 = !{i32 8, !"cf-protection-branch", i32 1}
!4326 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4327 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4328 = !{i32 1, !"Code Model", i32 2}
!4329 = !{i32 1, !"override-stack-alignment", i32 8}
!4330 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4331 = distinct !DISubprogram(name: "in_task_stack", scope: !2, file: !2, line: 32, type: !4332, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4341)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!887, !2469, !228, !4334}
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_info", file: !119, line: 26, size: 256, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4335, file: !119, line: 27, baseType: !118, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !4335, file: !119, line: 28, baseType: !2469, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4335, file: !119, line: 28, baseType: !2469, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "next_sp", scope: !4335, file: !119, line: 28, baseType: !2469, size: 64, offset: 192)
!4341 = !{!4342, !4343, !4344, !4345, !4346}
!4342 = !DILocalVariable(name: "stack", arg: 1, scope: !4331, file: !2, line: 32, type: !2469)
!4343 = !DILocalVariable(name: "task", arg: 2, scope: !4331, file: !2, line: 32, type: !228)
!4344 = !DILocalVariable(name: "info", arg: 3, scope: !4331, file: !2, line: 33, type: !4334)
!4345 = !DILocalVariable(name: "begin", scope: !4331, file: !2, line: 35, type: !2469)
!4346 = !DILocalVariable(name: "end", scope: !4331, file: !2, line: 36, type: !2469)
!4347 = !DILocation(line: 32, column: 43, scope: !4331)
!4348 = !DILocation(line: 32, column: 70, scope: !4331)
!4349 = !DILocation(line: 33, column: 26, scope: !4331)
!4350 = !DILocation(line: 35, column: 2, scope: !4331)
!4351 = !DILocation(line: 35, column: 17, scope: !4331)
!4352 = !DILocation(line: 35, column: 41, scope: !4331)
!4353 = !DILocation(line: 35, column: 25, scope: !4331)
!4354 = !DILocation(line: 36, column: 2, scope: !4331)
!4355 = !DILocation(line: 36, column: 17, scope: !4331)
!4356 = !DILocation(line: 36, column: 41, scope: !4331)
!4357 = !DILocation(line: 36, column: 25, scope: !4331)
!4358 = !DILocation(line: 36, column: 47, scope: !4331)
!4359 = !DILocation(line: 38, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4331, file: !2, line: 38, column: 6)
!4361 = !DILocation(line: 38, column: 14, scope: !4360)
!4362 = !DILocation(line: 38, column: 12, scope: !4360)
!4363 = !DILocation(line: 38, column: 20, scope: !4360)
!4364 = !DILocation(line: 38, column: 23, scope: !4360)
!4365 = !DILocation(line: 38, column: 32, scope: !4360)
!4366 = !DILocation(line: 38, column: 29, scope: !4360)
!4367 = !DILocation(line: 38, column: 6, scope: !4331)
!4368 = !DILocation(line: 39, column: 3, scope: !4360)
!4369 = !DILocation(line: 41, column: 2, scope: !4331)
!4370 = !DILocation(line: 41, column: 8, scope: !4331)
!4371 = !DILocation(line: 41, column: 13, scope: !4331)
!4372 = !DILocation(line: 42, column: 16, scope: !4331)
!4373 = !DILocation(line: 42, column: 2, scope: !4331)
!4374 = !DILocation(line: 42, column: 8, scope: !4331)
!4375 = !DILocation(line: 42, column: 14, scope: !4331)
!4376 = !DILocation(line: 43, column: 14, scope: !4331)
!4377 = !DILocation(line: 43, column: 2, scope: !4331)
!4378 = !DILocation(line: 43, column: 8, scope: !4331)
!4379 = !DILocation(line: 43, column: 12, scope: !4331)
!4380 = !DILocation(line: 44, column: 2, scope: !4331)
!4381 = !DILocation(line: 44, column: 8, scope: !4331)
!4382 = !DILocation(line: 44, column: 16, scope: !4331)
!4383 = !DILocation(line: 46, column: 2, scope: !4331)
!4384 = !DILocation(line: 47, column: 1, scope: !4331)
!4385 = distinct !DISubprogram(name: "task_stack_page", scope: !4386, file: !4386, line: 20, type: !4387, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4391)
!4386 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!161, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!4391 = !{!4392}
!4392 = !DILocalVariable(name: "task", arg: 1, scope: !4385, file: !4386, line: 20, type: !4389)
!4393 = !DILocation(line: 20, column: 72, scope: !4385)
!4394 = !DILocation(line: 22, column: 9, scope: !4385)
!4395 = !DILocation(line: 22, column: 15, scope: !4385)
!4396 = !DILocation(line: 22, column: 2, scope: !4385)
!4397 = distinct !DISubprogram(name: "in_entry_stack", scope: !2, file: !2, line: 50, type: !4398, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4400)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!887, !2469, !4334}
!4400 = !{!4401, !4402, !4403, !4409, !4412, !4414, !4416, !4417}
!4401 = !DILocalVariable(name: "stack", arg: 1, scope: !4397, file: !2, line: 50, type: !2469)
!4402 = !DILocalVariable(name: "info", arg: 2, scope: !4397, file: !2, line: 50, type: !4334)
!4403 = !DILocalVariable(name: "ss", scope: !4397, file: !2, line: 52, type: !4404)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry_stack", file: !4076, line: 339, size: 32768, elements: !4406)
!4406 = !{!4407}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4405, file: !4076, line: 340, baseType: !4408, size: 32768)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4232)
!4409 = !DILocalVariable(name: "pscr_ret__", scope: !4410, file: !2, line: 52, type: !160)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !2, line: 52, column: 43)
!4411 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 52, column: 43)
!4412 = !DILocalVariable(name: "__vpp_verify", scope: !4413, file: !2, line: 52, type: !1983)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !2, line: 52, column: 43)
!4414 = !DILocalVariable(name: "pfo_val__", scope: !4415, file: !2, line: 52, type: !239)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !2, line: 52, column: 43)
!4416 = !DILocalVariable(name: "begin", scope: !4397, file: !2, line: 54, type: !161)
!4417 = !DILocalVariable(name: "end", scope: !4397, file: !2, line: 55, type: !161)
!4418 = !DILocation(line: 50, column: 44, scope: !4397)
!4419 = !DILocation(line: 50, column: 70, scope: !4397)
!4420 = !DILocation(line: 52, column: 2, scope: !4397)
!4421 = !DILocation(line: 52, column: 22, scope: !4397)
!4422 = !DILocation(line: 52, column: 43, scope: !4411)
!4423 = !DILocation(line: 52, column: 43, scope: !4410)
!4424 = !DILocation(line: 52, column: 43, scope: !4413)
!4425 = !DILocation(line: 52, column: 43, scope: !4415)
!4426 = !{i64 2155047943}
!4427 = !DILocation(line: 52, column: 27, scope: !4397)
!4428 = !DILocation(line: 54, column: 2, scope: !4397)
!4429 = !DILocation(line: 54, column: 8, scope: !4397)
!4430 = !DILocation(line: 54, column: 16, scope: !4397)
!4431 = !DILocation(line: 55, column: 2, scope: !4397)
!4432 = !DILocation(line: 55, column: 8, scope: !4397)
!4433 = !DILocation(line: 55, column: 14, scope: !4397)
!4434 = !DILocation(line: 55, column: 17, scope: !4397)
!4435 = !DILocation(line: 57, column: 14, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 57, column: 6)
!4437 = !DILocation(line: 57, column: 22, scope: !4436)
!4438 = !DILocation(line: 57, column: 20, scope: !4436)
!4439 = !DILocation(line: 57, column: 28, scope: !4436)
!4440 = !DILocation(line: 57, column: 39, scope: !4436)
!4441 = !DILocation(line: 57, column: 48, scope: !4436)
!4442 = !DILocation(line: 57, column: 45, scope: !4436)
!4443 = !DILocation(line: 57, column: 6, scope: !4397)
!4444 = !DILocation(line: 58, column: 3, scope: !4436)
!4445 = !DILocation(line: 60, column: 2, scope: !4397)
!4446 = !DILocation(line: 60, column: 8, scope: !4397)
!4447 = !DILocation(line: 60, column: 13, scope: !4397)
!4448 = !DILocation(line: 61, column: 16, scope: !4397)
!4449 = !DILocation(line: 61, column: 2, scope: !4397)
!4450 = !DILocation(line: 61, column: 8, scope: !4397)
!4451 = !DILocation(line: 61, column: 14, scope: !4397)
!4452 = !DILocation(line: 62, column: 14, scope: !4397)
!4453 = !DILocation(line: 62, column: 2, scope: !4397)
!4454 = !DILocation(line: 62, column: 8, scope: !4397)
!4455 = !DILocation(line: 62, column: 12, scope: !4397)
!4456 = !DILocation(line: 63, column: 2, scope: !4397)
!4457 = !DILocation(line: 63, column: 8, scope: !4397)
!4458 = !DILocation(line: 63, column: 16, scope: !4397)
!4459 = !DILocation(line: 65, column: 2, scope: !4397)
!4460 = !DILocation(line: 66, column: 1, scope: !4397)
!4461 = distinct !DISubprogram(name: "cpu_entry_stack", scope: !4462, file: !4462, line: 142, type: !4463, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4465)
!4462 = !DIFile(filename: "./arch/x86/include/asm/cpu_entry_area.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b81fe974072fb47372fbb126df7d460b")
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!4404, !160}
!4465 = !{!4466}
!4466 = !DILocalVariable(name: "cpu", arg: 1, scope: !4461, file: !4462, line: 142, type: !160)
!4467 = !DILocation(line: 142, column: 64, scope: !4461)
!4468 = !DILocation(line: 144, column: 29, scope: !4461)
!4469 = !DILocation(line: 144, column: 10, scope: !4461)
!4470 = !DILocation(line: 144, column: 35, scope: !4461)
!4471 = !DILocation(line: 144, column: 52, scope: !4461)
!4472 = !DILocation(line: 144, column: 2, scope: !4461)
!4473 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4474, file: !4474, line: 313, type: !4475, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4477)
!4474 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !890}
!4477 = !{!4478}
!4478 = !DILocalVariable(name: "op", arg: 1, scope: !4473, file: !4474, line: 313, type: !890)
!4479 = !DILocation(line: 313, column: 66, scope: !4473)
!4480 = !DILocation(line: 313, column: 72, scope: !4473)
!4481 = distinct !DISubprogram(name: "show_opcodes", scope: !2, file: !2, line: 113, type: !4482, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !169, !890}
!4484 = !{!4485, !4486, !4487, !4489}
!4485 = !DILocalVariable(name: "regs", arg: 1, scope: !4481, file: !2, line: 113, type: !169)
!4486 = !DILocalVariable(name: "loglvl", arg: 2, scope: !4481, file: !2, line: 113, type: !890)
!4487 = !DILocalVariable(name: "opcodes", scope: !4481, file: !2, line: 118, type: !4488)
!4488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 512, elements: !1336)
!4489 = !DILocalVariable(name: "prologue", scope: !4481, file: !2, line: 119, type: !162)
!4490 = !DILocation(line: 113, column: 35, scope: !4481)
!4491 = !DILocation(line: 113, column: 53, scope: !4481)
!4492 = !DILocation(line: 118, column: 2, scope: !4481)
!4493 = !DILocation(line: 118, column: 5, scope: !4481)
!4494 = !DILocation(line: 119, column: 2, scope: !4481)
!4495 = !DILocation(line: 119, column: 16, scope: !4481)
!4496 = !DILocation(line: 119, column: 27, scope: !4481)
!4497 = !DILocation(line: 119, column: 33, scope: !4481)
!4498 = !DILocation(line: 119, column: 36, scope: !4481)
!4499 = !DILocation(line: 121, column: 20, scope: !4481)
!4500 = !DILocation(line: 121, column: 26, scope: !4481)
!4501 = !DILocation(line: 121, column: 35, scope: !4481)
!4502 = !DILocation(line: 121, column: 10, scope: !4481)
!4503 = !DILocation(line: 121, column: 2, scope: !4481)
!4504 = !DILocation(line: 123, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 123, column: 3)
!4506 = distinct !DILexicalBlock(scope: !4481, file: !2, line: 121, column: 63)
!4507 = !DILocation(line: 123, column: 3, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !2, line: 123, column: 3)
!4509 = !DILocation(line: 126, column: 3, scope: !4506)
!4510 = !DILocation(line: 131, column: 3, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 131, column: 3)
!4512 = !DILocation(line: 131, column: 3, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4511, file: !2, line: 131, column: 3)
!4514 = !DILocation(line: 133, column: 3, scope: !4506)
!4515 = !DILocation(line: 135, column: 1, scope: !4481)
!4516 = distinct !DISubprogram(name: "copy_code", scope: !2, file: !2, line: 75, type: !4517, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!160, !169, !163, !162, !38}
!4519 = !{!4520, !4521, !4522, !4523, !4524}
!4520 = !DILocalVariable(name: "regs", arg: 1, scope: !4516, file: !2, line: 75, type: !169)
!4521 = !DILocalVariable(name: "buf", arg: 2, scope: !4516, file: !2, line: 75, type: !163)
!4522 = !DILocalVariable(name: "src", arg: 3, scope: !4516, file: !2, line: 75, type: !162)
!4523 = !DILocalVariable(name: "nbytes", arg: 4, scope: !4516, file: !2, line: 76, type: !38)
!4524 = !DILocalVariable(name: "__ptr", scope: !4525, file: !2, line: 82, type: !162)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !2, line: 82, column: 14)
!4526 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 82, column: 6)
!4527 = !DILocation(line: 75, column: 38, scope: !4516)
!4528 = !DILocation(line: 75, column: 48, scope: !4516)
!4529 = !DILocation(line: 75, column: 67, scope: !4516)
!4530 = !DILocation(line: 76, column: 21, scope: !4516)
!4531 = !DILocation(line: 78, column: 17, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 78, column: 6)
!4533 = !DILocation(line: 78, column: 7, scope: !4532)
!4534 = !DILocation(line: 78, column: 6, scope: !4516)
!4535 = !DILocation(line: 79, column: 35, scope: !4532)
!4536 = !DILocation(line: 79, column: 46, scope: !4532)
!4537 = !DILocation(line: 79, column: 40, scope: !4532)
!4538 = !DILocation(line: 79, column: 51, scope: !4532)
!4539 = !DILocation(line: 79, column: 10, scope: !4532)
!4540 = !DILocation(line: 79, column: 3, scope: !4532)
!4541 = !DILocation(line: 82, column: 6, scope: !4526)
!4542 = !DILocation(line: 82, column: 14, scope: !4525)
!4543 = !DILocation(line: 82, column: 14, scope: !4526)
!4544 = !DILocation(line: 82, column: 11, scope: !4526)
!4545 = !DILocation(line: 82, column: 6, scope: !4516)
!4546 = !DILocation(line: 83, column: 3, scope: !4526)
!4547 = !DILocation(line: 91, column: 28, scope: !4516)
!4548 = !DILocation(line: 91, column: 48, scope: !4516)
!4549 = !DILocation(line: 91, column: 33, scope: !4516)
!4550 = !DILocation(line: 91, column: 53, scope: !4516)
!4551 = !DILocation(line: 91, column: 9, scope: !4516)
!4552 = !DILocation(line: 91, column: 2, scope: !4516)
!4553 = !DILocation(line: 92, column: 1, scope: !4516)
!4554 = !DISubprogram(name: "_printk", scope: !4555, file: !4555, line: 153, type: !4556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4555 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!160, !890, null}
!4558 = distinct !DISubprogram(name: "show_ip", scope: !2, file: !2, line: 137, type: !4482, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4559)
!4559 = !{!4560, !4561}
!4560 = !DILocalVariable(name: "regs", arg: 1, scope: !4558, file: !2, line: 137, type: !169)
!4561 = !DILocalVariable(name: "loglvl", arg: 2, scope: !4558, file: !2, line: 137, type: !890)
!4562 = !DILocation(line: 137, column: 30, scope: !4558)
!4563 = !DILocation(line: 137, column: 48, scope: !4558)
!4564 = !DILocation(line: 142, column: 2, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4558, file: !2, line: 142, column: 2)
!4566 = !DILocation(line: 142, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4565, file: !2, line: 142, column: 2)
!4568 = !DILocation(line: 144, column: 15, scope: !4558)
!4569 = !DILocation(line: 144, column: 21, scope: !4558)
!4570 = !DILocation(line: 144, column: 2, scope: !4558)
!4571 = !DILocation(line: 145, column: 1, scope: !4558)
!4572 = distinct !DISubprogram(name: "show_iret_regs", scope: !2, file: !2, line: 147, type: !4482, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4573)
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "regs", arg: 1, scope: !4572, file: !2, line: 147, type: !169)
!4575 = !DILocalVariable(name: "log_lvl", arg: 2, scope: !4572, file: !2, line: 147, type: !890)
!4576 = !DILocation(line: 147, column: 37, scope: !4572)
!4577 = !DILocation(line: 147, column: 55, scope: !4572)
!4578 = !DILocation(line: 149, column: 10, scope: !4572)
!4579 = !DILocation(line: 149, column: 16, scope: !4572)
!4580 = !DILocation(line: 149, column: 2, scope: !4572)
!4581 = !DILocation(line: 150, column: 2, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 150, column: 2)
!4583 = !DILocation(line: 150, column: 2, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4582, file: !2, line: 150, column: 2)
!4585 = !DILocation(line: 152, column: 1, scope: !4572)
!4586 = distinct !DISubprogram(name: "show_stack", scope: !2, file: !2, line: 309, type: !4587, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !228, !2469, !890}
!4589 = !{!4590, !4591, !4592}
!4590 = !DILocalVariable(name: "task", arg: 1, scope: !4586, file: !2, line: 309, type: !228)
!4591 = !DILocalVariable(name: "sp", arg: 2, scope: !4586, file: !2, line: 309, type: !2469)
!4592 = !DILocalVariable(name: "loglvl", arg: 3, scope: !4586, file: !2, line: 310, type: !890)
!4593 = !DILocation(line: 309, column: 37, scope: !4586)
!4594 = !DILocation(line: 309, column: 58, scope: !4586)
!4595 = !DILocation(line: 310, column: 22, scope: !4586)
!4596 = !DILocation(line: 312, column: 9, scope: !4586)
!4597 = !DILocation(line: 312, column: 18, scope: !4586)
!4598 = !DILocation(line: 312, column: 7, scope: !4586)
!4599 = !DILocation(line: 318, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 318, column: 6)
!4601 = !DILocation(line: 318, column: 10, scope: !4600)
!4602 = !DILocation(line: 318, column: 13, scope: !4600)
!4603 = !DILocation(line: 318, column: 21, scope: !4600)
!4604 = !DILocation(line: 318, column: 18, scope: !4600)
!4605 = !DILocation(line: 318, column: 6, scope: !4586)
!4606 = !DILocation(line: 319, column: 26, scope: !4600)
!4607 = !DILocation(line: 319, column: 8, scope: !4600)
!4608 = !DILocation(line: 319, column: 6, scope: !4600)
!4609 = !DILocation(line: 319, column: 3, scope: !4600)
!4610 = !DILocation(line: 321, column: 21, scope: !4586)
!4611 = !DILocation(line: 321, column: 33, scope: !4586)
!4612 = !DILocation(line: 321, column: 37, scope: !4586)
!4613 = !DILocation(line: 321, column: 2, scope: !4586)
!4614 = !DILocation(line: 322, column: 1, scope: !4586)
!4615 = distinct !DISubprogram(name: "get_current", scope: !4616, file: !4616, line: 39, type: !4617, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4619)
!4616 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!228}
!4619 = !{!4620, !4622, !4624}
!4620 = !DILocalVariable(name: "pscr_ret__", scope: !4621, file: !4616, line: 41, type: !228)
!4621 = distinct !DILexicalBlock(scope: !4615, file: !4616, line: 41, column: 9)
!4622 = !DILocalVariable(name: "__vpp_verify", scope: !4623, file: !4616, line: 41, type: !1983)
!4623 = distinct !DILexicalBlock(scope: !4621, file: !4616, line: 41, column: 9)
!4624 = !DILocalVariable(name: "pfo_val__", scope: !4625, file: !4616, line: 41, type: !198)
!4625 = distinct !DILexicalBlock(scope: !4621, file: !4616, line: 41, column: 9)
!4626 = !DILocation(line: 41, column: 9, scope: !4621)
!4627 = !DILocation(line: 41, column: 9, scope: !4623)
!4628 = !DILocation(line: 41, column: 9, scope: !4625)
!4629 = !{i64 2149116550}
!4630 = !DILocation(line: 41, column: 9, scope: !4615)
!4631 = !DILocation(line: 41, column: 2, scope: !4615)
!4632 = distinct !DISubprogram(name: "get_stack_pointer", scope: !119, file: !119, line: 90, type: !4633, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!2469, !228, !169}
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "task", arg: 1, scope: !4632, file: !119, line: 90, type: !228)
!4637 = !DILocalVariable(name: "regs", arg: 2, scope: !4632, file: !119, line: 90, type: !169)
!4638 = !DILocation(line: 90, column: 39, scope: !4632)
!4639 = !DILocation(line: 90, column: 61, scope: !4632)
!4640 = !DILocation(line: 92, column: 6, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4632, file: !119, line: 92, column: 6)
!4642 = !DILocation(line: 92, column: 6, scope: !4632)
!4643 = !DILocation(line: 93, column: 27, scope: !4641)
!4644 = !DILocation(line: 93, column: 33, scope: !4641)
!4645 = !DILocation(line: 93, column: 10, scope: !4641)
!4646 = !DILocation(line: 93, column: 3, scope: !4641)
!4647 = !DILocation(line: 95, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4632, file: !119, line: 95, column: 6)
!4649 = !DILocation(line: 95, column: 14, scope: !4648)
!4650 = !DILocation(line: 95, column: 11, scope: !4648)
!4651 = !DILocation(line: 95, column: 6, scope: !4632)
!4652 = !DILocation(line: 96, column: 10, scope: !4648)
!4653 = !DILocation(line: 96, column: 3, scope: !4648)
!4654 = !DILocation(line: 98, column: 26, scope: !4632)
!4655 = !DILocation(line: 98, column: 32, scope: !4632)
!4656 = !DILocation(line: 98, column: 39, scope: !4632)
!4657 = !DILocation(line: 98, column: 9, scope: !4632)
!4658 = !DILocation(line: 98, column: 2, scope: !4632)
!4659 = !DILocation(line: 99, column: 1, scope: !4632)
!4660 = distinct !DISubprogram(name: "show_trace_log_lvl", scope: !2, file: !2, line: 186, type: !4661, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !228, !169, !2469, !890}
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4685, !4686, !4687, !4688, !4689, !4693, !4697, !4698, !4699, !4700}
!4664 = !DILocalVariable(name: "task", arg: 1, scope: !4660, file: !2, line: 186, type: !228)
!4665 = !DILocalVariable(name: "regs", arg: 2, scope: !4660, file: !2, line: 186, type: !169)
!4666 = !DILocalVariable(name: "stack", arg: 3, scope: !4660, file: !2, line: 187, type: !2469)
!4667 = !DILocalVariable(name: "log_lvl", arg: 4, scope: !4660, file: !2, line: 187, type: !890)
!4668 = !DILocalVariable(name: "state", scope: !4660, file: !2, line: 189, type: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unwind_state", file: !4670, line: 14, size: 896, elements: !4671)
!4670 = !DIFile(filename: "./arch/x86/include/asm/unwind.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3235c5cc80be598600446a4d6bd7e4")
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_info", scope: !4669, file: !4670, line: 15, baseType: !4335, size: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_mask", scope: !4669, file: !4670, line: 16, baseType: !162, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4669, file: !4670, line: 17, baseType: !228, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_idx", scope: !4669, file: !4670, line: 18, baseType: !160, size: 32, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "kr_cur", scope: !4669, file: !4670, line: 20, baseType: !267, size: 64, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4669, file: !4670, line: 22, baseType: !887, size: 8, offset: 512)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4669, file: !4670, line: 24, baseType: !887, size: 8, offset: 520)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "full_regs", scope: !4669, file: !4670, line: 24, baseType: !887, size: 8, offset: 528)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4669, file: !4670, line: 25, baseType: !162, size: 64, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4669, file: !4670, line: 25, baseType: !162, size: 64, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4669, file: !4670, line: 25, baseType: !162, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4669, file: !4670, line: 26, baseType: !169, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "prev_regs", scope: !4669, file: !4670, line: 26, baseType: !169, size: 64, offset: 832)
!4685 = !DILocalVariable(name: "stack_info", scope: !4660, file: !2, line: 190, type: !4335)
!4686 = !DILocalVariable(name: "visit_mask", scope: !4660, file: !2, line: 191, type: !162)
!4687 = !DILocalVariable(name: "graph_idx", scope: !4660, file: !2, line: 192, type: !160)
!4688 = !DILocalVariable(name: "partial", scope: !4660, file: !2, line: 193, type: !887)
!4689 = !DILocalVariable(name: "stack_name", scope: !4690, file: !2, line: 219, type: !890)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !2, line: 218, column: 35)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !2, line: 216, column: 2)
!4692 = distinct !DILexicalBlock(scope: !4660, file: !2, line: 216, column: 2)
!4693 = !DILocalVariable(name: "real_addr", scope: !4694, file: !2, line: 253, type: !162)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !2, line: 252, column: 43)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 252, column: 3)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 252, column: 3)
!4697 = !DILocalVariable(name: "reliable", scope: !4694, file: !2, line: 254, type: !160)
!4698 = !DILocalVariable(name: "addr", scope: !4694, file: !2, line: 255, type: !162)
!4699 = !DILocalVariable(name: "ret_addr_p", scope: !4694, file: !2, line: 256, type: !2469)
!4700 = !DILabel(scope: !4694, name: "next", file: !2, line: 290)
!4701 = !DILocation(line: 186, column: 52, scope: !4660)
!4702 = !DILocation(line: 186, column: 74, scope: !4660)
!4703 = !DILocation(line: 187, column: 19, scope: !4660)
!4704 = !DILocation(line: 187, column: 38, scope: !4660)
!4705 = !DILocation(line: 189, column: 2, scope: !4660)
!4706 = !DILocation(line: 189, column: 22, scope: !4660)
!4707 = !DILocation(line: 190, column: 2, scope: !4660)
!4708 = !DILocation(line: 190, column: 20, scope: !4660)
!4709 = !DILocation(line: 191, column: 2, scope: !4660)
!4710 = !DILocation(line: 191, column: 16, scope: !4660)
!4711 = !DILocation(line: 192, column: 2, scope: !4660)
!4712 = !DILocation(line: 192, column: 6, scope: !4660)
!4713 = !DILocation(line: 193, column: 2, scope: !4660)
!4714 = !DILocation(line: 193, column: 7, scope: !4660)
!4715 = !DILocation(line: 195, column: 2, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4660, file: !2, line: 195, column: 2)
!4717 = !DILocation(line: 195, column: 2, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4716, file: !2, line: 195, column: 2)
!4719 = !DILocation(line: 197, column: 23, scope: !4660)
!4720 = !DILocation(line: 197, column: 29, scope: !4660)
!4721 = !DILocation(line: 197, column: 35, scope: !4660)
!4722 = !DILocation(line: 197, column: 2, scope: !4660)
!4723 = !DILocation(line: 198, column: 9, scope: !4660)
!4724 = !DILocation(line: 198, column: 7, scope: !4660)
!4725 = !DILocation(line: 216, column: 15, scope: !4692)
!4726 = !DILocation(line: 216, column: 42, scope: !4692)
!4727 = !DILocation(line: 216, column: 48, scope: !4692)
!4728 = !DILocation(line: 216, column: 24, scope: !4692)
!4729 = !DILocation(line: 216, column: 13, scope: !4692)
!4730 = !DILocation(line: 216, column: 7, scope: !4692)
!4731 = !DILocation(line: 217, column: 7, scope: !4691)
!4732 = !DILocation(line: 216, column: 2, scope: !4692)
!4733 = !DILocation(line: 219, column: 3, scope: !4690)
!4734 = !DILocation(line: 219, column: 15, scope: !4690)
!4735 = !DILocation(line: 221, column: 11, scope: !4690)
!4736 = !DILocation(line: 221, column: 9, scope: !4690)
!4737 = !DILocation(line: 223, column: 22, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 223, column: 7)
!4739 = !DILocation(line: 223, column: 29, scope: !4738)
!4740 = !DILocation(line: 223, column: 7, scope: !4738)
!4741 = !DILocation(line: 223, column: 7, scope: !4690)
!4742 = !DILocation(line: 230, column: 29, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4738, file: !2, line: 223, column: 62)
!4744 = !DILocation(line: 230, column: 12, scope: !4743)
!4745 = !DILocation(line: 230, column: 10, scope: !4743)
!4746 = !DILocation(line: 231, column: 23, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !2, line: 231, column: 8)
!4748 = !DILocation(line: 231, column: 30, scope: !4747)
!4749 = !DILocation(line: 231, column: 8, scope: !4747)
!4750 = !DILocation(line: 231, column: 8, scope: !4743)
!4751 = !DILocation(line: 232, column: 5, scope: !4747)
!4752 = !DILocation(line: 233, column: 3, scope: !4743)
!4753 = !DILocation(line: 235, column: 43, scope: !4690)
!4754 = !DILocation(line: 235, column: 16, scope: !4690)
!4755 = !DILocation(line: 235, column: 14, scope: !4690)
!4756 = !DILocation(line: 236, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 236, column: 7)
!4758 = !DILocation(line: 236, column: 7, scope: !4690)
!4759 = !DILocation(line: 237, column: 4, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !2, line: 237, column: 4)
!4761 = !DILocation(line: 237, column: 4, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4760, file: !2, line: 237, column: 4)
!4763 = !DILocation(line: 237, column: 4, scope: !4757)
!4764 = !DILocation(line: 239, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 239, column: 7)
!4766 = !DILocation(line: 239, column: 7, scope: !4690)
!4767 = !DILocation(line: 240, column: 39, scope: !4765)
!4768 = !DILocation(line: 240, column: 45, scope: !4765)
!4769 = !{i8 0, i8 2}
!4770 = !DILocation(line: 240, column: 54, scope: !4765)
!4771 = !DILocation(line: 240, column: 4, scope: !4765)
!4772 = !DILocation(line: 252, column: 3, scope: !4690)
!4773 = !DILocation(line: 252, column: 10, scope: !4695)
!4774 = !DILocation(line: 252, column: 29, scope: !4695)
!4775 = !DILocation(line: 252, column: 16, scope: !4695)
!4776 = !DILocation(line: 252, column: 3, scope: !4696)
!4777 = !DILocation(line: 253, column: 4, scope: !4694)
!4778 = !DILocation(line: 253, column: 18, scope: !4694)
!4779 = !DILocation(line: 254, column: 4, scope: !4694)
!4780 = !DILocation(line: 254, column: 8, scope: !4694)
!4781 = !DILocation(line: 255, column: 4, scope: !4694)
!4782 = !DILocation(line: 255, column: 18, scope: !4694)
!4783 = !DILocation(line: 255, column: 25, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 255, column: 25)
!4785 = !DILocation(line: 255, column: 25, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4784, file: !2, line: 255, column: 25)
!4787 = !DILocation(line: 256, column: 4, scope: !4694)
!4788 = !DILocation(line: 256, column: 19, scope: !4694)
!4789 = !DILocation(line: 257, column: 5, scope: !4694)
!4790 = !DILocation(line: 259, column: 31, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 259, column: 8)
!4792 = !DILocation(line: 259, column: 9, scope: !4791)
!4793 = !DILocation(line: 259, column: 8, scope: !4694)
!4794 = !DILocation(line: 260, column: 5, scope: !4791)
!4795 = !DILocation(line: 266, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 266, column: 8)
!4797 = !DILocation(line: 266, column: 13, scope: !4796)
!4798 = !DILocation(line: 266, column: 16, scope: !4796)
!4799 = !DILocation(line: 266, column: 26, scope: !4796)
!4800 = !DILocation(line: 266, column: 32, scope: !4796)
!4801 = !DILocation(line: 266, column: 22, scope: !4796)
!4802 = !DILocation(line: 266, column: 8, scope: !4694)
!4803 = !DILocation(line: 267, column: 5, scope: !4796)
!4804 = !DILocation(line: 269, column: 8, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 269, column: 8)
!4806 = !DILocation(line: 269, column: 17, scope: !4805)
!4807 = !DILocation(line: 269, column: 14, scope: !4805)
!4808 = !DILocation(line: 269, column: 8, scope: !4694)
!4809 = !DILocation(line: 270, column: 14, scope: !4805)
!4810 = !DILocation(line: 270, column: 5, scope: !4805)
!4811 = !DILocation(line: 281, column: 38, scope: !4694)
!4812 = !DILocation(line: 282, column: 10, scope: !4694)
!4813 = !DILocation(line: 282, column: 16, scope: !4694)
!4814 = !DILocation(line: 281, column: 16, scope: !4694)
!4815 = !DILocation(line: 281, column: 14, scope: !4694)
!4816 = !DILocation(line: 283, column: 8, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 283, column: 8)
!4818 = !DILocation(line: 283, column: 21, scope: !4817)
!4819 = !DILocation(line: 283, column: 18, scope: !4817)
!4820 = !DILocation(line: 283, column: 8, scope: !4694)
!4821 = !DILocation(line: 284, column: 26, scope: !4817)
!4822 = !DILocation(line: 284, column: 35, scope: !4817)
!4823 = !DILocation(line: 284, column: 5, scope: !4817)
!4824 = !DILocation(line: 285, column: 25, scope: !4694)
!4825 = !DILocation(line: 285, column: 36, scope: !4694)
!4826 = !DILocation(line: 285, column: 46, scope: !4694)
!4827 = !DILocation(line: 285, column: 4, scope: !4694)
!4828 = !DILocation(line: 287, column: 9, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 287, column: 8)
!4830 = !DILocation(line: 287, column: 8, scope: !4694)
!4831 = !DILocation(line: 288, column: 5, scope: !4829)
!4832 = !DILocation(line: 290, column: 1, scope: !4694)
!4833 = !DILocation(line: 296, column: 4, scope: !4694)
!4834 = !DILocation(line: 299, column: 11, scope: !4694)
!4835 = !DILocation(line: 299, column: 9, scope: !4694)
!4836 = !DILocation(line: 300, column: 8, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 300, column: 8)
!4838 = !DILocation(line: 300, column: 8, scope: !4694)
!4839 = !DILocation(line: 301, column: 40, scope: !4837)
!4840 = !DILocation(line: 301, column: 46, scope: !4837)
!4841 = !DILocation(line: 301, column: 55, scope: !4837)
!4842 = !DILocation(line: 301, column: 5, scope: !4837)
!4843 = !DILocation(line: 302, column: 3, scope: !4695)
!4844 = !DILocation(line: 302, column: 3, scope: !4694)
!4845 = !DILocation(line: 252, column: 39, scope: !4695)
!4846 = !DILocation(line: 252, column: 3, scope: !4695)
!4847 = distinct !{!4847, !4776, !4848, !4849, !4850}
!4848 = !DILocation(line: 302, column: 3, scope: !4696)
!4849 = !{!"llvm.loop.mustprogress"}
!4850 = !{!"llvm.loop.unroll.disable"}
!4851 = !DILocation(line: 304, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 304, column: 7)
!4853 = !DILocation(line: 304, column: 7, scope: !4690)
!4854 = !DILocation(line: 305, column: 4, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !2, line: 305, column: 4)
!4856 = !DILocation(line: 305, column: 4, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4855, file: !2, line: 305, column: 4)
!4858 = !DILocation(line: 305, column: 4, scope: !4852)
!4859 = !DILocation(line: 306, column: 2, scope: !4691)
!4860 = !DILocation(line: 306, column: 2, scope: !4690)
!4861 = !DILocation(line: 218, column: 26, scope: !4691)
!4862 = !DILocation(line: 218, column: 13, scope: !4691)
!4863 = !DILocation(line: 216, column: 2, scope: !4691)
!4864 = distinct !{!4864, !4732, !4865, !4849, !4850}
!4865 = !DILocation(line: 306, column: 2, scope: !4692)
!4866 = !DILocation(line: 307, column: 1, scope: !4660)
!4867 = distinct !DISubprogram(name: "show_stack_regs", scope: !2, file: !2, line: 324, type: !4868, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4870)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !169}
!4870 = !{!4871}
!4871 = !DILocalVariable(name: "regs", arg: 1, scope: !4867, file: !2, line: 324, type: !169)
!4872 = !DILocation(line: 324, column: 38, scope: !4867)
!4873 = !DILocation(line: 326, column: 21, scope: !4867)
!4874 = !DILocation(line: 326, column: 30, scope: !4867)
!4875 = !DILocation(line: 326, column: 2, scope: !4867)
!4876 = !DILocation(line: 327, column: 1, scope: !4867)
!4877 = distinct !DISubprogram(name: "oops_begin", scope: !2, file: !2, line: 333, type: !4878, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4880)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!162}
!4880 = !{!4881, !4882, !4883, !4886, !4887, !4890, !4892}
!4881 = !DILocalVariable(name: "cpu", scope: !4877, file: !2, line: 335, type: !160)
!4882 = !DILocalVariable(name: "flags", scope: !4877, file: !2, line: 336, type: !162)
!4883 = !DILocalVariable(name: "__dummy", scope: !4884, file: !2, line: 341, type: !162)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !2, line: 341, column: 2)
!4885 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 341, column: 2)
!4886 = !DILocalVariable(name: "__dummy2", scope: !4884, file: !2, line: 341, type: !162)
!4887 = !DILocalVariable(name: "pscr_ret__", scope: !4888, file: !2, line: 342, type: !160)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !2, line: 342, column: 8)
!4889 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 342, column: 8)
!4890 = !DILocalVariable(name: "__vpp_verify", scope: !4891, file: !2, line: 342, type: !1983)
!4891 = distinct !DILexicalBlock(scope: !4888, file: !2, line: 342, column: 8)
!4892 = !DILocalVariable(name: "pfo_val__", scope: !4893, file: !2, line: 342, type: !239)
!4893 = distinct !DILexicalBlock(scope: !4888, file: !2, line: 342, column: 8)
!4894 = !DILocation(line: 335, column: 2, scope: !4877)
!4895 = !DILocation(line: 335, column: 6, scope: !4877)
!4896 = !DILocation(line: 336, column: 2, scope: !4877)
!4897 = !DILocation(line: 336, column: 16, scope: !4877)
!4898 = !DILocation(line: 338, column: 2, scope: !4877)
!4899 = !DILocation(line: 341, column: 2, scope: !4877)
!4900 = !DILocation(line: 341, column: 2, scope: !4884)
!4901 = !DILocation(line: 341, column: 2, scope: !4885)
!4902 = !DILocation(line: 342, column: 8, scope: !4889)
!4903 = !DILocation(line: 342, column: 8, scope: !4888)
!4904 = !DILocation(line: 342, column: 8, scope: !4891)
!4905 = !DILocation(line: 342, column: 8, scope: !4893)
!4906 = !{i64 2155057072}
!4907 = !DILocation(line: 342, column: 6, scope: !4877)
!4908 = !DILocation(line: 343, column: 7, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 343, column: 6)
!4910 = !DILocation(line: 343, column: 6, scope: !4877)
!4911 = !DILocation(line: 344, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !2, line: 344, column: 7)
!4913 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 343, column: 37)
!4914 = !DILocation(line: 344, column: 14, scope: !4912)
!4915 = !DILocation(line: 344, column: 11, scope: !4912)
!4916 = !DILocation(line: 344, column: 7, scope: !4913)
!4917 = !DILocation(line: 347, column: 4, scope: !4912)
!4918 = !DILocation(line: 348, column: 2, scope: !4913)
!4919 = !DILocation(line: 349, column: 16, scope: !4877)
!4920 = !DILocation(line: 350, column: 14, scope: !4877)
!4921 = !DILocation(line: 350, column: 12, scope: !4877)
!4922 = !DILocation(line: 351, column: 2, scope: !4877)
!4923 = !DILocation(line: 352, column: 2, scope: !4877)
!4924 = !DILocation(line: 353, column: 9, scope: !4877)
!4925 = !DILocation(line: 354, column: 1, scope: !4877)
!4926 = !DILocation(line: 353, column: 2, scope: !4877)
!4927 = !DISubprogram(name: "oops_enter", scope: !134, file: !134, line: 15, type: !2483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4928 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4929, file: !4929, line: 101, type: !4878, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4930)
!4929 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4930 = !{!4931}
!4931 = !DILocalVariable(name: "flags", scope: !4928, file: !4929, line: 103, type: !162)
!4932 = !DILocation(line: 103, column: 2, scope: !4928)
!4933 = !DILocation(line: 103, column: 16, scope: !4928)
!4934 = !DILocation(line: 103, column: 24, scope: !4928)
!4935 = !DILocation(line: 104, column: 2, scope: !4928)
!4936 = !DILocation(line: 105, column: 9, scope: !4928)
!4937 = !DILocation(line: 106, column: 1, scope: !4928)
!4938 = !DILocation(line: 105, column: 2, scope: !4928)
!4939 = distinct !DISubprogram(name: "queued_spin_trylock", scope: !4940, file: !4940, line: 90, type: !4941, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4944)
!4940 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!160, !4943}
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4944 = !{!4945, !4946}
!4945 = !DILocalVariable(name: "lock", arg: 1, scope: !4939, file: !4940, line: 90, type: !4943)
!4946 = !DILocalVariable(name: "val", scope: !4939, file: !4940, line: 92, type: !160)
!4947 = !DILocation(line: 90, column: 66, scope: !4939)
!4948 = !DILocation(line: 92, column: 2, scope: !4939)
!4949 = !DILocation(line: 92, column: 6, scope: !4939)
!4950 = !DILocation(line: 92, column: 25, scope: !4939)
!4951 = !DILocation(line: 92, column: 31, scope: !4939)
!4952 = !DILocation(line: 92, column: 12, scope: !4939)
!4953 = !DILocation(line: 94, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4939, file: !4940, line: 94, column: 6)
!4955 = !DILocation(line: 94, column: 6, scope: !4939)
!4956 = !DILocation(line: 95, column: 3, scope: !4954)
!4957 = !DILocation(line: 97, column: 9, scope: !4939)
!4958 = !DILocation(line: 97, column: 2, scope: !4939)
!4959 = !DILocation(line: 98, column: 1, scope: !4939)
!4960 = distinct !DISubprogram(name: "queued_spin_lock", scope: !4940, file: !4940, line: 107, type: !4961, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4963)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !4943}
!4963 = !{!4964, !4965}
!4964 = !DILocalVariable(name: "lock", arg: 1, scope: !4960, file: !4940, line: 107, type: !4943)
!4965 = !DILocalVariable(name: "val", scope: !4960, file: !4940, line: 109, type: !160)
!4966 = !DILocation(line: 107, column: 64, scope: !4960)
!4967 = !DILocation(line: 109, column: 2, scope: !4960)
!4968 = !DILocation(line: 109, column: 6, scope: !4960)
!4969 = !DILocation(line: 111, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4960, file: !4940, line: 111, column: 6)
!4971 = !DILocation(line: 111, column: 6, scope: !4960)
!4972 = !DILocation(line: 112, column: 3, scope: !4970)
!4973 = !DILocation(line: 114, column: 28, scope: !4960)
!4974 = !DILocation(line: 114, column: 34, scope: !4960)
!4975 = !DILocation(line: 114, column: 2, scope: !4960)
!4976 = !DILocation(line: 115, column: 1, scope: !4960)
!4977 = !DISubprogram(name: "console_verbose", scope: !4555, file: !4555, line: 70, type: !2483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4978 = !DISubprogram(name: "bust_spinlocks", scope: !4979, file: !4979, line: 218, type: !3705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4979 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4980 = distinct !DISubprogram(name: "oops_end", scope: !2, file: !2, line: 359, type: !4981, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !4983)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !162, !169, !160}
!4983 = !{!4984, !4985, !4986, !4987, !4990}
!4984 = !DILocalVariable(name: "flags", arg: 1, scope: !4980, file: !2, line: 359, type: !162)
!4985 = !DILocalVariable(name: "regs", arg: 2, scope: !4980, file: !2, line: 359, type: !169)
!4986 = !DILocalVariable(name: "signr", arg: 3, scope: !4980, file: !2, line: 359, type: !160)
!4987 = !DILocalVariable(name: "__dummy", scope: !4988, file: !2, line: 371, type: !162)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 371, column: 2)
!4989 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 371, column: 2)
!4990 = !DILocalVariable(name: "__dummy2", scope: !4988, file: !2, line: 371, type: !162)
!4991 = !DILocation(line: 359, column: 29, scope: !4980)
!4992 = !DILocation(line: 359, column: 52, scope: !4980)
!4993 = !DILocation(line: 359, column: 62, scope: !4980)
!4994 = !DILocation(line: 361, column: 6, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 361, column: 6)
!4996 = !DILocation(line: 361, column: 11, scope: !4995)
!4997 = !DILocation(line: 361, column: 33, scope: !4995)
!4998 = !DILocation(line: 361, column: 14, scope: !4995)
!4999 = !DILocation(line: 361, column: 6, scope: !4980)
!5000 = !DILocation(line: 362, column: 15, scope: !4995)
!5001 = !DILocation(line: 362, column: 3, scope: !4995)
!5002 = !DILocation(line: 364, column: 2, scope: !4980)
!5003 = !DILocation(line: 365, column: 12, scope: !4980)
!5004 = !DILocation(line: 366, column: 2, scope: !4980)
!5005 = !DILocation(line: 367, column: 16, scope: !4980)
!5006 = !DILocation(line: 368, column: 7, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 368, column: 6)
!5008 = !DILocation(line: 368, column: 6, scope: !4980)
!5009 = !DILocation(line: 370, column: 3, scope: !5007)
!5010 = !DILocation(line: 371, column: 2, scope: !4980)
!5011 = !DILocation(line: 371, column: 2, scope: !4988)
!5012 = !DILocation(line: 371, column: 2, scope: !4989)
!5013 = !DILocation(line: 371, column: 2, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 371, column: 2)
!5015 = !DILocation(line: 372, column: 2, scope: !4980)
!5016 = !DILocation(line: 375, column: 2, scope: !4980)
!5017 = !DILocation(line: 377, column: 7, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 377, column: 6)
!5019 = !DILocation(line: 377, column: 6, scope: !4980)
!5020 = !DILocation(line: 378, column: 3, scope: !5018)
!5021 = !DILocation(line: 379, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 379, column: 6)
!5023 = !DILocation(line: 379, column: 6, scope: !4980)
!5024 = !DILocation(line: 380, column: 3, scope: !5022)
!5025 = !DILocation(line: 381, column: 6, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 381, column: 6)
!5027 = !DILocation(line: 381, column: 6, scope: !4980)
!5028 = !DILocation(line: 382, column: 3, scope: !5026)
!5029 = !DILocation(line: 391, column: 28, scope: !4980)
!5030 = !DILocation(line: 391, column: 2, scope: !4980)
!5031 = !DILocation(line: 392, column: 29, scope: !4980)
!5032 = !DILocation(line: 392, column: 2, scope: !4980)
!5033 = !DISubprogram(name: "kexec_should_crash", scope: !5034, file: !5034, line: 387, type: !5035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5034 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!160, !228}
!5037 = !DISubprogram(name: "crash_kexec", scope: !5034, file: !5034, line: 386, type: !4868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5038 = !DISubprogram(name: "add_taint", scope: !134, file: !134, line: 93, type: !5039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{null, !38, !133}
!5041 = distinct !DISubprogram(name: "queued_spin_unlock", scope: !4940, file: !4940, line: 123, type: !4961, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "lock", arg: 1, scope: !5041, file: !4940, line: 123, type: !4943)
!5044 = !DILocation(line: 123, column: 66, scope: !5041)
!5045 = !DILocation(line: 128, column: 2, scope: !5041)
!5046 = !DILocation(line: 128, column: 2, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5041, file: !4940, line: 128, column: 2)
!5048 = !DILocation(line: 128, column: 2, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5047, file: !4940, line: 128, column: 2)
!5050 = !DILocation(line: 128, column: 2, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !4940, line: 128, column: 2)
!5052 = !DILocation(line: 128, column: 2, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5051, file: !4940, line: 128, column: 2)
!5054 = !{i64 2149678940}
!5055 = !DILocation(line: 128, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5051, file: !4940, line: 128, column: 2)
!5057 = !DILocation(line: 128, column: 2, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !4940, line: 128, column: 2)
!5059 = !DILocation(line: 128, column: 2, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5056, file: !4940, line: 128, column: 2)
!5061 = !DILocation(line: 129, column: 1, scope: !5041)
!5062 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4929, file: !4929, line: 132, type: !5063, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5065)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{null, !162}
!5065 = !{!5066}
!5066 = !DILocalVariable(name: "flags", arg: 1, scope: !5062, file: !4929, line: 132, type: !162)
!5067 = !DILocation(line: 132, column: 66, scope: !5062)
!5068 = !DILocation(line: 134, column: 32, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5062, file: !4929, line: 134, column: 6)
!5070 = !DILocation(line: 134, column: 7, scope: !5069)
!5071 = !DILocation(line: 134, column: 6, scope: !5062)
!5072 = !DILocation(line: 135, column: 3, scope: !5069)
!5073 = !DILocation(line: 136, column: 1, scope: !5062)
!5074 = !DISubprogram(name: "oops_exit", scope: !134, file: !134, line: 16, type: !2483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5075 = !DISubprogram(name: "__show_regs", scope: !139, file: !139, line: 39, type: !5076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !169, !138, !890}
!5078 = distinct !DISubprogram(name: "preempt_count", scope: !5079, file: !5079, line: 25, type: !2238, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5080)
!5079 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5080 = !{!5081}
!5081 = !DILocalVariable(name: "pfo_val__", scope: !5082, file: !5079, line: 27, type: !239)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !5079, line: 27, column: 9)
!5083 = !DILocation(line: 27, column: 9, scope: !5082)
!5084 = !{i64 2149512499}
!5085 = !DILocation(line: 27, column: 9, scope: !5078)
!5086 = !DILocation(line: 27, column: 48, scope: !5078)
!5087 = !DILocation(line: 27, column: 2, scope: !5078)
!5088 = !DISubprogram(name: "panic", scope: !134, file: !134, line: 12, type: !5089, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !890, null}
!5091 = distinct !DISubprogram(name: "kasan_unpoison_task_stack", scope: !739, file: !739, line: 289, type: !5092, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5094)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !228}
!5094 = !{!5095}
!5095 = !DILocalVariable(name: "task", arg: 1, scope: !5091, file: !739, line: 289, type: !228)
!5096 = !DILocation(line: 289, column: 66, scope: !5091)
!5097 = !DILocation(line: 289, column: 73, scope: !5091)
!5098 = !DISubprogram(name: "rewind_stack_and_make_dead", scope: !2, file: !2, line: 357, type: !3705, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5099 = distinct !DISubprogram(name: "__die_header", scope: !2, file: !2, line: 396, type: !5100, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5102)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !890, !169, !1156}
!5102 = !{!5103, !5104, !5105, !5106}
!5103 = !DILocalVariable(name: "str", arg: 1, scope: !5099, file: !2, line: 396, type: !890)
!5104 = !DILocalVariable(name: "regs", arg: 2, scope: !5099, file: !2, line: 396, type: !169)
!5105 = !DILocalVariable(name: "err", arg: 3, scope: !5099, file: !2, line: 396, type: !1156)
!5106 = !DILocalVariable(name: "pr", scope: !5099, file: !2, line: 398, type: !890)
!5107 = !DILocation(line: 396, column: 38, scope: !5099)
!5108 = !DILocation(line: 396, column: 59, scope: !5099)
!5109 = !DILocation(line: 396, column: 70, scope: !5099)
!5110 = !DILocation(line: 398, column: 2, scope: !5099)
!5111 = !DILocation(line: 398, column: 14, scope: !5099)
!5112 = !DILocation(line: 401, column: 7, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5099, file: !2, line: 401, column: 6)
!5114 = !DILocation(line: 401, column: 6, scope: !5099)
!5115 = !DILocation(line: 402, column: 24, scope: !5113)
!5116 = !DILocation(line: 402, column: 23, scope: !5113)
!5117 = !DILocation(line: 402, column: 3, scope: !5113)
!5118 = !DILocation(line: 405, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5099, file: !2, line: 404, column: 6)
!5120 = !DILocation(line: 407, column: 2, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5099, file: !2, line: 407, column: 2)
!5122 = !DILocation(line: 407, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5121, file: !2, line: 407, column: 2)
!5124 = !DILocation(line: 415, column: 1, scope: !5099)
!5125 = distinct !DISubprogram(name: "__die_body", scope: !2, file: !2, line: 418, type: !5126, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5128)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!160, !890, !169, !1156}
!5128 = !{!5129, !5130, !5131}
!5129 = !DILocalVariable(name: "str", arg: 1, scope: !5125, file: !2, line: 418, type: !890)
!5130 = !DILocalVariable(name: "regs", arg: 2, scope: !5125, file: !2, line: 418, type: !169)
!5131 = !DILocalVariable(name: "err", arg: 3, scope: !5125, file: !2, line: 418, type: !1156)
!5132 = !DILocation(line: 418, column: 35, scope: !5125)
!5133 = !DILocation(line: 418, column: 56, scope: !5125)
!5134 = !DILocation(line: 418, column: 67, scope: !5125)
!5135 = !DILocation(line: 420, column: 12, scope: !5125)
!5136 = !DILocation(line: 420, column: 2, scope: !5125)
!5137 = !DILocation(line: 421, column: 2, scope: !5125)
!5138 = !DILocation(line: 423, column: 27, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5125, file: !2, line: 423, column: 6)
!5140 = !DILocation(line: 423, column: 32, scope: !5139)
!5141 = !DILocation(line: 423, column: 38, scope: !5139)
!5142 = !DILocation(line: 424, column: 4, scope: !5139)
!5143 = !DILocation(line: 424, column: 13, scope: !5139)
!5144 = !DILocation(line: 424, column: 20, scope: !5139)
!5145 = !DILocation(line: 423, column: 6, scope: !5139)
!5146 = !DILocation(line: 424, column: 38, scope: !5139)
!5147 = !DILocation(line: 423, column: 6, scope: !5125)
!5148 = !DILocation(line: 425, column: 3, scope: !5139)
!5149 = !DILocation(line: 427, column: 2, scope: !5125)
!5150 = !DILocation(line: 428, column: 1, scope: !5125)
!5151 = distinct !DISubprogram(name: "__die", scope: !2, file: !2, line: 431, type: !5126, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5152)
!5152 = !{!5153, !5154, !5155}
!5153 = !DILocalVariable(name: "str", arg: 1, scope: !5151, file: !2, line: 431, type: !890)
!5154 = !DILocalVariable(name: "regs", arg: 2, scope: !5151, file: !2, line: 431, type: !169)
!5155 = !DILocalVariable(name: "err", arg: 3, scope: !5151, file: !2, line: 431, type: !1156)
!5156 = !DILocation(line: 431, column: 23, scope: !5151)
!5157 = !DILocation(line: 431, column: 44, scope: !5151)
!5158 = !DILocation(line: 431, column: 55, scope: !5151)
!5159 = !DILocation(line: 433, column: 15, scope: !5151)
!5160 = !DILocation(line: 433, column: 20, scope: !5151)
!5161 = !DILocation(line: 433, column: 26, scope: !5151)
!5162 = !DILocation(line: 433, column: 2, scope: !5151)
!5163 = !DILocation(line: 434, column: 20, scope: !5151)
!5164 = !DILocation(line: 434, column: 25, scope: !5151)
!5165 = !DILocation(line: 434, column: 31, scope: !5151)
!5166 = !DILocation(line: 434, column: 9, scope: !5151)
!5167 = !DILocation(line: 434, column: 2, scope: !5151)
!5168 = distinct !DISubprogram(name: "die", scope: !2, file: !2, line: 442, type: !5100, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5169)
!5169 = !{!5170, !5171, !5172, !5173, !5174}
!5170 = !DILocalVariable(name: "str", arg: 1, scope: !5168, file: !2, line: 442, type: !890)
!5171 = !DILocalVariable(name: "regs", arg: 2, scope: !5168, file: !2, line: 442, type: !169)
!5172 = !DILocalVariable(name: "err", arg: 3, scope: !5168, file: !2, line: 442, type: !1156)
!5173 = !DILocalVariable(name: "flags", scope: !5168, file: !2, line: 444, type: !162)
!5174 = !DILocalVariable(name: "sig", scope: !5168, file: !2, line: 445, type: !160)
!5175 = !DILocation(line: 442, column: 22, scope: !5168)
!5176 = !DILocation(line: 442, column: 43, scope: !5168)
!5177 = !DILocation(line: 442, column: 54, scope: !5168)
!5178 = !DILocation(line: 444, column: 2, scope: !5168)
!5179 = !DILocation(line: 444, column: 16, scope: !5168)
!5180 = !DILocation(line: 444, column: 24, scope: !5168)
!5181 = !DILocation(line: 445, column: 2, scope: !5168)
!5182 = !DILocation(line: 445, column: 6, scope: !5168)
!5183 = !DILocation(line: 447, column: 12, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 447, column: 6)
!5185 = !DILocation(line: 447, column: 17, scope: !5184)
!5186 = !DILocation(line: 447, column: 23, scope: !5184)
!5187 = !DILocation(line: 447, column: 6, scope: !5184)
!5188 = !DILocation(line: 447, column: 6, scope: !5168)
!5189 = !DILocation(line: 448, column: 7, scope: !5184)
!5190 = !DILocation(line: 448, column: 3, scope: !5184)
!5191 = !DILocation(line: 449, column: 11, scope: !5168)
!5192 = !DILocation(line: 449, column: 18, scope: !5168)
!5193 = !DILocation(line: 449, column: 24, scope: !5168)
!5194 = !DILocation(line: 449, column: 2, scope: !5168)
!5195 = !DILocation(line: 450, column: 1, scope: !5168)
!5196 = distinct !DISubprogram(name: "die_addr", scope: !2, file: !2, line: 452, type: !5197, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5199)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{null, !890, !169, !1156, !1156}
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205}
!5200 = !DILocalVariable(name: "str", arg: 1, scope: !5196, file: !2, line: 452, type: !890)
!5201 = !DILocalVariable(name: "regs", arg: 2, scope: !5196, file: !2, line: 452, type: !169)
!5202 = !DILocalVariable(name: "err", arg: 3, scope: !5196, file: !2, line: 452, type: !1156)
!5203 = !DILocalVariable(name: "gp_addr", arg: 4, scope: !5196, file: !2, line: 452, type: !1156)
!5204 = !DILocalVariable(name: "flags", scope: !5196, file: !2, line: 454, type: !162)
!5205 = !DILocalVariable(name: "sig", scope: !5196, file: !2, line: 455, type: !160)
!5206 = !DILocation(line: 452, column: 27, scope: !5196)
!5207 = !DILocation(line: 452, column: 48, scope: !5196)
!5208 = !DILocation(line: 452, column: 59, scope: !5196)
!5209 = !DILocation(line: 452, column: 69, scope: !5196)
!5210 = !DILocation(line: 454, column: 2, scope: !5196)
!5211 = !DILocation(line: 454, column: 16, scope: !5196)
!5212 = !DILocation(line: 454, column: 24, scope: !5196)
!5213 = !DILocation(line: 455, column: 2, scope: !5196)
!5214 = !DILocation(line: 455, column: 6, scope: !5196)
!5215 = !DILocation(line: 457, column: 15, scope: !5196)
!5216 = !DILocation(line: 457, column: 20, scope: !5196)
!5217 = !DILocation(line: 457, column: 26, scope: !5196)
!5218 = !DILocation(line: 457, column: 2, scope: !5196)
!5219 = !DILocation(line: 458, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5196, file: !2, line: 458, column: 6)
!5221 = !DILocation(line: 458, column: 6, scope: !5196)
!5222 = !DILocation(line: 459, column: 28, scope: !5220)
!5223 = !DILocation(line: 459, column: 3, scope: !5220)
!5224 = !DILocation(line: 460, column: 17, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5196, file: !2, line: 460, column: 6)
!5226 = !DILocation(line: 460, column: 22, scope: !5225)
!5227 = !DILocation(line: 460, column: 28, scope: !5225)
!5228 = !DILocation(line: 460, column: 6, scope: !5225)
!5229 = !DILocation(line: 460, column: 6, scope: !5196)
!5230 = !DILocation(line: 461, column: 7, scope: !5225)
!5231 = !DILocation(line: 461, column: 3, scope: !5225)
!5232 = !DILocation(line: 462, column: 11, scope: !5196)
!5233 = !DILocation(line: 462, column: 18, scope: !5196)
!5234 = !DILocation(line: 462, column: 24, scope: !5196)
!5235 = !DILocation(line: 462, column: 2, scope: !5196)
!5236 = !DILocation(line: 463, column: 1, scope: !5196)
!5237 = distinct !DISubprogram(name: "kasan_non_canonical_hook", scope: !739, file: !739, line: 472, type: !5063, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5238)
!5238 = !{!5239}
!5239 = !DILocalVariable(name: "addr", arg: 1, scope: !5237, file: !739, line: 472, type: !162)
!5240 = !DILocation(line: 472, column: 59, scope: !5237)
!5241 = !DILocation(line: 472, column: 67, scope: !5237)
!5242 = distinct !DISubprogram(name: "show_regs", scope: !2, file: !2, line: 465, type: !4868, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5243)
!5243 = !{!5244, !5245}
!5244 = !DILocalVariable(name: "regs", arg: 1, scope: !5242, file: !2, line: 465, type: !169)
!5245 = !DILocalVariable(name: "print_kernel_regs", scope: !5242, file: !2, line: 467, type: !138)
!5246 = !DILocation(line: 465, column: 32, scope: !5242)
!5247 = !DILocation(line: 467, column: 2, scope: !5242)
!5248 = !DILocation(line: 467, column: 22, scope: !5242)
!5249 = !DILocation(line: 469, column: 2, scope: !5242)
!5250 = !DILocation(line: 471, column: 32, scope: !5242)
!5251 = !DILocation(line: 471, column: 22, scope: !5242)
!5252 = !DILocation(line: 471, column: 20, scope: !5242)
!5253 = !DILocation(line: 472, column: 14, scope: !5242)
!5254 = !DILocation(line: 472, column: 20, scope: !5242)
!5255 = !DILocation(line: 472, column: 2, scope: !5242)
!5256 = !DILocation(line: 477, column: 17, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 477, column: 6)
!5258 = !DILocation(line: 477, column: 7, scope: !5257)
!5259 = !DILocation(line: 477, column: 6, scope: !5242)
!5260 = !DILocation(line: 478, column: 22, scope: !5257)
!5261 = !DILocation(line: 478, column: 31, scope: !5257)
!5262 = !DILocation(line: 478, column: 3, scope: !5257)
!5263 = !DILocation(line: 479, column: 1, scope: !5242)
!5264 = !DISubprogram(name: "show_regs_print_info", scope: !4555, file: !4555, line: 191, type: !4475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5265 = distinct !DISubprogram(name: "user_mode", scope: !171, file: !171, line: 209, type: !5266, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5268)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!160, !169}
!5268 = !{!5269}
!5269 = !DILocalVariable(name: "regs", arg: 1, scope: !5265, file: !171, line: 209, type: !169)
!5270 = !DILocation(line: 209, column: 54, scope: !5265)
!5271 = !DILocation(line: 214, column: 12, scope: !5265)
!5272 = !DILocation(line: 214, column: 18, scope: !5265)
!5273 = !DILocation(line: 214, column: 21, scope: !5265)
!5274 = !DILocation(line: 214, column: 10, scope: !5265)
!5275 = !DILocation(line: 214, column: 9, scope: !5265)
!5276 = !DILocation(line: 214, column: 2, scope: !5265)
!5277 = !DISubprogram(name: "get_cpu_entry_area", scope: !4462, file: !4462, line: 140, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!5280, !160}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_entry_area", file: !4462, line: 90, size: 1933312, elements: !5282)
!5282 = !{!5283, !5284, !5288, !5315, !5334, !5350}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "gdt", scope: !5281, file: !4462, line: 91, baseType: !4408, size: 32768)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "entry_stack_page", scope: !5281, file: !4462, line: 101, baseType: !5285, size: 32768, align: 32768, offset: 32768)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry_stack_page", file: !4076, line: 343, size: 32768, align: 32768, elements: !5286)
!5286 = !{!5287}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5285, file: !4076, line: 344, baseType: !4405, size: 32768)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "tss", scope: !5281, file: !4462, line: 112, baseType: !5289, size: 163840, align: 32768, offset: 65536)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tss_struct", file: !4076, line: 378, size: 163840, align: 32768, elements: !5290)
!5290 = !{!5291, !5305}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tss", scope: !5289, file: !4076, line: 384, baseType: !5292, size: 832)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hw_tss", file: !4076, line: 286, size: 832, elements: !5293)
!5293 = !{!5294, !5295, !5296, !5297, !5298, !5299, !5301, !5302, !5303, !5304}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5292, file: !4076, line: 287, baseType: !239, size: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sp0", scope: !5292, file: !4076, line: 288, baseType: !198, size: 64, offset: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "sp1", scope: !5292, file: !4076, line: 289, baseType: !198, size: 64, offset: 96)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "sp2", scope: !5292, file: !4076, line: 296, baseType: !198, size: 64, offset: 160)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5292, file: !4076, line: 298, baseType: !198, size: 64, offset: 224)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !5292, file: !4076, line: 299, baseType: !5300, size: 448, offset: 288)
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 448, elements: !2258)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5292, file: !4076, line: 300, baseType: !239, size: 32, offset: 736)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5292, file: !4076, line: 301, baseType: !239, size: 32, offset: 768)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !5292, file: !4076, line: 302, baseType: !194, size: 16, offset: 800)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap_base", scope: !5292, file: !4076, line: 303, baseType: !194, size: 16, offset: 816)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5289, file: !4076, line: 386, baseType: !5306, size: 131328, offset: 832)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_io_bitmap", file: !4076, line: 350, size: 131328, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5314}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sequence", scope: !5306, file: !4076, line: 352, baseType: !198, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "prev_max", scope: !5306, file: !4076, line: 361, baseType: !38, size: 32, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !5306, file: !4076, line: 369, baseType: !5311, size: 65600, offset: 128)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 65600, elements: !5312)
!5312 = !{!5313}
!5313 = !DISubrange(count: 1025)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "mapall", scope: !5306, file: !4076, line: 375, baseType: !5311, size: 65600, offset: 65728)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "estacks", scope: !5281, file: !4462, line: 118, baseType: !5316, size: 622592, offset: 229376)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cea_exception_stacks", file: !4462, line: 41, size: 622592, elements: !5317)
!5317 = !{!5318, !5319, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 32768)
!5320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !5321)
!5321 = !{!5322}
!5322 = !DISubrange(count: 8192)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 98304)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 131072)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 196608)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 229376)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 294912)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 327680)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 393216)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 425984)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 491520)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack", scope: !5316, file: !4462, line: 42, baseType: !5320, size: 65536, offset: 524288)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "IST_top_guard", scope: !5316, file: !4462, line: 42, baseType: !4408, size: 32768, offset: 589824)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_debug_store", scope: !5281, file: !4462, line: 124, baseType: !5335, size: 32768, align: 32768, offset: 851968)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store", file: !5336, line: 19, size: 32768, align: 32768, elements: !5337)
!5336 = !DIFile(filename: "./arch/x86/include/asm/intel_ds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9759f3a45bb2d5a9afbbc8ac696ba8f")
!5337 = !{!5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer_base", scope: !5335, file: !5336, line: 20, baseType: !198, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bts_index", scope: !5335, file: !5336, line: 21, baseType: !198, size: 64, offset: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "bts_absolute_maximum", scope: !5335, file: !5336, line: 22, baseType: !198, size: 64, offset: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "bts_interrupt_threshold", scope: !5335, file: !5336, line: 23, baseType: !198, size: 64, offset: 192)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer_base", scope: !5335, file: !5336, line: 24, baseType: !198, size: 64, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_index", scope: !5335, file: !5336, line: 25, baseType: !198, size: 64, offset: 320)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_absolute_maximum", scope: !5335, file: !5336, line: 26, baseType: !198, size: 64, offset: 384)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_interrupt_threshold", scope: !5335, file: !5336, line: 27, baseType: !198, size: 64, offset: 448)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_event_reset", scope: !5335, file: !5336, line: 28, baseType: !5347, size: 3072, offset: 512)
!5347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 3072, elements: !5348)
!5348 = !{!5349}
!5349 = !DISubrange(count: 48)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_debug_buffers", scope: !5281, file: !4462, line: 129, baseType: !5351, size: 1048576, offset: 884736)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store_buffers", file: !5336, line: 33, size: 1048576, elements: !5352)
!5352 = !{!5353, !5357}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer", scope: !5351, file: !5336, line: 34, baseType: !5354, size: 524288)
!5354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524288, elements: !5355)
!5355 = !{!5356}
!5356 = !DISubrange(count: 65536)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer", scope: !5351, file: !5336, line: 35, baseType: !5354, size: 524288, offset: 524288)
!5358 = !DISubprogram(name: "copy_from_kernel_nofault", scope: !5359, file: !5359, line: 374, type: !5360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5359 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!1156, !161, !1983, !1198}
!5362 = !DISubprogram(name: "copy_from_user_nmi", scope: !5363, file: !5363, line: 487, type: !5364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5363 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!162, !161, !1983, !162}
!5366 = distinct !DISubprogram(name: "unwind_start", scope: !4670, file: !4670, line: 59, type: !5367, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5370)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{null, !5369, !228, !169, !2469}
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!5370 = !{!5371, !5372, !5373, !5374}
!5371 = !DILocalVariable(name: "state", arg: 1, scope: !5366, file: !4670, line: 59, type: !5369)
!5372 = !DILocalVariable(name: "task", arg: 2, scope: !5366, file: !4670, line: 59, type: !228)
!5373 = !DILocalVariable(name: "regs", arg: 3, scope: !5366, file: !4670, line: 60, type: !169)
!5374 = !DILocalVariable(name: "first_frame", arg: 4, scope: !5366, file: !4670, line: 60, type: !2469)
!5375 = !DILocation(line: 59, column: 40, scope: !5366)
!5376 = !DILocation(line: 59, column: 67, scope: !5366)
!5377 = !DILocation(line: 60, column: 21, scope: !5366)
!5378 = !DILocation(line: 60, column: 42, scope: !5366)
!5379 = !DILocation(line: 62, column: 16, scope: !5366)
!5380 = !DILocation(line: 62, column: 50, scope: !5366)
!5381 = !DILocation(line: 62, column: 56, scope: !5366)
!5382 = !DILocation(line: 62, column: 32, scope: !5366)
!5383 = !DILocation(line: 62, column: 14, scope: !5366)
!5384 = !DILocation(line: 64, column: 17, scope: !5366)
!5385 = !DILocation(line: 64, column: 24, scope: !5366)
!5386 = !DILocation(line: 64, column: 30, scope: !5366)
!5387 = !DILocation(line: 64, column: 36, scope: !5366)
!5388 = !DILocation(line: 64, column: 2, scope: !5366)
!5389 = !DILocation(line: 65, column: 1, scope: !5366)
!5390 = distinct !DISubprogram(name: "unwind_get_entry_regs", scope: !4670, file: !4670, line: 71, type: !5391, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!169, !5369, !1921}
!5393 = !{!5394, !5395}
!5394 = !DILocalVariable(name: "state", arg: 1, scope: !5390, file: !4670, line: 71, type: !5369)
!5395 = !DILocalVariable(name: "partial", arg: 2, scope: !5390, file: !4670, line: 72, type: !1921)
!5396 = !DILocation(line: 71, column: 74, scope: !5390)
!5397 = !DILocation(line: 72, column: 17, scope: !5390)
!5398 = !DILocation(line: 74, column: 18, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5390, file: !4670, line: 74, column: 6)
!5400 = !DILocation(line: 74, column: 6, scope: !5399)
!5401 = !DILocation(line: 74, column: 6, scope: !5390)
!5402 = !DILocation(line: 75, column: 3, scope: !5399)
!5403 = !DILocation(line: 77, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5390, file: !4670, line: 77, column: 6)
!5405 = !DILocation(line: 77, column: 6, scope: !5390)
!5406 = !DILocation(line: 79, column: 15, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5404, file: !4670, line: 77, column: 15)
!5408 = !DILocation(line: 79, column: 22, scope: !5407)
!5409 = !DILocation(line: 79, column: 14, scope: !5407)
!5410 = !DILocation(line: 79, column: 4, scope: !5407)
!5411 = !DILocation(line: 79, column: 12, scope: !5407)
!5412 = !DILocation(line: 83, column: 2, scope: !5407)
!5413 = !DILocation(line: 85, column: 9, scope: !5390)
!5414 = !DILocation(line: 85, column: 16, scope: !5390)
!5415 = !DILocation(line: 85, column: 2, scope: !5390)
!5416 = !DILocation(line: 86, column: 1, scope: !5390)
!5417 = !DISubprogram(name: "get_stack_info", scope: !119, file: !119, line: 36, type: !5418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!160, !2469, !228, !4334, !2469}
!5420 = !DISubprogram(name: "stack_type_name", scope: !119, file: !119, line: 51, type: !5421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!890, !118}
!5423 = distinct !DISubprogram(name: "show_regs_if_on_stack", scope: !2, file: !2, line: 154, type: !5424, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5426)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !4334, !169, !887, !890}
!5426 = !{!5427, !5428, !5429, !5430}
!5427 = !DILocalVariable(name: "info", arg: 1, scope: !5423, file: !2, line: 154, type: !4334)
!5428 = !DILocalVariable(name: "regs", arg: 2, scope: !5423, file: !2, line: 154, type: !169)
!5429 = !DILocalVariable(name: "partial", arg: 3, scope: !5423, file: !2, line: 155, type: !887)
!5430 = !DILocalVariable(name: "log_lvl", arg: 4, scope: !5423, file: !2, line: 155, type: !890)
!5431 = !DILocation(line: 154, column: 54, scope: !5423)
!5432 = !DILocation(line: 154, column: 76, scope: !5423)
!5433 = !DILocation(line: 155, column: 12, scope: !5423)
!5434 = !DILocation(line: 155, column: 33, scope: !5423)
!5435 = !DILocation(line: 166, column: 7, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 166, column: 6)
!5437 = !DILocation(line: 166, column: 15, scope: !5436)
!5438 = !DILocation(line: 166, column: 27, scope: !5436)
!5439 = !DILocation(line: 166, column: 33, scope: !5436)
!5440 = !DILocation(line: 166, column: 18, scope: !5436)
!5441 = !DILocation(line: 166, column: 6, scope: !5423)
!5442 = !DILocation(line: 167, column: 15, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 166, column: 55)
!5444 = !DILocation(line: 167, column: 38, scope: !5443)
!5445 = !DILocation(line: 167, column: 3, scope: !5443)
!5446 = !DILocation(line: 169, column: 2, scope: !5443)
!5447 = !DILocation(line: 169, column: 13, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 169, column: 13)
!5449 = !DILocation(line: 169, column: 21, scope: !5448)
!5450 = !DILocation(line: 169, column: 33, scope: !5448)
!5451 = !DILocation(line: 169, column: 47, scope: !5448)
!5452 = !DILocation(line: 169, column: 52, scope: !5448)
!5453 = !DILocation(line: 169, column: 24, scope: !5448)
!5454 = !DILocation(line: 169, column: 13, scope: !5436)
!5455 = !DILocation(line: 176, column: 18, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 170, column: 30)
!5457 = !DILocation(line: 176, column: 24, scope: !5456)
!5458 = !DILocation(line: 176, column: 3, scope: !5456)
!5459 = !DILocation(line: 177, column: 2, scope: !5456)
!5460 = !DILocation(line: 178, column: 1, scope: !5423)
!5461 = distinct !DISubprogram(name: "__read_once_word_nocheck", scope: !5462, file: !5462, line: 65, type: !5463, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5465)
!5462 = !DIFile(filename: "./include/asm-generic/rwonce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58a03ecb2752a04ef9d857f8e36ba5d6")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!162, !1983}
!5465 = !{!5466}
!5466 = !DILocalVariable(name: "addr", arg: 1, scope: !5461, file: !5462, line: 65, type: !1983)
!5467 = !DILocation(line: 65, column: 52, scope: !5461)
!5468 = !DILocation(line: 67, column: 9, scope: !5461)
!5469 = !DILocation(line: 67, column: 2, scope: !5461)
!5470 = !DISubprogram(name: "unwind_get_return_address_ptr", scope: !4670, file: !4670, line: 46, type: !5471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!2469, !5369}
!5473 = !DISubprogram(name: "__kernel_text_address", scope: !4979, file: !4979, line: 214, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!160, !162}
!5476 = distinct !DISubprogram(name: "ftrace_graph_ret_addr", scope: !5477, file: !5477, line: 1141, type: !5478, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5480)
!5477 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!162, !228, !159, !162, !2469}
!5480 = !{!5481, !5482, !5483, !5484}
!5481 = !DILocalVariable(name: "task", arg: 1, scope: !5476, file: !5477, line: 1141, type: !228)
!5482 = !DILocalVariable(name: "idx", arg: 2, scope: !5476, file: !5477, line: 1141, type: !159)
!5483 = !DILocalVariable(name: "ret", arg: 3, scope: !5476, file: !5477, line: 1141, type: !162)
!5484 = !DILocalVariable(name: "retp", arg: 4, scope: !5476, file: !5477, line: 1142, type: !2469)
!5485 = !DILocation(line: 1141, column: 43, scope: !5476)
!5486 = !DILocation(line: 1141, column: 54, scope: !5476)
!5487 = !DILocation(line: 1141, column: 73, scope: !5476)
!5488 = !DILocation(line: 1142, column: 24, scope: !5476)
!5489 = !DILocation(line: 1144, column: 9, scope: !5476)
!5490 = !DILocation(line: 1144, column: 2, scope: !5476)
!5491 = distinct !DISubprogram(name: "printk_stack_address", scope: !2, file: !2, line: 68, type: !5492, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5494)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !162, !160, !890}
!5494 = !{!5495, !5496, !5497}
!5495 = !DILocalVariable(name: "address", arg: 1, scope: !5491, file: !2, line: 68, type: !162)
!5496 = !DILocalVariable(name: "reliable", arg: 2, scope: !5491, file: !2, line: 68, type: !160)
!5497 = !DILocalVariable(name: "log_lvl", arg: 3, scope: !5491, file: !2, line: 69, type: !890)
!5498 = !DILocation(line: 68, column: 48, scope: !5491)
!5499 = !DILocation(line: 68, column: 61, scope: !5491)
!5500 = !DILocation(line: 69, column: 18, scope: !5491)
!5501 = !DILocation(line: 71, column: 2, scope: !5491)
!5502 = !DILocation(line: 72, column: 2, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5491, file: !2, line: 72, column: 2)
!5504 = !DILocation(line: 72, column: 2, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5503, file: !2, line: 72, column: 2)
!5506 = !DILocation(line: 73, column: 1, scope: !5491)
!5507 = !DISubprogram(name: "unwind_next_frame", scope: !4670, file: !4670, line: 44, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!887, !5369}
!5510 = !DISubprogram(name: "__unwind_start", scope: !4670, file: !4670, line: 42, type: !5367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = distinct !DISubprogram(name: "unwind_done", scope: !4670, file: !4670, line: 48, type: !5508, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5512)
!5512 = !{!5513}
!5513 = !DILocalVariable(name: "state", arg: 1, scope: !5511, file: !4670, line: 48, type: !5369)
!5514 = !DILocation(line: 48, column: 53, scope: !5511)
!5515 = !DILocation(line: 50, column: 9, scope: !5511)
!5516 = !DILocation(line: 50, column: 16, scope: !5511)
!5517 = !DILocation(line: 50, column: 27, scope: !5511)
!5518 = !DILocation(line: 50, column: 32, scope: !5511)
!5519 = !DILocation(line: 50, column: 2, scope: !5511)
!5520 = distinct !DISubprogram(name: "on_stack", scope: !119, file: !119, line: 53, type: !5521, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5523)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!887, !4334, !161, !1198}
!5523 = !{!5524, !5525, !5526, !5527, !5528}
!5524 = !DILocalVariable(name: "info", arg: 1, scope: !5520, file: !119, line: 53, type: !4334)
!5525 = !DILocalVariable(name: "addr", arg: 2, scope: !5520, file: !119, line: 53, type: !161)
!5526 = !DILocalVariable(name: "len", arg: 3, scope: !5520, file: !119, line: 53, type: !1198)
!5527 = !DILocalVariable(name: "begin", scope: !5520, file: !119, line: 55, type: !161)
!5528 = !DILocalVariable(name: "end", scope: !5520, file: !119, line: 56, type: !161)
!5529 = !DILocation(line: 53, column: 48, scope: !5520)
!5530 = !DILocation(line: 53, column: 60, scope: !5520)
!5531 = !DILocation(line: 53, column: 73, scope: !5520)
!5532 = !DILocation(line: 55, column: 2, scope: !5520)
!5533 = !DILocation(line: 55, column: 8, scope: !5520)
!5534 = !DILocation(line: 55, column: 16, scope: !5520)
!5535 = !DILocation(line: 55, column: 22, scope: !5520)
!5536 = !DILocation(line: 56, column: 2, scope: !5520)
!5537 = !DILocation(line: 56, column: 8, scope: !5520)
!5538 = !DILocation(line: 56, column: 16, scope: !5520)
!5539 = !DILocation(line: 56, column: 22, scope: !5520)
!5540 = !DILocation(line: 58, column: 10, scope: !5520)
!5541 = !DILocation(line: 58, column: 16, scope: !5520)
!5542 = !DILocation(line: 58, column: 21, scope: !5520)
!5543 = !DILocation(line: 58, column: 43, scope: !5520)
!5544 = !DILocation(line: 59, column: 3, scope: !5520)
!5545 = !DILocation(line: 59, column: 11, scope: !5520)
!5546 = !DILocation(line: 59, column: 8, scope: !5520)
!5547 = !DILocation(line: 59, column: 17, scope: !5520)
!5548 = !DILocation(line: 59, column: 20, scope: !5520)
!5549 = !DILocation(line: 59, column: 27, scope: !5520)
!5550 = !DILocation(line: 59, column: 25, scope: !5520)
!5551 = !DILocation(line: 59, column: 31, scope: !5520)
!5552 = !DILocation(line: 60, column: 3, scope: !5520)
!5553 = !DILocation(line: 60, column: 10, scope: !5520)
!5554 = !DILocation(line: 60, column: 8, scope: !5520)
!5555 = !DILocation(line: 60, column: 16, scope: !5520)
!5556 = !DILocation(line: 60, column: 14, scope: !5520)
!5557 = !DILocation(line: 60, column: 22, scope: !5520)
!5558 = !DILocation(line: 60, column: 25, scope: !5520)
!5559 = !DILocation(line: 60, column: 32, scope: !5520)
!5560 = !DILocation(line: 60, column: 30, scope: !5520)
!5561 = !DILocation(line: 60, column: 39, scope: !5520)
!5562 = !DILocation(line: 60, column: 36, scope: !5520)
!5563 = !DILocation(line: 0, scope: !5520)
!5564 = !DILocation(line: 61, column: 1, scope: !5520)
!5565 = !DILocation(line: 58, column: 2, scope: !5520)
!5566 = distinct !DISubprogram(name: "touch_nmi_watchdog", scope: !5567, file: !5567, line: 139, type: !2483, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5567 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!5568 = !DILocation(line: 147, column: 2, scope: !5566)
!5569 = !DILocation(line: 149, column: 2, scope: !5566)
!5570 = !DILocation(line: 150, column: 1, scope: !5566)
!5571 = distinct !DISubprogram(name: "arch_touch_nmi_watchdog", scope: !5567, file: !5567, line: 96, type: !2483, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5572 = !DILocation(line: 96, column: 52, scope: !5571)
!5573 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !5567, file: !5567, line: 54, type: !2483, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5574 = !DILocation(line: 54, column: 54, scope: !5573)
!5575 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4929, file: !4929, line: 65, type: !4878, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5576 = !DILocation(line: 67, column: 9, scope: !5575)
!5577 = !DILocation(line: 67, column: 2, scope: !5575)
!5578 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4929, file: !4929, line: 70, type: !2483, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5579 = !DILocation(line: 72, column: 2, scope: !5578)
!5580 = !DILocation(line: 73, column: 1, scope: !5578)
!5581 = distinct !DISubprogram(name: "native_save_fl", scope: !4929, file: !4929, line: 17, type: !4878, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5582)
!5582 = !{!5583}
!5583 = !DILocalVariable(name: "flags", scope: !5581, file: !4929, line: 19, type: !162)
!5584 = !DILocation(line: 19, column: 2, scope: !5581)
!5585 = !DILocation(line: 19, column: 16, scope: !5581)
!5586 = !DILocation(line: 26, column: 2, scope: !5581)
!5587 = !{i64 1949386, i64 1949407}
!5588 = !DILocation(line: 32, column: 9, scope: !5581)
!5589 = !DILocation(line: 33, column: 1, scope: !5581)
!5590 = !DILocation(line: 32, column: 2, scope: !5581)
!5591 = distinct !DISubprogram(name: "native_irq_disable", scope: !4929, file: !4929, line: 35, type: !2483, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5592 = !DILocation(line: 37, column: 2, scope: !5591)
!5593 = !{i64 1949590}
!5594 = !DILocation(line: 38, column: 1, scope: !5591)
!5595 = distinct !DISubprogram(name: "atomic_read", scope: !5596, file: !5596, line: 30, type: !5597, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5601)
!5596 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!160, !5599}
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!5601 = !{!5602}
!5602 = !DILocalVariable(name: "v", arg: 1, scope: !5595, file: !5596, line: 30, type: !5599)
!5603 = !DILocation(line: 30, column: 29, scope: !5595)
!5604 = !DILocation(line: 32, column: 25, scope: !5595)
!5605 = !DILocation(line: 32, column: 2, scope: !5595)
!5606 = !DILocation(line: 33, column: 25, scope: !5595)
!5607 = !DILocation(line: 33, column: 9, scope: !5595)
!5608 = !DILocation(line: 33, column: 2, scope: !5595)
!5609 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !5596, file: !5596, line: 1292, type: !5610, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5613)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!887, !5612, !159, !160}
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!5613 = !{!5614, !5615, !5616}
!5614 = !DILocalVariable(name: "v", arg: 1, scope: !5609, file: !5596, line: 1292, type: !5612)
!5615 = !DILocalVariable(name: "old", arg: 2, scope: !5609, file: !5596, line: 1292, type: !159)
!5616 = !DILocalVariable(name: "new", arg: 3, scope: !5609, file: !5596, line: 1292, type: !160)
!5617 = !DILocation(line: 1292, column: 38, scope: !5609)
!5618 = !DILocation(line: 1292, column: 46, scope: !5609)
!5619 = !DILocation(line: 1292, column: 55, scope: !5609)
!5620 = !DILocation(line: 1294, column: 31, scope: !5609)
!5621 = !DILocation(line: 1294, column: 2, scope: !5609)
!5622 = !DILocation(line: 1295, column: 31, scope: !5609)
!5623 = !DILocation(line: 1295, column: 2, scope: !5609)
!5624 = !DILocation(line: 1296, column: 40, scope: !5609)
!5625 = !DILocation(line: 1296, column: 43, scope: !5609)
!5626 = !DILocation(line: 1296, column: 48, scope: !5609)
!5627 = !DILocation(line: 1296, column: 9, scope: !5609)
!5628 = !DILocation(line: 1296, column: 2, scope: !5609)
!5629 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5630, file: !5630, line: 66, type: !5631, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5636)
!5630 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !5633, !1198}
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5635)
!5635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5636 = !{!5637, !5638}
!5637 = !DILocalVariable(name: "v", arg: 1, scope: !5629, file: !5630, line: 66, type: !5633)
!5638 = !DILocalVariable(name: "size", arg: 2, scope: !5629, file: !5630, line: 66, type: !1198)
!5639 = !DILocation(line: 66, column: 73, scope: !5629)
!5640 = !DILocation(line: 66, column: 83, scope: !5629)
!5641 = !DILocation(line: 68, column: 19, scope: !5629)
!5642 = !DILocation(line: 68, column: 22, scope: !5629)
!5643 = !DILocation(line: 68, column: 2, scope: !5629)
!5644 = !DILocation(line: 69, column: 2, scope: !5629)
!5645 = !DILocation(line: 70, column: 1, scope: !5629)
!5646 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5647, file: !5647, line: 442, type: !5597, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5648)
!5647 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5648 = !{!5649}
!5649 = !DILocalVariable(name: "v", arg: 1, scope: !5646, file: !5647, line: 442, type: !5599)
!5650 = !DILocation(line: 442, column: 33, scope: !5646)
!5651 = !DILocation(line: 444, column: 26, scope: !5646)
!5652 = !DILocation(line: 444, column: 9, scope: !5646)
!5653 = !DILocation(line: 444, column: 2, scope: !5646)
!5654 = distinct !DISubprogram(name: "kasan_check_read", scope: !5655, file: !5655, line: 40, type: !5656, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5658)
!5655 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!887, !5633, !38}
!5658 = !{!5659, !5660}
!5659 = !DILocalVariable(name: "p", arg: 1, scope: !5654, file: !5655, line: 40, type: !5633)
!5660 = !DILocalVariable(name: "size", arg: 2, scope: !5654, file: !5655, line: 40, type: !38)
!5661 = !DILocation(line: 40, column: 58, scope: !5654)
!5662 = !DILocation(line: 40, column: 74, scope: !5654)
!5663 = !DILocation(line: 42, column: 2, scope: !5654)
!5664 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5665, file: !5665, line: 229, type: !5666, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5668)
!5665 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5666 = !DISubroutineType(types: !5667)
!5667 = !{null, !5633, !1198, !160}
!5668 = !{!5669, !5670, !5671}
!5669 = !DILocalVariable(name: "ptr", arg: 1, scope: !5664, file: !5665, line: 229, type: !5633)
!5670 = !DILocalVariable(name: "size", arg: 2, scope: !5664, file: !5665, line: 229, type: !1198)
!5671 = !DILocalVariable(name: "type", arg: 3, scope: !5664, file: !5665, line: 230, type: !160)
!5672 = !DILocation(line: 229, column: 60, scope: !5664)
!5673 = !DILocation(line: 229, column: 72, scope: !5664)
!5674 = !DILocation(line: 230, column: 15, scope: !5664)
!5675 = !DILocation(line: 230, column: 23, scope: !5664)
!5676 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5677, file: !5677, line: 17, type: !5597, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5678)
!5677 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5678 = !{!5679}
!5679 = !DILocalVariable(name: "v", arg: 1, scope: !5676, file: !5677, line: 17, type: !5599)
!5680 = !DILocation(line: 17, column: 61, scope: !5676)
!5681 = !DILocation(line: 23, column: 9, scope: !5676)
!5682 = !DILocation(line: 23, column: 2, scope: !5676)
!5683 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5630, file: !5630, line: 94, type: !5631, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5684)
!5684 = !{!5685, !5686}
!5685 = !DILocalVariable(name: "v", arg: 1, scope: !5683, file: !5630, line: 94, type: !5633)
!5686 = !DILocalVariable(name: "size", arg: 2, scope: !5683, file: !5630, line: 94, type: !1198)
!5687 = !DILocation(line: 94, column: 79, scope: !5683)
!5688 = !DILocation(line: 94, column: 89, scope: !5683)
!5689 = !DILocation(line: 96, column: 20, scope: !5683)
!5690 = !DILocation(line: 96, column: 23, scope: !5683)
!5691 = !DILocation(line: 96, column: 2, scope: !5683)
!5692 = !DILocation(line: 97, column: 2, scope: !5683)
!5693 = !DILocation(line: 98, column: 1, scope: !5683)
!5694 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !5647, file: !5647, line: 2142, type: !5610, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5695)
!5695 = !{!5696, !5697, !5698}
!5696 = !DILocalVariable(name: "v", arg: 1, scope: !5694, file: !5647, line: 2142, type: !5612)
!5697 = !DILocalVariable(name: "old", arg: 2, scope: !5694, file: !5647, line: 2142, type: !159)
!5698 = !DILocalVariable(name: "new", arg: 3, scope: !5694, file: !5647, line: 2142, type: !160)
!5699 = !DILocation(line: 2142, column: 42, scope: !5694)
!5700 = !DILocation(line: 2142, column: 50, scope: !5694)
!5701 = !DILocation(line: 2142, column: 59, scope: !5694)
!5702 = !DILocation(line: 2151, column: 33, scope: !5694)
!5703 = !DILocation(line: 2151, column: 36, scope: !5694)
!5704 = !DILocation(line: 2151, column: 41, scope: !5694)
!5705 = !DILocation(line: 2151, column: 9, scope: !5694)
!5706 = !DILocation(line: 2151, column: 2, scope: !5694)
!5707 = distinct !DISubprogram(name: "kasan_check_write", scope: !5655, file: !5655, line: 44, type: !5656, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5708)
!5708 = !{!5709, !5710}
!5709 = !DILocalVariable(name: "p", arg: 1, scope: !5707, file: !5655, line: 44, type: !5633)
!5710 = !DILocalVariable(name: "size", arg: 2, scope: !5707, file: !5655, line: 44, type: !38)
!5711 = !DILocation(line: 44, column: 59, scope: !5707)
!5712 = !DILocation(line: 44, column: 75, scope: !5707)
!5713 = !DILocation(line: 46, column: 2, scope: !5707)
!5714 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5677, file: !5677, line: 113, type: !5610, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5715)
!5715 = !{!5716, !5717, !5718, !5719, !5721, !5722, !5723, !5724}
!5716 = !DILocalVariable(name: "v", arg: 1, scope: !5714, file: !5677, line: 113, type: !5612)
!5717 = !DILocalVariable(name: "old", arg: 2, scope: !5714, file: !5677, line: 113, type: !159)
!5718 = !DILocalVariable(name: "new", arg: 3, scope: !5714, file: !5677, line: 113, type: !160)
!5719 = !DILocalVariable(name: "success", scope: !5720, file: !5677, line: 115, type: !887)
!5720 = distinct !DILexicalBlock(scope: !5714, file: !5677, line: 115, column: 9)
!5721 = !DILocalVariable(name: "_old", scope: !5720, file: !5677, line: 115, type: !159)
!5722 = !DILocalVariable(name: "__old", scope: !5720, file: !5677, line: 115, type: !160)
!5723 = !DILocalVariable(name: "__new", scope: !5720, file: !5677, line: 115, type: !160)
!5724 = !DILocalVariable(name: "__ptr", scope: !5720, file: !5677, line: 115, type: !4249)
!5725 = !DILocation(line: 113, column: 63, scope: !5714)
!5726 = !DILocation(line: 113, column: 71, scope: !5714)
!5727 = !DILocation(line: 113, column: 80, scope: !5714)
!5728 = !DILocation(line: 115, column: 9, scope: !5720)
!5729 = !{i64 2147854412, i64 2147854451, i64 2147854472, i64 2147854509, i64 2147854532, i64 2147854541, i64 2147854839}
!5730 = !DILocation(line: 115, column: 9, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5720, file: !5677, line: 115, column: 9)
!5732 = !DILocation(line: 115, column: 9, scope: !5714)
!5733 = !DILocation(line: 115, column: 2, scope: !5714)
!5734 = !DISubprogram(name: "queued_spin_lock_slowpath", scope: !4940, file: !4940, line: 100, type: !5735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{null, !4943, !239}
!5737 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !4929, file: !4929, line: 120, type: !5474, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5738)
!5738 = !{!5739}
!5739 = !DILocalVariable(name: "flags", arg: 1, scope: !5737, file: !4929, line: 120, type: !162)
!5740 = !DILocation(line: 120, column: 67, scope: !5737)
!5741 = !DILocation(line: 122, column: 11, scope: !5737)
!5742 = !DILocation(line: 122, column: 17, scope: !5737)
!5743 = !DILocation(line: 122, column: 9, scope: !5737)
!5744 = !DILocation(line: 122, column: 2, scope: !5737)
!5745 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4929, file: !4929, line: 75, type: !2483, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5746 = !DILocation(line: 77, column: 2, scope: !5745)
!5747 = !DILocation(line: 78, column: 1, scope: !5745)
!5748 = distinct !DISubprogram(name: "native_irq_enable", scope: !4929, file: !4929, line: 40, type: !2483, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5749 = !DILocation(line: 42, column: 2, scope: !5748)
!5750 = !{i64 1949682}
!5751 = !DILocation(line: 43, column: 1, scope: !5748)
!5752 = distinct !DISubprogram(name: "debug_pagealloc_enabled", scope: !1531, file: !1531, line: 3633, type: !1973, scopeLine: 3634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!5753 = !DILocation(line: 3635, column: 2, scope: !5752)
!5754 = distinct !DISubprogram(name: "arch_test_bit", scope: !5755, file: !5755, line: 237, type: !5756, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5758)
!5755 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!887, !162, !4243}
!5758 = !{!5759, !5760}
!5759 = !DILocalVariable(name: "nr", arg: 1, scope: !5754, file: !5755, line: 237, type: !162)
!5760 = !DILocalVariable(name: "addr", arg: 2, scope: !5754, file: !5755, line: 237, type: !4243)
!5761 = !DILocation(line: 237, column: 29, scope: !5754)
!5762 = !DILocation(line: 237, column: 63, scope: !5754)
!5763 = !DILocation(line: 239, column: 30, scope: !5754)
!5764 = !DILocation(line: 239, column: 9, scope: !5754)
!5765 = !DILocation(line: 239, column: 54, scope: !5754)
!5766 = !DILocation(line: 239, column: 58, scope: !5754)
!5767 = !DILocation(line: 239, column: 36, scope: !5754)
!5768 = !DILocation(line: 240, column: 26, scope: !5754)
!5769 = !DILocation(line: 240, column: 30, scope: !5754)
!5770 = !DILocation(line: 240, column: 8, scope: !5754)
!5771 = !DILocation(line: 239, column: 2, scope: !5754)
!5772 = distinct !DISubprogram(name: "constant_test_bit", scope: !5755, file: !5755, line: 204, type: !5773, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5775)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!887, !1156, !4243}
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "nr", arg: 1, scope: !5772, file: !5755, line: 204, type: !1156)
!5777 = !DILocalVariable(name: "addr", arg: 2, scope: !5772, file: !5755, line: 204, type: !4243)
!5778 = !DILocation(line: 204, column: 52, scope: !5772)
!5779 = !DILocation(line: 204, column: 86, scope: !5772)
!5780 = !DILocation(line: 206, column: 19, scope: !5772)
!5781 = !DILocation(line: 206, column: 22, scope: !5772)
!5782 = !DILocation(line: 206, column: 15, scope: !5772)
!5783 = !DILocation(line: 207, column: 4, scope: !5772)
!5784 = !DILocation(line: 207, column: 9, scope: !5772)
!5785 = !DILocation(line: 207, column: 12, scope: !5772)
!5786 = !DILocation(line: 206, column: 44, scope: !5772)
!5787 = !DILocation(line: 207, column: 37, scope: !5772)
!5788 = !DILocation(line: 206, column: 2, scope: !5772)
!5789 = distinct !DISubprogram(name: "variable_test_bit", scope: !5755, file: !5755, line: 224, type: !5773, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !5790)
!5790 = !{!5791, !5792, !5793}
!5791 = !DILocalVariable(name: "nr", arg: 1, scope: !5789, file: !5755, line: 224, type: !1156)
!5792 = !DILocalVariable(name: "addr", arg: 2, scope: !5789, file: !5755, line: 224, type: !4243)
!5793 = !DILocalVariable(name: "oldbit", scope: !5789, file: !5755, line: 226, type: !887)
!5794 = !DILocation(line: 224, column: 52, scope: !5789)
!5795 = !DILocation(line: 224, column: 86, scope: !5789)
!5796 = !DILocation(line: 226, column: 2, scope: !5789)
!5797 = !DILocation(line: 226, column: 7, scope: !5789)
!5798 = !DILocation(line: 231, column: 33, scope: !5789)
!5799 = !DILocation(line: 231, column: 46, scope: !5789)
!5800 = !DILocation(line: 228, column: 2, scope: !5789)
!5801 = !{i64 2148480533, i64 2148480607}
!5802 = !DILocation(line: 233, column: 9, scope: !5789)
!5803 = !DILocation(line: 234, column: 1, scope: !5789)
!5804 = !DILocation(line: 233, column: 2, scope: !5789)
!5805 = !DISubprogram(name: "print_modules", scope: !51, file: !51, line: 737, type: !2483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5806 = !DISubprogram(name: "notify_die", scope: !5807, file: !5807, line: 20, type: !5808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5807 = !DIFile(filename: "./include/linux/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "540f38f52f30c3c7c1cb3ec423fc360f")
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!160, !144, !890, !169, !1156, !160, !160}
