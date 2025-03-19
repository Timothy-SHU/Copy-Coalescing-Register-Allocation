; ModuleID = 'kernel/stop_machine.c'
source_filename = "kernel/stop_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init..kmod_stop_machine__293_584_cpu_stop_init\22, \22a\22\09\09"
module asm "__initcall__kmod_stop_machine__293_584_cpu_stop_initearly:\09\09\09"
module asm ".long\09__initstub__kmod_stop_machine__293_584_cpu_stop_initearly - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stop_machine: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stop_machine ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stop_core_cpuslocked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stop_core_cpuslocked ; .previous"

%struct.cpu_stopper = type { ptr, %struct.raw_spinlock, i8, %struct.list_head, %struct.cpu_stop_work, i64, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i64, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
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
%struct.cpu_stop_done = type { %struct.atomic_t, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wake_q_head = type { ptr, ptr }
%struct.multi_stop_data = type { ptr, ptr, i32, ptr, i32, %struct.atomic_t }

@cpu_stopper = internal global %struct.cpu_stopper zeroinitializer, section ".data..percpu", align 8, !dbg !0
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [23 x i8] c"%sStopper: %pS <- %pS\0A\00", align 1, !dbg !4097
@.str.1 = private unnamed_addr constant [22 x i8] c"kernel/stop_machine.c\00", align 1, !dbg !4102
@__UNIQUE_ID___addressable___initstub__kmod_stop_machine__293_584_cpu_stop_initearly294 = internal global ptr @__initstub__kmod_stop_machine__293_584_cpu_stop_initearly, section ".discard.addressable", align 8, !dbg !4107
@stop_machine_initialized = internal global i8 0, align 1, !dbg !4264
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_stop_machine295 = internal global ptr @stop_machine, section ".discard.addressable", align 8, !dbg !4109
@__UNIQUE_ID___addressable_stop_core_cpuslocked296 = internal global ptr @stop_core_cpuslocked, section ".discard.addressable", align 8, !dbg !4111
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@stop_cpus_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 16), ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 16) } }, align 8, !dbg !4266
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4113
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !4120
@cpu_stop_queue_work.__UNIQUE_ID___addressable___SCK__preempt_schedule287 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4125
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !4156
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4159
@stop_cpus_in_progress = internal global i8 0, align 1, !dbg !4192
@cpu_stop_queue_two_works.__UNIQUE_ID___addressable___SCK__preempt_schedule290 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4164
@cpu_stop_queue_two_works.__UNIQUE_ID___addressable___SCK__preempt_schedule291 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4190
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpu_stop_threads = internal global %struct.smp_hotplug_thread { ptr @cpu_stopper, %struct.list_head zeroinitializer, ptr @cpu_stop_should_run, ptr @cpu_stopper_thread, ptr @cpu_stop_create, ptr null, ptr null, ptr @cpu_stop_park, ptr null, i8 1, ptr @.str.4 }, align 8, !dbg !4199
@.str.4 = private unnamed_addr constant [13 x i8] c"migration/%u\00", align 1, !dbg !4194
@cpu_stopper_thread.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4224
@.str.5 = private unnamed_addr constant [40 x i8] c"cpu_stop: %ps(%p) leaked preempt count\0A\00", align 1, !dbg !4259
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@queue_stop_cpus_work.__UNIQUE_ID___addressable___SCK__preempt_schedule292 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4268
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_stop_machine__293_584_cpu_stop_initearly294, ptr @__UNIQUE_ID___addressable_stop_machine295, ptr @__UNIQUE_ID___addressable_stop_core_cpuslocked296, ptr @cpu_stop_queue_work.__UNIQUE_ID___addressable___SCK__preempt_schedule287, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144, ptr @cpu_stop_queue_two_works.__UNIQUE_ID___addressable___SCK__preempt_schedule290, ptr @cpu_stop_queue_two_works.__UNIQUE_ID___addressable___SCK__preempt_schedule291, ptr @queue_stop_cpus_work.__UNIQUE_ID___addressable___SCK__preempt_schedule292], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @print_stop_info(ptr noundef %log_lvl, ptr noundef %task) #0 align 16 !dbg !4299 {
entry:
  %log_lvl.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %log_lvl, ptr %log_lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_lvl.addr, metadata !4303, metadata !DIExpression()), !dbg !4311
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4304, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !4313
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4305, metadata !DIExpression()), !dbg !4314
  br label %do.body, !dbg !4315

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4306, metadata !DIExpression()), !dbg !4316
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4316
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4315
  br label %do.cond, !dbg !4316

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4316

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4309, metadata !DIExpression()), !dbg !4317
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4317
  %1 = load i64, ptr %__ptr, align 8, !dbg !4317
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4317
  %call = call i32 @task_cpu(ptr noundef %2) #16, !dbg !4317
  %idxprom = zext i32 %call to i64, !dbg !4317
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4317
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4317
  %add = add i64 %1, %3, !dbg !4317
  %4 = inttoptr i64 %add to ptr, !dbg !4317
  store ptr %4, ptr %tmp1, align 8, !dbg !4317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4315
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4317
  store ptr %5, ptr %tmp, align 8, !dbg !4316
  %6 = load ptr, ptr %tmp, align 8, !dbg !4315
  store ptr %6, ptr %stopper, align 8, !dbg !4314
  %7 = load ptr, ptr %task.addr, align 8, !dbg !4318
  %8 = load ptr, ptr %stopper, align 8, !dbg !4320
  %thread = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 0, !dbg !4321
  %9 = load ptr, ptr %thread, align 8, !dbg !4321
  %cmp = icmp ne ptr %7, %9, !dbg !4322
  br i1 %cmp, label %if.then, label %if.end, !dbg !4323

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4324

if.end:                                           ; preds = %do.end
  br label %do.body2, !dbg !4325

do.body2:                                         ; preds = %if.end
  br label %do.cond3, !dbg !4327

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4327

do.end4:                                          ; preds = %do.cond3
  %10 = load ptr, ptr %log_lvl.addr, align 8, !dbg !4325
  %11 = load ptr, ptr %stopper, align 8, !dbg !4325
  %fn = getelementptr inbounds %struct.cpu_stopper, ptr %11, i32 0, i32 6, !dbg !4325
  %12 = load ptr, ptr %fn, align 8, !dbg !4325
  %13 = load ptr, ptr %stopper, align 8, !dbg !4325
  %caller = getelementptr inbounds %struct.cpu_stopper, ptr %13, i32 0, i32 5, !dbg !4325
  %14 = load i64, ptr %caller, align 8, !dbg !4325
  %15 = inttoptr i64 %14 to ptr, !dbg !4325
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %10, ptr noundef %12, ptr noundef %15) #17, !dbg !4325
  store i32 %call6, ptr %tmp5, align 4, !dbg !4327
  %16 = load i32, ptr %tmp5, align 4, !dbg !4325
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4329
  br label %cleanup, !dbg !4329

cleanup:                                          ; preds = %do.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !4329
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4329

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_cpu(ptr noundef %p) #3 align 16 !dbg !4330 {
entry:
  %p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  br label %do.body, !dbg !4338

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4340

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4338
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4338
  %cpu = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 3, !dbg !4338
  %1 = load volatile i32, ptr %cpu, align 4, !dbg !4338
  store i32 %1, ptr %tmp, align 4, !dbg !4340
  %2 = load i32, ptr %tmp, align 4, !dbg !4338
  ret i32 %2, !dbg !4342
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4343 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_one_cpu(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg) #0 align 16 !dbg !4347 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %done = alloca %struct.cpu_stop_done, align 8
  %work = alloca %struct.cpu_stop_work, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4351, metadata !DIExpression()), !dbg !4356
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4352, metadata !DIExpression()), !dbg !4357
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4353, metadata !DIExpression()), !dbg !4358
  call void @llvm.lifetime.start.p0(i64 40, ptr %done) #15, !dbg !4359
  call void @llvm.dbg.declare(metadata ptr %done, metadata !4354, metadata !DIExpression()), !dbg !4360
  call void @llvm.lifetime.start.p0(i64 48, ptr %work) #15, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %work, metadata !4355, metadata !DIExpression()), !dbg !4362
  %list = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 0, !dbg !4363
  call void @llvm.memset.p0.i64(ptr align 8 %list, i8 0, i64 16, i1 false), !dbg !4363
  %fn1 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 1, !dbg !4363
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !4364
  store ptr %0, ptr %fn1, align 8, !dbg !4363
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 2, !dbg !4363
  %1 = call ptr @llvm.returnaddress(i32 0), !dbg !4365
  %2 = ptrtoint ptr %1 to i64, !dbg !4365
  store i64 %2, ptr %caller, align 8, !dbg !4363
  %arg2 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 3, !dbg !4363
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !4366
  store ptr %3, ptr %arg2, align 8, !dbg !4363
  %done3 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 4, !dbg !4363
  store ptr %done, ptr %done3, align 8, !dbg !4363
  call void @cpu_stop_init_done(ptr noundef %done, i32 noundef 1) #16, !dbg !4367
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !4368
  %call = call zeroext i1 @cpu_stop_queue_work(i32 noundef %4, ptr noundef %work) #16, !dbg !4370
  br i1 %call, label %if.end, label %if.then, !dbg !4371

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4372

if.end:                                           ; preds = %entry
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 151, i32 noundef 0) #16, !dbg !4373
  %call4 = call i32 @_cond_resched() #16, !dbg !4373
  store i32 %call4, ptr %tmp, align 4, !dbg !4373
  %5 = load i32, ptr %tmp, align 4, !dbg !4373
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, !dbg !4375
  call void @wait_for_completion(ptr noundef %completion) #16, !dbg !4376
  %ret = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1, !dbg !4377
  %6 = load i32, ptr %ret, align 4, !dbg !4377
  store i32 %6, ptr %retval, align 4, !dbg !4378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4378

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %work) #15, !dbg !4379
  call void @llvm.lifetime.end.p0(i64 40, ptr %done) #15, !dbg !4379
  %7 = load i32, ptr %retval, align 4, !dbg !4379
  ret i32 %7, !dbg !4379
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_stop_init_done(ptr noundef %done, i32 noundef %nr_todo) #0 align 16 !dbg !4380 {
entry:
  %done.addr = alloca ptr, align 8
  %nr_todo.addr = alloca i32, align 4
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !4384, metadata !DIExpression()), !dbg !4386
  store i32 %nr_todo, ptr %nr_todo.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_todo.addr, metadata !4385, metadata !DIExpression()), !dbg !4387
  %0 = load ptr, ptr %done.addr, align 8, !dbg !4388
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false), !dbg !4389
  %1 = load ptr, ptr %done.addr, align 8, !dbg !4390
  %nr_todo1 = getelementptr inbounds %struct.cpu_stop_done, ptr %1, i32 0, i32 0, !dbg !4391
  %2 = load i32, ptr %nr_todo.addr, align 4, !dbg !4392
  call void @atomic_set(ptr noundef %nr_todo1, i32 noundef %2) #16, !dbg !4393
  %3 = load ptr, ptr %done.addr, align 8, !dbg !4394
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %3, i32 0, i32 2, !dbg !4395
  call void @init_completion(ptr noundef %completion) #16, !dbg !4396
  ret void, !dbg !4397
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_stop_queue_work(i32 noundef %cpu, ptr noundef %work) #0 align 16 !dbg !4127 {
entry:
  %cpu.addr = alloca i32, align 4
  %work.addr = alloca ptr, align 8
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %wakeq = alloca %struct.wake_q_head, align 8
  %flags = alloca i64, align 8
  %enabled = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4131, metadata !DIExpression()), !dbg !4398
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4132, metadata !DIExpression()), !dbg !4399
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !4400
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4133, metadata !DIExpression()), !dbg !4401
  br label %do.body, !dbg !4402

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4134, metadata !DIExpression()), !dbg !4403
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4403
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4402
  br label %do.cond, !dbg !4403

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4403

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4137, metadata !DIExpression()), !dbg !4404
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4404
  %1 = load i64, ptr %__ptr, align 8, !dbg !4404
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4404
  %idxprom = zext i32 %2 to i64, !dbg !4404
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4404
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4404
  %add = add i64 %1, %3, !dbg !4404
  %4 = inttoptr i64 %add to ptr, !dbg !4404
  store ptr %4, ptr %tmp1, align 8, !dbg !4404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4402
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4404
  store ptr %5, ptr %tmp, align 8, !dbg !4403
  %6 = load ptr, ptr %tmp, align 8, !dbg !4402
  store ptr %6, ptr %stopper, align 8, !dbg !4401
  call void @llvm.lifetime.start.p0(i64 16, ptr %wakeq) #15, !dbg !4405
  call void @llvm.dbg.declare(metadata ptr %wakeq, metadata !4139, metadata !DIExpression()), !dbg !4405
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 0, !dbg !4405
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !4405
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 1, !dbg !4405
  %first2 = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 0, !dbg !4405
  store ptr %first2, ptr %lastp, align 8, !dbg !4405
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4406
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4146, metadata !DIExpression()), !dbg !4407
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #15, !dbg !4408
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !4147, metadata !DIExpression()), !dbg !4409
  br label %do.body3, !dbg !4410

do.body3:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !4411
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4411, !srcloc !4413
  br label %do.cond4, !dbg !4411

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4411

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !4414

do.body6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4148, metadata !DIExpression()), !dbg !4415
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4151, metadata !DIExpression()), !dbg !4415
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4415
  %conv = zext i1 %cmp to i32, !dbg !4415
  store i32 1, ptr %tmp7, align 4, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4416
  %7 = load i32, ptr %tmp7, align 4, !dbg !4415
  %8 = load ptr, ptr %stopper, align 8, !dbg !4416
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 1, !dbg !4416
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #16, !dbg !4416
  store i64 %call, ptr %flags, align 8, !dbg !4416
  br label %do.cond8, !dbg !4416

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !4416

do.end9:                                          ; preds = %do.cond8
  %9 = load ptr, ptr %stopper, align 8, !dbg !4417
  %enabled10 = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 2, !dbg !4418
  %10 = load i8, ptr %enabled10, align 4, !dbg !4418, !range !4419, !noundef !496
  %tobool = trunc i8 %10 to i1, !dbg !4418
  %frombool = zext i1 %tobool to i8, !dbg !4420
  store i8 %frombool, ptr %enabled, align 1, !dbg !4420
  %11 = load i8, ptr %enabled, align 1, !dbg !4421, !range !4419, !noundef !496
  %tobool11 = trunc i8 %11 to i1, !dbg !4421
  br i1 %tobool11, label %if.then, label %if.else, !dbg !4423

if.then:                                          ; preds = %do.end9
  %12 = load ptr, ptr %stopper, align 8, !dbg !4424
  %13 = load ptr, ptr %work.addr, align 8, !dbg !4425
  call void @__cpu_stop_queue_work(ptr noundef %12, ptr noundef %13, ptr noundef %wakeq) #16, !dbg !4426
  br label %if.end15, !dbg !4426

if.else:                                          ; preds = %do.end9
  %14 = load ptr, ptr %work.addr, align 8, !dbg !4427
  %done = getelementptr inbounds %struct.cpu_stop_work, ptr %14, i32 0, i32 4, !dbg !4429
  %15 = load ptr, ptr %done, align 8, !dbg !4429
  %tobool12 = icmp ne ptr %15, null, !dbg !4427
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !4430

if.then13:                                        ; preds = %if.else
  %16 = load ptr, ptr %work.addr, align 8, !dbg !4431
  %done14 = getelementptr inbounds %struct.cpu_stop_work, ptr %16, i32 0, i32 4, !dbg !4432
  %17 = load ptr, ptr %done14, align 8, !dbg !4432
  call void @cpu_stop_signal_done(ptr noundef %17) #16, !dbg !4433
  br label %if.end, !dbg !4433

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  br label %do.body16, !dbg !4434

do.body16:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy17) #15, !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %__dummy17, metadata !4152, metadata !DIExpression()), !dbg !4435
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy218) #15, !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %__dummy218, metadata !4155, metadata !DIExpression()), !dbg !4435
  %cmp19 = icmp eq ptr %__dummy17, %__dummy218, !dbg !4435
  %conv20 = zext i1 %cmp19 to i32, !dbg !4435
  store i32 1, ptr %tmp21, align 4, !dbg !4435
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy218) #15, !dbg !4436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy17) #15, !dbg !4436
  %18 = load i32, ptr %tmp21, align 4, !dbg !4435
  %19 = load ptr, ptr %stopper, align 8, !dbg !4436
  %lock22 = getelementptr inbounds %struct.cpu_stopper, ptr %19, i32 0, i32 1, !dbg !4436
  %20 = load i64, ptr %flags, align 8, !dbg !4436
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock22, i64 noundef %20) #16, !dbg !4436
  br label %do.cond23, !dbg !4436

do.cond23:                                        ; preds = %do.body16
  br label %do.end24, !dbg !4436

do.end24:                                         ; preds = %do.cond23
  call void @wake_up_q(ptr noundef %wakeq) #16, !dbg !4437
  br label %do.body25, !dbg !4438

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4439, !srcloc !4441
  %call26 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !4442
  %lnot = xor i1 %call26, true, !dbg !4442
  %lnot27 = xor i1 %lnot, true, !dbg !4442
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !4442
  %conv28 = sext i32 %lnot.ext to i64, !dbg !4442
  %expval = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !4442
  %tobool29 = icmp ne i64 %expval, 0, !dbg !4442
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !4439

if.then30:                                        ; preds = %do.body25
  br label %do.body31, !dbg !4442

do.body31:                                        ; preds = %if.then30
  %21 = call i64 @llvm.read_register.i64(metadata !4289), !dbg !4444
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #15, !dbg !4444, !srcloc !4446
  call void @llvm.write_register.i64(metadata !4289, i64 %22), !dbg !4444
  br label %do.cond32, !dbg !4444

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !4444

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !4444

if.end34:                                         ; preds = %do.end33, %do.body25
  br label %do.cond35, !dbg !4439

do.cond35:                                        ; preds = %if.end34
  br label %do.end36, !dbg !4439

do.end36:                                         ; preds = %do.cond35
  %23 = load i8, ptr %enabled, align 1, !dbg !4447, !range !4419, !noundef !496
  %tobool37 = trunc i8 %23 to i1, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #15, !dbg !4448
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4448
  call void @llvm.lifetime.end.p0(i64 16, ptr %wakeq) #15, !dbg !4448
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !4448
  ret i1 %tobool37, !dbg !4449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !4450 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4455, metadata !DIExpression()), !dbg !4458
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4456, metadata !DIExpression()), !dbg !4459
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !4457, metadata !DIExpression()), !dbg !4460
  ret void, !dbg !4461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #7 align 16 !dbg !4158 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !4462
  %0 = load ptr, ptr %tmp, align 8, !dbg !4462
  %call = call i32 %0() #16, !dbg !4464
  ret i32 %call, !dbg !4465
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4466 dso_local void @wait_for_completion(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @stop_machine_yield(ptr noundef %cpumask) #0 align 16 !dbg !4467 {
entry:
  %cpumask.addr = alloca ptr, align 8
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @cpu_relax() #16, !dbg !4473
  ret void, !dbg !4474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #7 align 16 !dbg !4475 {
entry:
  call void @rep_nop() #16, !dbg !4477
  ret void, !dbg !4478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_two_cpus(i32 noundef %cpu1, i32 noundef %cpu2, ptr noundef %fn, ptr noundef %arg) #0 align 16 !dbg !4479 {
entry:
  %retval = alloca i32, align 4
  %cpu1.addr = alloca i32, align 4
  %cpu2.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %done = alloca %struct.cpu_stop_done, align 8
  %work1 = alloca %struct.cpu_stop_work, align 8
  %work2 = alloca %struct.cpu_stop_work, align 8
  %msdata = alloca %struct.multi_stop_data, align 8
  %.compoundliteral = alloca %struct.multi_stop_data, align 8
  %.compoundliteral2 = alloca %struct.cpu_stop_work, align 8
  %__tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu1, ptr %cpu1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu1.addr, metadata !4483, metadata !DIExpression()), !dbg !4502
  store i32 %cpu2, ptr %cpu2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu2.addr, metadata !4484, metadata !DIExpression()), !dbg !4503
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4485, metadata !DIExpression()), !dbg !4504
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4486, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 40, ptr %done) #15, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %done, metadata !4487, metadata !DIExpression()), !dbg !4507
  call void @llvm.lifetime.start.p0(i64 48, ptr %work1) #15, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %work1, metadata !4488, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 48, ptr %work2) #15, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %work2, metadata !4489, metadata !DIExpression()), !dbg !4510
  call void @llvm.lifetime.start.p0(i64 40, ptr %msdata) #15, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %msdata, metadata !4490, metadata !DIExpression()), !dbg !4512
  %fn1 = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 0, !dbg !4513
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !4514
  store ptr %0, ptr %fn1, align 8, !dbg !4513
  %data = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 1, !dbg !4513
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !4515
  store ptr %1, ptr %data, align 8, !dbg !4513
  %num_threads = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 2, !dbg !4513
  store i32 2, ptr %num_threads, align 8, !dbg !4513
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 3, !dbg !4513
  %2 = load i32, ptr %cpu1.addr, align 4, !dbg !4516
  %call = call ptr @get_cpu_mask(i32 noundef %2) #16, !dbg !4516
  store ptr %call, ptr %active_cpus, align 8, !dbg !4513
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 4, !dbg !4513
  store i32 0, ptr %state, align 8, !dbg !4513
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %.compoundliteral, i32 0, i32 5, !dbg !4513
  call void @llvm.memset.p0.i64(ptr align 4 %thread_ack, i8 0, i64 4, i1 false), !dbg !4513
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %msdata, ptr align 8 %.compoundliteral, i64 40, i1 false), !dbg !4517
  %list = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral2, i32 0, i32 0, !dbg !4518
  call void @llvm.memset.p0.i64(ptr align 8 %list, i8 0, i64 16, i1 false), !dbg !4518
  %fn3 = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral2, i32 0, i32 1, !dbg !4518
  store ptr @multi_cpu_stop, ptr %fn3, align 8, !dbg !4518
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral2, i32 0, i32 2, !dbg !4518
  %3 = call ptr @llvm.returnaddress(i32 0), !dbg !4519
  %4 = ptrtoint ptr %3 to i64, !dbg !4519
  store i64 %4, ptr %caller, align 8, !dbg !4518
  %arg4 = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral2, i32 0, i32 3, !dbg !4518
  store ptr %msdata, ptr %arg4, align 8, !dbg !4518
  %done5 = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral2, i32 0, i32 4, !dbg !4518
  store ptr %done, ptr %done5, align 8, !dbg !4518
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work2, ptr align 8 %.compoundliteral2, i64 48, i1 false), !dbg !4520
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work1, ptr align 8 %work2, i64 48, i1 false), !dbg !4521
  call void @cpu_stop_init_done(ptr noundef %done, i32 noundef 2) #16, !dbg !4522
  call void @set_state(ptr noundef %msdata, i32 noundef 1) #16, !dbg !4523
  %5 = load i32, ptr %cpu1.addr, align 4, !dbg !4524
  %6 = load i32, ptr %cpu2.addr, align 4, !dbg !4525
  %cmp = icmp ugt i32 %5, %6, !dbg !4526
  br i1 %cmp, label %if.then, label %if.end, !dbg !4527

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4528

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp) #15, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4499, metadata !DIExpression()), !dbg !4529
  %7 = load i32, ptr %cpu1.addr, align 4, !dbg !4529
  store i32 %7, ptr %__tmp, align 4, !dbg !4529
  %8 = load i32, ptr %cpu2.addr, align 4, !dbg !4529
  store i32 %8, ptr %cpu1.addr, align 4, !dbg !4529
  %9 = load i32, ptr %__tmp, align 4, !dbg !4529
  store i32 %9, ptr %cpu2.addr, align 4, !dbg !4529
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp) #15, !dbg !4528
  br label %do.cond, !dbg !4529

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4529

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !4529

if.end:                                           ; preds = %do.end, %entry
  %10 = load i32, ptr %cpu1.addr, align 4, !dbg !4530
  %11 = load i32, ptr %cpu2.addr, align 4, !dbg !4532
  %call6 = call i32 @cpu_stop_queue_two_works(i32 noundef %10, ptr noundef %work1, i32 noundef %11, ptr noundef %work2) #16, !dbg !4533
  %tobool = icmp ne i32 %call6, 0, !dbg !4533
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !4534

if.then7:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !4535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4535

if.end8:                                          ; preds = %if.end
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, !dbg !4536
  call void @wait_for_completion(ptr noundef %completion) #16, !dbg !4537
  %ret = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1, !dbg !4538
  %12 = load i32, ptr %ret, align 4, !dbg !4538
  store i32 %12, ptr %retval, align 4, !dbg !4539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4539

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 40, ptr %msdata) #15, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 48, ptr %work2) #15, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 48, ptr %work1) #15, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 40, ptr %done) #15, !dbg !4540
  %13 = load i32, ptr %retval, align 4, !dbg !4540
  ret i32 %13, !dbg !4540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #3 align 16 !dbg !4541 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4545, metadata !DIExpression()), !dbg !4548
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4546, metadata !DIExpression()), !dbg !4550
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4551
  %rem = urem i32 %0, 64, !dbg !4552
  %add = add i32 1, %rem, !dbg !4553
  %idxprom = zext i32 %add to i64, !dbg !4554
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !4554
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !4554
  store ptr %arraydecay, ptr %p, align 8, !dbg !4550
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4555
  %div = udiv i32 %1, 64, !dbg !4556
  %2 = load ptr, ptr %p, align 8, !dbg !4557
  %idx.ext = zext i32 %div to i64, !dbg !4557
  %idx.neg = sub i64 0, %idx.ext, !dbg !4557
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !4557
  store ptr %add.ptr, ptr %p, align 8, !dbg !4557
  %3 = load ptr, ptr %p, align 8, !dbg !4558
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4559
  ret ptr %3, !dbg !4560
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @multi_cpu_stop(ptr noundef %data) #0 align 16 !dbg !4561 {
entry:
  %data.addr = alloca ptr, align 8
  %msdata = alloca ptr, align 8
  %newstate = alloca i32, align 4
  %curstate = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %err = alloca i32, align 4
  %cpumask = alloca ptr, align 8
  %flags = alloca i64, align 8
  %is_active = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__dummy47 = alloca i64, align 8
  %__dummy248 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4563, metadata !DIExpression()), !dbg !4589
  call void @llvm.lifetime.start.p0(i64 8, ptr %msdata) #15, !dbg !4590
  call void @llvm.dbg.declare(metadata ptr %msdata, metadata !4564, metadata !DIExpression()), !dbg !4591
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4592
  store ptr %0, ptr %msdata, align 8, !dbg !4591
  call void @llvm.lifetime.start.p0(i64 4, ptr %newstate) #15, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %newstate, metadata !4566, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 4, ptr %curstate) #15, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %curstate, metadata !4567, metadata !DIExpression()), !dbg !4595
  store i32 0, ptr %curstate, align 4, !dbg !4595
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !4596
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4568, metadata !DIExpression()), !dbg !4597
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #16, !dbg !4598
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4599
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4569, metadata !DIExpression()), !dbg !4599
  br label %do.body, !dbg !4599

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4600
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4572, metadata !DIExpression()), !dbg !4600
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4600
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4599
  br label %do.cond, !dbg !4600

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4600

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !4601
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4574, metadata !DIExpression()), !dbg !4601
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !4601, !srcloc !4602
  store i32 %2, ptr %pfo_val__, align 4, !dbg !4601
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !4601
  %conv = zext i32 %3 to i64, !dbg !4601
  %conv2 = trunc i64 %conv to i32, !dbg !4601
  store i32 %conv2, ptr %tmp1, align 4, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !4599
  %4 = load i32, ptr %tmp1, align 4, !dbg !4601
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !4599
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !4599
  store i32 %5, ptr %tmp3, align 4, !dbg !4599
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4598
  %6 = load i32, ptr %tmp3, align 4, !dbg !4599
  store i32 %6, ptr %tmp, align 4, !dbg !4598
  %7 = load i32, ptr %tmp, align 4, !dbg !4598
  store i32 %7, ptr %cpu, align 4, !dbg !4597
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4596
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4576, metadata !DIExpression()), !dbg !4603
  store i32 0, ptr %err, align 4, !dbg !4603
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpumask) #15, !dbg !4604
  call void @llvm.dbg.declare(metadata ptr %cpumask, metadata !4577, metadata !DIExpression()), !dbg !4605
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4578, metadata !DIExpression()), !dbg !4607
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_active) #15, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %is_active, metadata !4579, metadata !DIExpression()), !dbg !4609
  br label %do.body4, !dbg !4610

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4580, metadata !DIExpression()), !dbg !4611
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4583, metadata !DIExpression()), !dbg !4611
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4611
  %conv5 = zext i1 %cmp to i32, !dbg !4611
  store i32 1, ptr %tmp6, align 4, !dbg !4611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4612
  %8 = load i32, ptr %tmp6, align 4, !dbg !4611
  %call = call i64 @arch_local_save_flags() #16, !dbg !4612
  store i64 %call, ptr %flags, align 8, !dbg !4612
  br label %do.cond7, !dbg !4612

do.cond7:                                         ; preds = %do.body4
  br label %do.end8, !dbg !4612

do.end8:                                          ; preds = %do.cond7
  %9 = load ptr, ptr %msdata, align 8, !dbg !4613
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %9, i32 0, i32 3, !dbg !4615
  %10 = load ptr, ptr %active_cpus, align 8, !dbg !4615
  %tobool = icmp ne ptr %10, null, !dbg !4613
  br i1 %tobool, label %if.else, label %if.then, !dbg !4616

if.then:                                          ; preds = %do.end8
  store ptr @__cpu_online_mask, ptr %cpumask, align 8, !dbg !4617
  %11 = load i32, ptr %cpu, align 4, !dbg !4619
  %12 = load ptr, ptr %cpumask, align 8, !dbg !4620
  %call9 = call i32 @cpumask_first(ptr noundef %12) #16, !dbg !4621
  %cmp10 = icmp eq i32 %11, %call9, !dbg !4622
  %frombool = zext i1 %cmp10 to i8, !dbg !4623
  store i8 %frombool, ptr %is_active, align 1, !dbg !4623
  br label %if.end, !dbg !4624

if.else:                                          ; preds = %do.end8
  %13 = load ptr, ptr %msdata, align 8, !dbg !4625
  %active_cpus12 = getelementptr inbounds %struct.multi_stop_data, ptr %13, i32 0, i32 3, !dbg !4627
  %14 = load ptr, ptr %active_cpus12, align 8, !dbg !4627
  store ptr %14, ptr %cpumask, align 8, !dbg !4628
  %15 = load i32, ptr %cpu, align 4, !dbg !4629
  %16 = load ptr, ptr %cpumask, align 8, !dbg !4630
  %call13 = call zeroext i1 @cpumask_test_cpu(i32 noundef %15, ptr noundef %16) #16, !dbg !4631
  %frombool14 = zext i1 %call13 to i8, !dbg !4632
  store i8 %frombool14, ptr %is_active, align 1, !dbg !4632
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body15, !dbg !4633

do.body15:                                        ; preds = %do.cond41, %if.end
  %17 = load ptr, ptr %cpumask, align 8, !dbg !4634
  call void @stop_machine_yield(ptr noundef %17) #16, !dbg !4636
  br label %do.body16, !dbg !4637

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !4639

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4639

do.end18:                                         ; preds = %do.cond17
  %18 = load ptr, ptr %msdata, align 8, !dbg !4637
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %18, i32 0, i32 4, !dbg !4637
  %19 = load volatile i32, ptr %state, align 8, !dbg !4637
  store i32 %19, ptr %tmp19, align 4, !dbg !4639
  %20 = load i32, ptr %tmp19, align 4, !dbg !4637
  store i32 %20, ptr %newstate, align 4, !dbg !4641
  %21 = load i32, ptr %newstate, align 4, !dbg !4642
  %22 = load i32, ptr %curstate, align 4, !dbg !4644
  %cmp20 = icmp ne i32 %21, %22, !dbg !4645
  br i1 %cmp20, label %if.then22, label %if.else35, !dbg !4646

if.then22:                                        ; preds = %do.end18
  %23 = load i32, ptr %newstate, align 4, !dbg !4647
  store i32 %23, ptr %curstate, align 4, !dbg !4649
  %24 = load i32, ptr %curstate, align 4, !dbg !4650
  switch i32 %24, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb29
  ], !dbg !4651

sw.bb:                                            ; preds = %if.then22
  br label %do.body23, !dbg !4652

do.body23:                                        ; preds = %sw.bb
  call void @arch_local_irq_disable() #16, !dbg !4654
  br label %do.cond24, !dbg !4654

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4654

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !4656

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !4657

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4657

do.end28:                                         ; preds = %do.cond27
  br label %sw.epilog, !dbg !4659

sw.bb29:                                          ; preds = %if.then22
  %25 = load i8, ptr %is_active, align 1, !dbg !4660, !range !4419, !noundef !496
  %tobool30 = trunc i8 %25 to i1, !dbg !4660
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !4662

if.then31:                                        ; preds = %sw.bb29
  %26 = load ptr, ptr %msdata, align 8, !dbg !4663
  %fn = getelementptr inbounds %struct.multi_stop_data, ptr %26, i32 0, i32 0, !dbg !4664
  %27 = load ptr, ptr %fn, align 8, !dbg !4664
  %28 = load ptr, ptr %msdata, align 8, !dbg !4665
  %data32 = getelementptr inbounds %struct.multi_stop_data, ptr %28, i32 0, i32 1, !dbg !4666
  %29 = load ptr, ptr %data32, align 8, !dbg !4666
  %call33 = call i32 %27(ptr noundef %29) #16, !dbg !4663
  store i32 %call33, ptr %err, align 4, !dbg !4667
  br label %if.end34, !dbg !4668

if.end34:                                         ; preds = %if.then31, %sw.bb29
  br label %sw.epilog, !dbg !4669

sw.default:                                       ; preds = %if.then22
  br label %sw.epilog, !dbg !4670

sw.epilog:                                        ; preds = %sw.default, %if.end34, %do.end28
  %30 = load ptr, ptr %msdata, align 8, !dbg !4671
  call void @ack_state(ptr noundef %30) #16, !dbg !4672
  br label %if.end40, !dbg !4673

if.else35:                                        ; preds = %do.end18
  %31 = load i32, ptr %curstate, align 4, !dbg !4674
  %cmp36 = icmp ugt i32 %31, 1, !dbg !4676
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4677

if.then38:                                        ; preds = %if.else35
  call void @touch_nmi_watchdog() #16, !dbg !4678
  br label %if.end39, !dbg !4680

if.end39:                                         ; preds = %if.then38, %if.else35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %sw.epilog
  call void @rcu_momentary_dyntick_idle() #16, !dbg !4681
  br label %do.cond41, !dbg !4682

do.cond41:                                        ; preds = %if.end40
  %32 = load i32, ptr %curstate, align 4, !dbg !4683
  %cmp42 = icmp ne i32 %32, 4, !dbg !4684
  br i1 %cmp42, label %do.body15, label %do.end44, !dbg !4682, !llvm.loop !4685

do.end44:                                         ; preds = %do.cond41
  br label %do.body45, !dbg !4689

do.body45:                                        ; preds = %do.end44
  br label %do.body46, !dbg !4690

do.body46:                                        ; preds = %do.body45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy47) #15, !dbg !4691
  call void @llvm.dbg.declare(metadata ptr %__dummy47, metadata !4584, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy248) #15, !dbg !4691
  call void @llvm.dbg.declare(metadata ptr %__dummy248, metadata !4588, metadata !DIExpression()), !dbg !4691
  %cmp49 = icmp eq ptr %__dummy47, %__dummy248, !dbg !4691
  %conv50 = zext i1 %cmp49 to i32, !dbg !4691
  store i32 1, ptr %tmp51, align 4, !dbg !4691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy248) #15, !dbg !4692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy47) #15, !dbg !4692
  %33 = load i32, ptr %tmp51, align 4, !dbg !4691
  br label %do.body52, !dbg !4692

do.body52:                                        ; preds = %do.body46
  br label %do.cond53, !dbg !4693

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4693

do.end54:                                         ; preds = %do.cond53
  %34 = load i64, ptr %flags, align 8, !dbg !4692
  call void @arch_local_irq_restore(i64 noundef %34) #16, !dbg !4692
  br label %do.cond55, !dbg !4692

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !4692

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !4690

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !4690

do.end58:                                         ; preds = %do.cond57
  %35 = load i32, ptr %err, align 4, !dbg !4695
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_active) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpumask) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %curstate) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %newstate) #15, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 8, ptr %msdata) #15, !dbg !4696
  ret i32 %35, !dbg !4697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_state(ptr noundef %msdata, i32 noundef %newstate) #0 align 16 !dbg !4698 {
entry:
  %msdata.addr = alloca ptr, align 8
  %newstate.addr = alloca i32, align 4
  store ptr %msdata, ptr %msdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msdata.addr, metadata !4702, metadata !DIExpression()), !dbg !4704
  store i32 %newstate, ptr %newstate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %newstate.addr, metadata !4703, metadata !DIExpression()), !dbg !4705
  %0 = load ptr, ptr %msdata.addr, align 8, !dbg !4706
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 5, !dbg !4707
  %1 = load ptr, ptr %msdata.addr, align 8, !dbg !4708
  %num_threads = getelementptr inbounds %struct.multi_stop_data, ptr %1, i32 0, i32 2, !dbg !4709
  %2 = load i32, ptr %num_threads, align 8, !dbg !4709
  call void @atomic_set(ptr noundef %thread_ack, i32 noundef %2) #16, !dbg !4710
  br label %do.body, !dbg !4711

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4712

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4714

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4712, !srcloc !4716
  br label %do.end2, !dbg !4712

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !4717

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !4718

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4720

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4718

do.body6:                                         ; preds = %do.end5
  %3 = load i32, ptr %newstate.addr, align 4, !dbg !4722
  %4 = load ptr, ptr %msdata.addr, align 8, !dbg !4722
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 4, !dbg !4722
  store volatile i32 %3, ptr %state, align 8, !dbg !4722
  br label %do.end7, !dbg !4722

do.end7:                                          ; preds = %do.body6
  br label %do.end8, !dbg !4718

do.end8:                                          ; preds = %do.end7
  ret void, !dbg !4724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_stop_queue_two_works(i32 noundef %cpu1, ptr noundef %work1, i32 noundef %cpu2, ptr noundef %work2) #0 align 16 !dbg !4166 {
entry:
  %cpu1.addr = alloca i32, align 4
  %work1.addr = alloca ptr, align 8
  %cpu2.addr = alloca i32, align 4
  %work2.addr = alloca ptr, align 8
  %stopper1 = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %stopper2 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__ptr7 = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %wakeq = alloca %struct.wake_q_head, align 8
  %err = alloca i32, align 4
  store i32 %cpu1, ptr %cpu1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu1.addr, metadata !4170, metadata !DIExpression()), !dbg !4725
  store ptr %work1, ptr %work1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work1.addr, metadata !4171, metadata !DIExpression()), !dbg !4726
  store i32 %cpu2, ptr %cpu2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu2.addr, metadata !4172, metadata !DIExpression()), !dbg !4727
  store ptr %work2, ptr %work2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work2.addr, metadata !4173, metadata !DIExpression()), !dbg !4728
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper1) #15, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %stopper1, metadata !4174, metadata !DIExpression()), !dbg !4730
  br label %do.body, !dbg !4731

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4175, metadata !DIExpression()), !dbg !4732
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4732
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4731
  br label %do.cond, !dbg !4732

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4732

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4178, metadata !DIExpression()), !dbg !4733
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4733
  %1 = load i64, ptr %__ptr, align 8, !dbg !4733
  %2 = load i32, ptr %cpu1.addr, align 4, !dbg !4733
  %idxprom = sext i32 %2 to i64, !dbg !4733
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4733
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4733
  %add = add i64 %1, %3, !dbg !4733
  %4 = inttoptr i64 %add to ptr, !dbg !4733
  store ptr %4, ptr %tmp1, align 8, !dbg !4733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4731
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4733
  store ptr %5, ptr %tmp, align 8, !dbg !4732
  %6 = load ptr, ptr %tmp, align 8, !dbg !4731
  store ptr %6, ptr %stopper1, align 8, !dbg !4730
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper2) #15, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %stopper2, metadata !4180, metadata !DIExpression()), !dbg !4735
  br label %do.body2, !dbg !4736

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #15, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !4181, metadata !DIExpression()), !dbg !4737
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !4737
  %7 = load ptr, ptr %__vpp_verify3, align 8, !dbg !4737
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #15, !dbg !4736
  br label %do.cond4, !dbg !4737

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !4737

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #15, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !4184, metadata !DIExpression()), !dbg !4738
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr7, align 8, !dbg !4738
  %8 = load i64, ptr %__ptr7, align 8, !dbg !4738
  %9 = load i32, ptr %cpu2.addr, align 4, !dbg !4738
  %idxprom9 = sext i32 %9 to i64, !dbg !4738
  %arrayidx10 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom9, !dbg !4738
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !4738
  %add11 = add i64 %8, %10, !dbg !4738
  %11 = inttoptr i64 %add11 to ptr, !dbg !4738
  store ptr %11, ptr %tmp8, align 8, !dbg !4738
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #15, !dbg !4736
  %12 = load ptr, ptr %tmp8, align 8, !dbg !4738
  store ptr %12, ptr %tmp6, align 8, !dbg !4737
  %13 = load ptr, ptr %tmp6, align 8, !dbg !4736
  store ptr %13, ptr %stopper2, align 8, !dbg !4735
  call void @llvm.lifetime.start.p0(i64 16, ptr %wakeq) #15, !dbg !4739
  call void @llvm.dbg.declare(metadata ptr %wakeq, metadata !4186, metadata !DIExpression()), !dbg !4739
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 0, !dbg !4739
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !4739
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 1, !dbg !4739
  %first12 = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 0, !dbg !4739
  store ptr %first12, ptr %lastp, align 8, !dbg !4739
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4740
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4187, metadata !DIExpression()), !dbg !4741
  br label %retry, !dbg !4740

retry:                                            ; preds = %while.end, %do.end5
  call void @llvm.dbg.label(metadata !4188), !dbg !4742
  br label %do.body13, !dbg !4743

do.body13:                                        ; preds = %retry
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !4744
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4744, !srcloc !4746
  br label %do.cond14, !dbg !4744

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4744

do.end15:                                         ; preds = %do.cond14
  %14 = load ptr, ptr %stopper1, align 8, !dbg !4747
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %14, i32 0, i32 1, !dbg !4747
  call void @_raw_spin_lock_irq(ptr noundef %lock) #16, !dbg !4747
  %15 = load ptr, ptr %stopper2, align 8, !dbg !4748
  %lock16 = getelementptr inbounds %struct.cpu_stopper, ptr %15, i32 0, i32 1, !dbg !4748
  call void @_raw_spin_lock(ptr noundef %lock16) #16, !dbg !4748
  %16 = load ptr, ptr %stopper1, align 8, !dbg !4749
  %enabled = getelementptr inbounds %struct.cpu_stopper, ptr %16, i32 0, i32 2, !dbg !4751
  %17 = load i8, ptr %enabled, align 4, !dbg !4751, !range !4419, !noundef !496
  %tobool = trunc i8 %17 to i1, !dbg !4751
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4752

lor.lhs.false:                                    ; preds = %do.end15
  %18 = load ptr, ptr %stopper2, align 8, !dbg !4753
  %enabled17 = getelementptr inbounds %struct.cpu_stopper, ptr %18, i32 0, i32 2, !dbg !4754
  %19 = load i8, ptr %enabled17, align 4, !dbg !4754, !range !4419, !noundef !496
  %tobool18 = trunc i8 %19 to i1, !dbg !4754
  br i1 %tobool18, label %if.end, label %if.then, !dbg !4755

if.then:                                          ; preds = %lor.lhs.false, %do.end15
  store i32 -2, ptr %err, align 4, !dbg !4756
  br label %unlock, !dbg !4758

if.end:                                           ; preds = %lor.lhs.false
  %20 = load i8, ptr @stop_cpus_in_progress, align 1, !dbg !4759, !range !4419, !noundef !496
  %tobool19 = trunc i8 %20 to i1, !dbg !4759
  %lnot = xor i1 %tobool19, true, !dbg !4759
  %lnot20 = xor i1 %lnot, true, !dbg !4759
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !4759
  %conv = sext i32 %lnot.ext to i64, !dbg !4759
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4759
  %tobool21 = icmp ne i64 %expval, 0, !dbg !4759
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4761

if.then22:                                        ; preds = %if.end
  store i32 -35, ptr %err, align 4, !dbg !4762
  br label %unlock, !dbg !4764

if.end23:                                         ; preds = %if.end
  store i32 0, ptr %err, align 4, !dbg !4765
  %21 = load ptr, ptr %stopper1, align 8, !dbg !4766
  %22 = load ptr, ptr %work1.addr, align 8, !dbg !4767
  call void @__cpu_stop_queue_work(ptr noundef %21, ptr noundef %22, ptr noundef %wakeq) #16, !dbg !4768
  %23 = load ptr, ptr %stopper2, align 8, !dbg !4769
  %24 = load ptr, ptr %work2.addr, align 8, !dbg !4770
  call void @__cpu_stop_queue_work(ptr noundef %23, ptr noundef %24, ptr noundef %wakeq) #16, !dbg !4771
  br label %unlock, !dbg !4771

unlock:                                           ; preds = %if.end23, %if.then22, %if.then
  call void @llvm.dbg.label(metadata !4189), !dbg !4772
  %25 = load ptr, ptr %stopper2, align 8, !dbg !4773
  %lock24 = getelementptr inbounds %struct.cpu_stopper, ptr %25, i32 0, i32 1, !dbg !4773
  call void @_raw_spin_unlock(ptr noundef %lock24) #16, !dbg !4773
  %26 = load ptr, ptr %stopper1, align 8, !dbg !4774
  %lock25 = getelementptr inbounds %struct.cpu_stopper, ptr %26, i32 0, i32 1, !dbg !4774
  call void @_raw_spin_unlock_irq(ptr noundef %lock25) #16, !dbg !4774
  %27 = load i32, ptr %err, align 4, !dbg !4775
  %cmp = icmp eq i32 %27, -35, !dbg !4775
  %lnot27 = xor i1 %cmp, true, !dbg !4775
  %lnot29 = xor i1 %lnot27, true, !dbg !4775
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !4775
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !4775
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !4775
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !4775
  br i1 %tobool33, label %if.then34, label %if.end51, !dbg !4777

if.then34:                                        ; preds = %unlock
  br label %do.body35, !dbg !4778

do.body35:                                        ; preds = %if.then34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4780, !srcloc !4782
  %call = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !4783
  %lnot36 = xor i1 %call, true, !dbg !4783
  %lnot38 = xor i1 %lnot36, true, !dbg !4783
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !4783
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !4783
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !4783
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !4783
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !4780

if.then43:                                        ; preds = %do.body35
  br label %do.body44, !dbg !4783

do.body44:                                        ; preds = %if.then43
  %28 = call i64 @llvm.read_register.i64(metadata !4289), !dbg !4785
  %29 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %28) #15, !dbg !4785, !srcloc !4787
  call void @llvm.write_register.i64(metadata !4289, i64 %29), !dbg !4785
  br label %do.cond45, !dbg !4785

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4785

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !4785

if.end47:                                         ; preds = %do.end46, %do.body35
  br label %do.cond48, !dbg !4780

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4780

do.end49:                                         ; preds = %do.cond48
  br label %while.cond, !dbg !4788

while.cond:                                       ; preds = %while.body, %do.end49
  %30 = load i8, ptr @stop_cpus_in_progress, align 1, !dbg !4789, !range !4419, !noundef !496
  %tobool50 = trunc i8 %30 to i1, !dbg !4789
  br i1 %tobool50, label %while.body, label %while.end, !dbg !4788

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #16, !dbg !4790
  br label %while.cond, !dbg !4788, !llvm.loop !4791

while.end:                                        ; preds = %while.cond
  br label %retry, !dbg !4793

if.end51:                                         ; preds = %unlock
  call void @wake_up_q(ptr noundef %wakeq) #16, !dbg !4794
  br label %do.body52, !dbg !4795

do.body52:                                        ; preds = %if.end51
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4796, !srcloc !4798
  %call53 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !4799
  %lnot54 = xor i1 %call53, true, !dbg !4799
  %lnot56 = xor i1 %lnot54, true, !dbg !4799
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !4799
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !4799
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !4799
  %tobool60 = icmp ne i64 %expval59, 0, !dbg !4799
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !4796

if.then61:                                        ; preds = %do.body52
  br label %do.body62, !dbg !4799

do.body62:                                        ; preds = %if.then61
  %31 = call i64 @llvm.read_register.i64(metadata !4289), !dbg !4801
  %32 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %31) #15, !dbg !4801, !srcloc !4803
  call void @llvm.write_register.i64(metadata !4289, i64 %32), !dbg !4801
  br label %do.cond63, !dbg !4801

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !4801

do.end64:                                         ; preds = %do.cond63
  br label %if.end65, !dbg !4801

if.end65:                                         ; preds = %do.end64, %do.body52
  br label %do.cond66, !dbg !4796

do.cond66:                                        ; preds = %if.end65
  br label %do.end67, !dbg !4796

do.end67:                                         ; preds = %do.cond66
  %33 = load i32, ptr %err, align 4, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 16, ptr %wakeq) #15, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper2) #15, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper1) #15, !dbg !4805
  ret i32 %33, !dbg !4806
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @stop_one_cpu_nowait(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg, ptr noundef %work_buf) #0 align 16 !dbg !4807 {
entry:
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %work_buf.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.cpu_stop_work, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4811, metadata !DIExpression()), !dbg !4815
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4812, metadata !DIExpression()), !dbg !4816
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4813, metadata !DIExpression()), !dbg !4817
  store ptr %work_buf, ptr %work_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work_buf.addr, metadata !4814, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %work_buf.addr, align 8, !dbg !4819
  %list = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral, i32 0, i32 0, !dbg !4820
  call void @llvm.memset.p0.i64(ptr align 8 %list, i8 0, i64 16, i1 false), !dbg !4820
  %fn1 = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !4820
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !4821
  store ptr %1, ptr %fn1, align 8, !dbg !4820
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral, i32 0, i32 2, !dbg !4820
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !4822
  %3 = ptrtoint ptr %2 to i64, !dbg !4822
  store i64 %3, ptr %caller, align 8, !dbg !4820
  %arg2 = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral, i32 0, i32 3, !dbg !4820
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !4823
  store ptr %4, ptr %arg2, align 8, !dbg !4820
  %done = getelementptr inbounds %struct.cpu_stop_work, ptr %.compoundliteral, i32 0, i32 4, !dbg !4820
  store ptr null, ptr %done, align 8, !dbg !4820
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 48, i1 false), !dbg !4824
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !4825
  %6 = load ptr, ptr %work_buf.addr, align 8, !dbg !4826
  %call = call zeroext i1 @cpu_stop_queue_work(i32 noundef %5, ptr noundef %6) #16, !dbg !4827
  ret i1 %call, !dbg !4828
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @stop_machine_park(i32 noundef %cpu) #0 align 16 !dbg !4829 {
entry:
  %cpu.addr = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4831, metadata !DIExpression()), !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4832, metadata !DIExpression()), !dbg !4840
  br label %do.body, !dbg !4841

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4842
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4833, metadata !DIExpression()), !dbg !4842
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4842
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4841
  br label %do.cond, !dbg !4842

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4842

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4836, metadata !DIExpression()), !dbg !4843
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4843
  %1 = load i64, ptr %__ptr, align 8, !dbg !4843
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4843
  %idxprom = sext i32 %2 to i64, !dbg !4843
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4843
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4843
  %add = add i64 %1, %3, !dbg !4843
  %4 = inttoptr i64 %add to ptr, !dbg !4843
  store ptr %4, ptr %tmp1, align 8, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4841
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4843
  store ptr %5, ptr %tmp, align 8, !dbg !4842
  %6 = load ptr, ptr %tmp, align 8, !dbg !4841
  store ptr %6, ptr %stopper, align 8, !dbg !4840
  %7 = load ptr, ptr %stopper, align 8, !dbg !4844
  %enabled = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 2, !dbg !4845
  store i8 0, ptr %enabled, align 4, !dbg !4846
  %8 = load ptr, ptr %stopper, align 8, !dbg !4847
  %thread = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 0, !dbg !4848
  %9 = load ptr, ptr %thread, align 8, !dbg !4848
  %call = call i32 @kthread_park(ptr noundef %9) #16, !dbg !4849
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !4850
  ret void, !dbg !4850
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4851 dso_local i32 @kthread_park(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @stop_machine_unpark(i32 noundef %cpu) #0 align 16 !dbg !4855 {
entry:
  %cpu.addr = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4857, metadata !DIExpression()), !dbg !4864
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !4865
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4858, metadata !DIExpression()), !dbg !4866
  br label %do.body, !dbg !4867

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4868
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4859, metadata !DIExpression()), !dbg !4868
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4868
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4867
  br label %do.cond, !dbg !4868

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4868

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4862, metadata !DIExpression()), !dbg !4869
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4869
  %1 = load i64, ptr %__ptr, align 8, !dbg !4869
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4869
  %idxprom = sext i32 %2 to i64, !dbg !4869
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4869
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4869
  %add = add i64 %1, %3, !dbg !4869
  %4 = inttoptr i64 %add to ptr, !dbg !4869
  store ptr %4, ptr %tmp1, align 8, !dbg !4869
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4867
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4869
  store ptr %5, ptr %tmp, align 8, !dbg !4868
  %6 = load ptr, ptr %tmp, align 8, !dbg !4867
  store ptr %6, ptr %stopper, align 8, !dbg !4866
  %7 = load ptr, ptr %stopper, align 8, !dbg !4870
  %enabled = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 2, !dbg !4871
  store i8 1, ptr %enabled, align 4, !dbg !4872
  %8 = load ptr, ptr %stopper, align 8, !dbg !4873
  %thread = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 0, !dbg !4874
  %9 = load ptr, ptr %thread, align 8, !dbg !4874
  call void @kthread_unpark(ptr noundef %9) #16, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !4876
  ret void, !dbg !4876
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4877 dso_local void @kthread_unpark(ptr noundef) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_stop_machine__293_584_cpu_stop_initearly() #10 section ".init.text" align 16 !dbg !4880 {
entry:
  %call = call i32 @cpu_stop_init() #17, !dbg !4881
  ret i32 %call, !dbg !4881
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cpu_stop_init() #10 section ".init.text" align 16 !dbg !4882 {
entry:
  %cpu = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify24 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4884, metadata !DIExpression()), !dbg !4901
  store i32 0, ptr %cpu, align 4, !dbg !4902
  br label %for.cond, !dbg !4902

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !4903
  %conv = zext i32 %0 to i64, !dbg !4903
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #16, !dbg !4903
  %conv1 = trunc i64 %call to i32, !dbg !4903
  store i32 %conv1, ptr %cpu, align 4, !dbg !4903
  %1 = load i32, ptr %cpu, align 4, !dbg !4903
  %cmp = icmp ult i32 %1, 64, !dbg !4903
  br i1 %cmp, label %for.body, label %for.end, !dbg !4902

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4885, metadata !DIExpression()), !dbg !4905
  br label %do.body, !dbg !4906

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4889, metadata !DIExpression()), !dbg !4907
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4907
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4906
  br label %do.cond, !dbg !4907

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4907

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4908
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4892, metadata !DIExpression()), !dbg !4908
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !4908
  %3 = load i64, ptr %__ptr, align 8, !dbg !4908
  %4 = load i32, ptr %cpu, align 4, !dbg !4908
  %idxprom = zext i32 %4 to i64, !dbg !4908
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4908
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4908
  %add = add i64 %3, %5, !dbg !4908
  %6 = inttoptr i64 %add to ptr, !dbg !4908
  store ptr %6, ptr %tmp3, align 8, !dbg !4908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4906
  %7 = load ptr, ptr %tmp3, align 8, !dbg !4908
  store ptr %7, ptr %tmp, align 8, !dbg !4907
  %8 = load ptr, ptr %tmp, align 8, !dbg !4906
  store ptr %8, ptr %stopper, align 8, !dbg !4905
  br label %do.body4, !dbg !4909

do.body4:                                         ; preds = %do.end
  %9 = load ptr, ptr %stopper, align 8, !dbg !4910
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 1, !dbg !4910
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4910
  %10 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4910
  %counter = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !4910
  store i32 0, ptr %counter, align 4, !dbg !4910
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4910
  br label %do.cond5, !dbg !4910

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4910

do.end6:                                          ; preds = %do.cond5
  %11 = load ptr, ptr %stopper, align 8, !dbg !4912
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %11, i32 0, i32 3, !dbg !4913
  call void @INIT_LIST_HEAD(ptr noundef %works) #16, !dbg !4914
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !4915
  br label %for.inc, !dbg !4916

for.inc:                                          ; preds = %do.end6
  %12 = load i32, ptr %cpu, align 4, !dbg !4903
  %inc = add i32 %12, 1, !dbg !4903
  store i32 %inc, ptr %cpu, align 4, !dbg !4903
  br label %for.cond, !dbg !4903, !llvm.loop !4917

for.end:                                          ; preds = %for.cond
  br label %do.body7, !dbg !4919

do.body7:                                         ; preds = %for.end
  %call8 = call i32 @smpboot_register_percpu_thread(ptr noundef @cpu_stop_threads) #16, !dbg !4920
  %tobool = icmp ne i32 %call8, 0, !dbg !4920
  %lnot = xor i1 %tobool, true, !dbg !4920
  %lnot9 = xor i1 %lnot, true, !dbg !4920
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4920
  %conv10 = sext i32 %lnot.ext to i64, !dbg !4920
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !4920
  %tobool11 = icmp ne i64 %expval, 0, !dbg !4920
  br i1 %tobool11, label %if.then, label %if.end, !dbg !4923

if.then:                                          ; preds = %do.body7
  br label %do.body12, !dbg !4920

do.body12:                                        ; preds = %if.then
  br label %do.body13, !dbg !4924

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4926

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4926

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4924

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 579, i32 0, i64 12) #15, !dbg !4928, !srcloc !4930
  br label %do.cond17, !dbg !4928

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4928

do.end18:                                         ; preds = %do.cond17
  unreachable, !dbg !4924

do.cond19:                                        ; No predecessors!
  br label %do.end20, !dbg !4924

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !4924

if.end:                                           ; preds = %do.end20, %do.body7
  br label %do.cond21, !dbg !4923

do.cond21:                                        ; preds = %if.end
  br label %do.end22, !dbg !4923

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4931
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4894, metadata !DIExpression()), !dbg !4931
  br label %do.body23, !dbg !4931

do.body23:                                        ; preds = %do.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify24) #15, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify24, metadata !4896, metadata !DIExpression()), !dbg !4932
  store ptr null, ptr %__vpp_verify24, align 8, !dbg !4932
  %13 = load ptr, ptr %__vpp_verify24, align 8, !dbg !4932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify24) #15, !dbg !4931
  br label %do.cond25, !dbg !4932

do.cond25:                                        ; preds = %do.body23
  br label %do.end26, !dbg !4932

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !4933
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4898, metadata !DIExpression()), !dbg !4933
  %14 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !4933, !srcloc !4934
  store i32 %14, ptr %pfo_val__, align 4, !dbg !4933
  %15 = load i32, ptr %pfo_val__, align 4, !dbg !4933
  %conv28 = zext i32 %15 to i64, !dbg !4933
  %conv29 = trunc i64 %conv28 to i32, !dbg !4933
  store i32 %conv29, ptr %tmp27, align 4, !dbg !4933
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !4931
  %16 = load i32, ptr %tmp27, align 4, !dbg !4933
  store i32 %16, ptr %pscr_ret__, align 4, !dbg !4931
  %17 = load i32, ptr %pscr_ret__, align 4, !dbg !4931
  store i32 %17, ptr %tmp30, align 4, !dbg !4931
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4935
  %18 = load i32, ptr %tmp30, align 4, !dbg !4931
  call void @stop_machine_unpark(i32 noundef %18) #16, !dbg !4936
  store i8 1, ptr @stop_machine_initialized, align 1, !dbg !4937
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !4938
  ret i32 0, !dbg !4939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_machine_cpuslocked(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) #0 align 16 !dbg !4940 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cpus.addr = alloca ptr, align 8
  %msdata = alloca %struct.multi_stop_data, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  %__dummy44 = alloca i64, align 8
  %__dummy245 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4944, metadata !DIExpression()), !dbg !4967
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4945, metadata !DIExpression()), !dbg !4968
  store ptr %cpus, ptr %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpus.addr, metadata !4946, metadata !DIExpression()), !dbg !4969
  call void @llvm.lifetime.start.p0(i64 40, ptr %msdata) #15, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %msdata, metadata !4947, metadata !DIExpression()), !dbg !4971
  %fn1 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 0, !dbg !4972
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !4973
  store ptr %0, ptr %fn1, align 8, !dbg !4972
  %data2 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1, !dbg !4972
  %1 = load ptr, ptr %data.addr, align 8, !dbg !4974
  store ptr %1, ptr %data2, align 8, !dbg !4972
  %num_threads = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2, !dbg !4972
  %call = call i32 @num_online_cpus() #16, !dbg !4975
  store i32 %call, ptr %num_threads, align 8, !dbg !4972
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3, !dbg !4972
  %2 = load ptr, ptr %cpus.addr, align 8, !dbg !4976
  store ptr %2, ptr %active_cpus, align 8, !dbg !4972
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4, !dbg !4972
  store i32 0, ptr %state, align 8, !dbg !4972
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5, !dbg !4972
  call void @llvm.memset.p0.i64(ptr align 4 %thread_ack, i8 0, i64 4, i1 false), !dbg !4972
  call void @lockdep_assert_cpus_held() #16, !dbg !4977
  %3 = load i8, ptr @stop_machine_initialized, align 1, !dbg !4978, !range !4419, !noundef !496
  %tobool = trunc i8 %3 to i1, !dbg !4978
  br i1 %tobool, label %if.end56, label %if.then, !dbg !4979

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4980
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4948, metadata !DIExpression()), !dbg !4981
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4951, metadata !DIExpression()), !dbg !4983
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4952, metadata !DIExpression()), !dbg !4984
  %num_threads3 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2, !dbg !4984
  %4 = load i32, ptr %num_threads3, align 8, !dbg !4984
  %cmp = icmp ne i32 %4, 1, !dbg !4984
  %lnot = xor i1 %cmp, true, !dbg !4984
  %lnot4 = xor i1 %lnot, true, !dbg !4984
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4984
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4984
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4985
  %tobool5 = icmp ne i32 %5, 0, !dbg !4985
  %lnot6 = xor i1 %tobool5, true, !dbg !4985
  %lnot8 = xor i1 %lnot6, true, !dbg !4985
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4985
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4985
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4985
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4985
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !4984

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !4985

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4954, metadata !DIExpression()), !dbg !4986
  store i32 2307, ptr %__flags, align 4, !dbg !4986
  br label %do.body12, !dbg !4986

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !4987

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !4987

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !4986

do.body13:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4989
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 607, i32 %6, i64 12) #15, !dbg !4989, !srcloc !4991
  br label %do.cond14, !dbg !4989

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4989

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4986

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !4992

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4992

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4985
  br label %do.cond19, !dbg !4986

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4986

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !4986

if.end:                                           ; preds = %do.end20, %if.then
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4984
  %tobool21 = icmp ne i32 %7, 0, !dbg !4984
  %lnot22 = xor i1 %tobool21, true, !dbg !4984
  %lnot24 = xor i1 %lnot22, true, !dbg !4984
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4984
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4984
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4984
  store i64 %expval27, ptr %tmp, align 8, !dbg !4985
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4994
  %8 = load i64, ptr %tmp, align 8, !dbg !4984
  br label %do.body28, !dbg !4995

do.body28:                                        ; preds = %if.end
  br label %do.body29, !dbg !4996

do.body29:                                        ; preds = %do.body28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4957, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4961, metadata !DIExpression()), !dbg !4997
  %cmp30 = icmp eq ptr %__dummy, %__dummy2, !dbg !4997
  %conv31 = zext i1 %cmp30 to i32, !dbg !4997
  store i32 1, ptr %tmp32, align 4, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4998
  %9 = load i32, ptr %tmp32, align 4, !dbg !4997
  %call33 = call i64 @arch_local_irq_save() #16, !dbg !4998
  store i64 %call33, ptr %flags, align 8, !dbg !4998
  br label %do.cond34, !dbg !4998

do.cond34:                                        ; preds = %do.body29
  br label %do.end35, !dbg !4998

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !4996

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !4996

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !4999

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !5000

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5000

do.end40:                                         ; preds = %do.cond39
  %10 = load ptr, ptr %fn.addr, align 8, !dbg !5002
  %11 = load ptr, ptr %data.addr, align 8, !dbg !5003
  %call41 = call i32 %10(ptr noundef %11) #16, !dbg !5004
  store i32 %call41, ptr %ret, align 4, !dbg !5005
  br label %do.body42, !dbg !5006

do.body42:                                        ; preds = %do.end40
  br label %do.body43, !dbg !5007

do.body43:                                        ; preds = %do.body42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy44) #15, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %__dummy44, metadata !4962, metadata !DIExpression()), !dbg !5008
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy245) #15, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %__dummy245, metadata !4966, metadata !DIExpression()), !dbg !5008
  %cmp46 = icmp eq ptr %__dummy44, %__dummy245, !dbg !5008
  %conv47 = zext i1 %cmp46 to i32, !dbg !5008
  store i32 1, ptr %tmp48, align 4, !dbg !5008
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy245) #15, !dbg !5009
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy44) #15, !dbg !5009
  %12 = load i32, ptr %tmp48, align 4, !dbg !5008
  br label %do.body49, !dbg !5009

do.body49:                                        ; preds = %do.body43
  br label %do.cond50, !dbg !5010

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5010

do.end51:                                         ; preds = %do.cond50
  %13 = load i64, ptr %flags, align 8, !dbg !5009
  call void @arch_local_irq_restore(i64 noundef %13) #16, !dbg !5009
  br label %do.cond52, !dbg !5009

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5009

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !5007

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !5007

do.end55:                                         ; preds = %do.cond54
  %14 = load i32, ptr %ret, align 4, !dbg !5012
  store i32 %14, ptr %retval, align 4, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5014
  br label %cleanup

if.end56:                                         ; preds = %entry
  call void @set_state(ptr noundef %msdata, i32 noundef 1) #16, !dbg !5015
  %call57 = call i32 @stop_cpus(ptr noundef @__cpu_online_mask, ptr noundef @multi_cpu_stop, ptr noundef %msdata) #16, !dbg !5016
  store i32 %call57, ptr %retval, align 4, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5017

cleanup:                                          ; preds = %if.end56, %do.end55
  call void @llvm.lifetime.end.p0(i64 40, ptr %msdata) #15, !dbg !5018
  %15 = load i32, ptr %retval, align 4, !dbg !5018
  ret i32 %15, !dbg !5018
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #7 align 16 !dbg !5019 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #16, !dbg !5022
  ret i32 %call, !dbg !5023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5024 dso_local void @lockdep_assert_cpus_held() #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #7 align 16 !dbg !5026 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5032
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5031, metadata !DIExpression()), !dbg !5033
  %call = call i64 @arch_local_save_flags() #16, !dbg !5034
  store i64 %call, ptr %flags, align 8, !dbg !5033
  call void @arch_local_irq_disable() #16, !dbg !5035
  %0 = load i64, ptr %flags, align 8, !dbg !5036
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5037
  ret i64 %0, !dbg !5038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #7 align 16 !dbg !5039 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5045
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #16, !dbg !5047
  %tobool = icmp ne i32 %call, 0, !dbg !5047
  br i1 %tobool, label %if.end, label %if.then, !dbg !5048

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #16, !dbg !5049
  br label %if.end, !dbg !5049

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stop_cpus(ptr noundef %cpumask, ptr noundef %fn, ptr noundef %arg) #0 align 16 !dbg !5051 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5055, metadata !DIExpression()), !dbg !5059
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5056, metadata !DIExpression()), !dbg !5060
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5057, metadata !DIExpression()), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5062
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5058, metadata !DIExpression()), !dbg !5063
  call void @mutex_lock(ptr noundef @stop_cpus_mutex) #16, !dbg !5064
  %0 = load ptr, ptr %cpumask.addr, align 8, !dbg !5065
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !5066
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !5067
  %call = call i32 @__stop_cpus(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5068
  store i32 %call, ptr %ret, align 4, !dbg !5069
  call void @mutex_unlock(ptr noundef @stop_cpus_mutex) #16, !dbg !5070
  %3 = load i32, ptr %ret, align 4, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5072
  ret i32 %3, !dbg !5073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_machine(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) #0 align 16 !dbg !5074 {
entry:
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cpus.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5076, metadata !DIExpression()), !dbg !5080
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5077, metadata !DIExpression()), !dbg !5081
  store ptr %cpus, ptr %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpus.addr, metadata !5078, metadata !DIExpression()), !dbg !5082
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5079, metadata !DIExpression()), !dbg !5084
  call void @cpus_read_lock() #16, !dbg !5085
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !5086
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5087
  %2 = load ptr, ptr %cpus.addr, align 8, !dbg !5088
  %call = call i32 @stop_machine_cpuslocked(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5089
  store i32 %call, ptr %ret, align 4, !dbg !5090
  call void @cpus_read_unlock() #16, !dbg !5091
  %3 = load i32, ptr %ret, align 4, !dbg !5092
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5093
  ret i32 %3, !dbg !5094
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5095 dso_local void @cpus_read_lock() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5096 dso_local void @cpus_read_unlock() #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_core_cpuslocked(i32 noundef %cpu, ptr noundef %fn, ptr noundef %data) #0 align 16 !dbg !5097 {
entry:
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %smt_mask = alloca ptr, align 8
  %msdata = alloca %struct.multi_stop_data, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5099, metadata !DIExpression()), !dbg !5104
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5100, metadata !DIExpression()), !dbg !5105
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5101, metadata !DIExpression()), !dbg !5106
  call void @llvm.lifetime.start.p0(i64 8, ptr %smt_mask) #15, !dbg !5107
  call void @llvm.dbg.declare(metadata ptr %smt_mask, metadata !5102, metadata !DIExpression()), !dbg !5108
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5109
  %call = call ptr @cpu_smt_mask(i32 noundef %0) #16, !dbg !5110
  store ptr %call, ptr %smt_mask, align 8, !dbg !5108
  call void @llvm.lifetime.start.p0(i64 40, ptr %msdata) #15, !dbg !5111
  call void @llvm.dbg.declare(metadata ptr %msdata, metadata !5103, metadata !DIExpression()), !dbg !5112
  %fn1 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 0, !dbg !5113
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !5114
  store ptr %1, ptr %fn1, align 8, !dbg !5113
  %data2 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1, !dbg !5113
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5115
  store ptr %2, ptr %data2, align 8, !dbg !5113
  %num_threads = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2, !dbg !5113
  %3 = load ptr, ptr %smt_mask, align 8, !dbg !5116
  %call3 = call i32 @cpumask_weight(ptr noundef %3) #16, !dbg !5117
  store i32 %call3, ptr %num_threads, align 8, !dbg !5113
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3, !dbg !5113
  %4 = load ptr, ptr %smt_mask, align 8, !dbg !5118
  store ptr %4, ptr %active_cpus, align 8, !dbg !5113
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4, !dbg !5113
  store i32 0, ptr %state, align 8, !dbg !5113
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5, !dbg !5113
  call void @llvm.memset.p0.i64(ptr align 4 %thread_ack, i8 0, i64 4, i1 false), !dbg !5113
  call void @lockdep_assert_cpus_held() #16, !dbg !5119
  call void @set_state(ptr noundef %msdata, i32 noundef 1) #16, !dbg !5120
  %5 = load ptr, ptr %smt_mask, align 8, !dbg !5121
  %call4 = call i32 @stop_cpus(ptr noundef %5, ptr noundef @multi_cpu_stop, ptr noundef %msdata) #16, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 40, ptr %msdata) #15, !dbg !5123
  call void @llvm.lifetime.end.p0(i64 8, ptr %smt_mask) #15, !dbg !5123
  ret i32 %call4, !dbg !5124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cpu_smt_mask(i32 noundef %cpu) #3 align 16 !dbg !5125 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5130, metadata !DIExpression()), !dbg !5136
  br label %do.body, !dbg !5137

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5131, metadata !DIExpression()), !dbg !5138
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5138
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5137
  br label %do.end, !dbg !5138

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5134, metadata !DIExpression()), !dbg !5139
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !5139
  %1 = load i64, ptr %__ptr, align 8, !dbg !5139
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5139
  %idxprom = sext i32 %2 to i64, !dbg !5139
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5139
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5139
  %add = add i64 %1, %3, !dbg !5139
  %4 = inttoptr i64 %add to ptr, !dbg !5139
  store ptr %4, ptr %tmp1, align 8, !dbg !5139
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5137
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5139
  store ptr %5, ptr %tmp, align 8, !dbg !5138
  %6 = load ptr, ptr %tmp, align 8, !dbg !5137
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %6, i64 0, i64 0, !dbg !5140
  ret ptr %arraydecay, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #3 align 16 !dbg !5142 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5148
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5148
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5148
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #16, !dbg !5149
  ret i32 %call, !dbg !5150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stop_machine_from_inactive_cpu(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) #0 align 16 !dbg !5151 {
entry:
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cpus.addr = alloca ptr, align 8
  %msdata = alloca %struct.multi_stop_data, align 8
  %done = alloca %struct.cpu_stop_done, align 8
  %ret = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5153, metadata !DIExpression()), !dbg !5167
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5154, metadata !DIExpression()), !dbg !5168
  store ptr %cpus, ptr %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpus.addr, metadata !5155, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 40, ptr %msdata) #15, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %msdata, metadata !5156, metadata !DIExpression()), !dbg !5171
  %fn1 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 0, !dbg !5172
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !5173
  store ptr %0, ptr %fn1, align 8, !dbg !5172
  %data2 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1, !dbg !5172
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5174
  store ptr %1, ptr %data2, align 8, !dbg !5172
  %num_threads = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2, !dbg !5172
  store i32 0, ptr %num_threads, align 8, !dbg !5172
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3, !dbg !5172
  %2 = load ptr, ptr %cpus.addr, align 8, !dbg !5175
  store ptr %2, ptr %active_cpus, align 8, !dbg !5172
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4, !dbg !5172
  store i32 0, ptr %state, align 8, !dbg !5172
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5, !dbg !5172
  call void @llvm.memset.p0.i64(ptr align 4 %thread_ack, i8 0, i64 4, i1 false), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 40, ptr %done) #15, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %done, metadata !5157, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5158, metadata !DIExpression()), !dbg !5179
  br label %do.body, !dbg !5180

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5159, metadata !DIExpression()), !dbg !5181
  br label %do.body3, !dbg !5181

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5163, metadata !DIExpression()), !dbg !5182
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5182
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5181
  br label %do.cond, !dbg !5182

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5182

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5165, metadata !DIExpression()), !dbg !5183
  %4 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !5183, !srcloc !5184
  store i32 %4, ptr %pfo_val__, align 4, !dbg !5183
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !5183
  %conv = zext i32 %5 to i64, !dbg !5183
  %conv4 = trunc i64 %conv to i32, !dbg !5183
  store i32 %conv4, ptr %tmp, align 4, !dbg !5183
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !5181
  %6 = load i32, ptr %tmp, align 4, !dbg !5183
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !5181
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !5181
  store i32 %7, ptr %tmp5, align 4, !dbg !5181
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !5185
  %8 = load i32, ptr %tmp5, align 4, !dbg !5181
  %call = call zeroext i1 @cpu_active(i32 noundef %8) #16, !dbg !5185
  %lnot = xor i1 %call, true, !dbg !5185
  %lnot6 = xor i1 %lnot, true, !dbg !5185
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5185
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5185
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5185
  %tobool = icmp ne i64 %expval, 0, !dbg !5185
  br i1 %tobool, label %if.then, label %if.end, !dbg !5186

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !5185

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5187

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5189

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5189

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5187

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 686, i32 0, i64 12) #15, !dbg !5191, !srcloc !5193
  br label %do.cond13, !dbg !5191

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5191

do.end14:                                         ; preds = %do.cond13
  unreachable, !dbg !5187

do.cond15:                                        ; No predecessors!
  br label %do.end16, !dbg !5187

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5187

if.end:                                           ; preds = %do.end16, %do.end
  br label %do.cond17, !dbg !5186

do.cond17:                                        ; preds = %if.end
  br label %do.end18, !dbg !5186

do.end18:                                         ; preds = %do.cond17
  %call19 = call i32 @cpumask_weight(ptr noundef @__cpu_active_mask) #16, !dbg !5194
  %add = add i32 %call19, 1, !dbg !5195
  %num_threads20 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2, !dbg !5196
  store i32 %add, ptr %num_threads20, align 8, !dbg !5197
  br label %while.cond, !dbg !5198

while.cond:                                       ; preds = %while.body, %do.end18
  %call21 = call i32 @mutex_trylock(ptr noundef @stop_cpus_mutex) #16, !dbg !5199
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5200
  %lnot23 = xor i1 %tobool22, true, !dbg !5200
  br i1 %lnot23, label %while.body, label %while.end, !dbg !5198

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #16, !dbg !5201
  br label %while.cond, !dbg !5198, !llvm.loop !5202

while.end:                                        ; preds = %while.cond
  call void @set_state(ptr noundef %msdata, i32 noundef 1) #16, !dbg !5204
  %call25 = call i32 @cpumask_weight(ptr noundef @__cpu_active_mask) #16, !dbg !5205
  call void @cpu_stop_init_done(ptr noundef %done, i32 noundef %call25) #16, !dbg !5206
  %call26 = call zeroext i1 @queue_stop_cpus_work(ptr noundef @__cpu_active_mask, ptr noundef @multi_cpu_stop, ptr noundef %msdata, ptr noundef %done) #16, !dbg !5207
  %call27 = call i32 @multi_cpu_stop(ptr noundef %msdata) #16, !dbg !5208
  store i32 %call27, ptr %ret, align 4, !dbg !5209
  br label %while.cond28, !dbg !5210

while.cond28:                                     ; preds = %while.body32, %while.end
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, !dbg !5211
  %call29 = call zeroext i1 @completion_done(ptr noundef %completion) #16, !dbg !5212
  %lnot30 = xor i1 %call29, true, !dbg !5213
  br i1 %lnot30, label %while.body32, label %while.end33, !dbg !5210

while.body32:                                     ; preds = %while.cond28
  call void @cpu_relax() #16, !dbg !5214
  br label %while.cond28, !dbg !5210, !llvm.loop !5215

while.end33:                                      ; preds = %while.cond28
  call void @mutex_unlock(ptr noundef @stop_cpus_mutex) #16, !dbg !5217
  %9 = load i32, ptr %ret, align 4, !dbg !5218
  %tobool34 = icmp ne i32 %9, 0, !dbg !5218
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !5218

cond.true:                                        ; preds = %while.end33
  br label %cond.end, !dbg !5218

cond.false:                                       ; preds = %while.end33
  %ret35 = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1, !dbg !5219
  %10 = load i32, ptr %ret35, align 4, !dbg !5219
  br label %cond.end, !dbg !5218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !5218
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 40, ptr %done) #15, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 40, ptr %msdata) #15, !dbg !5220
  ret i32 %cond, !dbg !5221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_active(i32 noundef %cpu) #3 align 16 !dbg !5222 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5228
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_active_mask) #16, !dbg !5229
  ret i1 %call, !dbg !5230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5231 dso_local i32 @mutex_trylock(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_stop_cpus_work(ptr noundef %cpumask, ptr noundef %fn, ptr noundef %arg, ptr noundef %done) #0 align 16 !dbg !4270 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %done.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %queued = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4274, metadata !DIExpression()), !dbg !5235
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4275, metadata !DIExpression()), !dbg !5236
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4276, metadata !DIExpression()), !dbg !5237
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !4277, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #15, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %work, metadata !4278, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4279, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 1, ptr %queued) #15, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %queued, metadata !4280, metadata !DIExpression()), !dbg !5244
  store i8 0, ptr %queued, align 1, !dbg !5244
  br label %do.body, !dbg !5245

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !5246
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5246, !srcloc !5248
  br label %do.cond, !dbg !5246

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5246

do.end:                                           ; preds = %do.cond
  store i8 1, ptr @stop_cpus_in_progress, align 1, !dbg !5249
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5250, !srcloc !5251
  store i32 0, ptr %cpu, align 4, !dbg !5252
  br label %for.cond, !dbg !5252

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load ptr, ptr %cpumask.addr, align 8, !dbg !5253
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5253
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5253
  %1 = load i32, ptr %cpu, align 4, !dbg !5253
  %conv = zext i32 %1 to i64, !dbg !5253
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #16, !dbg !5253
  %conv1 = trunc i64 %call to i32, !dbg !5253
  store i32 %conv1, ptr %cpu, align 4, !dbg !5253
  %2 = load i32, ptr %cpu, align 4, !dbg !5253
  %cmp = icmp ult i32 %2, 64, !dbg !5253
  br i1 %cmp, label %for.body, label %for.end, !dbg !5252

for.body:                                         ; preds = %for.cond
  br label %do.body3, !dbg !5254

do.body3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4281, metadata !DIExpression()), !dbg !5255
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5255
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5254
  br label %do.cond4, !dbg !5255

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5255

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4287, metadata !DIExpression()), !dbg !5256
  store i64 ptrtoint (ptr getelementptr inbounds (%struct.cpu_stopper, ptr @cpu_stopper, i32 0, i32 4) to i64), ptr %__ptr, align 8, !dbg !5256
  %4 = load i64, ptr %__ptr, align 8, !dbg !5256
  %5 = load i32, ptr %cpu, align 4, !dbg !5256
  %idxprom = zext i32 %5 to i64, !dbg !5256
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5256
  %6 = load i64, ptr %arrayidx, align 8, !dbg !5256
  %add = add i64 %4, %6, !dbg !5256
  %7 = inttoptr i64 %add to ptr, !dbg !5256
  store ptr %7, ptr %tmp6, align 8, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5254
  %8 = load ptr, ptr %tmp6, align 8, !dbg !5256
  store ptr %8, ptr %tmp, align 8, !dbg !5255
  %9 = load ptr, ptr %tmp, align 8, !dbg !5254
  store ptr %9, ptr %work, align 8, !dbg !5257
  %10 = load ptr, ptr %fn.addr, align 8, !dbg !5258
  %11 = load ptr, ptr %work, align 8, !dbg !5259
  %fn7 = getelementptr inbounds %struct.cpu_stop_work, ptr %11, i32 0, i32 1, !dbg !5260
  store ptr %10, ptr %fn7, align 8, !dbg !5261
  %12 = load ptr, ptr %arg.addr, align 8, !dbg !5262
  %13 = load ptr, ptr %work, align 8, !dbg !5263
  %arg8 = getelementptr inbounds %struct.cpu_stop_work, ptr %13, i32 0, i32 3, !dbg !5264
  store ptr %12, ptr %arg8, align 8, !dbg !5265
  %14 = load ptr, ptr %done.addr, align 8, !dbg !5266
  %15 = load ptr, ptr %work, align 8, !dbg !5267
  %done9 = getelementptr inbounds %struct.cpu_stop_work, ptr %15, i32 0, i32 4, !dbg !5268
  store ptr %14, ptr %done9, align 8, !dbg !5269
  %16 = call ptr @llvm.returnaddress(i32 0), !dbg !5270
  %17 = ptrtoint ptr %16 to i64, !dbg !5270
  %18 = load ptr, ptr %work, align 8, !dbg !5271
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %18, i32 0, i32 2, !dbg !5272
  store i64 %17, ptr %caller, align 8, !dbg !5273
  %19 = load i32, ptr %cpu, align 4, !dbg !5274
  %20 = load ptr, ptr %work, align 8, !dbg !5276
  %call10 = call zeroext i1 @cpu_stop_queue_work(i32 noundef %19, ptr noundef %20) #16, !dbg !5277
  br i1 %call10, label %if.then, label %if.end, !dbg !5278

if.then:                                          ; preds = %do.end5
  store i8 1, ptr %queued, align 1, !dbg !5279
  br label %if.end, !dbg !5280

if.end:                                           ; preds = %if.then, %do.end5
  br label %for.inc, !dbg !5281

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %cpu, align 4, !dbg !5253
  %inc = add i32 %21, 1, !dbg !5253
  store i32 %inc, ptr %cpu, align 4, !dbg !5253
  br label %for.cond, !dbg !5253, !llvm.loop !5282

for.end:                                          ; preds = %for.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5284, !srcloc !5285
  store i8 0, ptr @stop_cpus_in_progress, align 1, !dbg !5286
  br label %do.body11, !dbg !5287

do.body11:                                        ; preds = %for.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5288, !srcloc !5290
  %call12 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !5291
  %lnot = xor i1 %call12, true, !dbg !5291
  %lnot13 = xor i1 %lnot, true, !dbg !5291
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !5291
  %conv14 = sext i32 %lnot.ext to i64, !dbg !5291
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !5291
  %tobool = icmp ne i64 %expval, 0, !dbg !5291
  br i1 %tobool, label %if.then15, label %if.end19, !dbg !5288

if.then15:                                        ; preds = %do.body11
  br label %do.body16, !dbg !5291

do.body16:                                        ; preds = %if.then15
  %22 = call i64 @llvm.read_register.i64(metadata !4289), !dbg !5293
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #15, !dbg !5293, !srcloc !5295
  call void @llvm.write_register.i64(metadata !4289, i64 %23), !dbg !5293
  br label %do.cond17, !dbg !5293

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5293

do.end18:                                         ; preds = %do.cond17
  br label %if.end19, !dbg !5293

if.end19:                                         ; preds = %do.end18, %do.body11
  br label %do.cond20, !dbg !5288

do.cond20:                                        ; preds = %if.end19
  br label %do.end21, !dbg !5288

do.end21:                                         ; preds = %do.cond20
  %24 = load i8, ptr %queued, align 1, !dbg !5296, !range !4419, !noundef !496
  %tobool22 = trunc i8 %24 to i1, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 1, ptr %queued) #15, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #15, !dbg !5297
  ret i1 %tobool22, !dbg !5298
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5299 dso_local zeroext i1 @completion_done(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local void @mutex_unlock(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5305 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5315
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5316
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5317
  %2 = load i32, ptr %i.addr, align 4, !dbg !5318
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #16, !dbg !5319
  ret void, !dbg !5320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #3 align 16 !dbg !4115 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4119, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %x.addr, align 8, !dbg !5322
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !5323
  store i32 0, ptr %done, align 8, !dbg !5324
  br label %do.body, !dbg !5325

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !5326
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !5326
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.2, ptr noundef @init_completion.__key) #16, !dbg !5326
  br label %do.end, !dbg !5326

do.end:                                           ; preds = %do.body
  ret void, !dbg !5328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5329 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5337, metadata !DIExpression()), !dbg !5339
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5341
  %1 = load i64, ptr %size.addr, align 8, !dbg !5342
  %conv = trunc i64 %1 to i32, !dbg !5342
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5343
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5344
  %3 = load i64, ptr %size.addr, align 8, !dbg !5344
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !5344
  ret void, !dbg !5345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5346 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5349, metadata !DIExpression()), !dbg !5351
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5350, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5353
  %1 = load i32, ptr %i.addr, align 4, !dbg !5354
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #16, !dbg !5355
  ret void, !dbg !5356
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5357 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5362, metadata !DIExpression()), !dbg !5364
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5363, metadata !DIExpression()), !dbg !5365
  ret i1 true, !dbg !5366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5367 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5372, metadata !DIExpression()), !dbg !5375
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5373, metadata !DIExpression()), !dbg !5376
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5374, metadata !DIExpression()), !dbg !5377
  ret void, !dbg !5378
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #7 align 16 !dbg !5379 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5382, metadata !DIExpression()), !dbg !5384
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5383, metadata !DIExpression()), !dbg !5385
  br label %do.body, !dbg !5386

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5387
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5387
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5387
  store volatile i32 %0, ptr %counter, align 4, !dbg !5387
  br label %do.end, !dbg !5387

do.end:                                           ; preds = %do.body
  ret void, !dbg !5389
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5390 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !5395 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5398, metadata !DIExpression()), !dbg !5405
  br label %do.body, !dbg !5406

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5399, metadata !DIExpression()), !dbg !5407
  %0 = load i32, ptr %val.addr, align 4, !dbg !5407
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5407
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5407

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5407
  %cmp = icmp eq i32 %2, 1, !dbg !5407
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5407

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5407
  %cmp1 = icmp eq i32 %3, -1, !dbg !5407
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5407

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5407
  br label %cond.end, !dbg !5407

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5407
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5407
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5408
  %cmp2 = icmp eq i32 %5, 1, !dbg !5408
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5407

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5409, !srcloc !5411
  br label %if.end8, !dbg !5408

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5412
  %cmp3 = icmp eq i32 %6, -1, !dbg !5412
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5408

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5413, !srcloc !5415
  br label %if.end, !dbg !5412

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5412

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5401, metadata !DIExpression()), !dbg !5416
  %7 = load i32, ptr %val.addr, align 4, !dbg !5416
  %conv = sext i32 %7 to i64, !dbg !5416
  %and = and i64 %conv, 4294967295, !dbg !5416
  %conv7 = trunc i64 %and to i32, !dbg !5416
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5416
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5416
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5416, !srcloc !5417
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !5412
  br label %do.cond, !dbg !5416

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5416

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !5406
  br label %do.end10, !dbg !5407

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5419 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cpu_stop_queue_work(ptr noundef %stopper, ptr noundef %work, ptr noundef %wakeq) #0 align 16 !dbg !5424 {
entry:
  %stopper.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %wakeq.addr = alloca ptr, align 8
  store ptr %stopper, ptr %stopper.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stopper.addr, metadata !5429, metadata !DIExpression()), !dbg !5432
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5430, metadata !DIExpression()), !dbg !5433
  store ptr %wakeq, ptr %wakeq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wakeq.addr, metadata !5431, metadata !DIExpression()), !dbg !5434
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5435
  %list = getelementptr inbounds %struct.cpu_stop_work, ptr %0, i32 0, i32 0, !dbg !5436
  %1 = load ptr, ptr %stopper.addr, align 8, !dbg !5437
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %1, i32 0, i32 3, !dbg !5438
  call void @list_add_tail(ptr noundef %list, ptr noundef %works) #16, !dbg !5439
  %2 = load ptr, ptr %wakeq.addr, align 8, !dbg !5440
  %3 = load ptr, ptr %stopper.addr, align 8, !dbg !5441
  %thread = getelementptr inbounds %struct.cpu_stopper, ptr %3, i32 0, i32 0, !dbg !5442
  %4 = load ptr, ptr %thread, align 8, !dbg !5442
  call void @wake_q_add(ptr noundef %2, ptr noundef %4) #16, !dbg !5443
  ret void, !dbg !5444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_stop_signal_done(ptr noundef %done) #0 align 16 !dbg !5445 {
entry:
  %done.addr = alloca ptr, align 8
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  %0 = load ptr, ptr %done.addr, align 8, !dbg !5451
  %nr_todo = getelementptr inbounds %struct.cpu_stop_done, ptr %0, i32 0, i32 0, !dbg !5453
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %nr_todo) #16, !dbg !5454
  br i1 %call, label %if.then, label %if.end, !dbg !5455

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %done.addr, align 8, !dbg !5456
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %1, i32 0, i32 2, !dbg !5457
  call void @complete(ptr noundef %completion) #16, !dbg !5458
  br label %if.end, !dbg !5458

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5460 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5463 dso_local void @wake_up_q(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !5466 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5468, metadata !DIExpression()), !dbg !5470
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5470, !srcloc !5471
  %1 = icmp ult i8 %0, 2, !dbg !5470
  call void @llvm.assume(i1 %1), !dbg !5470
  store i8 %0, ptr %c, align 1, !dbg !5470
  %2 = load i8, ptr %c, align 1, !dbg !5470, !range !4419, !noundef !496
  %tobool = trunc i8 %2 to i1, !dbg !5470
  %frombool = zext i1 %tobool to i8, !dbg !5470
  store i8 %frombool, ptr %tmp, align 1, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !5472
  %3 = load i8, ptr %tmp, align 1, !dbg !5470, !range !4419, !noundef !496
  %tobool1 = trunc i8 %3 to i1, !dbg !5470
  ret i1 %tobool1, !dbg !5473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5474 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5479, metadata !DIExpression()), !dbg !5481
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5480, metadata !DIExpression()), !dbg !5482
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5483
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5484
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5485
  %2 = load ptr, ptr %prev, align 8, !dbg !5485
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5486
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !5487
  ret void, !dbg !5488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5489 dso_local void @wake_q_add(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5492 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5496, metadata !DIExpression()), !dbg !5499
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5497, metadata !DIExpression()), !dbg !5500
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5498, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5502
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5504
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5505
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5506
  br i1 %call, label %if.end, label %if.then, !dbg !5507

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5508

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5509
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5510
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5511
  store ptr %3, ptr %prev1, align 8, !dbg !5512
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5513
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5514
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5515
  store ptr %5, ptr %next2, align 8, !dbg !5516
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5517
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5518
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5519
  store ptr %7, ptr %prev3, align 8, !dbg !5520
  br label %do.body, !dbg !5521

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5522

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5524

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5522

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5526
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5526
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5526
  store volatile ptr %9, ptr %next6, align 8, !dbg !5526
  br label %do.end7, !dbg !5526

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5522

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5529 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5533, metadata !DIExpression()), !dbg !5536
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5534, metadata !DIExpression()), !dbg !5537
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5535, metadata !DIExpression()), !dbg !5538
  ret i1 true, !dbg !5539
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !5540 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  br label %do.body, !dbg !5546

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5547

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5549
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5550
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5551
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #16, !dbg !5552
  ret i1 %call, !dbg !5553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5554 dso_local void @complete(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5555 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5557, metadata !DIExpression()), !dbg !5559
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5558, metadata !DIExpression()), !dbg !5560
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5561
  %1 = load i64, ptr %size.addr, align 8, !dbg !5562
  %conv = trunc i64 %1 to i32, !dbg !5562
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5563
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5564
  %3 = load i64, ptr %size.addr, align 8, !dbg !5564
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !5564
  ret void, !dbg !5565
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !5566 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5570
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #16, !dbg !5571
  ret i1 %call, !dbg !5572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #7 align 16 !dbg !5573 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5575, metadata !DIExpression()), !dbg !5578
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !5579
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5576, metadata !DIExpression()), !dbg !5579
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5579
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5579
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !5579, !srcloc !5580
  %2 = icmp ult i8 %1, 2, !dbg !5579
  call void @llvm.assume(i1 %2), !dbg !5579
  store i8 %1, ptr %c, align 1, !dbg !5579
  %3 = load i8, ptr %c, align 1, !dbg !5579, !range !4419, !noundef !496
  %tobool = trunc i8 %3 to i1, !dbg !5579
  %frombool = zext i1 %tobool to i8, !dbg !5579
  store i8 %frombool, ptr %tmp, align 1, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !5581
  %4 = load i8, ptr %tmp, align 1, !dbg !5579, !range !4419, !noundef !496
  %tobool1 = trunc i8 %4 to i1, !dbg !5579
  ret i1 %tobool1, !dbg !5582
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #7 align 16 !dbg !5583 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5584, !srcloc !5585
  ret void, !dbg !5586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #7 align 16 !dbg !5587 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  ret void, !dbg !5594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !5595 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !5596
  ret i64 %call, !dbg !5597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #3 align 16 !dbg !5598 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5602
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5602
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5602
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #16, !dbg !5603
  %conv = trunc i64 %call to i32, !dbg !5603
  ret i32 %conv, !dbg !5604
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !5605 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5609, metadata !DIExpression()), !dbg !5611
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5610, metadata !DIExpression()), !dbg !5612
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5613
  %call = call i32 @cpumask_check(i32 noundef %0) #16, !dbg !5613
  %conv = zext i32 %call to i64, !dbg !5613
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5613
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5613
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5613
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #16, !dbg !5613
  ret i1 %call1, !dbg !5614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #7 align 16 !dbg !5615 {
entry:
  call void @native_irq_disable() #16, !dbg !5616
  ret void, !dbg !5617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ack_state(ptr noundef %msdata) #0 align 16 !dbg !5618 {
entry:
  %msdata.addr = alloca ptr, align 8
  store ptr %msdata, ptr %msdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msdata.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  %0 = load ptr, ptr %msdata.addr, align 8, !dbg !5624
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 5, !dbg !5626
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %thread_ack) #16, !dbg !5627
  br i1 %call, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %msdata.addr, align 8, !dbg !5629
  %2 = load ptr, ptr %msdata.addr, align 8, !dbg !5630
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %2, i32 0, i32 4, !dbg !5631
  %3 = load i32, ptr %state, align 8, !dbg !5631
  %add = add i32 %3, 1, !dbg !5632
  call void @set_state(ptr noundef %1, i32 noundef %add) #16, !dbg !5633
  br label %if.end, !dbg !5633

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_nmi_watchdog() #3 align 16 !dbg !5635 {
entry:
  call void @arch_touch_nmi_watchdog() #16, !dbg !5637
  call void @touch_softlockup_watchdog() #16, !dbg !5638
  ret void, !dbg !5639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5640 dso_local void @rcu_momentary_dyntick_idle() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !5642 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5644, metadata !DIExpression()), !dbg !5646
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !5647, !srcloc !5648
  %0 = load i64, ptr %flags, align 8, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5650
  ret i64 %0, !dbg !5651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !5652 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5657, metadata !DIExpression()), !dbg !5662
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5658, metadata !DIExpression()), !dbg !5663
  %0 = load i64, ptr %size.addr, align 8, !dbg !5664
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5664
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5664

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5664
  %cmp = icmp ule i64 %2, 64, !dbg !5664
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5664

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5664
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5664
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5665

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5659, metadata !DIExpression()), !dbg !5667
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !5668
  %5 = load i64, ptr %4, align 8, !dbg !5669
  %6 = load i64, ptr %size.addr, align 8, !dbg !5670
  %sub = sub i64 %6, 1, !dbg !5670
  %sub3 = sub i64 63, %sub, !dbg !5670
  %shr = lshr i64 -1, %sub3, !dbg !5670
  %and = and i64 -1, %shr, !dbg !5670
  %add = add i64 0, %and, !dbg !5670
  %and4 = and i64 %5, %add, !dbg !5671
  store i64 %and4, ptr %val, align 8, !dbg !5667
  %7 = load i64, ptr %val, align 8, !dbg !5672
  %tobool = icmp ne i64 %7, 0, !dbg !5672
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !5672

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !5673
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5673
  br i1 %9, label %cond.true5, label %cond.false, !dbg !5673

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !5673
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !5673
  %cast = trunc i64 %11 to i32, !dbg !5673
  %conv = sext i32 %cast to i64, !dbg !5673
  br label %cond.end, !dbg !5673

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !5673
  %call = call i64 @variable__ffs(i64 noundef %12) #16, !dbg !5673
  br label %cond.end, !dbg !5673

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !5673
  br label %cond.end7, !dbg !5672

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !5674
  br label %cond.end7, !dbg !5672

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !5672
  store i64 %cond8, ptr %retval, align 8, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5676
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !5677
  %15 = load i64, ptr %size.addr, align 8, !dbg !5678
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #16, !dbg !5679
  store i64 %call9, ptr %retval, align 8, !dbg !5680
  br label %return, !dbg !5680

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !5681
  ret i64 %16, !dbg !5681
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !5682 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  %0 = load i64, ptr %word.addr, align 8, !dbg !5689
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !5690, !srcloc !5691
  store i64 %1, ptr %word.addr, align 8, !dbg !5690
  %2 = load i64, ptr %word.addr, align 8, !dbg !5692
  ret i64 %2, !dbg !5693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5694 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5695 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5703, metadata !DIExpression()), !dbg !5705
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5704, metadata !DIExpression()), !dbg !5706
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5707
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5708
  %div = udiv i64 %1, 64, !dbg !5708
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5709
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !5710
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5711
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5712
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5713
  ret i1 %call, !dbg !5714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !5715 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5721
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #16, !dbg !5722
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5723
  ret i32 %1, !dbg !5724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5725 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5727, metadata !DIExpression()), !dbg !5729
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5728, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5731
  %1 = load i64, ptr %size.addr, align 8, !dbg !5732
  %conv = trunc i64 %1 to i32, !dbg !5732
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !5733
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5734
  %3 = load i64, ptr %size.addr, align 8, !dbg !5734
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !5734
  ret void, !dbg !5735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5736 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5738, metadata !DIExpression()), !dbg !5740
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5739, metadata !DIExpression()), !dbg !5741
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5742
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5743
  br i1 %1, label %cond.true, label %cond.false, !dbg !5743

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5744
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5745
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5746
  %conv = zext i1 %call to i32, !dbg !5746
  br label %cond.end, !dbg !5743

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5747
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5748
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !5749
  %conv2 = zext i1 %call1 to i32, !dbg !5749
  br label %cond.end, !dbg !5743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5743
  %tobool = icmp ne i32 %cond, 0, !dbg !5743
  ret i1 %tobool, !dbg !5750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5751 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5753, metadata !DIExpression()), !dbg !5755
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  ret i1 true, !dbg !5757
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5758 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5762, metadata !DIExpression()), !dbg !5764
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5763, metadata !DIExpression()), !dbg !5765
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5766
  %and = and i64 %0, 63, !dbg !5767
  %shl = shl i64 1, %and, !dbg !5768
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5769
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5770
  %shr = ashr i64 %2, 6, !dbg !5771
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5769
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5769
  %and1 = and i64 %shl, %3, !dbg !5772
  %cmp = icmp ne i64 %and1, 0, !dbg !5773
  ret i1 %cmp, !dbg !5774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5775 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5777, metadata !DIExpression()), !dbg !5780
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5778, metadata !DIExpression()), !dbg !5781
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !5782
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5779, metadata !DIExpression()), !dbg !5783
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5784
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5785
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !5786, !srcloc !5787
  %3 = icmp ult i8 %2, 2, !dbg !5786
  call void @llvm.assume(i1 %3), !dbg !5786
  store i8 %2, ptr %oldbit, align 1, !dbg !5786
  %4 = load i8, ptr %oldbit, align 1, !dbg !5788, !range !4419, !noundef !496
  %tobool = trunc i8 %4 to i1, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !5789
  ret i1 %tobool, !dbg !5790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !5791 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5795, metadata !DIExpression()), !dbg !5797
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5796, metadata !DIExpression()), !dbg !5798
  ret void, !dbg !5799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #7 align 16 !dbg !5800 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5801, !srcloc !5802
  ret void, !dbg !5803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_touch_nmi_watchdog() #3 align 16 !dbg !5804 {
entry:
  ret void, !dbg !5805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #3 align 16 !dbg !5806 {
entry:
  ret void, !dbg !5807
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5808 dso_local void @_raw_spin_lock_irq(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5811 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5812 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local void @_raw_spin_unlock_irq(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !5814 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5818, metadata !DIExpression()), !dbg !5824
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5819, metadata !DIExpression()), !dbg !5825
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5820, metadata !DIExpression()), !dbg !5826
  %0 = load i64, ptr %size.addr, align 8, !dbg !5827
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5827
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5827

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5827
  %cmp = icmp ule i64 %2, 64, !dbg !5827
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5827

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5827
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5827
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5828

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5829
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5821, metadata !DIExpression()), !dbg !5830
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5831
  %5 = load i64, ptr %size.addr, align 8, !dbg !5831
  %cmp3 = icmp uge i64 %4, %5, !dbg !5831
  %lnot = xor i1 %cmp3, true, !dbg !5831
  %lnot4 = xor i1 %lnot, true, !dbg !5831
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5831
  %conv = sext i32 %lnot.ext to i64, !dbg !5831
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5831
  %tobool = icmp ne i64 %expval, 0, !dbg !5831
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5833

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5834
  store i64 %6, ptr %retval, align 8, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5835

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5836
  %8 = load i64, ptr %7, align 8, !dbg !5837
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5838
  %shl = shl i64 1, %9, !dbg !5838
  %sub = sub i64 -1, %shl, !dbg !5838
  %add = add i64 %sub, 1, !dbg !5838
  %10 = load i64, ptr %size.addr, align 8, !dbg !5838
  %sub6 = sub i64 %10, 1, !dbg !5838
  %sub7 = sub i64 63, %sub6, !dbg !5838
  %shr = lshr i64 -1, %sub7, !dbg !5838
  %and = and i64 %add, %shr, !dbg !5838
  %add8 = add i64 0, %and, !dbg !5838
  %and9 = and i64 %8, %add8, !dbg !5839
  store i64 %and9, ptr %val, align 8, !dbg !5840
  %11 = load i64, ptr %val, align 8, !dbg !5841
  %tobool10 = icmp ne i64 %11, 0, !dbg !5841
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5841

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5842
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5842
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5842

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5842
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5842
  %cast = trunc i64 %15 to i32, !dbg !5842
  %conv12 = sext i32 %cast to i64, !dbg !5842
  br label %cond.end, !dbg !5842

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5842
  %call = call i64 @variable__ffs(i64 noundef %16) #16, !dbg !5842
  br label %cond.end, !dbg !5842

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5842
  br label %cond.end14, !dbg !5841

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5843
  br label %cond.end14, !dbg !5841

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5841
  store i64 %cond15, ptr %retval, align 8, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5845
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5846
  %19 = load i64, ptr %size.addr, align 8, !dbg !5847
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5848
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #16, !dbg !5849
  store i64 %call17, ptr %retval, align 8, !dbg !5850
  br label %return, !dbg !5850

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5851
  ret i64 %21, !dbg !5851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5852 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  br label %do.body, !dbg !5858

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5859

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5861

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5859

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5863
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5863
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5863
  store volatile ptr %0, ptr %next, align 8, !dbg !5863
  br label %do.end3, !dbg !5863

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5859

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5865

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5866

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5868

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5866

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5870
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5870
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5870
  store volatile ptr %2, ptr %prev, align 8, !dbg !5870
  br label %do.end9, !dbg !5870

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5866

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5872
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5873 dso_local i32 @smpboot_register_percpu_thread(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5877 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_stop_should_run(i32 noundef %cpu) #0 align 16 !dbg !5878 {
entry:
  %cpu.addr = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %flags = alloca i64, align 8
  %run = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5880, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !5881, metadata !DIExpression()), !dbg !5899
  br label %do.body, !dbg !5900

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5882, metadata !DIExpression()), !dbg !5901
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5901
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5900
  br label %do.cond, !dbg !5901

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5901

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5885, metadata !DIExpression()), !dbg !5902
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !5902
  %1 = load i64, ptr %__ptr, align 8, !dbg !5902
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5902
  %idxprom = zext i32 %2 to i64, !dbg !5902
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5902
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5902
  %add = add i64 %1, %3, !dbg !5902
  %4 = inttoptr i64 %add to ptr, !dbg !5902
  store ptr %4, ptr %tmp1, align 8, !dbg !5902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5900
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5902
  store ptr %5, ptr %tmp, align 8, !dbg !5901
  %6 = load ptr, ptr %tmp, align 8, !dbg !5900
  store ptr %6, ptr %stopper, align 8, !dbg !5899
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5887, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 4, ptr %run) #15, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %run, metadata !5888, metadata !DIExpression()), !dbg !5906
  br label %do.body2, !dbg !5907

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5889, metadata !DIExpression()), !dbg !5908
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5892, metadata !DIExpression()), !dbg !5908
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5908
  %conv = zext i1 %cmp to i32, !dbg !5908
  store i32 1, ptr %tmp3, align 4, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5909
  %7 = load i32, ptr %tmp3, align 4, !dbg !5908
  %8 = load ptr, ptr %stopper, align 8, !dbg !5909
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 1, !dbg !5909
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #16, !dbg !5909
  store i64 %call, ptr %flags, align 8, !dbg !5909
  br label %do.cond4, !dbg !5909

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !5909

do.end5:                                          ; preds = %do.cond4
  %9 = load ptr, ptr %stopper, align 8, !dbg !5910
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 3, !dbg !5911
  %call6 = call i32 @list_empty(ptr noundef %works) #16, !dbg !5912
  %tobool = icmp ne i32 %call6, 0, !dbg !5913
  %lnot = xor i1 %tobool, true, !dbg !5913
  %lnot.ext = zext i1 %lnot to i32, !dbg !5913
  store i32 %lnot.ext, ptr %run, align 4, !dbg !5914
  br label %do.body7, !dbg !5915

do.body7:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #15, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !5893, metadata !DIExpression()), !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #15, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !5896, metadata !DIExpression()), !dbg !5916
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !5916
  %conv11 = zext i1 %cmp10 to i32, !dbg !5916
  store i32 1, ptr %tmp12, align 4, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #15, !dbg !5917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #15, !dbg !5917
  %10 = load i32, ptr %tmp12, align 4, !dbg !5916
  %11 = load ptr, ptr %stopper, align 8, !dbg !5917
  %lock13 = getelementptr inbounds %struct.cpu_stopper, ptr %11, i32 0, i32 1, !dbg !5917
  %12 = load i64, ptr %flags, align 8, !dbg !5917
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %12) #16, !dbg !5917
  br label %do.cond14, !dbg !5917

do.cond14:                                        ; preds = %do.body7
  br label %do.end15, !dbg !5917

do.end15:                                         ; preds = %do.cond14
  %13 = load i32, ptr %run, align 4, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 4, ptr %run) #15, !dbg !5919
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5919
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !5919
  ret i32 %13, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_stopper_thread(i32 noundef %cpu) #0 align 16 !dbg !4226 {
entry:
  %cpu.addr = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %work = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %fn = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %done = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp37 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp78 = alloca i64, align 8
  %tmp87 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4228, metadata !DIExpression()), !dbg !5921
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !4229, metadata !DIExpression()), !dbg !5923
  br label %do.body, !dbg !5924

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4230, metadata !DIExpression()), !dbg !5925
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5925
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5924
  br label %do.cond, !dbg !5925

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5925

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4233, metadata !DIExpression()), !dbg !5926
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !5926
  %1 = load i64, ptr %__ptr, align 8, !dbg !5926
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5926
  %idxprom = zext i32 %2 to i64, !dbg !5926
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5926
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5926
  %add = add i64 %1, %3, !dbg !5926
  %4 = inttoptr i64 %add to ptr, !dbg !5926
  store ptr %4, ptr %tmp1, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5924
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5926
  store ptr %5, ptr %tmp, align 8, !dbg !5925
  %6 = load ptr, ptr %tmp, align 8, !dbg !5924
  store ptr %6, ptr %stopper, align 8, !dbg !5923
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #15, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %work, metadata !4235, metadata !DIExpression()), !dbg !5928
  br label %repeat, !dbg !5927

repeat:                                           ; preds = %if.end86, %do.end
  call void @llvm.dbg.label(metadata !4236), !dbg !5929
  store ptr null, ptr %work, align 8, !dbg !5930
  %7 = load ptr, ptr %stopper, align 8, !dbg !5931
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 1, !dbg !5931
  call void @_raw_spin_lock_irq(ptr noundef %lock) #16, !dbg !5931
  %8 = load ptr, ptr %stopper, align 8, !dbg !5932
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 3, !dbg !5933
  %call = call i32 @list_empty(ptr noundef %works) #16, !dbg !5934
  %tobool = icmp ne i32 %call, 0, !dbg !5934
  br i1 %tobool, label %if.end, label %if.then, !dbg !5935

if.then:                                          ; preds = %repeat
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4237, metadata !DIExpression()), !dbg !5936
  %9 = load ptr, ptr %stopper, align 8, !dbg !5936
  %works2 = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 3, !dbg !5936
  %next = getelementptr inbounds %struct.list_head, ptr %works2, i32 0, i32 0, !dbg !5936
  %10 = load ptr, ptr %next, align 8, !dbg !5936
  store ptr %10, ptr %__mptr, align 8, !dbg !5936
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5936
  %add.ptr = getelementptr i8, ptr %11, i64 0, !dbg !5936
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5937
  %12 = load ptr, ptr %tmp3, align 8, !dbg !5936
  store ptr %12, ptr %work, align 8, !dbg !5938
  %13 = load ptr, ptr %work, align 8, !dbg !5939
  %list = getelementptr inbounds %struct.cpu_stop_work, ptr %13, i32 0, i32 0, !dbg !5940
  call void @list_del_init(ptr noundef %list) #16, !dbg !5941
  br label %if.end, !dbg !5942

if.end:                                           ; preds = %if.then, %repeat
  %14 = load ptr, ptr %stopper, align 8, !dbg !5943
  %lock4 = getelementptr inbounds %struct.cpu_stopper, ptr %14, i32 0, i32 1, !dbg !5943
  call void @_raw_spin_unlock_irq(ptr noundef %lock4) #16, !dbg !5943
  %15 = load ptr, ptr %work, align 8, !dbg !5944
  %tobool5 = icmp ne ptr %15, null, !dbg !5944
  br i1 %tobool5, label %if.then6, label %if.end95, !dbg !5945

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #15, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !4241, metadata !DIExpression()), !dbg !5947
  %16 = load ptr, ptr %work, align 8, !dbg !5948
  %fn7 = getelementptr inbounds %struct.cpu_stop_work, ptr %16, i32 0, i32 1, !dbg !5949
  %17 = load ptr, ptr %fn7, align 8, !dbg !5949
  store ptr %17, ptr %fn, align 8, !dbg !5947
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #15, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !4244, metadata !DIExpression()), !dbg !5951
  %18 = load ptr, ptr %work, align 8, !dbg !5952
  %arg8 = getelementptr inbounds %struct.cpu_stop_work, ptr %18, i32 0, i32 3, !dbg !5953
  %19 = load ptr, ptr %arg8, align 8, !dbg !5953
  store ptr %19, ptr %arg, align 8, !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %done) #15, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %done, metadata !4245, metadata !DIExpression()), !dbg !5955
  %20 = load ptr, ptr %work, align 8, !dbg !5956
  %done9 = getelementptr inbounds %struct.cpu_stop_work, ptr %20, i32 0, i32 4, !dbg !5957
  %21 = load ptr, ptr %done9, align 8, !dbg !5957
  store ptr %21, ptr %done, align 8, !dbg !5955
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4246, metadata !DIExpression()), !dbg !5959
  %22 = load ptr, ptr %work, align 8, !dbg !5960
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %22, i32 0, i32 2, !dbg !5961
  %23 = load i64, ptr %caller, align 8, !dbg !5961
  %24 = load ptr, ptr %stopper, align 8, !dbg !5962
  %caller10 = getelementptr inbounds %struct.cpu_stopper, ptr %24, i32 0, i32 5, !dbg !5963
  store i64 %23, ptr %caller10, align 8, !dbg !5964
  %25 = load ptr, ptr %fn, align 8, !dbg !5965
  %26 = load ptr, ptr %stopper, align 8, !dbg !5966
  %fn11 = getelementptr inbounds %struct.cpu_stopper, ptr %26, i32 0, i32 6, !dbg !5967
  store ptr %25, ptr %fn11, align 8, !dbg !5968
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !5969
  %27 = load ptr, ptr %fn, align 8, !dbg !5970
  %28 = load ptr, ptr %arg, align 8, !dbg !5971
  %call12 = call i32 %27(ptr noundef %28) #16, !dbg !5970
  store i32 %call12, ptr %ret, align 4, !dbg !5972
  %29 = load ptr, ptr %done, align 8, !dbg !5973
  %tobool13 = icmp ne ptr %29, null, !dbg !5973
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !5975

if.then14:                                        ; preds = %if.then6
  %30 = load i32, ptr %ret, align 4, !dbg !5976
  %tobool15 = icmp ne i32 %30, 0, !dbg !5976
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5979

if.then16:                                        ; preds = %if.then14
  %31 = load i32, ptr %ret, align 4, !dbg !5980
  %32 = load ptr, ptr %done, align 8, !dbg !5981
  %ret17 = getelementptr inbounds %struct.cpu_stop_done, ptr %32, i32 0, i32 1, !dbg !5982
  store i32 %31, ptr %ret17, align 4, !dbg !5983
  br label %if.end18, !dbg !5981

if.end18:                                         ; preds = %if.then16, %if.then14
  %33 = load ptr, ptr %done, align 8, !dbg !5984
  call void @cpu_stop_signal_done(ptr noundef %33) #16, !dbg !5985
  br label %if.end19, !dbg !5986

if.end19:                                         ; preds = %if.end18, %if.then6
  call void @__preempt_count_sub(i32 noundef 1) #16, !dbg !5987
  %34 = load ptr, ptr %stopper, align 8, !dbg !5988
  %fn20 = getelementptr inbounds %struct.cpu_stopper, ptr %34, i32 0, i32 6, !dbg !5989
  store ptr null, ptr %fn20, align 8, !dbg !5990
  %35 = load ptr, ptr %stopper, align 8, !dbg !5991
  %caller21 = getelementptr inbounds %struct.cpu_stopper, ptr %35, i32 0, i32 5, !dbg !5992
  store i64 0, ptr %caller21, align 8, !dbg !5993
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5994
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4247, metadata !DIExpression()), !dbg !5994
  %call22 = call i32 @preempt_count() #16, !dbg !5994
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5994
  %lnot = xor i1 %tobool23, true, !dbg !5994
  %lnot24 = xor i1 %lnot, true, !dbg !5994
  %frombool = zext i1 %lnot24 to i8, !dbg !5994
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !5994
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4249, metadata !DIExpression()), !dbg !5995
  %36 = load i8, ptr %__ret_do_once, align 1, !dbg !5995, !range !4419, !noundef !496
  %tobool25 = trunc i8 %36 to i1, !dbg !5995
  %lnot26 = xor i1 %tobool25, true, !dbg !5995
  %lnot27 = xor i1 %lnot26, true, !dbg !5995
  %frombool28 = zext i1 %lnot27 to i8, !dbg !5995
  store i8 %frombool28, ptr %__ret_cond, align 1, !dbg !5995
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4252, metadata !DIExpression()), !dbg !5995
  store i8 0, ptr %__ret_once, align 1, !dbg !5995
  %37 = load i8, ptr %__ret_cond, align 1, !dbg !5996, !range !4419, !noundef !496
  %tobool29 = trunc i8 %37 to i1, !dbg !5996
  br i1 %tobool29, label %land.rhs, label %land.end, !dbg !5996

land.rhs:                                         ; preds = %if.end19
  %38 = load i8, ptr @cpu_stopper_thread.__already_done, align 1, !dbg !5996, !range !4419, !noundef !496
  %tobool30 = trunc i8 %38 to i1, !dbg !5996
  %lnot31 = xor i1 %tobool30, true, !dbg !5996
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end19
  %39 = phi i1 [ false, %if.end19 ], [ %lnot31, %land.rhs ], !dbg !5998
  %lnot32 = xor i1 %39, true, !dbg !5996
  %lnot33 = xor i1 %lnot32, true, !dbg !5996
  %lnot.ext = zext i1 %lnot33 to i32, !dbg !5996
  %conv = sext i32 %lnot.ext to i64, !dbg !5996
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5996
  %tobool34 = icmp ne i64 %expval, 0, !dbg !5996
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5995

if.then35:                                        ; preds = %land.end
  store i8 1, ptr @cpu_stopper_thread.__already_done, align 1, !dbg !5999
  store i8 1, ptr %__ret_once, align 1, !dbg !5999
  br label %if.end36, !dbg !5999

if.end36:                                         ; preds = %if.then35, %land.end
  %40 = load i8, ptr %__ret_once, align 1, !dbg !5995, !range !4419, !noundef !496
  %tobool38 = trunc i8 %40 to i1, !dbg !5995
  %lnot39 = xor i1 %tobool38, true, !dbg !5995
  %lnot41 = xor i1 %lnot39, true, !dbg !5995
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5995
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5995
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5995
  store i64 %expval44, ptr %tmp37, align 8, !dbg !5996
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !6001
  %41 = load i64, ptr %tmp37, align 8, !dbg !5995
  %tobool45 = icmp ne i64 %41, 0, !dbg !6001
  br i1 %tobool45, label %if.then46, label %if.end86, !dbg !5994

if.then46:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4253, metadata !DIExpression()), !dbg !6002
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6002
  %42 = load i32, ptr %__ret_warn_on, align 4, !dbg !6003
  %tobool47 = icmp ne i32 %42, 0, !dbg !6003
  %lnot48 = xor i1 %tobool47, true, !dbg !6003
  %lnot50 = xor i1 %lnot48, true, !dbg !6003
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !6003
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !6003
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !6003
  %tobool54 = icmp ne i64 %expval53, 0, !dbg !6003
  br i1 %tobool54, label %if.then55, label %if.end77, !dbg !6002

if.then55:                                        ; preds = %if.then46
  br label %do.body56, !dbg !6003

do.body56:                                        ; preds = %if.then55
  br label %do.body57, !dbg !6004

do.body57:                                        ; preds = %do.body56
  br label %do.cond58, !dbg !6005

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6005

do.end59:                                         ; preds = %do.cond58
  %43 = load ptr, ptr %fn, align 8, !dbg !6004
  %44 = load ptr, ptr %arg, align 8, !dbg !6004
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.5, ptr noundef %43, ptr noundef %44) #16, !dbg !6004
  br label %do.body60, !dbg !6004

do.body60:                                        ; preds = %do.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4255, metadata !DIExpression()), !dbg !6007
  store i32 2313, ptr %__flags, align 4, !dbg !6007
  br label %do.body61, !dbg !6007

do.body61:                                        ; preds = %do.body60
  br label %do.cond62, !dbg !6008

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6008

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !6007

do.body64:                                        ; preds = %do.end63
  %45 = load i32, ptr %__flags, align 4, !dbg !6010
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 521, i32 %45, i64 12) #15, !dbg !6010, !srcloc !6012
  br label %do.cond65, !dbg !6010

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !6010

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !6007

do.body67:                                        ; preds = %do.end66
  br label %do.cond68, !dbg !6013

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !6013

do.end69:                                         ; preds = %do.cond68
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6004
  br label %do.cond70, !dbg !6007

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !6007

do.end71:                                         ; preds = %do.cond70
  br label %do.body72, !dbg !6004

do.body72:                                        ; preds = %do.end71
  br label %do.cond73, !dbg !6015

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !6015

do.end74:                                         ; preds = %do.cond73
  br label %do.cond75, !dbg !6004

do.cond75:                                        ; preds = %do.end74
  br label %do.end76, !dbg !6004

do.end76:                                         ; preds = %do.cond75
  br label %if.end77, !dbg !6004

if.end77:                                         ; preds = %do.end76, %if.then46
  %46 = load i32, ptr %__ret_warn_on, align 4, !dbg !6002
  %tobool79 = icmp ne i32 %46, 0, !dbg !6002
  %lnot80 = xor i1 %tobool79, true, !dbg !6002
  %lnot82 = xor i1 %lnot80, true, !dbg !6002
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !6002
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !6002
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !6002
  store i64 %expval85, ptr %tmp78, align 8, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6001
  %47 = load i64, ptr %tmp78, align 8, !dbg !6002
  br label %if.end86, !dbg !6001

if.end86:                                         ; preds = %if.end77, %if.end36
  %48 = load i8, ptr %__ret_do_once, align 1, !dbg !5994, !range !4419, !noundef !496
  %tobool88 = trunc i8 %48 to i1, !dbg !5994
  %lnot89 = xor i1 %tobool88, true, !dbg !5994
  %lnot91 = xor i1 %lnot89, true, !dbg !5994
  %lnot.ext92 = zext i1 %lnot91 to i32, !dbg !5994
  %conv93 = sext i32 %lnot.ext92 to i64, !dbg !5994
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0), !dbg !5994
  store i64 %expval94, ptr %tmp87, align 8, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !6017
  %49 = load i64, ptr %tmp87, align 8, !dbg !5994
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 8, ptr %done) #15, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #15, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #15, !dbg !6018
  br label %repeat

if.end95:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #15, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !6019
  ret void, !dbg !6019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_stop_create(i32 noundef %cpu) #0 align 16 !dbg !6020 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6022, metadata !DIExpression()), !dbg !6028
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6029
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6023, metadata !DIExpression()), !dbg !6031
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6031
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6030
  br label %do.end, !dbg !6031

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6026, metadata !DIExpression()), !dbg !6032
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !6032
  %2 = load i64, ptr %__ptr, align 8, !dbg !6032
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !6032
  %idxprom = zext i32 %3 to i64, !dbg !6032
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6032
  %4 = load i64, ptr %arrayidx, align 8, !dbg !6032
  %add = add i64 %2, %4, !dbg !6032
  %5 = inttoptr i64 %add to ptr, !dbg !6032
  store ptr %5, ptr %tmp1, align 8, !dbg !6032
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6030
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6032
  store ptr %6, ptr %tmp, align 8, !dbg !6031
  %7 = load ptr, ptr %tmp, align 8, !dbg !6030
  %8 = load ptr, ptr %7, align 8, !dbg !6033
  call void @sched_set_stop_task(i32 noundef %0, ptr noundef %8) #16, !dbg !6034
  ret void, !dbg !6035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_stop_park(i32 noundef %cpu) #0 align 16 !dbg !6036 {
entry:
  %cpu.addr = alloca i32, align 4
  %stopper = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6038, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 8, ptr %stopper) #15, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %stopper, metadata !6039, metadata !DIExpression()), !dbg !6052
  br label %do.body, !dbg !6053

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6040, metadata !DIExpression()), !dbg !6054
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6054
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6053
  br label %do.cond, !dbg !6054

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6054

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6043, metadata !DIExpression()), !dbg !6055
  store i64 ptrtoint (ptr @cpu_stopper to i64), ptr %__ptr, align 8, !dbg !6055
  %1 = load i64, ptr %__ptr, align 8, !dbg !6055
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6055
  %idxprom = zext i32 %2 to i64, !dbg !6055
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6055
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6055
  %add = add i64 %1, %3, !dbg !6055
  %4 = inttoptr i64 %add to ptr, !dbg !6055
  store ptr %4, ptr %tmp1, align 8, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6053
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6055
  store ptr %5, ptr %tmp, align 8, !dbg !6054
  %6 = load ptr, ptr %tmp, align 8, !dbg !6053
  store ptr %6, ptr %stopper, align 8, !dbg !6052
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6045, metadata !DIExpression()), !dbg !6056
  %7 = load ptr, ptr %stopper, align 8, !dbg !6056
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 3, !dbg !6056
  %call = call i32 @list_empty(ptr noundef %works) #16, !dbg !6056
  %tobool = icmp ne i32 %call, 0, !dbg !6056
  %lnot = xor i1 %tobool, true, !dbg !6056
  %lnot2 = xor i1 %lnot, true, !dbg !6056
  %lnot3 = xor i1 %lnot2, true, !dbg !6056
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6056
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6056
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6057
  %tobool4 = icmp ne i32 %8, 0, !dbg !6057
  %lnot5 = xor i1 %tobool4, true, !dbg !6057
  %lnot7 = xor i1 %lnot5, true, !dbg !6057
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6057
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6057
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6057
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6057
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6056

if.then:                                          ; preds = %do.end
  br label %do.body10, !dbg !6057

do.body10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6047, metadata !DIExpression()), !dbg !6058
  store i32 2305, ptr %__flags, align 4, !dbg !6058
  br label %do.body11, !dbg !6058

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6059

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6059

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6058

do.body14:                                        ; preds = %do.end13
  %9 = load i32, ptr %__flags, align 4, !dbg !6061
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 547, i32 %9, i64 12) #15, !dbg !6061, !srcloc !6063
  br label %do.cond15, !dbg !6061

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6061

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6058

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6064

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6064

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6057
  br label %do.cond20, !dbg !6058

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6058

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !6058

if.end:                                           ; preds = %do.end21, %do.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6056
  %tobool23 = icmp ne i32 %10, 0, !dbg !6056
  %lnot24 = xor i1 %tobool23, true, !dbg !6056
  %lnot26 = xor i1 %lnot24, true, !dbg !6056
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6056
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !6056
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !6056
  store i64 %expval29, ptr %tmp22, align 8, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6066
  %11 = load i64, ptr %tmp22, align 8, !dbg !6056
  call void @llvm.lifetime.end.p0(i64 8, ptr %stopper) #15, !dbg !6067
  ret void, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !6068 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  br label %do.body, !dbg !6076

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6078

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6076
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6076
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6076
  store ptr %1, ptr %tmp, align 8, !dbg !6078
  %2 = load ptr, ptr %tmp, align 8, !dbg !6076
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6080
  %cmp = icmp eq ptr %2, %3, !dbg !6081
  %conv = zext i1 %cmp to i32, !dbg !6081
  ret i32 %conv, !dbg !6082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !6083 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6087
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6088
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6089
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !6090
  ret void, !dbg !6091
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_sub(i32 noundef %val) #7 align 16 !dbg !6092 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6094, metadata !DIExpression()), !dbg !6101
  br label %do.body, !dbg !6102

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !6103
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6095, metadata !DIExpression()), !dbg !6103
  %0 = load i32, ptr %val.addr, align 4, !dbg !6103
  %sub = sub i32 0, %0, !dbg !6103
  %1 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !6103
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6103

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6103
  %sub1 = sub i32 0, %2, !dbg !6103
  %cmp = icmp eq i32 %sub1, 1, !dbg !6103
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6103

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6103
  %sub2 = sub i32 0, %3, !dbg !6103
  %cmp3 = icmp eq i32 %sub2, -1, !dbg !6103
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !6103

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6103
  %sub4 = sub i32 0, %4, !dbg !6103
  br label %cond.end, !dbg !6103

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ 0, %cond.false ], !dbg !6103
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6103
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6104
  %cmp5 = icmp eq i32 %5, 1, !dbg !6104
  br i1 %cmp5, label %if.then, label %if.else, !dbg !6103

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6105, !srcloc !6107
  br label %if.end12, !dbg !6104

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6108
  %cmp6 = icmp eq i32 %6, -1, !dbg !6108
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !6104

if.then7:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6109, !srcloc !6111
  br label %if.end, !dbg !6108

if.else8:                                         ; preds = %if.else
  br label %do.body9, !dbg !6108

do.body9:                                         ; preds = %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6097, metadata !DIExpression()), !dbg !6112
  %7 = load i32, ptr %val.addr, align 4, !dbg !6112
  %sub10 = sub i32 0, %7, !dbg !6112
  %conv = sext i32 %sub10 to i64, !dbg !6112
  %and = and i64 %conv, 4294967295, !dbg !6112
  %conv11 = trunc i64 %and to i32, !dbg !6112
  store i32 %conv11, ptr %pto_val__, align 4, !dbg !6112
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6112
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6112, !srcloc !6113
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !6108
  br label %do.cond, !dbg !6112

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6112

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !6102
  br label %do.end14, !dbg !6103

do.end14:                                         ; preds = %if.end12
  ret void, !dbg !6114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #7 align 16 !dbg !6115 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6117, metadata !DIExpression()), !dbg !6119
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6119, !srcloc !6120
  store i32 %0, ptr %pfo_val__, align 4, !dbg !6119
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !6119
  %conv = zext i32 %1 to i64, !dbg !6119
  %conv1 = trunc i64 %conv to i32, !dbg !6119
  store i32 %conv1, ptr %tmp, align 4, !dbg !6119
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !6121
  %2 = load i32, ptr %tmp, align 4, !dbg !6119
  %and = and i32 %2, 2147483647, !dbg !6122
  ret i32 %and, !dbg !6123
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6124 dso_local void @__warn_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6127 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6131
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !6133
  br i1 %call, label %if.end, label %if.then, !dbg !6134

if.then:                                          ; preds = %entry
  br label %return, !dbg !6135

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6136
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6137
  %2 = load ptr, ptr %prev, align 8, !dbg !6137
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6138
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6139
  %4 = load ptr, ptr %next, align 8, !dbg !6139
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !6140
  br label %return, !dbg !6141

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6142 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  ret i1 true, !dbg !6148
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6149 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6151, metadata !DIExpression()), !dbg !6153
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6152, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6155
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6156
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6157
  store ptr %0, ptr %prev1, align 8, !dbg !6158
  br label %do.body, !dbg !6159

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6160

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6162

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6160

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6164
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6164
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6164
  store volatile ptr %2, ptr %next4, align 8, !dbg !6164
  br label %do.end5, !dbg !6164

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6160

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6167 dso_local void @sched_set_stop_task(i32 noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #7 align 16 !dbg !6170 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6178
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !6179
  ret i32 %call, !dbg !6180
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #7 align 16 !dbg !6181 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6185
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6185
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6185
  ret i32 %1, !dbg !6186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !6187 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6193
  %and = and i64 %0, 512, !dbg !6194
  %tobool = icmp ne i64 %and, 0, !dbg !6195
  %lnot = xor i1 %tobool, true, !dbg !6195
  %lnot.ext = zext i1 %lnot to i32, !dbg !6195
  ret i32 %lnot.ext, !dbg !6196
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #7 align 16 !dbg !6197 {
entry:
  call void @native_irq_enable() #16, !dbg !6198
  ret void, !dbg !6199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #7 align 16 !dbg !6200 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6201, !srcloc !6202
  ret void, !dbg !6203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6204 dso_local void @mutex_lock(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__stop_cpus(ptr noundef %cpumask, ptr noundef %fn, ptr noundef %arg) #0 align 16 !dbg !6205 {
entry:
  %retval = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %done = alloca %struct.cpu_stop_done, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6207, metadata !DIExpression()), !dbg !6211
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !6208, metadata !DIExpression()), !dbg !6212
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6209, metadata !DIExpression()), !dbg !6213
  call void @llvm.lifetime.start.p0(i64 40, ptr %done) #15, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %done, metadata !6210, metadata !DIExpression()), !dbg !6215
  %0 = load ptr, ptr %cpumask.addr, align 8, !dbg !6216
  %call = call i32 @cpumask_weight(ptr noundef %0) #16, !dbg !6217
  call void @cpu_stop_init_done(ptr noundef %done, i32 noundef %call) #16, !dbg !6218
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6219
  %2 = load ptr, ptr %fn.addr, align 8, !dbg !6221
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !6222
  %call1 = call zeroext i1 @queue_stop_cpus_work(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %done) #16, !dbg !6223
  br i1 %call1, label %if.end, label %if.then, !dbg !6224

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !6225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6225

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, !dbg !6226
  call void @wait_for_completion(ptr noundef %completion) #16, !dbg !6227
  %ret = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1, !dbg !6228
  %4 = load i32, ptr %ret, align 4, !dbg !6228
  store i32 %4, ptr %retval, align 4, !dbg !6229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6229

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %done) #15, !dbg !6230
  %5 = load i32, ptr %retval, align 4, !dbg !6230
  ret i32 %5, !dbg !6230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !6231 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6240
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6240
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6240

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6240
  %cmp = icmp ule i32 %2, 64, !dbg !6240
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6240

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6240
  %cmp2 = icmp ugt i32 %3, 0, !dbg !6240
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6242

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !6243
  %5 = load i64, ptr %4, align 8, !dbg !6244
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !6245
  %sub = sub i32 0, %6, !dbg !6245
  %and = and i32 %sub, 63, !dbg !6245
  %sh_prom = zext i32 %and to i64, !dbg !6245
  %shr = lshr i64 -1, %sh_prom, !dbg !6245
  %and3 = and i64 %5, %shr, !dbg !6246
  %call = call i64 @hweight_long(i64 noundef %and3) #16, !dbg !6247
  %conv = trunc i64 %call to i32, !dbg !6247
  store i32 %conv, ptr %retval, align 4, !dbg !6248
  br label %return, !dbg !6248

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !6249
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !6250
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #16, !dbg !6251
  store i32 %call4, ptr %retval, align 4, !dbg !6252
  br label %return, !dbg !6252

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !6253
  ret i32 %9, !dbg !6253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #7 align 16 !dbg !6254 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  %0 = load i64, ptr %w.addr, align 8, !dbg !6259
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6259
  br i1 %1, label %cond.true, label %cond.false, !dbg !6259

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and = and i64 %2, 1, !dbg !6259
  %tobool = icmp ne i64 %and, 0, !dbg !6259
  %lnot = xor i1 %tobool, true, !dbg !6259
  %lnot1 = xor i1 %lnot, true, !dbg !6259
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6259
  %3 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and2 = and i64 %3, 2, !dbg !6259
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6259
  %lnot4 = xor i1 %tobool3, true, !dbg !6259
  %lnot6 = xor i1 %lnot4, true, !dbg !6259
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6259
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !6259
  %4 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and8 = and i64 %4, 4, !dbg !6259
  %tobool9 = icmp ne i64 %and8, 0, !dbg !6259
  %lnot10 = xor i1 %tobool9, true, !dbg !6259
  %lnot12 = xor i1 %lnot10, true, !dbg !6259
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6259
  %add14 = add i32 %add, %lnot.ext13, !dbg !6259
  %5 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and15 = and i64 %5, 8, !dbg !6259
  %tobool16 = icmp ne i64 %and15, 0, !dbg !6259
  %lnot17 = xor i1 %tobool16, true, !dbg !6259
  %lnot19 = xor i1 %lnot17, true, !dbg !6259
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6259
  %add21 = add i32 %add14, %lnot.ext20, !dbg !6259
  %6 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and22 = and i64 %6, 16, !dbg !6259
  %tobool23 = icmp ne i64 %and22, 0, !dbg !6259
  %lnot24 = xor i1 %tobool23, true, !dbg !6259
  %lnot26 = xor i1 %lnot24, true, !dbg !6259
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6259
  %add28 = add i32 %add21, %lnot.ext27, !dbg !6259
  %7 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and29 = and i64 %7, 32, !dbg !6259
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6259
  %lnot31 = xor i1 %tobool30, true, !dbg !6259
  %lnot33 = xor i1 %lnot31, true, !dbg !6259
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !6259
  %add35 = add i32 %add28, %lnot.ext34, !dbg !6259
  %8 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and36 = and i64 %8, 64, !dbg !6259
  %tobool37 = icmp ne i64 %and36, 0, !dbg !6259
  %lnot38 = xor i1 %tobool37, true, !dbg !6259
  %lnot40 = xor i1 %lnot38, true, !dbg !6259
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !6259
  %add42 = add i32 %add35, %lnot.ext41, !dbg !6259
  %9 = load i64, ptr %w.addr, align 8, !dbg !6259
  %and43 = and i64 %9, 128, !dbg !6259
  %tobool44 = icmp ne i64 %and43, 0, !dbg !6259
  %lnot45 = xor i1 %tobool44, true, !dbg !6259
  %lnot47 = xor i1 %lnot45, true, !dbg !6259
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !6259
  %add49 = add i32 %add42, %lnot.ext48, !dbg !6259
  %10 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr = lshr i64 %10, 8, !dbg !6259
  %and50 = and i64 %shr, 1, !dbg !6259
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6259
  %lnot52 = xor i1 %tobool51, true, !dbg !6259
  %lnot54 = xor i1 %lnot52, true, !dbg !6259
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6259
  %11 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr56 = lshr i64 %11, 8, !dbg !6259
  %and57 = and i64 %shr56, 2, !dbg !6259
  %tobool58 = icmp ne i64 %and57, 0, !dbg !6259
  %lnot59 = xor i1 %tobool58, true, !dbg !6259
  %lnot61 = xor i1 %lnot59, true, !dbg !6259
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6259
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !6259
  %12 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr64 = lshr i64 %12, 8, !dbg !6259
  %and65 = and i64 %shr64, 4, !dbg !6259
  %tobool66 = icmp ne i64 %and65, 0, !dbg !6259
  %lnot67 = xor i1 %tobool66, true, !dbg !6259
  %lnot69 = xor i1 %lnot67, true, !dbg !6259
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !6259
  %add71 = add i32 %add63, %lnot.ext70, !dbg !6259
  %13 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr72 = lshr i64 %13, 8, !dbg !6259
  %and73 = and i64 %shr72, 8, !dbg !6259
  %tobool74 = icmp ne i64 %and73, 0, !dbg !6259
  %lnot75 = xor i1 %tobool74, true, !dbg !6259
  %lnot77 = xor i1 %lnot75, true, !dbg !6259
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !6259
  %add79 = add i32 %add71, %lnot.ext78, !dbg !6259
  %14 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr80 = lshr i64 %14, 8, !dbg !6259
  %and81 = and i64 %shr80, 16, !dbg !6259
  %tobool82 = icmp ne i64 %and81, 0, !dbg !6259
  %lnot83 = xor i1 %tobool82, true, !dbg !6259
  %lnot85 = xor i1 %lnot83, true, !dbg !6259
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !6259
  %add87 = add i32 %add79, %lnot.ext86, !dbg !6259
  %15 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr88 = lshr i64 %15, 8, !dbg !6259
  %and89 = and i64 %shr88, 32, !dbg !6259
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6259
  %lnot91 = xor i1 %tobool90, true, !dbg !6259
  %lnot93 = xor i1 %lnot91, true, !dbg !6259
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !6259
  %add95 = add i32 %add87, %lnot.ext94, !dbg !6259
  %16 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr96 = lshr i64 %16, 8, !dbg !6259
  %and97 = and i64 %shr96, 64, !dbg !6259
  %tobool98 = icmp ne i64 %and97, 0, !dbg !6259
  %lnot99 = xor i1 %tobool98, true, !dbg !6259
  %lnot101 = xor i1 %lnot99, true, !dbg !6259
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !6259
  %add103 = add i32 %add95, %lnot.ext102, !dbg !6259
  %17 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr104 = lshr i64 %17, 8, !dbg !6259
  %and105 = and i64 %shr104, 128, !dbg !6259
  %tobool106 = icmp ne i64 %and105, 0, !dbg !6259
  %lnot107 = xor i1 %tobool106, true, !dbg !6259
  %lnot109 = xor i1 %lnot107, true, !dbg !6259
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !6259
  %add111 = add i32 %add103, %lnot.ext110, !dbg !6259
  %add112 = add i32 %add49, %add111, !dbg !6259
  %18 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr113 = lshr i64 %18, 16, !dbg !6259
  %and114 = and i64 %shr113, 1, !dbg !6259
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6259
  %lnot116 = xor i1 %tobool115, true, !dbg !6259
  %lnot118 = xor i1 %lnot116, true, !dbg !6259
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !6259
  %19 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr120 = lshr i64 %19, 16, !dbg !6259
  %and121 = and i64 %shr120, 2, !dbg !6259
  %tobool122 = icmp ne i64 %and121, 0, !dbg !6259
  %lnot123 = xor i1 %tobool122, true, !dbg !6259
  %lnot125 = xor i1 %lnot123, true, !dbg !6259
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !6259
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !6259
  %20 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr128 = lshr i64 %20, 16, !dbg !6259
  %and129 = and i64 %shr128, 4, !dbg !6259
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6259
  %lnot131 = xor i1 %tobool130, true, !dbg !6259
  %lnot133 = xor i1 %lnot131, true, !dbg !6259
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !6259
  %add135 = add i32 %add127, %lnot.ext134, !dbg !6259
  %21 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr136 = lshr i64 %21, 16, !dbg !6259
  %and137 = and i64 %shr136, 8, !dbg !6259
  %tobool138 = icmp ne i64 %and137, 0, !dbg !6259
  %lnot139 = xor i1 %tobool138, true, !dbg !6259
  %lnot141 = xor i1 %lnot139, true, !dbg !6259
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !6259
  %add143 = add i32 %add135, %lnot.ext142, !dbg !6259
  %22 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr144 = lshr i64 %22, 16, !dbg !6259
  %and145 = and i64 %shr144, 16, !dbg !6259
  %tobool146 = icmp ne i64 %and145, 0, !dbg !6259
  %lnot147 = xor i1 %tobool146, true, !dbg !6259
  %lnot149 = xor i1 %lnot147, true, !dbg !6259
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !6259
  %add151 = add i32 %add143, %lnot.ext150, !dbg !6259
  %23 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr152 = lshr i64 %23, 16, !dbg !6259
  %and153 = and i64 %shr152, 32, !dbg !6259
  %tobool154 = icmp ne i64 %and153, 0, !dbg !6259
  %lnot155 = xor i1 %tobool154, true, !dbg !6259
  %lnot157 = xor i1 %lnot155, true, !dbg !6259
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !6259
  %add159 = add i32 %add151, %lnot.ext158, !dbg !6259
  %24 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr160 = lshr i64 %24, 16, !dbg !6259
  %and161 = and i64 %shr160, 64, !dbg !6259
  %tobool162 = icmp ne i64 %and161, 0, !dbg !6259
  %lnot163 = xor i1 %tobool162, true, !dbg !6259
  %lnot165 = xor i1 %lnot163, true, !dbg !6259
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !6259
  %add167 = add i32 %add159, %lnot.ext166, !dbg !6259
  %25 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr168 = lshr i64 %25, 16, !dbg !6259
  %and169 = and i64 %shr168, 128, !dbg !6259
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6259
  %lnot171 = xor i1 %tobool170, true, !dbg !6259
  %lnot173 = xor i1 %lnot171, true, !dbg !6259
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !6259
  %add175 = add i32 %add167, %lnot.ext174, !dbg !6259
  %26 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr176 = lshr i64 %26, 16, !dbg !6259
  %shr177 = lshr i64 %shr176, 8, !dbg !6259
  %and178 = and i64 %shr177, 1, !dbg !6259
  %tobool179 = icmp ne i64 %and178, 0, !dbg !6259
  %lnot180 = xor i1 %tobool179, true, !dbg !6259
  %lnot182 = xor i1 %lnot180, true, !dbg !6259
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !6259
  %27 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr184 = lshr i64 %27, 16, !dbg !6259
  %shr185 = lshr i64 %shr184, 8, !dbg !6259
  %and186 = and i64 %shr185, 2, !dbg !6259
  %tobool187 = icmp ne i64 %and186, 0, !dbg !6259
  %lnot188 = xor i1 %tobool187, true, !dbg !6259
  %lnot190 = xor i1 %lnot188, true, !dbg !6259
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !6259
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !6259
  %28 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr193 = lshr i64 %28, 16, !dbg !6259
  %shr194 = lshr i64 %shr193, 8, !dbg !6259
  %and195 = and i64 %shr194, 4, !dbg !6259
  %tobool196 = icmp ne i64 %and195, 0, !dbg !6259
  %lnot197 = xor i1 %tobool196, true, !dbg !6259
  %lnot199 = xor i1 %lnot197, true, !dbg !6259
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !6259
  %add201 = add i32 %add192, %lnot.ext200, !dbg !6259
  %29 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr202 = lshr i64 %29, 16, !dbg !6259
  %shr203 = lshr i64 %shr202, 8, !dbg !6259
  %and204 = and i64 %shr203, 8, !dbg !6259
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6259
  %lnot206 = xor i1 %tobool205, true, !dbg !6259
  %lnot208 = xor i1 %lnot206, true, !dbg !6259
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !6259
  %add210 = add i32 %add201, %lnot.ext209, !dbg !6259
  %30 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr211 = lshr i64 %30, 16, !dbg !6259
  %shr212 = lshr i64 %shr211, 8, !dbg !6259
  %and213 = and i64 %shr212, 16, !dbg !6259
  %tobool214 = icmp ne i64 %and213, 0, !dbg !6259
  %lnot215 = xor i1 %tobool214, true, !dbg !6259
  %lnot217 = xor i1 %lnot215, true, !dbg !6259
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !6259
  %add219 = add i32 %add210, %lnot.ext218, !dbg !6259
  %31 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr220 = lshr i64 %31, 16, !dbg !6259
  %shr221 = lshr i64 %shr220, 8, !dbg !6259
  %and222 = and i64 %shr221, 32, !dbg !6259
  %tobool223 = icmp ne i64 %and222, 0, !dbg !6259
  %lnot224 = xor i1 %tobool223, true, !dbg !6259
  %lnot226 = xor i1 %lnot224, true, !dbg !6259
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !6259
  %add228 = add i32 %add219, %lnot.ext227, !dbg !6259
  %32 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr229 = lshr i64 %32, 16, !dbg !6259
  %shr230 = lshr i64 %shr229, 8, !dbg !6259
  %and231 = and i64 %shr230, 64, !dbg !6259
  %tobool232 = icmp ne i64 %and231, 0, !dbg !6259
  %lnot233 = xor i1 %tobool232, true, !dbg !6259
  %lnot235 = xor i1 %lnot233, true, !dbg !6259
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !6259
  %add237 = add i32 %add228, %lnot.ext236, !dbg !6259
  %33 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr238 = lshr i64 %33, 16, !dbg !6259
  %shr239 = lshr i64 %shr238, 8, !dbg !6259
  %and240 = and i64 %shr239, 128, !dbg !6259
  %tobool241 = icmp ne i64 %and240, 0, !dbg !6259
  %lnot242 = xor i1 %tobool241, true, !dbg !6259
  %lnot244 = xor i1 %lnot242, true, !dbg !6259
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !6259
  %add246 = add i32 %add237, %lnot.ext245, !dbg !6259
  %add247 = add i32 %add175, %add246, !dbg !6259
  %add248 = add i32 %add112, %add247, !dbg !6259
  %34 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr249 = lshr i64 %34, 32, !dbg !6259
  %and250 = and i64 %shr249, 1, !dbg !6259
  %tobool251 = icmp ne i64 %and250, 0, !dbg !6259
  %lnot252 = xor i1 %tobool251, true, !dbg !6259
  %lnot254 = xor i1 %lnot252, true, !dbg !6259
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !6259
  %35 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr256 = lshr i64 %35, 32, !dbg !6259
  %and257 = and i64 %shr256, 2, !dbg !6259
  %tobool258 = icmp ne i64 %and257, 0, !dbg !6259
  %lnot259 = xor i1 %tobool258, true, !dbg !6259
  %lnot261 = xor i1 %lnot259, true, !dbg !6259
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !6259
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !6259
  %36 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr264 = lshr i64 %36, 32, !dbg !6259
  %and265 = and i64 %shr264, 4, !dbg !6259
  %tobool266 = icmp ne i64 %and265, 0, !dbg !6259
  %lnot267 = xor i1 %tobool266, true, !dbg !6259
  %lnot269 = xor i1 %lnot267, true, !dbg !6259
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !6259
  %add271 = add i32 %add263, %lnot.ext270, !dbg !6259
  %37 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr272 = lshr i64 %37, 32, !dbg !6259
  %and273 = and i64 %shr272, 8, !dbg !6259
  %tobool274 = icmp ne i64 %and273, 0, !dbg !6259
  %lnot275 = xor i1 %tobool274, true, !dbg !6259
  %lnot277 = xor i1 %lnot275, true, !dbg !6259
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !6259
  %add279 = add i32 %add271, %lnot.ext278, !dbg !6259
  %38 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr280 = lshr i64 %38, 32, !dbg !6259
  %and281 = and i64 %shr280, 16, !dbg !6259
  %tobool282 = icmp ne i64 %and281, 0, !dbg !6259
  %lnot283 = xor i1 %tobool282, true, !dbg !6259
  %lnot285 = xor i1 %lnot283, true, !dbg !6259
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !6259
  %add287 = add i32 %add279, %lnot.ext286, !dbg !6259
  %39 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr288 = lshr i64 %39, 32, !dbg !6259
  %and289 = and i64 %shr288, 32, !dbg !6259
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6259
  %lnot291 = xor i1 %tobool290, true, !dbg !6259
  %lnot293 = xor i1 %lnot291, true, !dbg !6259
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !6259
  %add295 = add i32 %add287, %lnot.ext294, !dbg !6259
  %40 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr296 = lshr i64 %40, 32, !dbg !6259
  %and297 = and i64 %shr296, 64, !dbg !6259
  %tobool298 = icmp ne i64 %and297, 0, !dbg !6259
  %lnot299 = xor i1 %tobool298, true, !dbg !6259
  %lnot301 = xor i1 %lnot299, true, !dbg !6259
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !6259
  %add303 = add i32 %add295, %lnot.ext302, !dbg !6259
  %41 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr304 = lshr i64 %41, 32, !dbg !6259
  %and305 = and i64 %shr304, 128, !dbg !6259
  %tobool306 = icmp ne i64 %and305, 0, !dbg !6259
  %lnot307 = xor i1 %tobool306, true, !dbg !6259
  %lnot309 = xor i1 %lnot307, true, !dbg !6259
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !6259
  %add311 = add i32 %add303, %lnot.ext310, !dbg !6259
  %42 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr312 = lshr i64 %42, 32, !dbg !6259
  %shr313 = lshr i64 %shr312, 8, !dbg !6259
  %and314 = and i64 %shr313, 1, !dbg !6259
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6259
  %lnot316 = xor i1 %tobool315, true, !dbg !6259
  %lnot318 = xor i1 %lnot316, true, !dbg !6259
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !6259
  %43 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr320 = lshr i64 %43, 32, !dbg !6259
  %shr321 = lshr i64 %shr320, 8, !dbg !6259
  %and322 = and i64 %shr321, 2, !dbg !6259
  %tobool323 = icmp ne i64 %and322, 0, !dbg !6259
  %lnot324 = xor i1 %tobool323, true, !dbg !6259
  %lnot326 = xor i1 %lnot324, true, !dbg !6259
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !6259
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !6259
  %44 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr329 = lshr i64 %44, 32, !dbg !6259
  %shr330 = lshr i64 %shr329, 8, !dbg !6259
  %and331 = and i64 %shr330, 4, !dbg !6259
  %tobool332 = icmp ne i64 %and331, 0, !dbg !6259
  %lnot333 = xor i1 %tobool332, true, !dbg !6259
  %lnot335 = xor i1 %lnot333, true, !dbg !6259
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !6259
  %add337 = add i32 %add328, %lnot.ext336, !dbg !6259
  %45 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr338 = lshr i64 %45, 32, !dbg !6259
  %shr339 = lshr i64 %shr338, 8, !dbg !6259
  %and340 = and i64 %shr339, 8, !dbg !6259
  %tobool341 = icmp ne i64 %and340, 0, !dbg !6259
  %lnot342 = xor i1 %tobool341, true, !dbg !6259
  %lnot344 = xor i1 %lnot342, true, !dbg !6259
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !6259
  %add346 = add i32 %add337, %lnot.ext345, !dbg !6259
  %46 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr347 = lshr i64 %46, 32, !dbg !6259
  %shr348 = lshr i64 %shr347, 8, !dbg !6259
  %and349 = and i64 %shr348, 16, !dbg !6259
  %tobool350 = icmp ne i64 %and349, 0, !dbg !6259
  %lnot351 = xor i1 %tobool350, true, !dbg !6259
  %lnot353 = xor i1 %lnot351, true, !dbg !6259
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !6259
  %add355 = add i32 %add346, %lnot.ext354, !dbg !6259
  %47 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr356 = lshr i64 %47, 32, !dbg !6259
  %shr357 = lshr i64 %shr356, 8, !dbg !6259
  %and358 = and i64 %shr357, 32, !dbg !6259
  %tobool359 = icmp ne i64 %and358, 0, !dbg !6259
  %lnot360 = xor i1 %tobool359, true, !dbg !6259
  %lnot362 = xor i1 %lnot360, true, !dbg !6259
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !6259
  %add364 = add i32 %add355, %lnot.ext363, !dbg !6259
  %48 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr365 = lshr i64 %48, 32, !dbg !6259
  %shr366 = lshr i64 %shr365, 8, !dbg !6259
  %and367 = and i64 %shr366, 64, !dbg !6259
  %tobool368 = icmp ne i64 %and367, 0, !dbg !6259
  %lnot369 = xor i1 %tobool368, true, !dbg !6259
  %lnot371 = xor i1 %lnot369, true, !dbg !6259
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !6259
  %add373 = add i32 %add364, %lnot.ext372, !dbg !6259
  %49 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr374 = lshr i64 %49, 32, !dbg !6259
  %shr375 = lshr i64 %shr374, 8, !dbg !6259
  %and376 = and i64 %shr375, 128, !dbg !6259
  %tobool377 = icmp ne i64 %and376, 0, !dbg !6259
  %lnot378 = xor i1 %tobool377, true, !dbg !6259
  %lnot380 = xor i1 %lnot378, true, !dbg !6259
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !6259
  %add382 = add i32 %add373, %lnot.ext381, !dbg !6259
  %add383 = add i32 %add311, %add382, !dbg !6259
  %50 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr384 = lshr i64 %50, 32, !dbg !6259
  %shr385 = lshr i64 %shr384, 16, !dbg !6259
  %and386 = and i64 %shr385, 1, !dbg !6259
  %tobool387 = icmp ne i64 %and386, 0, !dbg !6259
  %lnot388 = xor i1 %tobool387, true, !dbg !6259
  %lnot390 = xor i1 %lnot388, true, !dbg !6259
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !6259
  %51 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr392 = lshr i64 %51, 32, !dbg !6259
  %shr393 = lshr i64 %shr392, 16, !dbg !6259
  %and394 = and i64 %shr393, 2, !dbg !6259
  %tobool395 = icmp ne i64 %and394, 0, !dbg !6259
  %lnot396 = xor i1 %tobool395, true, !dbg !6259
  %lnot398 = xor i1 %lnot396, true, !dbg !6259
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !6259
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !6259
  %52 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr401 = lshr i64 %52, 32, !dbg !6259
  %shr402 = lshr i64 %shr401, 16, !dbg !6259
  %and403 = and i64 %shr402, 4, !dbg !6259
  %tobool404 = icmp ne i64 %and403, 0, !dbg !6259
  %lnot405 = xor i1 %tobool404, true, !dbg !6259
  %lnot407 = xor i1 %lnot405, true, !dbg !6259
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !6259
  %add409 = add i32 %add400, %lnot.ext408, !dbg !6259
  %53 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr410 = lshr i64 %53, 32, !dbg !6259
  %shr411 = lshr i64 %shr410, 16, !dbg !6259
  %and412 = and i64 %shr411, 8, !dbg !6259
  %tobool413 = icmp ne i64 %and412, 0, !dbg !6259
  %lnot414 = xor i1 %tobool413, true, !dbg !6259
  %lnot416 = xor i1 %lnot414, true, !dbg !6259
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !6259
  %add418 = add i32 %add409, %lnot.ext417, !dbg !6259
  %54 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr419 = lshr i64 %54, 32, !dbg !6259
  %shr420 = lshr i64 %shr419, 16, !dbg !6259
  %and421 = and i64 %shr420, 16, !dbg !6259
  %tobool422 = icmp ne i64 %and421, 0, !dbg !6259
  %lnot423 = xor i1 %tobool422, true, !dbg !6259
  %lnot425 = xor i1 %lnot423, true, !dbg !6259
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !6259
  %add427 = add i32 %add418, %lnot.ext426, !dbg !6259
  %55 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr428 = lshr i64 %55, 32, !dbg !6259
  %shr429 = lshr i64 %shr428, 16, !dbg !6259
  %and430 = and i64 %shr429, 32, !dbg !6259
  %tobool431 = icmp ne i64 %and430, 0, !dbg !6259
  %lnot432 = xor i1 %tobool431, true, !dbg !6259
  %lnot434 = xor i1 %lnot432, true, !dbg !6259
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !6259
  %add436 = add i32 %add427, %lnot.ext435, !dbg !6259
  %56 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr437 = lshr i64 %56, 32, !dbg !6259
  %shr438 = lshr i64 %shr437, 16, !dbg !6259
  %and439 = and i64 %shr438, 64, !dbg !6259
  %tobool440 = icmp ne i64 %and439, 0, !dbg !6259
  %lnot441 = xor i1 %tobool440, true, !dbg !6259
  %lnot443 = xor i1 %lnot441, true, !dbg !6259
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !6259
  %add445 = add i32 %add436, %lnot.ext444, !dbg !6259
  %57 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr446 = lshr i64 %57, 32, !dbg !6259
  %shr447 = lshr i64 %shr446, 16, !dbg !6259
  %and448 = and i64 %shr447, 128, !dbg !6259
  %tobool449 = icmp ne i64 %and448, 0, !dbg !6259
  %lnot450 = xor i1 %tobool449, true, !dbg !6259
  %lnot452 = xor i1 %lnot450, true, !dbg !6259
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !6259
  %add454 = add i32 %add445, %lnot.ext453, !dbg !6259
  %58 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr455 = lshr i64 %58, 32, !dbg !6259
  %shr456 = lshr i64 %shr455, 16, !dbg !6259
  %shr457 = lshr i64 %shr456, 8, !dbg !6259
  %and458 = and i64 %shr457, 1, !dbg !6259
  %tobool459 = icmp ne i64 %and458, 0, !dbg !6259
  %lnot460 = xor i1 %tobool459, true, !dbg !6259
  %lnot462 = xor i1 %lnot460, true, !dbg !6259
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !6259
  %59 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr464 = lshr i64 %59, 32, !dbg !6259
  %shr465 = lshr i64 %shr464, 16, !dbg !6259
  %shr466 = lshr i64 %shr465, 8, !dbg !6259
  %and467 = and i64 %shr466, 2, !dbg !6259
  %tobool468 = icmp ne i64 %and467, 0, !dbg !6259
  %lnot469 = xor i1 %tobool468, true, !dbg !6259
  %lnot471 = xor i1 %lnot469, true, !dbg !6259
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !6259
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !6259
  %60 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr474 = lshr i64 %60, 32, !dbg !6259
  %shr475 = lshr i64 %shr474, 16, !dbg !6259
  %shr476 = lshr i64 %shr475, 8, !dbg !6259
  %and477 = and i64 %shr476, 4, !dbg !6259
  %tobool478 = icmp ne i64 %and477, 0, !dbg !6259
  %lnot479 = xor i1 %tobool478, true, !dbg !6259
  %lnot481 = xor i1 %lnot479, true, !dbg !6259
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !6259
  %add483 = add i32 %add473, %lnot.ext482, !dbg !6259
  %61 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr484 = lshr i64 %61, 32, !dbg !6259
  %shr485 = lshr i64 %shr484, 16, !dbg !6259
  %shr486 = lshr i64 %shr485, 8, !dbg !6259
  %and487 = and i64 %shr486, 8, !dbg !6259
  %tobool488 = icmp ne i64 %and487, 0, !dbg !6259
  %lnot489 = xor i1 %tobool488, true, !dbg !6259
  %lnot491 = xor i1 %lnot489, true, !dbg !6259
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !6259
  %add493 = add i32 %add483, %lnot.ext492, !dbg !6259
  %62 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr494 = lshr i64 %62, 32, !dbg !6259
  %shr495 = lshr i64 %shr494, 16, !dbg !6259
  %shr496 = lshr i64 %shr495, 8, !dbg !6259
  %and497 = and i64 %shr496, 16, !dbg !6259
  %tobool498 = icmp ne i64 %and497, 0, !dbg !6259
  %lnot499 = xor i1 %tobool498, true, !dbg !6259
  %lnot501 = xor i1 %lnot499, true, !dbg !6259
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !6259
  %add503 = add i32 %add493, %lnot.ext502, !dbg !6259
  %63 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr504 = lshr i64 %63, 32, !dbg !6259
  %shr505 = lshr i64 %shr504, 16, !dbg !6259
  %shr506 = lshr i64 %shr505, 8, !dbg !6259
  %and507 = and i64 %shr506, 32, !dbg !6259
  %tobool508 = icmp ne i64 %and507, 0, !dbg !6259
  %lnot509 = xor i1 %tobool508, true, !dbg !6259
  %lnot511 = xor i1 %lnot509, true, !dbg !6259
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !6259
  %add513 = add i32 %add503, %lnot.ext512, !dbg !6259
  %64 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr514 = lshr i64 %64, 32, !dbg !6259
  %shr515 = lshr i64 %shr514, 16, !dbg !6259
  %shr516 = lshr i64 %shr515, 8, !dbg !6259
  %and517 = and i64 %shr516, 64, !dbg !6259
  %tobool518 = icmp ne i64 %and517, 0, !dbg !6259
  %lnot519 = xor i1 %tobool518, true, !dbg !6259
  %lnot521 = xor i1 %lnot519, true, !dbg !6259
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !6259
  %add523 = add i32 %add513, %lnot.ext522, !dbg !6259
  %65 = load i64, ptr %w.addr, align 8, !dbg !6259
  %shr524 = lshr i64 %65, 32, !dbg !6259
  %shr525 = lshr i64 %shr524, 16, !dbg !6259
  %shr526 = lshr i64 %shr525, 8, !dbg !6259
  %and527 = and i64 %shr526, 128, !dbg !6259
  %tobool528 = icmp ne i64 %and527, 0, !dbg !6259
  %lnot529 = xor i1 %tobool528, true, !dbg !6259
  %lnot531 = xor i1 %lnot529, true, !dbg !6259
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !6259
  %add533 = add i32 %add523, %lnot.ext532, !dbg !6259
  %add534 = add i32 %add454, %add533, !dbg !6259
  %add535 = add i32 %add383, %add534, !dbg !6259
  %add536 = add i32 %add248, %add535, !dbg !6259
  %conv = zext i32 %add536 to i64, !dbg !6259
  br label %cond.end, !dbg !6259

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !6259
  %call = call i64 @__arch_hweight64(i64 noundef %66) #16, !dbg !6259
  br label %cond.end, !dbg !6259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !6259
  ret i64 %cond, !dbg !6260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6261 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #7 align 16 !dbg !6262 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6268, metadata !DIExpression()), !dbg !6271
  %0 = load i64, ptr %w.addr, align 8, !dbg !6272
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !6273, !srcloc !6274
  store i64 %1, ptr %res, align 8, !dbg !6273
  %2 = load i64, ptr %res, align 8, !dbg !6275
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !6276
  ret i64 %2, !dbg !6277
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(read) }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4289}
!llvm.module.flags = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297}
!llvm.ident = !{!4298}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_stopper", scope: !2, file: !3, line: 49, type: !101, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.stop_machine.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/stop_machine\22 -D KBUILD_BASENAME=\22stop_machine\22 -D KBUILD_MODNAME=\22stop_machine\22 -D __KBUILD_MODNAME=kmod_stop_machine -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/stop_machine.ll kernel/stop_machine.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !4096, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/stop_machine.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3adafafbdd23a96b0845f826aa0f139")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !80, !87, !94}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "multi_stop_state", file: !3, line: 157, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "MULTI_STOP_NONE", value: 0)
!90 = !DIEnumerator(name: "MULTI_STOP_PREPARE", value: 1)
!91 = !DIEnumerator(name: "MULTI_STOP_DISABLE_IRQ", value: 2)
!92 = !DIEnumerator(name: "MULTI_STOP_RUN", value: 3)
!93 = !DIEnumerator(name: "MULTI_STOP_EXIT", value: 4)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 10, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "false", value: 0)
!98 = !DIEnumerator(name: "true", value: 1)
!99 = !{!100, !123, !113, !4075, !2073, !135, !4077, !4080, !3518, !116, !4082, !4084, !7, !2277, !4085, !4087, !4089, !4090, !4091, !4093, !187}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_stopper", file: !3, line: 37, size: 768, elements: !102)
!102 = !{!103, !4051, !4052, !4053, !4054, !4073, !4074}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !101, file: !3, line: 38, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !106, line: 746, size: 58368, elements: !107)
!106 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!107 = !{!108, !121, !122, !124, !136, !137, !138, !139, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !231, !242, !369, !373, !376, !407, !408, !409, !410, !421, !423, !424, !425, !426, !427, !428, !439, !440, !443, !444, !445, !446, !447, !448, !449, !450, !457, !458, !465, !466, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3228, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3276, !3282, !3283, !3284, !3285, !3286, !3288, !3291, !3298, !3303, !3306, !3309, !3312, !3315, !3453, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3491, !3492, !3493, !3502, !3510, !3511, !3512, !3513, !3514, !3519, !3520, !3521, !3524, !3525, !3528, !3531, !3534, !3542, !3545, !3546, !3632, !3633, !3634, !3635, !3636, !3642, !3643, !3644, !3645, !3648, !3649, !3652, !3655, !3656, !3659, !3660, !3661, !3664, !3665, !3666, !3667, !3668, !3669, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3701, !3702, !3708, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3720, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3828, !3829, !3830}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !105, file: !106, line: 752, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !110, line: 56, size: 192, elements: !111)
!110 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!111 = !{!112, !114, !115, !120}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !110, line: 57, baseType: !113, size: 64)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !109, file: !110, line: 58, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !109, file: !110, line: 59, baseType: !116, size: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !117, line: 21, baseType: !118)
!117 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !119, line: 27, baseType: !7)
!119 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !109, file: !110, line: 61, baseType: !116, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !105, file: !106, line: 754, baseType: !7, size: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !105, file: !106, line: 767, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !105, file: !106, line: 768, baseType: !125, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !126, line: 113, baseType: !127)
!126 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !126, line: 111, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !127, file: !126, line: 112, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 174, baseType: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 172, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !132, file: !131, line: 173, baseType: !135, size: 32)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !106, line: 770, baseType: !7, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !105, file: !106, line: 771, baseType: !7, size: 32, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !105, file: !106, line: 774, baseType: !135, size: 32, offset: 416)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !105, file: !106, line: 775, baseType: !140, size: 128, offset: 448)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !141, line: 58, size: 128, elements: !142)
!141 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!142 = !{!143, !149, !154, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !140, file: !141, line: 59, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !145, line: 60, size: 64, elements: !146)
!145 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !145, line: 61, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !141, line: 60, baseType: !150, size: 32, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !141, line: 60, size: 32, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !150, file: !141, line: 61, baseType: !7, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !150, file: !141, line: 62, baseType: !130, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !140, file: !141, line: 65, baseType: !155, size: 16, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !117, line: 19, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !119, line: 24, baseType: !157)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !140, file: !141, line: 65, baseType: !155, size: 16, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !105, file: !106, line: 776, baseType: !7, size: 32, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !105, file: !106, line: 777, baseType: !113, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !105, file: !106, line: 778, baseType: !104, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !105, file: !106, line: 787, baseType: !135, size: 32, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !105, file: !106, line: 788, baseType: !135, size: 32, offset: 800)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !105, file: !106, line: 790, baseType: !135, size: 32, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !105, file: !106, line: 792, baseType: !135, size: 32, offset: 864)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !105, file: !106, line: 793, baseType: !135, size: 32, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !105, file: !106, line: 794, baseType: !135, size: 32, offset: 928)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !105, file: !106, line: 795, baseType: !7, size: 32, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !105, file: !106, line: 797, baseType: !170, size: 2048, offset: 1024)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !106, line: 551, size: 2048, elements: !171)
!171 = !{!172, !177, !185, !189, !190, !196, !197, !198, !199, !200, !201, !205, !206, !207, !208, !210, !213, !214, !215}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !170, file: !106, line: 553, baseType: !173, size: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !106, line: 411, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !173, file: !106, line: 412, baseType: !113, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !173, file: !106, line: 413, baseType: !116, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !170, file: !106, line: 554, baseType: !178, size: 192, align: 64, offset: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !179, line: 5, size: 192, align: 64, elements: !180)
!179 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!180 = !{!181, !182, !184}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !178, file: !179, line: 6, baseType: !113, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !178, file: !179, line: 7, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !178, file: !179, line: 8, baseType: !183, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !170, file: !106, line: 555, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !117, line: 23, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !119, line: 31, baseType: !188)
!188 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !170, file: !106, line: 556, baseType: !186, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !170, file: !106, line: 558, baseType: !191, size: 128, offset: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 190, size: 128, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !131, line: 191, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !131, line: 191, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !170, file: !106, line: 559, baseType: !7, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !170, file: !106, line: 561, baseType: !186, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !170, file: !106, line: 562, baseType: !186, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !170, file: !106, line: 563, baseType: !186, size: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !170, file: !106, line: 564, baseType: !186, size: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !170, file: !106, line: 565, baseType: !202, size: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !117, line: 22, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !119, line: 30, baseType: !204)
!204 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !170, file: !106, line: 566, baseType: !186, size: 64, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !170, file: !106, line: 568, baseType: !186, size: 64, offset: 1024)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !170, file: !106, line: 571, baseType: !135, size: 32, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !106, line: 572, baseType: !209, size: 64, offset: 1152)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !170, file: !106, line: 574, baseType: !211, size: 64, offset: 1216)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !106, line: 49, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !170, file: !106, line: 576, baseType: !211, size: 64, offset: 1280)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !170, file: !106, line: 578, baseType: !113, size: 64, offset: 1344)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !170, file: !106, line: 588, baseType: !216, size: 512, align: 512, offset: 1536)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !106, line: 497, size: 512, align: 512, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !216, file: !106, line: 498, baseType: !186, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !216, file: !106, line: 499, baseType: !186, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !216, file: !106, line: 500, baseType: !186, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !216, file: !106, line: 501, baseType: !116, size: 32, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !216, file: !106, line: 502, baseType: !116, size: 32, offset: 224)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !216, file: !106, line: 503, baseType: !113, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !216, file: !106, line: 504, baseType: !113, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !216, file: !106, line: 505, baseType: !113, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !216, file: !106, line: 506, baseType: !227, size: 64, align: 64, offset: 448)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !106, line: 445, size: 64, align: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !227, file: !106, line: 446, baseType: !7, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !227, file: !106, line: 447, baseType: !7, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !105, file: !106, line: 798, baseType: !232, size: 384, offset: 3072)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !106, line: 592, size: 384, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !232, file: !106, line: 593, baseType: !191, size: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !232, file: !106, line: 594, baseType: !113, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !232, file: !106, line: 595, baseType: !113, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !232, file: !106, line: 596, baseType: !7, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !232, file: !106, line: 597, baseType: !157, size: 16, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !232, file: !106, line: 598, baseType: !157, size: 16, offset: 304)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !232, file: !106, line: 600, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !105, file: !106, line: 799, baseType: !243, size: 1792, offset: 3456)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !106, line: 610, size: 1792, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !366, !367}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !243, file: !106, line: 611, baseType: !178, size: 192, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !243, file: !106, line: 618, baseType: !186, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !243, file: !106, line: 619, baseType: !186, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !243, file: !106, line: 620, baseType: !186, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !243, file: !106, line: 621, baseType: !186, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !243, file: !106, line: 622, baseType: !186, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !243, file: !106, line: 629, baseType: !202, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !243, file: !106, line: 630, baseType: !186, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !106, line: 631, baseType: !7, size: 32, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !243, file: !106, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !243, file: !106, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !243, file: !106, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !243, file: !106, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !243, file: !106, line: 662, baseType: !259, size: 512, offset: 704)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !260)
!260 = !{!261, !269, !270, !275, !362, !363, !364, !365}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !6, line: 119, baseType: !262, size: 256)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !263, line: 9, size: 256, elements: !264)
!263 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !262, file: !263, line: 10, baseType: !178, size: 192, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !262, file: !263, line: 11, baseType: !267, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !268, line: 29, baseType: !202)
!268 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !259, file: !6, line: 120, baseType: !267, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !259, file: !6, line: 121, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!5, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !259, file: !6, line: 122, baseType: !276, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !278)
!278 = !{!279, !330, !331, !335, !345, !346, !357, !361}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !277, file: !6, line: 160, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !282)
!282 = !{!283, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !281, file: !6, line: 216, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !285, line: 23, baseType: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !285, line: 14, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !286, file: !285, line: 15, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !290, line: 44, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !290, line: 14, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !290, line: 15, baseType: !294, size: 32)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !290, line: 15, size: 32, elements: !295)
!295 = !{!296, !297, !305}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !290, line: 16, baseType: !130, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !290, line: 24, baseType: !298, size: 16)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !290, line: 24, size: 16, elements: !299)
!299 = !{!300, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !298, file: !290, line: 25, baseType: !301, size: 8)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !117, line: 17, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !119, line: 21, baseType: !303)
!303 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !298, file: !290, line: 26, baseType: !301, size: 8, offset: 8)
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !290, line: 28, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !290, line: 28, size: 32, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !306, file: !290, line: 29, baseType: !155, size: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !306, file: !290, line: 30, baseType: !155, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !281, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !281, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !281, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !281, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !281, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !281, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !281, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !281, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !281, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !281, file: !6, line: 227, baseType: !157, size: 16, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !281, file: !6, line: 228, baseType: !157, size: 16, offset: 208)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !281, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !281, file: !6, line: 235, baseType: !267, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !281, file: !6, line: 236, baseType: !274, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !281, file: !6, line: 237, baseType: !267, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !281, file: !6, line: 238, baseType: !274, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !281, file: !6, line: 239, baseType: !327, size: 4096, align: 512, offset: 512)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 4096, align: 512, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !277, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !277, file: !6, line: 162, baseType: !332, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 32, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !334, line: 96, baseType: !135)
!334 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !277, file: !6, line: 163, baseType: !336, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !337, line: 274, baseType: !338)
!337 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !337, line: 274, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !338, file: !337, line: 274, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !337, line: 69, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !337, line: 64, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !342, file: !337, line: 65, baseType: !7, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !277, file: !6, line: 164, baseType: !274, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !277, file: !6, line: 165, baseType: !347, size: 128, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !263, line: 14, size: 128, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !347, file: !263, line: 15, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !179, line: 26, size: 128, elements: !351)
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !350, file: !179, line: 27, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !179, line: 12, size: 64, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !353, file: !179, line: 13, baseType: !183, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !350, file: !179, line: 28, baseType: !183, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !277, file: !6, line: 166, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!267}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !277, file: !6, line: 167, baseType: !267, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !259, file: !6, line: 123, baseType: !301, size: 8, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !259, file: !6, line: 124, baseType: !301, size: 8, offset: 456)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !259, file: !6, line: 125, baseType: !301, size: 8, offset: 464)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !259, file: !6, line: 126, baseType: !301, size: 8, offset: 472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !243, file: !106, line: 671, baseType: !259, size: 512, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !243, file: !106, line: 679, baseType: !368, size: 64, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !105, file: !106, line: 800, baseType: !370, size: 64, offset: 5248)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !106, line: 800, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !105, file: !106, line: 809, baseType: !374, size: 64, offset: 5312)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !106, line: 70, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !105, file: !106, line: 825, baseType: !377, size: 2048, align: 512, offset: 5632)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !106, line: 509, size: 2048, align: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !377, file: !106, line: 511, baseType: !186, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !377, file: !106, line: 512, baseType: !186, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !377, file: !106, line: 513, baseType: !186, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !377, file: !106, line: 514, baseType: !186, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !377, file: !106, line: 515, baseType: !186, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !377, file: !106, line: 516, baseType: !186, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !377, file: !106, line: 518, baseType: !186, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !377, file: !106, line: 519, baseType: !186, size: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !377, file: !106, line: 520, baseType: !202, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !377, file: !106, line: 522, baseType: !186, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !377, file: !106, line: 523, baseType: !186, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !377, file: !106, line: 524, baseType: !202, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !377, file: !106, line: 526, baseType: !202, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !377, file: !106, line: 527, baseType: !186, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !377, file: !106, line: 529, baseType: !186, size: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !377, file: !106, line: 530, baseType: !186, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !377, file: !106, line: 531, baseType: !186, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !377, file: !106, line: 532, baseType: !186, size: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !377, file: !106, line: 533, baseType: !186, size: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !377, file: !106, line: 535, baseType: !186, size: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !377, file: !106, line: 536, baseType: !186, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !377, file: !106, line: 537, baseType: !186, size: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !377, file: !106, line: 538, baseType: !186, size: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !377, file: !106, line: 539, baseType: !186, size: 64, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !377, file: !106, line: 540, baseType: !186, size: 64, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !377, file: !106, line: 541, baseType: !186, size: 64, offset: 1600)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !377, file: !106, line: 542, baseType: !186, size: 64, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !377, file: !106, line: 543, baseType: !186, size: 64, offset: 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !105, file: !106, line: 833, baseType: !7, size: 32, offset: 7680)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !105, file: !106, line: 836, baseType: !7, size: 32, offset: 7712)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !105, file: !106, line: 837, baseType: !135, size: 32, offset: 7744)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !105, file: !106, line: 838, baseType: !411, size: 64, offset: 7808)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !414, line: 19, baseType: !415)
!414 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !414, line: 19, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !415, file: !414, line: 19, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 1)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !105, file: !106, line: 839, baseType: !422, size: 64, offset: 7872)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !105, file: !106, line: 840, baseType: !413, size: 64, offset: 7936)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !105, file: !106, line: 841, baseType: !123, size: 64, offset: 8000)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !105, file: !106, line: 843, baseType: !157, size: 16, offset: 8064)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !105, file: !106, line: 845, baseType: !157, size: 16, offset: 8080)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !105, file: !106, line: 848, baseType: !135, size: 32, offset: 8096)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !105, file: !106, line: 849, baseType: !429, size: 32, offset: 8128)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !106, line: 718, size: 32, elements: !430)
!430 = !{!431, !438}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !429, file: !106, line: 724, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !106, line: 719, size: 32, elements: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !432, file: !106, line: 720, baseType: !301, size: 8)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !432, file: !106, line: 721, baseType: !301, size: 8, offset: 8)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !432, file: !106, line: 722, baseType: !301, size: 8, offset: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !432, file: !106, line: 723, baseType: !301, size: 8, offset: 24)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !429, file: !106, line: 725, baseType: !116, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !105, file: !106, line: 850, baseType: !191, size: 128, offset: 8192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !105, file: !106, line: 851, baseType: !441, size: 64, offset: 8320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !106, line: 60, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !105, file: !106, line: 855, baseType: !113, size: 64, offset: 8384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !105, file: !106, line: 856, baseType: !301, size: 8, offset: 8448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !105, file: !106, line: 857, baseType: !301, size: 8, offset: 8456)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !105, file: !106, line: 858, baseType: !135, size: 32, offset: 8480)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !105, file: !106, line: 859, baseType: !191, size: 128, offset: 8512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !105, file: !106, line: 860, baseType: !135, size: 32, offset: 8640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !105, file: !106, line: 861, baseType: !191, size: 128, offset: 8704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !105, file: !106, line: 873, baseType: !451, size: 256, offset: 8832)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !106, line: 376, size: 256, elements: !452)
!452 = !{!453, !454, !455, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !451, file: !106, line: 381, baseType: !113, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !451, file: !106, line: 384, baseType: !188, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !451, file: !106, line: 389, baseType: !188, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !451, file: !106, line: 392, baseType: !188, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !105, file: !106, line: 875, baseType: !191, size: 128, offset: 9088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !105, file: !106, line: 877, baseType: !459, size: 320, offset: 9216)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !460, line: 86, size: 320, elements: !461)
!460 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !459, file: !460, line: 87, baseType: !135, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !459, file: !460, line: 88, baseType: !191, size: 128, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !459, file: !460, line: 89, baseType: !191, size: 128, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !105, file: !106, line: 878, baseType: !178, size: 192, align: 64, offset: 9536)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !105, file: !106, line: 881, baseType: !467, size: 64, offset: 9728)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !469)
!469 = !{!470, !3147}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !35, line: 734, baseType: !471, size: 10240)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !35, line: 734, size: 10240, elements: !472)
!472 = !{!473, !477, !499, !3026, !3027, !3028, !3029, !3030, !3031, !3038, !3039, !3040, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3079, !3081, !3084, !3127, !3128, !3129, !3132, !3133, !3134, !3137, !3138, !3139, !3145, !3146}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !35, line: 739, baseType: !474, size: 512, align: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !35, line: 739, size: 512, align: 512, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !474, file: !35, line: 747, baseType: !130, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !471, file: !35, line: 750, baseType: !478, size: 128, offset: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !479, line: 218, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!480 = !{!481, !497, !498}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !479, line: 219, baseType: !482, size: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !479, line: 219, size: 32, elements: !483)
!483 = !{!484, !493}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !482, file: !479, line: 220, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !486, line: 29, baseType: !487)
!486 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !486, line: 17, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !486, line: 18, baseType: !490, size: 32)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !486, line: 18, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !490, file: !486, line: 19, baseType: !286, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !482, file: !479, line: 221, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !479, line: 197, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 197, elements: !496)
!496 = !{}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !478, file: !479, line: 223, baseType: !7, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !478, file: !479, line: 224, baseType: !123, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !471, file: !35, line: 752, baseType: !500, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!113, !503, !113, !113, !113, !113}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !505)
!505 = !{!506, !520, !521, !523, !530, !542, !545, !546, !622, !837, !846, !3016, !3017, !3018, !3019, !3020, !3021, !3023, !3024, !3025}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !64, line: 995, baseType: !507, size: 128)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !64, line: 995, size: 128, elements: !508)
!508 = !{!509, !510, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !507, file: !64, line: 996, baseType: !144, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !507, file: !64, line: 997, baseType: !511, size: 128, align: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 232, size: 128, align: 64, elements: !512)
!512 = !{!513, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !131, line: 233, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !511, file: !131, line: 234, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !514}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !507, file: !64, line: 998, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !504, file: !64, line: 1005, baseType: !485, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !504, file: !64, line: 1006, baseType: !522, size: 32, offset: 160)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 156, baseType: !7)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !504, file: !64, line: 1007, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !525, line: 13, baseType: !526)
!525 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 181, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 179, size: 64, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !527, file: !131, line: 180, baseType: !202, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !504, file: !64, line: 1008, baseType: !531, size: 256, offset: 256)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !532, line: 66, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!533 = !{!534, !535, !536, !541}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !532, line: 67, baseType: !524, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !531, file: !532, line: 68, baseType: !284, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !531, file: !532, line: 70, baseType: !537, size: 32, offset: 96)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !538, line: 15, size: 32, elements: !539)
!538 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !537, file: !538, line: 20, baseType: !130, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !531, file: !532, line: 72, baseType: !191, size: 128, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !504, file: !64, line: 1009, baseType: !543, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 52, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !334, line: 88, baseType: !204)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !504, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !504, file: !64, line: 1011, baseType: !547, size: 256, offset: 640)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !548)
!548 = !{!549, !572, !611, !612, !620, !621}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !547, file: !64, line: 949, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !551, line: 34, baseType: !552)
!551 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 25, size: 64, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !552, file: !551, line: 26, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !556, line: 27, baseType: !557)
!556 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !556, line: 13, size: 64, elements: !558)
!558 = !{!559, !571}
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !556, line: 14, baseType: !560, size: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !556, line: 14, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !560, file: !556, line: 15, baseType: !130, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 16, baseType: !564, size: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 16, size: 32, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !564, file: !556, line: 18, baseType: !301, size: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !564, file: !556, line: 19, baseType: !568, size: 24, offset: 8)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 24, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 3)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !557, file: !556, line: 26, baseType: !289, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !547, file: !64, line: 950, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !575)
!575 = !{!576, !577, !578, !579, !592, !593, !600, !601}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !12, line: 61, baseType: !125, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !574, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !12, line: 63, baseType: !485, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !574, file: !12, line: 65, baseType: !580, size: 256, offset: 128)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 256, elements: !590)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 194, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !581, file: !131, line: 195, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 198, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !131, line: 199, baseType: !584, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !585, file: !131, line: 199, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!590 = !{!591}
!591 = !DISubrange(count: 4)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !574, file: !12, line: 66, baseType: !581, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !574, file: !12, line: 68, baseType: !594, size: 192, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !595, line: 41, baseType: !596)
!595 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !595, line: 37, size: 192, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !595, line: 38, baseType: !485, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !596, file: !595, line: 39, baseType: !191, size: 128, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !574, file: !12, line: 69, baseType: !511, size: 128, align: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !574, file: !12, line: 70, baseType: !602, offset: 768)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, elements: !609)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !603, file: !12, line: 55, baseType: !135, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !603, file: !12, line: 56, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!609 = !{!610}
!610 = !DISubrange(count: -1)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !547, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !547, file: !64, line: 952, baseType: !613, size: 32, offset: 160)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !614, line: 23, baseType: !615)
!614 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 21, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !614, line: 22, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 37, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !334, line: 49, baseType: !7)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !547, file: !64, line: 952, baseType: !613, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !547, file: !64, line: 953, baseType: !135, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !504, file: !64, line: 1012, baseType: !623, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !626, line: 110, size: 1472, elements: !627)
!626 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!627 = !{!628, !629, !630, !637, !638, !639, !640, !641, !642, !643, !644, !650, !651, !652, !653, !654, !655, !782, !783, !784, !785, !786, !817, !820, !824, !832}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !626, line: 111, baseType: !524, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !625, file: !626, line: 112, baseType: !613, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !625, file: !626, line: 113, baseType: !631, size: 32, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !614, line: 28, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 26, size: 32, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !614, line: 27, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 38, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !334, line: 50, baseType: !7)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !625, file: !626, line: 114, baseType: !613, size: 32, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !625, file: !626, line: 115, baseType: !631, size: 32, offset: 160)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !625, file: !626, line: 116, baseType: !613, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !625, file: !626, line: 117, baseType: !631, size: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !625, file: !626, line: 118, baseType: !613, size: 32, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !625, file: !626, line: 119, baseType: !631, size: 32, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !625, file: !626, line: 120, baseType: !7, size: 32, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !625, file: !626, line: 121, baseType: !645, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !646, line: 24, baseType: !647)
!646 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 24, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !647, file: !646, line: 24, baseType: !186, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !625, file: !626, line: 122, baseType: !645, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !625, file: !626, line: 123, baseType: !645, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !625, file: !626, line: 124, baseType: !645, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !625, file: !626, line: 125, baseType: !645, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !625, file: !626, line: 127, baseType: !303, size: 8, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !625, file: !626, line: 129, baseType: !656, size: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !658, line: 195, size: 1728, elements: !659)
!658 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!659 = !{!660, !661, !666, !671, !680, !683, !684, !691, !692, !693, !694, !697, !698, !699, !701, !702, !746, !767}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !657, file: !658, line: 196, baseType: !125, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !657, file: !658, line: 197, baseType: !662, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !658, line: 28, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 104, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !117, line: 20, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !119, line: 26, baseType: !135)
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 198, baseType: !667, size: 192, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 198, size: 192, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !667, file: !658, line: 199, baseType: !191, size: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !667, file: !658, line: 200, baseType: !178, size: 192, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !657, file: !658, line: 205, baseType: !672, size: 320, offset: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !673, line: 48, size: 320, elements: !674)
!673 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!674 = !{!675, !676, !677, !678, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !673, line: 49, baseType: !524, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !672, file: !673, line: 55, baseType: !524, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !672, file: !673, line: 57, baseType: !537, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !672, file: !673, line: 59, baseType: !284, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !672, file: !673, line: 60, baseType: !191, size: 128, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !657, file: !658, line: 206, baseType: !681, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !658, line: 206, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !657, file: !658, line: 207, baseType: !123, size: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 208, baseType: !685, size: 64, offset: 704)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 208, size: 64, elements: !686)
!686 = !{!687, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !685, file: !658, line: 209, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !689, line: 8, baseType: !203)
!689 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !685, file: !658, line: 210, baseType: !688, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !657, file: !658, line: 212, baseType: !688, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !658, line: 213, baseType: !613, size: 32, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !657, file: !658, line: 214, baseType: !631, size: 32, offset: 864)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !657, file: !658, line: 215, baseType: !695, size: 32, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !658, line: 31, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 110, baseType: !116)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !657, file: !658, line: 216, baseType: !157, size: 16, offset: 928)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !657, file: !658, line: 217, baseType: !157, size: 16, offset: 944)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !657, file: !658, line: 221, baseType: !700, size: 16, offset: 960)
!700 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !658, line: 228, baseType: !113, size: 64, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 245, baseType: !703, size: 320, offset: 1088)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 245, size: 320, elements: !704)
!704 = !{!705, !737}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !703, file: !658, line: 246, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !658, line: 114, size: 320, elements: !707)
!707 = !{!708, !709, !722, !725, !734}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !706, file: !658, line: 116, baseType: !113, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !658, line: 117, baseType: !710, size: 64, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !658, line: 117, size: 64, elements: !711)
!711 = !{!712, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !658, line: 118, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !658, line: 118, size: 64, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !713, file: !658, line: 120, baseType: !155, size: 16)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !713, file: !658, line: 121, baseType: !717, size: 48, offset: 16)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 48, elements: !719)
!718 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!719 = !{!720}
!720 = !DISubrange(count: 6)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !710, file: !658, line: 127, baseType: !113, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !658, line: 129, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !658, line: 102, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !706, file: !658, line: 130, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !658, line: 108, size: 192, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !658, line: 109, baseType: !511, size: 128, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !727, file: !658, line: 110, baseType: !125, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !727, file: !658, line: 111, baseType: !732, size: 8, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 35, baseType: !733)
!733 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !706, file: !658, line: 131, baseType: !735, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !658, line: 247, baseType: !738, size: 320)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !658, line: 247, size: 320, elements: !739)
!739 = !{!740, !741, !742, !743, !744}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !738, file: !658, line: 248, baseType: !113, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !738, file: !658, line: 249, baseType: !113, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !658, line: 250, baseType: !723, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !738, file: !658, line: 251, baseType: !726, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !738, file: !658, line: 252, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 260, baseType: !747, size: 256, offset: 1408)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 260, size: 256, elements: !748)
!748 = !{!749, !755}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !747, file: !658, line: 261, baseType: !750, size: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !658, line: 134, size: 256, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !750, file: !658, line: 135, baseType: !123, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !750, file: !658, line: 136, baseType: !754, size: 256)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !590)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !658, line: 262, baseType: !756, size: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !658, line: 262, size: 256, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !756, file: !658, line: 264, baseType: !191, size: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !756, file: !658, line: 265, baseType: !760, size: 128, offset: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !761, line: 22, size: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!762 = !{!763, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !760, file: !761, line: 23, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !761, line: 23, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !760, file: !761, line: 24, baseType: !113, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !657, file: !658, line: 280, baseType: !768, size: 64, offset: 1664)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !658, line: 176, size: 192, elements: !770)
!770 = !{!771, !780, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !769, file: !658, line: 177, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !658, line: 171, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!135, !656, !776, !778, !656}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !769, file: !658, line: 178, baseType: !656, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !769, file: !658, line: 179, baseType: !723, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !625, file: !626, line: 130, baseType: !656, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !625, file: !626, line: 131, baseType: !656, size: 64, offset: 896)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !625, file: !626, line: 132, baseType: !656, size: 64, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !625, file: !626, line: 135, baseType: !123, size: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !625, file: !626, line: 137, baseType: !787, size: 64, offset: 1088)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !789, line: 14, size: 1088, elements: !790)
!789 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!790 = !{!791, !792, !801, !802, !803, !804, !805, !806}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !788, file: !789, line: 15, baseType: !125, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !788, file: !789, line: 17, baseType: !793, size: 320, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !794, line: 22, size: 320, elements: !795)
!794 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!795 = !{!796, !797, !798, !799}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !793, file: !794, line: 23, baseType: !284, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !793, file: !794, line: 24, baseType: !202, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !793, file: !794, line: 26, baseType: !191, size: 128, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !793, file: !794, line: 28, baseType: !800, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !788, file: !789, line: 19, baseType: !113, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !788, file: !789, line: 20, baseType: !524, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !788, file: !789, line: 23, baseType: !585, size: 128, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !788, file: !789, line: 24, baseType: !613, size: 32, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !788, file: !789, line: 29, baseType: !524, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !788, file: !789, line: 36, baseType: !807, size: 320, offset: 768)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !808, line: 15, size: 320, elements: !809)
!808 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!809 = !{!810, !811, !812, !813, !814, !815, !816}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !808, line: 16, baseType: !284, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !807, file: !808, line: 18, baseType: !135, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !807, file: !808, line: 19, baseType: !135, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !807, file: !808, line: 20, baseType: !135, size: 32, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !807, file: !808, line: 21, baseType: !135, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !807, file: !808, line: 22, baseType: !113, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !808, line: 23, baseType: !113, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !625, file: !626, line: 138, baseType: !818, size: 64, offset: 1152)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !614, line: 18, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !625, file: !626, line: 139, baseType: !821, size: 64, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !823, line: 16, flags: DIFlagFwdDecl)
!823 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!824 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !625, file: !626, line: 140, baseType: !825, size: 64, offset: 1280)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !626, line: 25, size: 64, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !826, file: !626, line: 26, baseType: !130, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !826, file: !626, line: 27, baseType: !135, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !826, file: !626, line: 28, baseType: !831, offset: 64)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, elements: !609)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 142, baseType: !833, size: 128, offset: 1344)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 142, size: 128, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !833, file: !626, line: 143, baseType: !135, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !626, line: 144, baseType: !511, size: 128, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !504, file: !64, line: 1013, baseType: !838, size: 256, offset: 960)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !838, file: !64, line: 971, baseType: !113, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !838, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !838, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !838, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !838, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !838, file: !64, line: 976, baseType: !543, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !504, file: !64, line: 1014, baseType: !847, size: 128, offset: 1216)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !848, line: 8, size: 128, elements: !849)
!848 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!849 = !{!850, !3015}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !847, file: !848, line: 9, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !853, line: 70, size: 256, elements: !854)
!853 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!854 = !{!855, !3012, !3013, !3014}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !852, file: !853, line: 71, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !858, line: 82, size: 1536, elements: !859)
!858 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!859 = !{!860, !861, !866, !874, !875, !890, !2979, !2981, !2994, !2995, !2996, !2997, !2998, !3004, !3005, !3006}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !857, file: !858, line: 84, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !857, file: !858, line: 85, baseType: !862, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !337, line: 275, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !337, line: 275, size: 32, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !863, file: !337, line: 275, baseType: !341, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !857, file: !858, line: 86, baseType: !867, size: 128, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !868, line: 38, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!869 = !{!870, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !868, line: 39, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !867, file: !868, line: 39, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !857, file: !858, line: 87, baseType: !856, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !857, file: !858, line: 88, baseType: !876, size: 128, offset: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !858, line: 49, size: 128, elements: !877)
!877 = !{!878, !887}
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !858, line: 50, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !858, line: 50, size: 64, elements: !880)
!880 = !{!881, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !858, line: 51, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !858, line: 51, size: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !882, file: !858, line: 52, baseType: !116, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !882, file: !858, line: 52, baseType: !116, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !879, file: !858, line: 54, baseType: !186, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !858, line: 56, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !857, file: !858, line: 89, baseType: !891, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !893)
!893 = !{!894, !896, !897, !898, !899, !900, !901, !904, !905, !1103, !2793, !2794, !2795, !2796, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2961, !2964, !2965, !2966, !2975, !2976, !2977, !2978}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !892, file: !64, line: 642, baseType: !895, size: 16)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 24, baseType: !157)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !892, file: !64, line: 643, baseType: !157, size: 16, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !892, file: !64, line: 644, baseType: !613, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !892, file: !64, line: 645, baseType: !191, size: 128, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !892, file: !64, line: 646, baseType: !631, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !892, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !892, file: !64, line: 650, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !892, file: !64, line: 651, baseType: !902, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !892, file: !64, line: 654, baseType: !906, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !909)
!909 = !{!910, !914, !927, !933, !937, !941, !945, !949, !953, !957, !961, !962, !968, !972, !1010, !1041, !1051, !1057, !1061, !1065, !1069, !1073, !1077, !1083, !1087}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !908, file: !64, line: 1967, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!856, !891, !856, !7}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !908, file: !64, line: 1968, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!735, !856, !891, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !920, line: 10, size: 128, elements: !921)
!920 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!921 = !{!922, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !919, file: !920, line: 11, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !123}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !919, file: !920, line: 12, baseType: !123, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !908, file: !64, line: 1969, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!135, !931, !891, !135}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !646, line: 42, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !908, file: !64, line: 1970, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!902, !891, !135, !732}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !908, file: !64, line: 1972, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!135, !856, !745, !135}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !908, file: !64, line: 1974, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!135, !931, !891, !856, !895, !732}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !908, file: !64, line: 1976, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!135, !856, !891, !856}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !908, file: !64, line: 1977, baseType: !950, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!135, !891, !856}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !908, file: !64, line: 1978, baseType: !954, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!135, !931, !891, !856, !735}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !908, file: !64, line: 1980, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!135, !931, !891, !856, !895}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !908, file: !64, line: 1982, baseType: !950, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !908, file: !64, line: 1983, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!135, !931, !891, !856, !895, !966}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 21, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 18, baseType: !116)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !908, file: !64, line: 1985, baseType: !969, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!135, !931, !891, !856, !891, !856, !7}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !908, file: !64, line: 1987, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!135, !931, !856, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !978)
!978 = !{!979, !980, !981, !991, !1000, !1001, !1007, !1008, !1009}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !977, file: !64, line: 227, baseType: !7, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !977, file: !64, line: 228, baseType: !895, size: 16, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !64, line: 241, baseType: !982, size: 32, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !64, line: 241, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !982, file: !64, line: 242, baseType: !613, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !982, file: !64, line: 243, baseType: !986, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !987, line: 16, baseType: !988)
!987 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 14, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !988, file: !987, line: 15, baseType: !618, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !64, line: 245, baseType: !992, size: 32, offset: 96)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !64, line: 245, size: 32, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !992, file: !64, line: 246, baseType: !631, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !992, file: !64, line: 247, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !987, line: 20, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 18, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !997, file: !987, line: 19, baseType: !635, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !977, file: !64, line: 249, baseType: !543, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !977, file: !64, line: 250, baseType: !1002, size: 128, offset: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !689, line: 13, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1002, file: !689, line: 14, baseType: !688, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1002, file: !689, line: 15, baseType: !1006, size: 64, offset: 64)
!1006 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !977, file: !64, line: 251, baseType: !1002, size: 128, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !977, file: !64, line: 252, baseType: !1002, size: 128, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !977, file: !64, line: 259, baseType: !503, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !908, file: !64, line: 1988, baseType: !1011, size: 64, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!135, !931, !1014, !1016, !116, !7}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1018, line: 22, size: 1280, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1017, file: !1018, line: 23, baseType: !116, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1017, file: !1018, line: 24, baseType: !895, size: 16, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1017, file: !1018, line: 25, baseType: !7, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1017, file: !1018, line: 26, baseType: !696, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1017, file: !1018, line: 27, baseType: !186, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1017, file: !1018, line: 28, baseType: !186, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1017, file: !1018, line: 41, baseType: !186, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1017, file: !1018, line: 42, baseType: !966, size: 32, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1017, file: !1018, line: 43, baseType: !966, size: 32, offset: 352)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1017, file: !1018, line: 44, baseType: !613, size: 32, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1017, file: !1018, line: 45, baseType: !631, size: 32, offset: 416)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !1018, line: 46, baseType: !543, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1017, file: !1018, line: 47, baseType: !1002, size: 128, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1017, file: !1018, line: 48, baseType: !1002, size: 128, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1017, file: !1018, line: 49, baseType: !1002, size: 128, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1017, file: !1018, line: 50, baseType: !1002, size: 128, offset: 896)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1017, file: !1018, line: 51, baseType: !186, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1017, file: !1018, line: 52, baseType: !186, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1017, file: !1018, line: 53, baseType: !116, size: 32, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1017, file: !1018, line: 54, baseType: !116, size: 32, offset: 1184)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1017, file: !1018, line: 55, baseType: !186, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !908, file: !64, line: 1990, baseType: !1042, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !856, !745, !1048}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 66, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !334, line: 73, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !334, line: 15, baseType: !1006)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 61, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !334, line: 72, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !334, line: 16, baseType: !113)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !908, file: !64, line: 1991, baseType: !1052, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!135, !891, !1055, !186, !186}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !908, file: !64, line: 1993, baseType: !1058, size: 64, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!135, !891, !135}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !908, file: !64, line: 1994, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!135, !891, !856, !503, !7, !895}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !908, file: !64, line: 1997, baseType: !1066, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!135, !931, !891, !503, !895}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !908, file: !64, line: 1999, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!902, !931, !856, !135}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !908, file: !64, line: 2001, baseType: !1074, size: 64, offset: 1344)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!135, !931, !856, !902, !135}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !908, file: !64, line: 2003, baseType: !1078, size: 64, offset: 1408)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!135, !931, !856, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !908, file: !64, line: 2005, baseType: !1084, size: 64, offset: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!135, !856, !1081}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !908, file: !64, line: 2006, baseType: !1088, size: 64, offset: 1536)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !891}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !1093)
!1093 = !{!1094, !1102}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1092, file: !64, line: 3193, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1096, line: 296, size: 128, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1097 = !{!1098, !1099, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1095, file: !1096, line: 297, baseType: !485, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1095, file: !1096, line: 299, baseType: !1100, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 154, baseType: !7)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1095, file: !1096, line: 300, baseType: !123, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1092, file: !64, line: 3194, baseType: !116, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !892, file: !64, line: 655, baseType: !1104, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !2306, !2438, !2478, !2561, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2578, !2582, !2583, !2586, !2589, !2592, !2595, !2596, !2597, !2638, !2664, !2665, !2666, !2667, !2668, !2669, !2672, !2676, !2685, !2686, !2687, !2688, !2747, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1105, file: !64, line: 1191, baseType: !191, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1105, file: !64, line: 1192, baseType: !966, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1105, file: !64, line: 1193, baseType: !303, size: 8, offset: 160)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1105, file: !64, line: 1194, baseType: !113, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1105, file: !64, line: 1195, baseType: !543, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1105, file: !64, line: 1196, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1125, !1129, !1133, !1137, !2294, !2295, !2296, !2298, !2299, !2300, !2302, !2303, !2304, !2305}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1114, file: !64, line: 2367, baseType: !735, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1114, file: !64, line: 2368, baseType: !135, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1114, file: !64, line: 2376, baseType: !1119, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!135, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1124, line: 32, flags: DIFlagFwdDecl)
!1124 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1114, file: !64, line: 2377, baseType: !1126, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1114, file: !64, line: 2378, baseType: !1130, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!856, !1113, !135, !735, !123}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1114, file: !64, line: 2380, baseType: !1134, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1104}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1114, file: !64, line: 2381, baseType: !1138, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1147, !1937, !1963, !1964, !1965, !1966, !1970, !1973, !1974, !1975, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2043, !2047, !2067, !2087, !2088, !2089, !2090, !2099, !2122, !2123, !2126, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2140, !2141, !2252, !2260, !2261, !2262, !2264, !2268, !2269, !2273, !2274, !2275, !2276, !2278, !2279, !2280, !2287, !2288, !2289, !2293}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1139, file: !20, line: 403, baseType: !19, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1139, file: !20, line: 406, baseType: !191, size: 128, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1139, file: !20, line: 409, baseType: !1144, size: 448, offset: 192)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 448, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 56)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1139, file: !20, line: 417, baseType: !1148, size: 768, offset: 640)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1149)
!1149 = !{!1150, !1930, !1931, !1932, !1935}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1148, file: !20, line: 46, baseType: !1151, size: 512)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1152, line: 64, size: 512, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1153 = !{!1154, !1155, !1156, !1158, !1202, !1810, !1920, !1925, !1926, !1927, !1928, !1929}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1151, file: !1152, line: 65, baseType: !735, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1151, file: !1152, line: 66, baseType: !191, size: 128, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1151, file: !1152, line: 67, baseType: !1157, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1151, file: !1152, line: 68, baseType: !1159, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1152, line: 168, size: 768, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1160, file: !1152, line: 169, baseType: !191, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1160, file: !1152, line: 170, baseType: !485, size: 32, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1160, file: !1152, line: 171, baseType: !1151, size: 512, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1160, file: !1152, line: 172, baseType: !1166, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1152, line: 133, size: 192, elements: !1169)
!1169 = !{!1170, !1177, !1182}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1168, file: !1152, line: 134, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!135, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1168, file: !1152, line: 135, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!735, !1175}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1168, file: !1152, line: 136, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!135, !1175, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1152, line: 125, size: 20736, elements: !1189)
!1189 = !{!1190, !1192, !1196, !1197, !1201}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1188, file: !1152, line: 126, baseType: !1191, size: 192)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 192, elements: !569)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1188, file: !1152, line: 127, baseType: !1193, size: 4096, offset: 192)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 4096, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1188, file: !1152, line: 128, baseType: !135, size: 32, offset: 4288)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1188, file: !1152, line: 129, baseType: !1198, size: 16384, offset: 4320)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 16384, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1188, file: !1152, line: 130, baseType: !135, size: 32, offset: 20704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1151, file: !1152, line: 69, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1152, line: 116, size: 384, elements: !1206)
!1206 = !{!1207, !1211, !1230, !1770, !1800, !1804}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1205, file: !1152, line: 117, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1157}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1205, file: !1152, line: 118, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1215, line: 254, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1216 = !{!1217, !1226}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1214, file: !1215, line: 255, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1045, !1157, !1221, !745}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1215, line: 30, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1222, file: !1215, line: 31, baseType: !735, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1222, file: !1215, line: 32, baseType: !895, size: 16, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1214, file: !1215, line: 256, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1045, !1157, !1221, !735, !1048}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1205, file: !1152, line: 119, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1215, line: 84, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1241, !1766, !1768}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1234, file: !1215, line: 85, baseType: !735, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1234, file: !1215, line: 86, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!895, !1157, !1221, !135}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1234, file: !1215, line: 88, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!895, !1157, !1245, !135}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1215, line: 175, size: 512, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1757, !1761, !1762}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1246, file: !1215, line: 176, baseType: !1222, size: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1246, file: !1215, line: 177, baseType: !1048, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1246, file: !1215, line: 178, baseType: !123, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1246, file: !1215, line: 179, baseType: !1252, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1749, !1750, !1751, !1754, !1755, !1756}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1256, file: !64, line: 473, baseType: !891, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1256, file: !64, line: 474, baseType: !1095, size: 128, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1256, file: !64, line: 475, baseType: !672, size: 320, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1256, file: !64, line: 476, baseType: !1100, size: 32, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1256, file: !64, line: 477, baseType: !130, size: 32, offset: 544)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1256, file: !64, line: 482, baseType: !350, size: 128, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1256, file: !64, line: 483, baseType: !113, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1256, file: !64, line: 484, baseType: !113, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1256, file: !64, line: 485, baseType: !1267, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1270)
!1270 = !{!1271, !1574, !1644, !1648, !1652, !1658, !1664, !1668, !1673, !1677, !1681, !1685, !1713, !1717, !1721, !1725, !1730, !1734, !1741, !1745}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1269, file: !64, line: 405, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!135, !1275, !1572}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1277)
!1277 = !{!1278, !1279, !1566, !1571}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !35, line: 75, baseType: !113, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !35, line: 83, baseType: !1280, size: 320, offset: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !35, line: 83, size: 320, elements: !1281)
!1281 = !{!1282, !1303, !1317, !1321, !1565}
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !35, line: 84, baseType: !1283, size: 320)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !35, line: 84, size: 320, elements: !1284)
!1284 = !{!1285, !1296, !1297, !1302}
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !35, line: 90, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !35, line: 90, size: 128, elements: !1287)
!1287 = !{!1288, !1289, !1294, !1295}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1286, file: !35, line: 91, baseType: !191, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !35, line: 94, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !35, line: 94, size: 128, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1290, file: !35, line: 96, baseType: !123, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1290, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1286, file: !35, line: 102, baseType: !191, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1286, file: !35, line: 103, baseType: !191, size: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1283, file: !35, line: 106, baseType: !1255, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !35, line: 107, baseType: !1298, size: 64, offset: 192)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !35, line: 107, size: 64, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1298, file: !35, line: 108, baseType: !113, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1298, file: !35, line: 109, baseType: !113, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1283, file: !35, line: 117, baseType: !113, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !35, line: 119, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !35, line: 119, size: 320, elements: !1305)
!1305 = !{!1306, !1307, !1310, !1311, !1312}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1304, file: !35, line: 124, baseType: !113, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1304, file: !35, line: 125, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1304, file: !35, line: 126, baseType: !113, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1304, file: !35, line: 127, baseType: !113, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !35, line: 128, baseType: !1313, size: 64, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !35, line: 128, size: 64, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1313, file: !35, line: 133, baseType: !113, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1313, file: !35, line: 138, baseType: !524, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !35, line: 141, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !35, line: 141, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1318, file: !35, line: 142, baseType: !113, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !35, line: 144, baseType: !1322, size: 128)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !35, line: 144, size: 128, elements: !1323)
!1323 = !{!1324, !1564}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1322, file: !35, line: 146, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1327)
!1327 = !{!1328, !1338, !1359, !1370, !1371, !1372, !1373, !1546, !1547, !1548}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1326, file: !27, line: 127, baseType: !1329, size: 384)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1330)
!1330 = !{!1331, !1332, !1334, !1335, !1336, !1337}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1329, file: !27, line: 22, baseType: !113, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1329, file: !27, line: 23, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1329, file: !27, line: 24, baseType: !1333, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1329, file: !27, line: 25, baseType: !113, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1329, file: !27, line: 26, baseType: !113, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1329, file: !27, line: 27, baseType: !113, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1326, file: !27, line: 128, baseType: !1339, size: 128, offset: 384)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1340, line: 105, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1339, file: !1340, line: 110, baseType: !113, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1339, file: !1340, line: 118, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1340, line: 95, size: 448, elements: !1346)
!1346 = !{!1347, !1348, !1354, !1355, !1356, !1357, !1358}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1345, file: !1340, line: 96, baseType: !524, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1345, file: !1340, line: 97, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1340, line: 60, baseType: !1351)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1345, file: !1340, line: 98, baseType: !1349, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1345, file: !1340, line: 99, baseType: !732, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1345, file: !1340, line: 100, baseType: !732, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1345, file: !1340, line: 101, baseType: !511, size: 128, align: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1345, file: !1340, line: 102, baseType: !1353, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1326, file: !27, line: 129, baseType: !1360, size: 256, offset: 512)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1361, line: 26, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1360, file: !1361, line: 27, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1360, file: !1361, line: 28, baseType: !1365, size: 192, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1366, line: 43, size: 192, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1365, file: !1366, line: 44, baseType: !284, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1365, file: !1366, line: 45, baseType: !191, size: 128, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1326, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1326, file: !27, line: 132, baseType: !113, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1326, file: !27, line: 133, baseType: !1374, size: 64, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1377)
!1377 = !{!1378, !1382, !1542}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1376, file: !27, line: 83, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1275}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1376, file: !27, line: 89, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1389, line: 512, size: 896, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1390 = !{!1391, !1509, !1510, !1517, !1524, !1534, !1535, !1536, !1538, !1540}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 513, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !1389, line: 513, size: 320, elements: !1393)
!1393 = !{!1394, !1505, !1506, !1507, !1508}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1392, file: !1389, line: 514, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1397)
!1397 = !{!1398, !1407, !1408, !1416, !1423, !1424, !1429, !1430, !1435, !1436, !1439, !1498, !1499, !1500, !1501, !1502, !1503}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !35, line: 628, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !35, line: 628, size: 128, elements: !1400)
!1400 = !{!1401, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !35, line: 629, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !35, line: 629, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1402, file: !35, line: 631, baseType: !113, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1402, file: !35, line: 632, baseType: !113, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1399, file: !35, line: 635, baseType: !511, size: 128, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1396, file: !35, line: 639, baseType: !467, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1396, file: !35, line: 640, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1410, line: 297, baseType: !1411)
!1410 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1410, line: 297, size: 64, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1411, file: !1410, line: 297, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1415, line: 19, baseType: !113)
!1415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !35, line: 646, baseType: !1417, size: 64, offset: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !35, line: 646, size: 64, elements: !1418)
!1418 = !{!1419, !1422}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1417, file: !35, line: 647, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !113)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1417, file: !35, line: 648, baseType: !1421, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1396, file: !35, line: 666, baseType: !135, size: 32, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1396, file: !35, line: 667, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !35, line: 580, baseType: !672, size: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1396, file: !35, line: 670, baseType: !732, size: 8, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1396, file: !35, line: 681, baseType: !1431, size: 256, offset: 512)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !35, line: 678, size: 256, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1431, file: !35, line: 679, baseType: !178, size: 192, align: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1431, file: !35, line: 680, baseType: !113, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1396, file: !35, line: 689, baseType: !191, size: 128, offset: 768)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1396, file: !35, line: 691, baseType: !1437, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1396, file: !35, line: 694, baseType: !1440, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1389, line: 563, size: 1024, elements: !1443)
!1443 = !{!1444, !1448, !1449, !1453, !1457, !1461, !1462, !1466, !1470, !1474, !1475, !1476, !1480, !1484, !1490, !1494}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1442, file: !1389, line: 564, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1395}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1442, file: !1389, line: 569, baseType: !1445, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1442, file: !1389, line: 571, baseType: !1450, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!135, !1395, !113}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1442, file: !1389, line: 572, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!135, !1395}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1442, file: !1389, line: 578, baseType: !1458, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!135, !1395, !113, !113, !113}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1442, file: !1389, line: 580, baseType: !1383, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1442, file: !1389, line: 581, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1386, !1387, !7}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1442, file: !1389, line: 582, baseType: !1467, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1386, !1387, !113, !113}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1442, file: !1389, line: 584, baseType: !1471, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!113, !1395}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1442, file: !1389, line: 588, baseType: !1383, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1442, file: !1389, line: 591, baseType: !1383, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1442, file: !1389, line: 597, baseType: !1477, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!135, !1395, !113, !123, !135, !135}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1442, file: !1389, line: 603, baseType: !1481, size: 64, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!735, !1395}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1442, file: !1389, line: 613, baseType: !1485, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!135, !1395, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !106, line: 54, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1442, file: !1389, line: 625, baseType: !1491, size: 64, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1488, !1395, !113}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1442, file: !1389, line: 633, baseType: !1495, size: 64, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1275, !1395, !113}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1396, file: !35, line: 697, baseType: !113, size: 64, offset: 1024)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1396, file: !35, line: 699, baseType: !503, size: 64, offset: 1088)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1396, file: !35, line: 700, baseType: !123, size: 64, offset: 1152)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1396, file: !35, line: 711, baseType: !524, size: 64, offset: 1216)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1396, file: !35, line: 717, baseType: !1488, size: 64, offset: 1280)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1396, file: !35, line: 722, baseType: !1504, offset: 1344)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !496)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1392, file: !1389, line: 515, baseType: !1100, size: 32, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1392, file: !1389, line: 516, baseType: !113, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1392, file: !1389, line: 517, baseType: !113, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1392, file: !1389, line: 518, baseType: !113, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !1389, line: 520, baseType: !34, size: 32, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1388, file: !1389, line: 522, baseType: !1511, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1415, line: 22, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 22, size: 64, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1513, file: !1415, line: 22, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1415, line: 15, baseType: !113)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1388, file: !1389, line: 524, baseType: !1518, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1410, line: 372, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 372, size: 64, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1520, file: !1410, line: 372, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1415, line: 16, baseType: !113)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 527, baseType: !1525, size: 64, offset: 512)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 527, size: 64, elements: !1526)
!1526 = !{!1527, !1533}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1525, file: !1389, line: 528, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1415, line: 21, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 21, size: 64, elements: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1529, file: !1415, line: 21, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1415, line: 14, baseType: !113)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1525, file: !1389, line: 529, baseType: !1512, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1388, file: !1389, line: 534, baseType: !1275, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1388, file: !1389, line: 535, baseType: !1275, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1388, file: !1389, line: 541, baseType: !1537, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1388, file: !1389, line: 545, baseType: !1539, size: 64, offset: 768)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1388, file: !1389, line: 549, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1410, line: 520, baseType: !1275)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1376, file: !27, line: 100, baseType: !1543, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!135, !1325, !113, !113, !135}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1326, file: !27, line: 134, baseType: !123, size: 64, offset: 960)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1326, file: !27, line: 135, baseType: !135, size: 32, offset: 1024)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !27, line: 136, baseType: !1549, size: 128, offset: 1088)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !27, line: 136, size: 128, elements: !1550)
!1550 = !{!1551, !1557}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1549, file: !27, line: 137, baseType: !1552, size: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1553, line: 6, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1552, file: !1553, line: 7, baseType: !186, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1552, file: !1553, line: 8, baseType: !186, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !27, line: 138, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !27, line: 138, elements: !1559)
!1559 = !{!1560, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1558, file: !27, line: 138, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !27, line: 138, elements: !496)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1558, file: !27, line: 138, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, elements: !609)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1322, file: !35, line: 147, baseType: !123, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1280, file: !35, line: 161, baseType: !511, size: 128, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !35, line: 164, baseType: !1567, size: 32, offset: 384)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !35, line: 164, size: 32, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1567, file: !35, line: 169, baseType: !130, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1567, file: !35, line: 177, baseType: !7, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1276, file: !35, line: 181, baseType: !130, size: 32, offset: 416)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1269, file: !64, line: 406, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!135, !503, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1580)
!1580 = !{!1581, !1611, !1625}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !35, line: 295, baseType: !1582, size: 512)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !35, line: 295, size: 512, elements: !1583)
!1583 = !{!1584, !1610}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !35, line: 296, baseType: !1585, size: 448)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !35, line: 296, size: 448, elements: !1586)
!1586 = !{!1587, !1588, !1597, !1598, !1599, !1608, !1609}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !35, line: 298, baseType: !113, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !35, line: 299, baseType: !1589, size: 128, offset: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !35, line: 299, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1589, file: !35, line: 300, baseType: !191, size: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !35, line: 302, baseType: !1593, size: 128)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !35, line: 302, size: 128, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1593, file: !35, line: 303, baseType: !123, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1593, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1585, file: !35, line: 310, baseType: !1255, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1585, file: !35, line: 311, baseType: !113, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !35, line: 312, baseType: !1600, size: 64, offset: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !35, line: 312, size: 64, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1600, file: !35, line: 313, baseType: !123, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1600, file: !35, line: 314, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1605, file: !35, line: 256, baseType: !113, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1585, file: !35, line: 316, baseType: !130, size: 32, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1585, file: !35, line: 317, baseType: !130, size: 32, offset: 416)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1582, file: !35, line: 323, baseType: !1276, size: 512, align: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !35, line: 325, baseType: !1612, size: 512, offset: 512)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !35, line: 325, size: 512, elements: !1613)
!1613 = !{!1614, !1624}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !35, line: 326, baseType: !1615, size: 320)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !35, line: 326, size: 320, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1615, file: !35, line: 327, baseType: !113, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1615, file: !35, line: 328, baseType: !113, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1615, file: !35, line: 329, baseType: !113, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1615, file: !35, line: 331, baseType: !130, size: 32, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1615, file: !35, line: 332, baseType: !130, size: 32, offset: 224)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1615, file: !35, line: 333, baseType: !130, size: 32, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1615, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1612, file: !35, line: 339, baseType: !1276, size: 512, align: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !35, line: 341, baseType: !1626, size: 512, offset: 1024)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !35, line: 341, size: 512, elements: !1627)
!1627 = !{!1628, !1637, !1643}
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !35, line: 342, baseType: !1629, size: 384)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !35, line: 342, size: 384, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1629, file: !35, line: 343, baseType: !113, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1629, file: !35, line: 344, baseType: !113, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1629, file: !35, line: 346, baseType: !123, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1629, file: !35, line: 347, baseType: !123, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1629, file: !35, line: 348, baseType: !123, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1629, file: !35, line: 349, baseType: !123, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !35, line: 352, baseType: !1638, size: 256)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !35, line: 352, size: 256, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1638, file: !35, line: 353, baseType: !113, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1638, file: !35, line: 354, baseType: !113, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1638, file: !35, line: 356, baseType: !191, size: 128, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1626, file: !35, line: 359, baseType: !1276, size: 512, align: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1269, file: !64, line: 409, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!135, !1255, !1572}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1269, file: !64, line: 412, baseType: !1649, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!732, !1255, !1578}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1269, file: !64, line: 414, baseType: !1653, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1269, file: !64, line: 416, baseType: !1659, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!135, !503, !1255, !543, !7, !1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1269, file: !64, line: 419, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!135, !503, !1255, !543, !7, !7, !1275, !123}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1269, file: !64, line: 424, baseType: !1669, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672, !1255, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 131, baseType: !186)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1269, file: !64, line: 425, baseType: !1674, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1578, !1048, !1048}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1269, file: !64, line: 426, baseType: !1678, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!732, !1578, !1100}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1269, file: !64, line: 427, baseType: !1682, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1578}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1269, file: !64, line: 428, baseType: !1686, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1045, !1689, !1711}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1698, !1699, !1700, !1701}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1690, file: !64, line: 374, baseType: !503, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1690, file: !64, line: 375, baseType: !543, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1690, file: !64, line: 376, baseType: !1695, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1689, !1006}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1690, file: !64, line: 377, baseType: !123, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1690, file: !64, line: 378, baseType: !135, size: 32, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1690, file: !64, line: 379, baseType: !155, size: 16, offset: 288)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !64, line: 380, baseType: !1702, size: 64, offset: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !64, line: 380, size: 64, elements: !1703)
!1703 = !{!1704, !1707}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1702, file: !64, line: 386, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1702, file: !64, line: 395, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1045, !123}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1269, file: !64, line: 433, baseType: !1714, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!135, !1255, !1578, !1578, !50}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1269, file: !64, line: 435, baseType: !1718, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!135, !1578}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1269, file: !64, line: 436, baseType: !1722, size: 64, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!732, !1578, !1048, !1048}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1269, file: !64, line: 438, baseType: !1726, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1578, !1729, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1269, file: !64, line: 439, baseType: !1731, size: 64, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!135, !1255, !1275}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1269, file: !64, line: 442, baseType: !1735, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!135, !1738, !503, !1740}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1269, file: !64, line: 444, baseType: !1742, size: 64, offset: 1152)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !503}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1269, file: !64, line: 445, baseType: !1746, size: 64, offset: 1216)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!135, !1689, !1711}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !64, line: 486, baseType: !113, size: 64, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1256, file: !64, line: 487, baseType: !672, size: 320, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1256, file: !64, line: 488, baseType: !1752, size: 32, offset: 1280)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1753, line: 8, baseType: !116)
!1753 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1256, file: !64, line: 489, baseType: !485, size: 32, offset: 1312)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1256, file: !64, line: 490, baseType: !191, size: 128, offset: 1344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1256, file: !64, line: 491, baseType: !123, size: 64, offset: 1472)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1246, file: !1215, line: 180, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1045, !503, !1157, !1245, !745, !543, !1048}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1246, file: !1215, line: 182, baseType: !1758, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1246, file: !1215, line: 184, baseType: !1763, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!135, !503, !1157, !1245, !1395}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1234, file: !1215, line: 90, baseType: !1767, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1234, file: !1215, line: 91, baseType: !1769, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1205, file: !1152, line: 120, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774, !1175}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1777)
!1777 = !{!1778, !1779, !1783, !1787, !1795, !1799}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !58, line: 40, baseType: !57, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1776, file: !58, line: 41, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!732}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1776, file: !58, line: 42, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!123}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1776, file: !58, line: 43, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1791, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1776, file: !58, line: 44, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1791}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1776, file: !58, line: 45, baseType: !923, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1205, file: !1152, line: 121, baseType: !1801, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1791, !1175}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1205, file: !1152, line: 122, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1175, !1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1151, file: !1152, line: 70, baseType: !1811, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1124, line: 190, size: 1152, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1912, !1913, !1914, !1915, !1916, !1919}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1812, file: !1124, line: 191, baseType: !130, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1812, file: !1124, line: 192, baseType: !130, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1812, file: !1124, line: 202, baseType: !1811, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1124, line: 203, baseType: !735, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1812, file: !1124, line: 205, baseType: !178, size: 192, align: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1812, file: !1124, line: 207, baseType: !1791, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1812, file: !1124, line: 208, baseType: !7, size: 32, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1124, line: 209, baseType: !1822, size: 256, offset: 512)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1124, line: 209, size: 256, elements: !1823)
!1823 = !{!1824, !1833, !1837}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1822, file: !1124, line: 210, baseType: !1825, size: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1124, line: 153, size: 256, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1832}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1825, file: !1124, line: 154, baseType: !113, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1825, file: !1124, line: 156, baseType: !353, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1825, file: !1124, line: 162, baseType: !1830, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1124, line: 162, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1825, file: !1124, line: 167, baseType: !113, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1822, file: !1124, line: 211, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1124, line: 170, size: 64, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1834, file: !1124, line: 171, baseType: !1811, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1822, file: !1124, line: 212, baseType: !1838, size: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1124, line: 174, size: 256, elements: !1839)
!1839 = !{!1840, !1907, !1910, !1911}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1838, file: !1124, line: 175, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1124, line: 271, size: 768, elements: !1844)
!1844 = !{!1845, !1867, !1871, !1875, !1880, !1884, !1888, !1892, !1893, !1894, !1895, !1903}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1843, file: !1124, line: 276, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!135, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1124, line: 251, size: 1216, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1850, file: !1124, line: 253, baseType: !1811, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1850, file: !1124, line: 254, baseType: !503, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1850, file: !1124, line: 255, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !106, line: 66, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1850, file: !1124, line: 256, baseType: !123, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1850, file: !1124, line: 259, baseType: !531, size: 256, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1850, file: !1124, line: 260, baseType: !531, size: 256, offset: 512)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1850, file: !1124, line: 261, baseType: !135, size: 32, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1850, file: !1124, line: 262, baseType: !191, size: 128, offset: 832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1850, file: !1124, line: 263, baseType: !745, size: 64, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1850, file: !1124, line: 265, baseType: !1048, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1850, file: !1124, line: 266, baseType: !732, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1850, file: !1124, line: 267, baseType: !732, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1850, file: !1124, line: 268, baseType: !1440, size: 64, offset: 1152)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1843, file: !1124, line: 277, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1849}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1843, file: !1124, line: 290, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!135, !1855, !123}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1843, file: !1124, line: 292, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!123, !1855, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1843, file: !1124, line: 293, baseType: !1881, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!123, !1855, !123, !1879}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1843, file: !1124, line: 294, baseType: !1885, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1855, !123}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1843, file: !1124, line: 296, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1045, !1849, !745, !1048, !543}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1843, file: !1124, line: 306, baseType: !1048, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1843, file: !1124, line: 313, baseType: !732, size: 8, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1843, file: !1124, line: 314, baseType: !1889, size: 64, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1843, file: !1124, line: 317, baseType: !1896, size: 64, offset: 640)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1899, !1849, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1900, line: 59, baseType: !7)
!1900 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1124, line: 31, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1843, file: !1124, line: 320, baseType: !1904, size: 64, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!135, !1849, !1395}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1838, file: !1124, line: 176, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1124, line: 35, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1838, file: !1124, line: 177, baseType: !543, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1838, file: !1124, line: 178, baseType: !1811, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1812, file: !1124, line: 215, baseType: !123, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1812, file: !1124, line: 221, baseType: !186, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1124, line: 223, baseType: !157, size: 16, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1812, file: !1124, line: 224, baseType: !895, size: 16, offset: 912)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1812, file: !1124, line: 225, baseType: !1917, size: 64, offset: 960)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1124, line: 36, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1812, file: !1124, line: 227, baseType: !511, size: 128, align: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1151, file: !1152, line: 71, baseType: !1921, size: 32, offset: 448)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1922, line: 19, size: 32, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1921, file: !1922, line: 20, baseType: !125, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1151, file: !1152, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1151, file: !1152, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1151, file: !1152, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1151, file: !1152, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1151, file: !1152, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1148, file: !20, line: 47, baseType: !1138, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1148, file: !20, line: 48, baseType: !1157, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1148, file: !20, line: 49, baseType: !1933, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1148, file: !20, line: 50, baseType: !1936, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1139, file: !20, line: 418, baseType: !1938, size: 64, offset: 1408)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !1940)
!1940 = !{!1941, !1942, !1947, !1951, !1955, !1959}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1939, file: !20, line: 54, baseType: !1222, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1939, file: !20, line: 55, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1045, !1938, !1946, !745}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1939, file: !20, line: 57, baseType: !1948, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1045, !1938, !1946, !735, !1048}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1939, file: !20, line: 59, baseType: !1952, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1138, !735}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1939, file: !20, line: 60, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!135, !1138}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1939, file: !20, line: 61, baseType: !1960, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1138}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1139, file: !20, line: 419, baseType: !735, size: 64, offset: 1472)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1139, file: !20, line: 420, baseType: !735, size: 64, offset: 1536)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1139, file: !20, line: 421, baseType: !1157, size: 64, offset: 1600)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1139, file: !20, line: 424, baseType: !1967, size: 64, offset: 1664)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1139, file: !20, line: 425, baseType: !1971, size: 64, offset: 1728)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1139, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1139, file: !20, line: 435, baseType: !531, size: 256, offset: 1856)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1139, file: !20, line: 437, baseType: !1976, size: 64, offset: 2112)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1978, line: 69, size: 320, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1979 = !{!1980, !1981, !1982, !1999, !2001, !2005, !2006}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1977, file: !1978, line: 70, baseType: !735, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1977, file: !1978, line: 71, baseType: !1138, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1977, file: !1978, line: 72, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1978, line: 47, size: 256, elements: !1986)
!1986 = !{!1987, !1988, !1994, !1998}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1978, line: 49, baseType: !7, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1985, file: !1978, line: 51, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!135, !735, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1985, file: !1978, line: 53, baseType: !1995, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!135, !745, !1992}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1985, file: !1978, line: 55, baseType: !923, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1977, file: !1978, line: 73, baseType: !2000, size: 16, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1977, file: !1978, line: 74, baseType: !2002, size: 8, offset: 208)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !117, line: 16, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !119, line: 20, baseType: !2004)
!2004 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1978, line: 75, baseType: !301, size: 8, offset: 216)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1978, line: 76, baseType: !2007, size: 64, offset: 256)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1978, line: 76, size: 64, elements: !2008)
!2008 = !{!2009, !2010, !2017}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2007, file: !1978, line: 77, baseType: !123, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2007, file: !1978, line: 78, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1978, line: 86, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2013, file: !1978, line: 87, baseType: !7, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2013, file: !1978, line: 88, baseType: !745, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2007, file: !1978, line: 79, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1978, line: 92, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2026, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2020, file: !1978, line: 94, baseType: !7, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2020, file: !1978, line: 95, baseType: !7, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2020, file: !1978, line: 96, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2020, file: !1978, line: 97, baseType: !1983, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2020, file: !1978, line: 98, baseType: !123, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1139, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1139, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1139, file: !20, line: 442, baseType: !1967, size: 64, offset: 2240)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1139, file: !20, line: 443, baseType: !1971, size: 64, offset: 2304)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1139, file: !20, line: 444, baseType: !732, size: 8, offset: 2368)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1139, file: !20, line: 451, baseType: !732, size: 8, offset: 2376)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1139, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1139, file: !20, line: 455, baseType: !2036, size: 64, offset: 2432)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2038, line: 23, size: 96, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2037, file: !2038, line: 24, baseType: !135, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2037, file: !2038, line: 24, baseType: !135, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2037, file: !2038, line: 24, baseType: !135, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1139, file: !20, line: 458, baseType: !2044, size: 64, offset: 2496)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!135}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1139, file: !20, line: 460, baseType: !2048, size: 4032, align: 512, offset: 2560)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, size: 4032, elements: !2065)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2049, file: !20, line: 363, baseType: !123, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2049, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2049, file: !20, line: 367, baseType: !2054, size: 448, offset: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2054, file: !20, line: 320, baseType: !1138, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2054, file: !20, line: 321, baseType: !2058, size: 384, offset: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2059, line: 40, size: 384, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2058, file: !2059, line: 41, baseType: !2062, size: 384, align: 64)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 384, align: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 2)
!2065 = !{!2066}
!2066 = !DISubrange(count: 7)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1139, file: !20, line: 463, baseType: !2068, size: 192, offset: 6592)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2069, line: 8, size: 192, elements: !2070)
!2069 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2070 = !{!2071, !2072, !2074}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2068, file: !2069, line: 10, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2068, file: !2069, line: 11, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2068, file: !2069, line: 12, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2077, line: 59, size: 48, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2078 = !{!2079, !2082, !2083, !2084, !2085, !2086}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2076, file: !2077, line: 60, baseType: !2080, size: 16)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !117, line: 18, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !119, line: 23, baseType: !700)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2076, file: !2077, line: 61, baseType: !2080, size: 16, offset: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2076, file: !2077, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2076, file: !2077, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2076, file: !2077, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2076, file: !2077, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1139, file: !20, line: 465, baseType: !113, size: 64, offset: 6784)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1139, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1139, file: !20, line: 470, baseType: !191, size: 128, offset: 6912)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1139, file: !20, line: 471, baseType: !2091, size: 64, offset: 7040)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2093, line: 33, size: 96, elements: !2094)
!2093 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2094 = !{!2095, !2096, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2092, file: !2093, line: 37, baseType: !135, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2092, file: !2093, line: 43, baseType: !135, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2092, file: !2093, line: 45, baseType: !157, size: 16, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 47, baseType: !157, size: 16, offset: 80)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1139, file: !20, line: 476, baseType: !2100, size: 64, offset: 7104)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2102)
!2102 = !{!2103, !2119, !2120, !2121}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2101, file: !20, line: 379, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2106, line: 204, baseType: !2107)
!2106 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2106, line: 197, size: 192, elements: !2108)
!2108 = !{!2109, !2111, !2112, !2113, !2115, !2117}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2107, file: !2106, line: 198, baseType: !2110, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2106, line: 21, baseType: !118)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2107, file: !2106, line: 199, baseType: !303, size: 8, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2107, file: !2106, line: 200, baseType: !303, size: 8, offset: 40)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2107, file: !2106, line: 201, baseType: !2114, size: 16, offset: 48)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2106, line: 17, baseType: !156)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2107, file: !2106, line: 202, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2106, line: 16, baseType: !187)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2107, file: !2106, line: 203, baseType: !2118, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2106, line: 22, baseType: !187)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2101, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2101, file: !20, line: 381, baseType: !745, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2101, file: !20, line: 382, baseType: !745, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1139, file: !20, line: 477, baseType: !2101, size: 256, offset: 7168)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1139, file: !20, line: 480, baseType: !2124, size: 64, offset: 7424)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1139, file: !20, line: 483, baseType: !2127, size: 64, offset: 7488)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1139, file: !20, line: 488, baseType: !745, size: 64, offset: 7552)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1139, file: !20, line: 492, baseType: !123, size: 64, offset: 7616)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1139, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1139, file: !20, line: 495, baseType: !123, size: 64, offset: 7744)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1139, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1139, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1139, file: !20, line: 500, baseType: !2136, size: 64, offset: 7872)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2138, line: 45, baseType: !2139)
!2138 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1139, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1139, file: !20, line: 504, baseType: !2142, size: 64, offset: 8000)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2145, line: 96, size: 192, elements: !2146)
!2145 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2146 = !{!2147, !2148, !2213, !2216}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2144, file: !2145, line: 97, baseType: !7, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2144, file: !2145, line: 98, baseType: !2149, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2145, line: 24, size: 3072, elements: !2151)
!2151 = !{!2152, !2154, !2155, !2156, !2157, !2171, !2172, !2173, !2174, !2186, !2198, !2199, !2210, !2211, !2212}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2150, file: !2145, line: 26, baseType: !2153, size: 128)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 128, elements: !2063)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2150, file: !2145, line: 27, baseType: !2153, size: 128, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2150, file: !2145, line: 28, baseType: !135, size: 32, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !2145, line: 31, baseType: !485, size: 32, align: 512, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2150, file: !2145, line: 32, baseType: !2158, size: 960, offset: 576)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2159, line: 206, size: 960, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2160 = !{!2161, !2162, !2165, !2167, !2168, !2170}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2158, file: !2159, line: 207, baseType: !514, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2158, file: !2159, line: 208, baseType: !2163, size: 256, offset: 64)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 256, elements: !590)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2158, file: !2159, line: 209, baseType: !2166, size: 256, offset: 320)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !590)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2158, file: !2159, line: 213, baseType: !1006, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2158, file: !2159, line: 215, baseType: !2169, size: 256, offset: 640)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 256, elements: !590)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2158, file: !2159, line: 216, baseType: !301, size: 8, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2150, file: !2145, line: 33, baseType: !113, size: 64, offset: 1536)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2150, file: !2145, line: 34, baseType: !113, size: 64, offset: 1600)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2150, file: !2145, line: 35, baseType: !732, size: 8, offset: 1664)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2150, file: !2145, line: 36, baseType: !2175, size: 320, offset: 1728)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2176, line: 11, size: 320, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2177 = !{!2178, !2179, !2180, !2185}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2175, file: !2176, line: 16, baseType: !585, size: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2175, file: !2176, line: 17, baseType: !113, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2175, file: !2176, line: 18, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2175, file: !2176, line: 19, baseType: !116, size: 32, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2150, file: !2145, line: 37, baseType: !2187, size: 256, offset: 2048)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2188, line: 98, size: 256, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2189 = !{!2190, !2191, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2187, file: !2188, line: 99, baseType: !524, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2187, file: !2188, line: 100, baseType: !191, size: 128, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2187, file: !2188, line: 101, baseType: !2193, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2188, line: 21, baseType: !2194)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2150, file: !2145, line: 38, baseType: !511, size: 128, align: 64, offset: 2304)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2150, file: !2145, line: 39, baseType: !2200, size: 64, offset: 2432)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2145, line: 49, size: 768, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2201, file: !2145, line: 50, baseType: !485, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2201, file: !2145, line: 51, baseType: !2166, size: 256, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2201, file: !2145, line: 53, baseType: !2166, size: 256, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2201, file: !2145, line: 54, baseType: !113, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2201, file: !2145, line: 55, baseType: !2200, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2201, file: !2145, line: 56, baseType: !135, size: 32, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2201, file: !2145, line: 57, baseType: !135, size: 32, offset: 736)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2150, file: !2145, line: 40, baseType: !113, size: 64, offset: 2496)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2150, file: !2145, line: 42, baseType: !135, size: 32, offset: 2560)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2150, file: !2145, line: 43, baseType: !2143, size: 64, offset: 2624)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2144, file: !2145, line: 99, baseType: !2214, offset: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2215, line: 211, elements: !496)
!2215 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2144, file: !2145, line: 100, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2145, line: 63, size: 3008, elements: !2219)
!2219 = !{!2220, !2221, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2251}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2218, file: !2145, line: 64, baseType: !2200, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2218, file: !2145, line: 65, baseType: !2222, size: 192, offset: 64)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2200, size: 192, elements: !569)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2218, file: !2145, line: 67, baseType: !135, size: 32, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2218, file: !2145, line: 68, baseType: !531, size: 256, offset: 320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2218, file: !2145, line: 69, baseType: !485, size: 32, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2218, file: !2145, line: 70, baseType: !531, size: 256, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2218, file: !2145, line: 71, baseType: !113, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2218, file: !2145, line: 72, baseType: !113, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2218, file: !2145, line: 73, baseType: !113, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2218, file: !2145, line: 74, baseType: !113, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2218, file: !2145, line: 75, baseType: !113, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2218, file: !2145, line: 76, baseType: !113, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2218, file: !2145, line: 77, baseType: !113, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2218, file: !2145, line: 78, baseType: !113, size: 64, offset: 1344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2218, file: !2145, line: 79, baseType: !732, size: 8, offset: 1408)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2218, file: !2145, line: 80, baseType: !113, size: 64, offset: 1472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2218, file: !2145, line: 81, baseType: !531, size: 256, offset: 1536)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2218, file: !2145, line: 82, baseType: !1360, size: 256, offset: 1792)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2218, file: !2145, line: 84, baseType: !130, size: 32, offset: 2048)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2218, file: !2145, line: 87, baseType: !113, size: 64, offset: 2112)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2218, file: !2145, line: 88, baseType: !113, size: 64, offset: 2176)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2218, file: !2145, line: 89, baseType: !2243, size: 704, offset: 2240)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2188, line: 111, size: 704, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2250}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2243, file: !2188, line: 112, baseType: !2187, size: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2243, file: !2188, line: 113, baseType: !2175, size: 320, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2243, file: !2188, line: 116, baseType: !2248, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2188, line: 18, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2243, file: !2188, line: 117, baseType: !135, size: 32, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2218, file: !2145, line: 90, baseType: !2143, size: 64, offset: 2944)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1139, file: !20, line: 515, baseType: !2253, size: 64, offset: 8064)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2255, line: 117, size: 128, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2254, file: !2255, line: 118, baseType: !664, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2254, file: !2255, line: 119, baseType: !664, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2254, file: !2255, line: 120, baseType: !1006, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1139, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1139, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1139, file: !20, line: 520, baseType: !2263, size: 64, offset: 8192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1139, file: !20, line: 523, baseType: !2265, size: 64, offset: 8256)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1139, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1139, file: !20, line: 525, baseType: !2270, size: 64, offset: 8384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1139, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1139, file: !20, line: 533, baseType: !123, size: 64, offset: 8512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1139, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1139, file: !20, line: 535, baseType: !2277, size: 64, offset: 8640)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1139, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1139, file: !20, line: 539, baseType: !135, size: 32, offset: 8736)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1139, file: !20, line: 540, baseType: !2281, size: 64, offset: 8768)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2283, line: 32, size: 64, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2282, file: !2283, line: 33, baseType: !664, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2282, file: !2283, line: 34, baseType: !664, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1139, file: !20, line: 563, baseType: !191, size: 128, offset: 8832)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1139, file: !20, line: 565, baseType: !191, size: 128, offset: 8960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1139, file: !20, line: 568, baseType: !2290, size: 64, offset: 9088)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1139, file: !20, line: 570, baseType: !130, size: 32, offset: 9152)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !64, line: 2382, baseType: !1113, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1114, file: !64, line: 2383, baseType: !581, size: 64, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1114, file: !64, line: 2385, baseType: !2297, offset: 576)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2215, line: 206, elements: !496)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1114, file: !64, line: 2386, baseType: !2297, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1114, file: !64, line: 2387, baseType: !2297, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1114, file: !64, line: 2388, baseType: !2301, offset: 576)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, elements: !569)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1114, file: !64, line: 2390, baseType: !2297, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1114, file: !64, line: 2391, baseType: !2297, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1114, file: !64, line: 2392, baseType: !2297, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1114, file: !64, line: 2393, baseType: !2297, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1105, file: !64, line: 1197, baseType: !2307, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2310)
!2310 = !{!2311, !2315, !2319, !2320, !2324, !2328, !2332, !2333, !2334, !2338, !2342, !2346, !2347, !2348, !2354, !2358, !2359, !2363, !2364, !2365, !2366, !2370, !2374, !2421, !2436, !2437}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2309, file: !64, line: 2058, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!891, !1104}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2309, file: !64, line: 2059, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !891}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2309, file: !64, line: 2060, baseType: !2316, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2309, file: !64, line: 2062, baseType: !2321, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !891, !135}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2309, file: !64, line: 2063, baseType: !2325, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!135, !891, !1572}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2309, file: !64, line: 2064, baseType: !2329, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!135, !891}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2309, file: !64, line: 2065, baseType: !2316, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2309, file: !64, line: 2066, baseType: !1134, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2309, file: !64, line: 2067, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!135, !1104, !135}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2309, file: !64, line: 2068, baseType: !2339, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!135, !1104, !63}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2309, file: !64, line: 2069, baseType: !2343, size: 64, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!135, !1104}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2309, file: !64, line: 2070, baseType: !2339, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2309, file: !64, line: 2071, baseType: !2343, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2309, file: !64, line: 2072, baseType: !2349, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!135, !856, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2309, file: !64, line: 2073, baseType: !2355, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!135, !1104, !2073, !745}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2309, file: !64, line: 2074, baseType: !1134, size: 64, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2309, file: !64, line: 2076, baseType: !2360, size: 64, offset: 1024)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!135, !1855, !856}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2309, file: !64, line: 2077, baseType: !2360, size: 64, offset: 1088)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2309, file: !64, line: 2078, baseType: !2360, size: 64, offset: 1152)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2309, file: !64, line: 2079, baseType: !2360, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2309, file: !64, line: 2081, baseType: !2367, size: 64, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!1045, !1104, !135, !745, !1048, !543}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2309, file: !64, line: 2082, baseType: !2371, size: 64, offset: 1344)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!1045, !1104, !135, !735, !1048, !543}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2309, file: !64, line: 2083, baseType: !2375, size: 64, offset: 1408)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2378, !891}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2406, !2407, !2408}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2380, file: !69, line: 297, baseType: !585, size: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2380, file: !69, line: 298, baseType: !191, size: 128, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2380, file: !69, line: 299, baseType: !191, size: 128, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2380, file: !69, line: 300, baseType: !191, size: 128, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2380, file: !69, line: 301, baseType: !531, size: 256, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2380, file: !69, line: 302, baseType: !485, size: 32, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2380, file: !69, line: 303, baseType: !130, size: 32, offset: 800)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2380, file: !69, line: 304, baseType: !1104, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2380, file: !69, line: 305, baseType: !2391, size: 64, offset: 896)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2392)
!2392 = !{!2393, !2405}
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !69, line: 69, baseType: !2394, size: 32)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !69, line: 69, size: 32, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2394, file: !69, line: 70, baseType: !613, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2394, file: !69, line: 71, baseType: !631, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2394, file: !69, line: 72, baseType: !2399, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2400, line: 24, baseType: !2401)
!2400 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2400, line: 22, size: 32, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2401, file: !2400, line: 23, baseType: !2404, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2400, line: 20, baseType: !619)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2380, file: !69, line: 306, baseType: !543, size: 64, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2380, file: !69, line: 307, baseType: !113, size: 64, offset: 1024)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2380, file: !69, line: 308, baseType: !2409, size: 576, offset: 1088)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2410)
!2410 = !{!2411, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2409, file: !69, line: 206, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !204)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2409, file: !69, line: 207, baseType: !2412, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2409, file: !69, line: 208, baseType: !2412, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2409, file: !69, line: 209, baseType: !2412, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2409, file: !69, line: 210, baseType: !2412, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2409, file: !69, line: 211, baseType: !2412, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2409, file: !69, line: 212, baseType: !2412, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2409, file: !69, line: 213, baseType: !688, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2409, file: !69, line: 214, baseType: !688, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2309, file: !64, line: 2085, baseType: !2422, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1006, !1104, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2427, line: 15, size: 256, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2428 = !{!2429, !2430, !2431, !2432, !2433}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2426, file: !2427, line: 16, baseType: !1100, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2426, file: !2427, line: 19, baseType: !135, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2426, file: !2427, line: 26, baseType: !113, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2426, file: !2427, line: 33, baseType: !113, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2426, file: !2427, line: 36, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2309, file: !64, line: 2087, baseType: !2422, size: 64, offset: 1536)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2309, file: !64, line: 2089, baseType: !1134, size: 64, offset: 1600)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1105, file: !64, line: 1198, baseType: !2439, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2442)
!2442 = !{!2443, !2447, !2451, !2455, !2456, !2457, !2458, !2459, !2464, !2469, !2473}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2441, file: !69, line: 325, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!135, !2379}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2441, file: !69, line: 326, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2379, !1104, !135}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2441, file: !69, line: 327, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2379}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2441, file: !69, line: 328, baseType: !2444, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2441, file: !69, line: 329, baseType: !2444, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2441, file: !69, line: 330, baseType: !2444, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2441, file: !69, line: 331, baseType: !2335, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2441, file: !69, line: 334, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2463, !891}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2441, file: !69, line: 335, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!135, !891, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2441, file: !69, line: 337, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!135, !891, !2463}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2441, file: !69, line: 339, baseType: !2474, size: 64, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!135, !1104, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1105, file: !64, line: 1199, baseType: !2479, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2482)
!2482 = !{!2483, !2487, !2488, !2492, !2493, !2494, !2509, !2532, !2536, !2537, !2560}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2481, file: !69, line: 431, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!135, !1104, !135, !135, !1014}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2481, file: !69, line: 432, baseType: !2335, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2481, file: !69, line: 433, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!135, !1104, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2481, file: !69, line: 434, baseType: !2489, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2481, file: !69, line: 435, baseType: !2335, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2481, file: !69, line: 436, baseType: !2495, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!135, !1104, !135, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2499, file: !69, line: 418, baseType: !135, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2499, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2499, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2499, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2499, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2499, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2499, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2499, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2481, file: !69, line: 437, baseType: !2510, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!135, !1104, !2391, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2514, file: !69, line: 346, baseType: !135, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2514, file: !69, line: 347, baseType: !186, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2514, file: !69, line: 348, baseType: !186, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2514, file: !69, line: 349, baseType: !186, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2514, file: !69, line: 350, baseType: !186, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2514, file: !69, line: 351, baseType: !186, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2514, file: !69, line: 352, baseType: !186, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2514, file: !69, line: 353, baseType: !202, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2514, file: !69, line: 355, baseType: !202, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2514, file: !69, line: 356, baseType: !135, size: 32, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2514, file: !69, line: 357, baseType: !135, size: 32, offset: 608)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2514, file: !69, line: 358, baseType: !186, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2514, file: !69, line: 359, baseType: !186, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2514, file: !69, line: 360, baseType: !186, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2514, file: !69, line: 361, baseType: !202, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2514, file: !69, line: 362, baseType: !135, size: 32, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2481, file: !69, line: 438, baseType: !2533, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!135, !1104, !2477, !2513}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2481, file: !69, line: 440, baseType: !2510, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2481, file: !69, line: 441, baseType: !2538, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!135, !1104, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2542, file: !69, line: 412, baseType: !7, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2542, file: !69, line: 413, baseType: !2546, size: 1344, offset: 64)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 1344, elements: !569)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2559}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !69, line: 398, baseType: !7, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2547, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2547, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2547, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2547, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2547, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2547, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2547, file: !69, line: 406, baseType: !188, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2547, file: !69, line: 407, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 132, baseType: !186)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2547, file: !69, line: 408, baseType: !2558, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2481, file: !69, line: 442, baseType: !2489, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1105, file: !64, line: 1200, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1105, file: !64, line: 1201, baseType: !113, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1105, file: !64, line: 1202, baseType: !113, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1105, file: !64, line: 1203, baseType: !113, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1105, file: !64, line: 1204, baseType: !856, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1105, file: !64, line: 1205, baseType: !672, size: 320, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1105, file: !64, line: 1206, baseType: !135, size: 32, offset: 1216)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1105, file: !64, line: 1207, baseType: !130, size: 32, offset: 1248)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1105, file: !64, line: 1209, baseType: !123, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1105, file: !64, line: 1211, baseType: !2574, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2577)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1105, file: !64, line: 1223, baseType: !2579, size: 64, offset: 1408)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !868, line: 34, size: 64, elements: !2580)
!2580 = !{!2581}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2579, file: !868, line: 35, baseType: !871, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1105, file: !64, line: 1224, baseType: !191, size: 128, offset: 1472)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1105, file: !64, line: 1225, baseType: !2584, size: 64, offset: 1600)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1105, file: !64, line: 1226, baseType: !2587, size: 64, offset: 1664)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1105, file: !64, line: 1227, baseType: !2590, size: 64, offset: 1728)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1105, file: !64, line: 1228, baseType: !2593, size: 64, offset: 1792)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1105, file: !64, line: 1229, baseType: !585, size: 128, offset: 1856)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1105, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1105, file: !64, line: 1231, baseType: !2598, size: 2496, offset: 2048)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2604, !2636}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !69, line: 522, baseType: !7, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2598, file: !69, line: 523, baseType: !672, size: 320, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2598, file: !69, line: 524, baseType: !2603, size: 192, offset: 384)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 192, elements: !569)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2598, file: !69, line: 525, baseType: !2605, size: 1728, offset: 576)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 1728, elements: !569)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2607)
!2607 = !{!2608, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2606, file: !69, line: 223, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2611)
!2611 = !{!2612, !2613, !2626, !2627}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2610, file: !69, line: 446, baseType: !135, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2610, file: !69, line: 447, baseType: !2614, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2616, file: !69, line: 313, baseType: !2335, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2616, file: !69, line: 314, baseType: !2335, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2616, file: !69, line: 315, baseType: !2335, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2616, file: !69, line: 316, baseType: !2335, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2616, file: !69, line: 317, baseType: !2444, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2616, file: !69, line: 318, baseType: !2444, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2616, file: !69, line: 319, baseType: !2444, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2616, file: !69, line: 320, baseType: !2474, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2610, file: !69, line: 448, baseType: !1138, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2610, file: !69, line: 449, baseType: !2609, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2606, file: !69, line: 224, baseType: !135, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2606, file: !69, line: 226, baseType: !191, size: 128, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2606, file: !69, line: 227, baseType: !113, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2606, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2606, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2606, file: !69, line: 230, baseType: !2412, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2606, file: !69, line: 231, baseType: !2412, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2606, file: !69, line: 232, baseType: !123, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2598, file: !69, line: 526, baseType: !2637, size: 192, offset: 2304)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 192, elements: !569)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1105, file: !64, line: 1233, baseType: !2639, size: 2368, offset: 4544)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2640)
!2640 = !{!2641, !2642, !2643}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2639, file: !64, line: 1185, baseType: !157, size: 16)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2639, file: !64, line: 1186, baseType: !157, size: 16, offset: 16)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2639, file: !64, line: 1187, baseType: !2644, size: 2304, offset: 64)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 2304, elements: !569)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2646, line: 12, size: 768, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2647 = !{!2648, !2656, !2657, !2662, !2663}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2645, file: !2646, line: 13, baseType: !2649, size: 384)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2650, line: 17, size: 384, elements: !2651)
!2650 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2651 = !{!2652, !2653, !2654, !2655}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2649, file: !2650, line: 18, baseType: !135, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2649, file: !2650, line: 19, baseType: !135, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2649, file: !2650, line: 20, baseType: !594, size: 192, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2649, file: !2650, line: 22, baseType: !511, size: 128, align: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2645, file: !2646, line: 14, baseType: !2025, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2645, file: !2646, line: 15, baseType: !2658, size: 64, offset: 448)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2659, line: 16, size: 64, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2658, file: !2659, line: 17, baseType: !104, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2645, file: !2646, line: 16, baseType: !594, size: 192, offset: 512)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2645, file: !2646, line: 17, baseType: !130, size: 32, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1105, file: !64, line: 1240, baseType: !123, size: 64, offset: 6912)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1105, file: !64, line: 1243, baseType: !116, size: 32, offset: 6976)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1105, file: !64, line: 1245, baseType: !688, size: 64, offset: 7040)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1105, file: !64, line: 1246, baseType: !688, size: 64, offset: 7104)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1105, file: !64, line: 1248, baseType: !118, size: 32, offset: 7168)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1105, file: !64, line: 1249, baseType: !2670, size: 64, offset: 7232)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1105, file: !64, line: 1252, baseType: !2673, size: 256, offset: 7296)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 256, elements: !2674)
!2674 = !{!2675}
!2675 = !DISubrange(count: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1105, file: !64, line: 1253, baseType: !2677, size: 128, offset: 7552)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2678, line: 21, baseType: !2679)
!2678 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2678, line: 19, size: 128, elements: !2680)
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2679, file: !2678, line: 20, baseType: !2682, size: 128)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 16)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1105, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1105, file: !64, line: 1261, baseType: !531, size: 256, offset: 7744)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1105, file: !64, line: 1267, baseType: !735, size: 64, offset: 8000)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1105, file: !64, line: 1269, baseType: !2689, size: 64, offset: 8064)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2691)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !858, line: 128, size: 1024, align: 512, elements: !2692)
!2692 = !{!2693, !2697, !2698, !2705, !2711, !2715, !2719, !2723, !2724, !2728, !2732, !2737, !2741}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2691, file: !858, line: 129, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!135, !856, !7}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2691, file: !858, line: 130, baseType: !2694, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2691, file: !858, line: 131, baseType: !2699, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!135, !2702, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2691, file: !858, line: 132, baseType: !2706, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!135, !2702, !7, !735, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2691, file: !858, line: 134, baseType: !2712, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!135, !2702}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2691, file: !858, line: 135, baseType: !2716, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!135, !856}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2691, file: !858, line: 136, baseType: !2720, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !856}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2691, file: !858, line: 137, baseType: !2720, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2691, file: !858, line: 138, baseType: !2725, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !856, !891}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2691, file: !858, line: 139, baseType: !2729, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!745, !856, !745, !135}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2691, file: !858, line: 140, baseType: !2733, size: 64, offset: 640)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!851, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2691, file: !858, line: 141, baseType: !2738, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!135, !1014, !732}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2691, file: !858, line: 142, baseType: !2742, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!856, !856, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1105, file: !64, line: 1271, baseType: !2748, size: 448, offset: 8128)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2427, line: 63, size: 448, elements: !2749)
!2749 = !{!2750, !2755, !2756, !2757, !2758, !2759, !2760}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2748, file: !2427, line: 64, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!113, !2754, !2425}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2748, file: !2427, line: 66, baseType: !2751, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2748, file: !2427, line: 69, baseType: !1006, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2748, file: !2427, line: 70, baseType: !135, size: 32, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2748, file: !2427, line: 71, baseType: !7, size: 32, offset: 224)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2748, file: !2427, line: 74, baseType: !191, size: 128, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2748, file: !2427, line: 85, baseType: !2761, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1105, file: !64, line: 1274, baseType: !524, size: 64, offset: 8576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1105, file: !64, line: 1280, baseType: !524, size: 64, offset: 8640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1105, file: !64, line: 1283, baseType: !135, size: 32, offset: 8704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1105, file: !64, line: 1286, baseType: !1752, size: 32, offset: 8736)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1105, file: !64, line: 1289, baseType: !2248, size: 64, offset: 8768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1105, file: !64, line: 1290, baseType: !581, size: 64, offset: 8832)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1105, file: !64, line: 1297, baseType: !818, size: 64, offset: 8896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1105, file: !64, line: 1304, baseType: !2770, size: 64, offset: 8960)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2771, line: 49, size: 64, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2770, file: !2771, line: 50, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2771, line: 41, size: 512, align: 512, elements: !2776)
!2776 = !{!2777, !2778, !2783}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2775, file: !2771, line: 43, baseType: !485, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2775, file: !2771, line: 45, baseType: !2779, size: 192, offset: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2771, line: 29, size: 192, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2771, line: 30, baseType: !191, size: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2779, file: !2771, line: 32, baseType: !1006, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2775, file: !2771, line: 46, baseType: !1006, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1105, file: !64, line: 1305, baseType: !2770, size: 64, offset: 9024)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1105, file: !64, line: 1306, baseType: !511, size: 128, align: 64, offset: 9088)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1105, file: !64, line: 1307, baseType: !2187, size: 256, offset: 9216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1105, file: !64, line: 1309, baseType: !531, size: 256, offset: 9472)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1105, file: !64, line: 1314, baseType: !135, size: 32, offset: 9728)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1105, file: !64, line: 1317, baseType: !485, size: 32, align: 512, offset: 10240)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1105, file: !64, line: 1318, baseType: !191, size: 128, offset: 10304)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1105, file: !64, line: 1320, baseType: !485, size: 32, offset: 10432)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1105, file: !64, line: 1321, baseType: !191, size: 128, offset: 10496)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !892, file: !64, line: 656, baseType: !1255, size: 64, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !892, file: !64, line: 659, baseType: !123, size: 64, offset: 576)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !892, file: !64, line: 663, baseType: !113, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !64, line: 671, baseType: !2797, size: 32, offset: 704)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !64, line: 671, size: 32, elements: !2798)
!2798 = !{!2799, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2797, file: !64, line: 672, baseType: !2800, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2797, file: !64, line: 673, baseType: !7, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !892, file: !64, line: 675, baseType: !966, size: 32, offset: 736)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !892, file: !64, line: 676, baseType: !543, size: 64, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !892, file: !64, line: 677, baseType: !1002, size: 128, offset: 832)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !892, file: !64, line: 678, baseType: !1002, size: 128, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !892, file: !64, line: 679, baseType: !1002, size: 128, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !892, file: !64, line: 680, baseType: !485, size: 32, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !892, file: !64, line: 681, baseType: !157, size: 16, offset: 1248)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !892, file: !64, line: 682, baseType: !301, size: 8, offset: 1264)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !892, file: !64, line: 683, baseType: !301, size: 8, offset: 1272)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !892, file: !64, line: 684, baseType: !2558, size: 64, offset: 1280)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !892, file: !64, line: 691, baseType: !113, size: 64, offset: 1344)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !892, file: !64, line: 692, baseType: !672, size: 320, offset: 1408)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !892, file: !64, line: 694, baseType: !113, size: 64, offset: 1728)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !892, file: !64, line: 695, baseType: !113, size: 64, offset: 1792)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !892, file: !64, line: 697, baseType: !585, size: 128, offset: 1856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !892, file: !64, line: 698, baseType: !191, size: 128, offset: 1984)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !892, file: !64, line: 707, baseType: !191, size: 128, offset: 2112)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !892, file: !64, line: 708, baseType: !191, size: 128, offset: 2240)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !64, line: 709, baseType: !2821, size: 128, offset: 2368)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !64, line: 709, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2821, file: !64, line: 710, baseType: !581, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2821, file: !64, line: 711, baseType: !511, size: 128, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !892, file: !64, line: 713, baseType: !526, size: 64, offset: 2496)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !892, file: !64, line: 714, baseType: !526, size: 64, offset: 2560)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !892, file: !64, line: 715, baseType: !130, size: 32, offset: 2624)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !892, file: !64, line: 716, baseType: !130, size: 32, offset: 2656)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !892, file: !64, line: 717, baseType: !130, size: 32, offset: 2688)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !892, file: !64, line: 719, baseType: !130, size: 32, offset: 2720)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !64, line: 721, baseType: !2832, size: 64, offset: 2752)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !64, line: 721, size: 64, elements: !2833)
!2833 = !{!2834, !2960}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2832, file: !64, line: 722, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !2838)
!2838 = !{!2839, !2840, !2844, !2848, !2852, !2853, !2854, !2860, !2873, !2877, !2881, !2882, !2886, !2887, !2891, !2896, !2897, !2901, !2905, !2911, !2912, !2916, !2917, !2923, !2927, !2928, !2933, !2937, !2941, !2945, !2949, !2950, !2956}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2837, file: !64, line: 1915, baseType: !1138, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2837, file: !64, line: 1916, baseType: !2841, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!543, !503, !543, !135}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2837, file: !64, line: 1917, baseType: !2845, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!1045, !503, !745, !1048, !1879}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2837, file: !64, line: 1918, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!1045, !503, !735, !1048, !1879}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2837, file: !64, line: 1919, baseType: !1686, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2837, file: !64, line: 1920, baseType: !1686, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2837, file: !64, line: 1921, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!135, !1689, !2858, !7}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2837, file: !64, line: 1923, baseType: !2861, size: 64, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!135, !503, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !2866)
!2866 = !{!2867, !2872}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2865, file: !64, line: 1859, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !2869)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!732, !2864, !735, !135, !543, !186, !7}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2865, file: !64, line: 1860, baseType: !543, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2837, file: !64, line: 1924, baseType: !2874, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!1899, !503, !1901}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2837, file: !64, line: 1925, baseType: !2878, size: 64, offset: 576)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!1006, !503, !7, !113}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2837, file: !64, line: 1926, baseType: !2878, size: 64, offset: 640)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2837, file: !64, line: 1927, baseType: !2883, size: 64, offset: 704)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!135, !503, !1395}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2837, file: !64, line: 1928, baseType: !113, size: 64, offset: 768)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2837, file: !64, line: 1929, baseType: !2888, size: 64, offset: 832)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!135, !891, !503}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2837, file: !64, line: 1930, baseType: !2892, size: 64, offset: 896)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!135, !503, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !123)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2837, file: !64, line: 1931, baseType: !2888, size: 64, offset: 960)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2837, file: !64, line: 1932, baseType: !2898, size: 64, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!135, !503, !543, !543, !135}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2837, file: !64, line: 1933, baseType: !2902, size: 64, offset: 1088)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!135, !135, !503, !135}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2837, file: !64, line: 1934, baseType: !2906, size: 64, offset: 1152)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!135, !503, !135, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2837, file: !64, line: 1935, baseType: !500, size: 64, offset: 1216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2837, file: !64, line: 1936, baseType: !2913, size: 64, offset: 1280)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!135, !135}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2837, file: !64, line: 1937, baseType: !2906, size: 64, offset: 1344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2837, file: !64, line: 1938, baseType: !2918, size: 64, offset: 1408)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!1045, !2921, !503, !1879, !1048, !7}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !106, line: 59, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2837, file: !64, line: 1939, baseType: !2924, size: 64, offset: 1472)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!1045, !503, !1879, !2921, !1048, !7}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2837, file: !64, line: 1940, baseType: !1742, size: 64, offset: 1536)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2837, file: !64, line: 1941, baseType: !2929, size: 64, offset: 1600)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!135, !503, !135, !2932, !1663}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2837, file: !64, line: 1942, baseType: !2934, size: 64, offset: 1664)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!1006, !503, !135, !543, !543}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2837, file: !64, line: 1944, baseType: !2938, size: 64, offset: 1728)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !1855, !503}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2837, file: !64, line: 1948, baseType: !2942, size: 64, offset: 1792)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!1045, !503, !543, !503, !543, !1048, !7}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2837, file: !64, line: 1950, baseType: !2946, size: 64, offset: 1856)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!543, !503, !543, !503, !543, !543, !7}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2837, file: !64, line: 1953, baseType: !2898, size: 64, offset: 1920)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2837, file: !64, line: 1954, baseType: !2951, size: 64, offset: 1984)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!135, !2954, !7}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2837, file: !64, line: 1955, baseType: !2957, size: 64, offset: 2048)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!135, !2954, !2858, !7}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2832, file: !64, line: 723, baseType: !2316, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !892, file: !64, line: 725, baseType: !2962, size: 64, offset: 2816)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !892, file: !64, line: 726, baseType: !1256, size: 1536, align: 64, offset: 2880)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !892, file: !64, line: 727, baseType: !191, size: 128, offset: 4416)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !64, line: 728, baseType: !2967, size: 64, offset: 4544)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !64, line: 728, size: 64, elements: !2968)
!2968 = !{!2969, !2970, !2973, !2974}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2967, file: !64, line: 729, baseType: !2921, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2967, file: !64, line: 730, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2967, file: !64, line: 731, baseType: !745, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2967, file: !64, line: 732, baseType: !7, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !892, file: !64, line: 735, baseType: !118, size: 32, offset: 4608)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !892, file: !64, line: 738, baseType: !118, size: 32, offset: 4640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !892, file: !64, line: 739, baseType: !2670, size: 64, offset: 4672)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !892, file: !64, line: 750, baseType: !123, size: 64, offset: 4736)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !857, file: !858, line: 91, baseType: !2980, size: 256, offset: 448)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !2674)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !857, file: !858, line: 94, baseType: !2982, size: 64, offset: 704)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2983, line: 25, size: 64, elements: !2984)
!2983 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2984 = !{!2985}
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !2983, line: 26, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2982, file: !2983, line: 26, size: 64, elements: !2987)
!2987 = !{!2988, !2989}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2986, file: !2983, line: 28, baseType: !187, size: 64, align: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, scope: !2986, file: !2983, line: 30, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2983, line: 30, size: 64, elements: !2991)
!2991 = !{!2992, !2993}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2990, file: !2983, line: 31, baseType: !485, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2990, file: !2983, line: 32, baseType: !135, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !857, file: !858, line: 95, baseType: !2689, size: 64, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !857, file: !858, line: 96, baseType: !1104, size: 64, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !857, file: !858, line: 97, baseType: !113, size: 64, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !857, file: !858, line: 98, baseType: !123, size: 64, offset: 960)
!2998 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 100, baseType: !2999, size: 128, offset: 1024)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 100, size: 128, elements: !3000)
!3000 = !{!3001, !3002}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2999, file: !858, line: 101, baseType: !191, size: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2999, file: !858, line: 102, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !857, file: !858, line: 104, baseType: !191, size: 128, offset: 1152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !857, file: !858, line: 105, baseType: !191, size: 128, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !857, file: !858, line: 113, baseType: !3007, size: 128, offset: 1408)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 109, size: 128, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3007, file: !858, line: 110, baseType: !585, size: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3007, file: !858, line: 111, baseType: !867, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3007, file: !858, line: 112, baseType: !511, size: 128, align: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !852, file: !853, line: 72, baseType: !1104, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !852, file: !853, line: 73, baseType: !135, size: 32, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !852, file: !853, line: 74, baseType: !931, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !847, file: !848, line: 10, baseType: !856, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !504, file: !64, line: 1015, baseType: !891, size: 64, offset: 1344)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !504, file: !64, line: 1016, baseType: !2835, size: 64, offset: 1408)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !504, file: !64, line: 1018, baseType: !186, size: 64, offset: 1472)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !504, file: !64, line: 1020, baseType: !123, size: 64, offset: 1536)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !504, file: !64, line: 1023, baseType: !123, size: 64, offset: 1600)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !504, file: !64, line: 1027, baseType: !3022, size: 64, offset: 1664)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !504, file: !64, line: 1029, baseType: !1255, size: 64, offset: 1728)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !504, file: !64, line: 1030, baseType: !1752, size: 32, offset: 1792)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !504, file: !64, line: 1031, baseType: !1752, size: 32, offset: 1824)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !471, file: !35, line: 756, baseType: !113, size: 64, offset: 704)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !471, file: !35, line: 757, baseType: !113, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !471, file: !35, line: 760, baseType: !113, size: 64, offset: 832)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !471, file: !35, line: 761, baseType: !113, size: 64, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !471, file: !35, line: 763, baseType: !113, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !471, file: !35, line: 764, baseType: !3032, size: 64, offset: 1024)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1410, line: 299, baseType: !3034)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 299, size: 64, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3034, file: !1410, line: 299, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1415, line: 18, baseType: !113)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !471, file: !35, line: 773, baseType: !130, size: 32, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !471, file: !35, line: 785, baseType: !130, size: 32, offset: 1120)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !471, file: !35, line: 795, baseType: !3041, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !3043)
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3042, file: !35, line: 727, baseType: !186, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3042, file: !35, line: 728, baseType: !135, size: 32, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !471, file: !35, line: 801, baseType: !113, size: 64, offset: 1216)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !471, file: !35, line: 804, baseType: !524, size: 64, offset: 1280)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !471, file: !35, line: 806, baseType: !135, size: 32, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !471, file: !35, line: 808, baseType: !485, size: 32, offset: 1376)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !471, file: !35, line: 823, baseType: !672, size: 320, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !471, file: !35, line: 825, baseType: !191, size: 128, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !471, file: !35, line: 845, baseType: !135, size: 32, offset: 1856)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !471, file: !35, line: 849, baseType: !113, size: 64, offset: 1920)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !471, file: !35, line: 850, baseType: !113, size: 64, offset: 1984)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !471, file: !35, line: 852, baseType: !113, size: 64, offset: 2048)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !471, file: !35, line: 853, baseType: !113, size: 64, offset: 2112)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !471, file: !35, line: 854, baseType: !526, size: 64, offset: 2176)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !471, file: !35, line: 855, baseType: !113, size: 64, offset: 2240)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !471, file: !35, line: 856, baseType: !113, size: 64, offset: 2304)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !471, file: !35, line: 857, baseType: !113, size: 64, offset: 2368)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !471, file: !35, line: 858, baseType: !113, size: 64, offset: 2432)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !471, file: !35, line: 865, baseType: !341, size: 32, offset: 2496)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !471, file: !35, line: 867, baseType: !485, size: 32, offset: 2528)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !471, file: !35, line: 869, baseType: !113, size: 64, offset: 2560)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !471, file: !35, line: 869, baseType: !113, size: 64, offset: 2624)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !471, file: !35, line: 869, baseType: !113, size: 64, offset: 2688)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !471, file: !35, line: 869, baseType: !113, size: 64, offset: 2752)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !471, file: !35, line: 870, baseType: !113, size: 64, offset: 2816)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !471, file: !35, line: 870, baseType: !113, size: 64, offset: 2880)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !471, file: !35, line: 870, baseType: !113, size: 64, offset: 2944)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !471, file: !35, line: 871, baseType: !113, size: 64, offset: 3008)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !471, file: !35, line: 871, baseType: !113, size: 64, offset: 3072)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !471, file: !35, line: 871, baseType: !113, size: 64, offset: 3136)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !471, file: !35, line: 871, baseType: !113, size: 64, offset: 3200)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !471, file: !35, line: 873, baseType: !3076, size: 3328, offset: 3264)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !3077)
!3077 = !{!3078}
!3078 = !DISubrange(count: 52)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !471, file: !35, line: 875, baseType: !3080, size: 1280, offset: 6592)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 1280, elements: !590)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !471, file: !35, line: 877, baseType: !3082, size: 64, offset: 7872)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !471, file: !35, line: 880, baseType: !3085, size: 1088, offset: 7936)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3086, line: 72, baseType: !3087)
!3086 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3086, line: 23, size: 1088, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3096, !3097, !3098, !3099, !3124, !3125, !3126}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3087, file: !3086, line: 28, baseType: !186, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3087, file: !3086, line: 38, baseType: !526, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3087, file: !3086, line: 40, baseType: !113, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3087, file: !3086, line: 43, baseType: !672, size: 320, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3087, file: !3086, line: 44, baseType: !3094, size: 64, offset: 512)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3086, line: 44, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3087, file: !3086, line: 48, baseType: !113, size: 64, offset: 576)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3087, file: !3086, line: 59, baseType: !531, size: 256, offset: 640)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3087, file: !3086, line: 60, baseType: !123, size: 64, offset: 896)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3087, file: !3086, line: 61, baseType: !3100, size: 64, offset: 960)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3103, line: 13, size: 1216, elements: !3104)
!3103 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3102, file: !3103, line: 14, baseType: !123, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3102, file: !3103, line: 15, baseType: !113, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3102, file: !3103, line: 17, baseType: !113, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3102, file: !3103, line: 17, baseType: !113, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3102, file: !3103, line: 18, baseType: !113, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3102, file: !3103, line: 18, baseType: !113, size: 64, offset: 320)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3102, file: !3103, line: 19, baseType: !1791, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3102, file: !3103, line: 21, baseType: !1006, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3102, file: !3103, line: 23, baseType: !1006, size: 64, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3102, file: !3103, line: 24, baseType: !1006, size: 64, offset: 576)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3102, file: !3103, line: 25, baseType: !1006, size: 64, offset: 640)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3102, file: !3103, line: 26, baseType: !1006, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3102, file: !3103, line: 27, baseType: !1006, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3102, file: !3103, line: 28, baseType: !1006, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3102, file: !3103, line: 29, baseType: !1006, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3102, file: !3103, line: 30, baseType: !1006, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3102, file: !3103, line: 31, baseType: !1006, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3102, file: !3103, line: 32, baseType: !1006, size: 64, offset: 1088)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3102, file: !3103, line: 33, baseType: !1006, size: 64, offset: 1152)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3087, file: !3086, line: 63, baseType: !130, size: 32, offset: 1024)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3087, file: !3086, line: 69, baseType: !155, size: 16, offset: 1056)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3087, file: !3086, line: 70, baseType: !2080, size: 16, offset: 1072)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !35, line: 882, baseType: !113, size: 64, offset: 9024)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !471, file: !35, line: 885, baseType: !485, size: 32, offset: 9088)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !471, file: !35, line: 886, baseType: !3130, size: 64, offset: 9152)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !471, file: !35, line: 901, baseType: !818, size: 64, offset: 9216)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !471, file: !35, line: 904, baseType: !503, size: 64, offset: 9280)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !471, file: !35, line: 906, baseType: !3135, size: 64, offset: 9344)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !471, file: !35, line: 930, baseType: !130, size: 32, offset: 9408)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !471, file: !35, line: 933, baseType: !130, size: 32, offset: 9440)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !471, file: !35, line: 935, baseType: !3140, size: 64, offset: 9472)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !3141)
!3141 = !{!3142}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3140, file: !81, line: 104, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !471, file: !35, line: 940, baseType: !524, size: 64, offset: 9536)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !471, file: !35, line: 942, baseType: !2187, size: 256, offset: 9600)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !468, file: !35, line: 986, baseType: !3148, offset: 10240)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !609)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !105, file: !106, line: 882, baseType: !467, size: 64, offset: 9792)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !105, file: !106, line: 884, baseType: !135, size: 32, offset: 9856)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !105, file: !106, line: 885, baseType: !135, size: 32, offset: 9888)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !105, file: !106, line: 886, baseType: !135, size: 32, offset: 9920)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !105, file: !106, line: 888, baseType: !135, size: 32, offset: 9952)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !105, file: !106, line: 890, baseType: !113, size: 64, offset: 9984)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !105, file: !106, line: 893, baseType: !7, size: 32, offset: 10048)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !105, file: !106, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !105, file: !106, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !105, file: !106, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !105, file: !106, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !105, file: !106, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !105, file: !106, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !105, file: !106, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !105, file: !106, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !105, file: !106, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !105, file: !106, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !105, file: !106, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !105, file: !106, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !105, file: !106, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !105, file: !106, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !105, file: !106, line: 969, baseType: !113, size: 64, offset: 10176)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !105, file: !106, line: 971, baseType: !3172, size: 448, offset: 10240)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !3173)
!3173 = !{!3174, !3175, !3180}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3172, file: !75, line: 26, baseType: !113, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3172, file: !75, line: 27, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!1006, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !75, line: 28, baseType: !3181, size: 320, offset: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !75, line: 28, size: 320, elements: !3182)
!3182 = !{!3183, !3193, !3218}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3181, file: !75, line: 37, baseType: !3184, size: 320)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !75, line: 30, size: 320, elements: !3185)
!3185 = !{!3186, !3188, !3189, !3190, !3191, !3192}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3184, file: !75, line: 31, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3184, file: !75, line: 32, baseType: !116, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !75, line: 33, baseType: !116, size: 32, offset: 96)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3184, file: !75, line: 34, baseType: !116, size: 32, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3184, file: !75, line: 35, baseType: !186, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3184, file: !75, line: 36, baseType: !3187, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3181, file: !75, line: 47, baseType: !3194, size: 192)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !75, line: 39, size: 192, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3217}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3194, file: !75, line: 40, baseType: !332, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3194, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !75, line: 42, baseType: !3199, size: 64, offset: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !75, line: 42, size: 64, elements: !3200)
!3200 = !{!3201, !3209}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3199, file: !75, line: 43, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3204, line: 7, size: 128, elements: !3205)
!3204 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3205 = !{!3206, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3203, file: !3204, line: 8, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !334, line: 93, baseType: !204)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3203, file: !3204, line: 9, baseType: !204, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3199, file: !75, line: 44, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3212, line: 7, size: 64, elements: !3213)
!3212 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3213 = !{!3214, !3216}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3211, file: !3212, line: 8, baseType: !3215, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3212, line: 5, baseType: !664)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3211, file: !3212, line: 9, baseType: !664, size: 32, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3194, file: !75, line: 46, baseType: !186, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3181, file: !75, line: 55, baseType: !3219, size: 256)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !75, line: 49, size: 256, elements: !3220)
!3220 = !{!3221, !3224, !3225, !3226, !3227}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3219, file: !75, line: 50, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3219, file: !75, line: 51, baseType: !135, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3219, file: !75, line: 52, baseType: !135, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3219, file: !75, line: 53, baseType: !113, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3219, file: !75, line: 54, baseType: !113, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !105, file: !106, line: 973, baseType: !3229, size: 32, offset: 10688)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 27, baseType: !3230)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !334, line: 28, baseType: !135)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !105, file: !106, line: 974, baseType: !3229, size: 32, offset: 10720)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !105, file: !106, line: 978, baseType: !113, size: 64, offset: 10752)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !105, file: !106, line: 987, baseType: !104, size: 64, offset: 10816)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !106, line: 990, baseType: !104, size: 64, offset: 10880)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !105, file: !106, line: 995, baseType: !191, size: 128, offset: 10944)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !105, file: !106, line: 996, baseType: !191, size: 128, offset: 11072)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !105, file: !106, line: 997, baseType: !104, size: 64, offset: 11200)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !105, file: !106, line: 1005, baseType: !191, size: 128, offset: 11264)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !105, file: !106, line: 1006, baseType: !191, size: 128, offset: 11392)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !105, file: !106, line: 1009, baseType: !573, size: 64, offset: 11520)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !105, file: !106, line: 1010, baseType: !3242, size: 512, offset: 11584)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 512, elements: !590)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !105, file: !106, line: 1011, baseType: !191, size: 128, offset: 12096)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !105, file: !106, line: 1012, baseType: !191, size: 128, offset: 12224)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !105, file: !106, line: 1014, baseType: !1936, size: 64, offset: 12352)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !105, file: !106, line: 1017, baseType: !2073, size: 64, offset: 12416)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !105, file: !106, line: 1020, baseType: !2073, size: 64, offset: 12480)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !105, file: !106, line: 1023, baseType: !123, size: 64, offset: 12544)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !105, file: !106, line: 1025, baseType: !186, size: 64, offset: 12608)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !105, file: !106, line: 1026, baseType: !186, size: 64, offset: 12672)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !105, file: !106, line: 1031, baseType: !186, size: 64, offset: 12736)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !105, file: !106, line: 1032, baseType: !3253, size: 192, offset: 12800)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !106, line: 324, size: 192, elements: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3253, file: !106, line: 326, baseType: !186, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3253, file: !106, line: 327, baseType: !186, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3253, file: !106, line: 328, baseType: !284, size: 32, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !105, file: !106, line: 1041, baseType: !113, size: 64, offset: 12992)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !105, file: !106, line: 1042, baseType: !113, size: 64, offset: 13056)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !105, file: !106, line: 1045, baseType: !186, size: 64, offset: 13120)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !105, file: !106, line: 1048, baseType: !186, size: 64, offset: 13184)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !105, file: !106, line: 1051, baseType: !113, size: 64, offset: 13248)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !105, file: !106, line: 1052, baseType: !113, size: 64, offset: 13312)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !105, file: !106, line: 1055, baseType: !3265, size: 640, offset: 13376)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3266, line: 132, size: 640, elements: !3267)
!3266 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3267 = !{!3268, !3274, !3275}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3265, file: !3266, line: 133, baseType: !3269, size: 576)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 576, elements: !569)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3266, line: 117, size: 192, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3270, file: !3266, line: 118, baseType: !186, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3270, file: !3266, line: 119, baseType: !347, size: 128, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3265, file: !3266, line: 134, baseType: !7, size: 32, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3265, file: !3266, line: 135, baseType: !7, size: 32, offset: 608)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !105, file: !106, line: 1058, baseType: !3277, size: 448, offset: 14016)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3266, line: 144, size: 448, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3277, file: !3266, line: 145, baseType: !511, size: 128, align: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3277, file: !3266, line: 146, baseType: !531, size: 256, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3277, file: !3266, line: 147, baseType: !7, size: 32, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !105, file: !106, line: 1064, baseType: !623, size: 64, offset: 14464)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !105, file: !106, line: 1067, baseType: !623, size: 64, offset: 14528)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !105, file: !106, line: 1070, baseType: !623, size: 64, offset: 14592)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !105, file: !106, line: 1074, baseType: !656, size: 64, offset: 14656)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !105, file: !106, line: 1084, baseType: !3287, size: 128, offset: 14720)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 128, elements: !2683)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !105, file: !106, line: 1086, baseType: !3289, size: 64, offset: 14848)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !106, line: 55, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !105, file: !106, line: 1089, baseType: !3292, size: 64, offset: 14912)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3293, line: 12, size: 64, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3292, file: !3293, line: 13, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3293, line: 8, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !105, file: !106, line: 1090, baseType: !3299, size: 128, offset: 14976)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3300, line: 13, size: 128, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3299, file: !3300, line: 14, baseType: !191, size: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !105, file: !106, line: 1097, baseType: !3304, size: 64, offset: 15104)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !106, line: 50, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !105, file: !106, line: 1100, baseType: !3307, size: 64, offset: 15168)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !106, line: 1100, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !105, file: !106, line: 1103, baseType: !3310, size: 64, offset: 15232)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !106, line: 53, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !105, file: !106, line: 1107, baseType: !3313, size: 64, offset: 15296)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !106, line: 56, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !105, file: !106, line: 1110, baseType: !3316, size: 64, offset: 15360)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3318, line: 93, size: 8768, elements: !3319)
!3318 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3367, !3376, !3377, !3379, !3380, !3381, !3384, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3422, !3423, !3430, !3440, !3443, !3444, !3447, !3448, !3449, !3450, !3451, !3452}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3317, file: !3318, line: 94, baseType: !125, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3317, file: !3318, line: 95, baseType: !130, size: 32, offset: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3317, file: !3318, line: 96, baseType: !135, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3317, file: !3318, line: 97, baseType: !135, size: 32, offset: 96)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3317, file: !3318, line: 98, baseType: !191, size: 128, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3317, file: !3318, line: 100, baseType: !594, size: 192, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3317, file: !3318, line: 103, baseType: !104, size: 64, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3317, file: !3318, line: 106, baseType: !3328, size: 192, offset: 512)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !823, line: 32, size: 192, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3328, file: !823, line: 33, baseType: !191, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3328, file: !823, line: 34, baseType: !3332, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3333, line: 25, baseType: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3333, line: 23, size: 64, elements: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3334, file: !3333, line: 24, baseType: !418, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3317, file: !3318, line: 109, baseType: !581, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3317, file: !3318, line: 112, baseType: !135, size: 32, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3317, file: !3318, line: 114, baseType: !135, size: 32, offset: 800)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3317, file: !3318, line: 115, baseType: !104, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3317, file: !3318, line: 118, baseType: !135, size: 32, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3317, file: !3318, line: 119, baseType: !7, size: 32, offset: 928)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3317, file: !3318, line: 121, baseType: !3344, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3318, line: 80, size: 448, elements: !3346)
!3346 = !{!3347, !3348, !3354}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3345, file: !3318, line: 81, baseType: !130, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3345, file: !3318, line: 82, baseType: !3349, size: 128, offset: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3318, line: 75, size: 128, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3349, file: !3318, line: 76, baseType: !104, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3349, file: !3318, line: 77, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3345, file: !3318, line: 83, baseType: !1360, size: 256, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3317, file: !3318, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3317, file: !3318, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3317, file: !3318, line: 138, baseType: !7, size: 32, offset: 1056)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3317, file: !3318, line: 139, baseType: !191, size: 128, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3317, file: !3318, line: 142, baseType: !259, size: 512, offset: 1216)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3317, file: !3318, line: 143, baseType: !267, size: 64, offset: 1728)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3317, file: !3318, line: 150, baseType: !3362, size: 256, offset: 1792)
!3362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3363, size: 256, elements: !2063)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3318, line: 38, size: 128, elements: !3364)
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3363, file: !3318, line: 39, baseType: !186, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3363, file: !3318, line: 40, baseType: !186, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3317, file: !3318, line: 156, baseType: !3368, size: 192, offset: 2048)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3318, line: 66, size: 192, elements: !3369)
!3369 = !{!3370}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3368, file: !3318, line: 67, baseType: !3371, size: 192)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3318, line: 47, size: 192, elements: !3372)
!3372 = !{!3373, !3374, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3371, file: !3318, line: 48, baseType: !526, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3371, file: !3318, line: 49, baseType: !526, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3371, file: !3318, line: 50, baseType: !526, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3317, file: !3318, line: 160, baseType: !3265, size: 640, offset: 2240)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3317, file: !3318, line: 163, baseType: !3378, size: 256, offset: 2880)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 256, elements: !590)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3317, file: !3318, line: 169, baseType: !573, size: 64, offset: 3136)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3317, file: !3318, line: 172, baseType: !135, size: 32, offset: 3200)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3317, file: !3318, line: 174, baseType: !3382, size: 64, offset: 3264)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3318, line: 174, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3317, file: !3318, line: 185, baseType: !3385, size: 64, offset: 3328)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !337, line: 860, baseType: !3386)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 853, size: 64, elements: !3387)
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3386, file: !337, line: 858, baseType: !862, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3386, file: !337, line: 859, baseType: !485, size: 32, offset: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3317, file: !3318, line: 186, baseType: !186, size: 64, offset: 3392)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3317, file: !3318, line: 186, baseType: !186, size: 64, offset: 3456)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3317, file: !3318, line: 186, baseType: !186, size: 64, offset: 3520)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3317, file: !3318, line: 186, baseType: !186, size: 64, offset: 3584)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3317, file: !3318, line: 187, baseType: !186, size: 64, offset: 3648)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3317, file: !3318, line: 188, baseType: !186, size: 64, offset: 3712)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3317, file: !3318, line: 189, baseType: !3253, size: 192, offset: 3776)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3317, file: !3318, line: 190, baseType: !113, size: 64, offset: 3968)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3317, file: !3318, line: 190, baseType: !113, size: 64, offset: 4032)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3317, file: !3318, line: 190, baseType: !113, size: 64, offset: 4096)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3317, file: !3318, line: 190, baseType: !113, size: 64, offset: 4160)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3317, file: !3318, line: 191, baseType: !113, size: 64, offset: 4224)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3317, file: !3318, line: 191, baseType: !113, size: 64, offset: 4288)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3317, file: !3318, line: 191, baseType: !113, size: 64, offset: 4352)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3317, file: !3318, line: 191, baseType: !113, size: 64, offset: 4416)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3317, file: !3318, line: 192, baseType: !113, size: 64, offset: 4480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3317, file: !3318, line: 192, baseType: !113, size: 64, offset: 4544)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3317, file: !3318, line: 192, baseType: !113, size: 64, offset: 4608)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3317, file: !3318, line: 192, baseType: !113, size: 64, offset: 4672)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3317, file: !3318, line: 193, baseType: !113, size: 64, offset: 4736)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3317, file: !3318, line: 193, baseType: !113, size: 64, offset: 4800)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3317, file: !3318, line: 194, baseType: !3412, size: 448, offset: 4864)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3413, line: 12, size: 448, elements: !3414)
!3413 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3412, file: !3413, line: 15, baseType: !186, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3412, file: !3413, line: 17, baseType: !186, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3412, file: !3413, line: 19, baseType: !186, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3412, file: !3413, line: 21, baseType: !186, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3412, file: !3413, line: 29, baseType: !186, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3412, file: !3413, line: 35, baseType: !186, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3412, file: !3413, line: 44, baseType: !186, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3317, file: !3318, line: 202, baseType: !188, size: 64, offset: 5312)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3317, file: !3318, line: 213, baseType: !3424, size: 2048, offset: 5376)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3425, size: 2048, elements: !2683)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3426, line: 43, size: 128, elements: !3427)
!3426 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3425, file: !3426, line: 44, baseType: !1050, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3425, file: !3426, line: 45, baseType: !1050, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3317, file: !3318, line: 216, baseType: !3431, size: 448, offset: 7424)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3318, line: 30, size: 448, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3431, file: !3318, line: 31, baseType: !135, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3431, file: !3318, line: 32, baseType: !1006, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3431, file: !3318, line: 33, baseType: !113, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3431, file: !3318, line: 34, baseType: !186, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3431, file: !3318, line: 34, baseType: !186, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3431, file: !3318, line: 35, baseType: !113, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3431, file: !3318, line: 35, baseType: !113, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3317, file: !3318, line: 219, baseType: !3441, size: 64, offset: 7872)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3318, line: 219, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3317, file: !3318, line: 222, baseType: !7, size: 32, offset: 7936)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3317, file: !3318, line: 223, baseType: !3445, size: 64, offset: 8000)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3318, line: 223, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3317, file: !3318, line: 230, baseType: !732, size: 8, offset: 8064)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3317, file: !3318, line: 231, baseType: !700, size: 16, offset: 8080)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3317, file: !3318, line: 232, baseType: !700, size: 16, offset: 8096)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3317, file: !3318, line: 234, baseType: !467, size: 64, offset: 8128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3317, file: !3318, line: 237, baseType: !531, size: 256, offset: 8192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3317, file: !3318, line: 243, baseType: !672, size: 320, offset: 8448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !105, file: !106, line: 1111, baseType: !3454, size: 64, offset: 15424)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3318, line: 20, size: 16640, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3455, file: !3318, line: 21, baseType: !485, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3455, file: !3318, line: 22, baseType: !125, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3455, file: !3318, line: 23, baseType: !594, size: 192, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3455, file: !3318, line: 24, baseType: !3461, size: 16384, offset: 256)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3462, size: 16384, elements: !1194)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !823, line: 51, size: 256, elements: !3463)
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3462, file: !823, line: 52, baseType: !3465, size: 256)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !823, line: 37, size: 256, elements: !3466)
!3466 = !{!3467, !3474, !3475, !3479}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3465, file: !823, line: 39, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3469, line: 83, baseType: !3470)
!3469 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3469, line: 82, baseType: !3472)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !135}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3465, file: !823, line: 40, baseType: !113, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3465, file: !823, line: 46, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3469, line: 86, baseType: !3477)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3469, line: 85, baseType: !2291)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3465, file: !823, line: 48, baseType: !3332, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !105, file: !106, line: 1112, baseType: !3332, size: 64, offset: 15488)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !105, file: !106, line: 1113, baseType: !3332, size: 64, offset: 15552)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !105, file: !106, line: 1115, baseType: !3332, size: 64, offset: 15616)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !105, file: !106, line: 1116, baseType: !3328, size: 192, offset: 15680)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !105, file: !106, line: 1117, baseType: !113, size: 64, offset: 15872)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !105, file: !106, line: 1118, baseType: !1048, size: 64, offset: 15936)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !105, file: !106, line: 1119, baseType: !7, size: 32, offset: 16000)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !105, file: !106, line: 1121, baseType: !514, size: 64, offset: 16064)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !105, file: !106, line: 1125, baseType: !3489, size: 64, offset: 16128)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !106, line: 43, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !105, file: !106, line: 1127, baseType: !613, size: 32, offset: 16192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !105, file: !106, line: 1128, baseType: !7, size: 32, offset: 16224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !105, file: !106, line: 1130, baseType: !3494, size: 128, offset: 16256)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3495, line: 37, size: 128, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3494, file: !3495, line: 38, baseType: !135, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3494, file: !3495, line: 39, baseType: !130, size: 32, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3494, file: !3495, line: 40, baseType: !3500, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3495, line: 24, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !105, file: !106, line: 1131, baseType: !3503, size: 256, offset: 16384)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3504, line: 12, size: 256, elements: !3505)
!3504 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3503, file: !3504, line: 13, baseType: !745, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3503, file: !3504, line: 14, baseType: !113, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3503, file: !3504, line: 15, baseType: !113, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3503, file: !3504, line: 16, baseType: !732, size: 8, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !105, file: !106, line: 1134, baseType: !186, size: 64, offset: 16640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !105, file: !106, line: 1135, baseType: !186, size: 64, offset: 16704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !105, file: !106, line: 1138, baseType: !485, size: 32, offset: 16768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !105, file: !106, line: 1141, baseType: !284, size: 32, offset: 16800)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !105, file: !106, line: 1143, baseType: !3515, size: 64, offset: 16832)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !106, line: 735, size: 64, elements: !3516)
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3515, file: !106, line: 736, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !105, file: !106, line: 1147, baseType: !350, size: 128, offset: 16896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !105, file: !106, line: 1149, baseType: !104, size: 64, offset: 17024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !105, file: !106, line: 1151, baseType: !3522, size: 64, offset: 17088)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !106, line: 1151, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !105, file: !106, line: 1188, baseType: !123, size: 64, offset: 17152)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !105, file: !106, line: 1191, baseType: !3526, size: 64, offset: 17216)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !106, line: 44, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !105, file: !106, line: 1194, baseType: !3529, size: 64, offset: 17280)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !106, line: 45, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !105, file: !106, line: 1197, baseType: !3532, size: 64, offset: 17344)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !106, line: 61, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !105, file: !106, line: 1199, baseType: !3535, size: 64, offset: 17408)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3537, line: 99, size: 128, elements: !3538)
!3537 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3538 = !{!3539, !3540, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3536, file: !3537, line: 100, baseType: !524, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3536, file: !3537, line: 101, baseType: !130, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3536, file: !3537, line: 103, baseType: !157, size: 16, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !105, file: !106, line: 1202, baseType: !3543, size: 64, offset: 17472)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !106, line: 48, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !105, file: !106, line: 1205, baseType: !113, size: 64, offset: 17536)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !105, file: !106, line: 1206, baseType: !3547, size: 64, offset: 17600)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !823, line: 14, baseType: !3549)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !823, line: 12, size: 384, elements: !3550)
!3550 = !{!3551}
!3551 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !823, line: 13, baseType: !3552, size: 384)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3549, file: !823, line: 13, size: 384, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3552, file: !823, line: 13, baseType: !135, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3552, file: !823, line: 13, baseType: !135, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3552, file: !823, line: 13, baseType: !135, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3552, file: !823, line: 13, baseType: !3558, size: 256, offset: 128)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3559, line: 37, size: 256, elements: !3560)
!3559 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3560 = !{!3561, !3566, !3579, !3585, !3594, !3621, !3626}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3558, file: !3559, line: 42, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 39, size: 64, elements: !3563)
!3563 = !{!3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3562, file: !3559, line: 40, baseType: !3230, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3562, file: !3559, line: 41, baseType: !619, size: 32, offset: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3558, file: !3559, line: 50, baseType: !3567, size: 192)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 45, size: 192, elements: !3568)
!3568 = !{!3569, !3571, !3572, !3578}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3567, file: !3559, line: 46, baseType: !3570, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !334, line: 95, baseType: !135)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3567, file: !3559, line: 47, baseType: !135, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3567, file: !3559, line: 48, baseType: !3573, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3559, line: 11, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3559, line: 8, size: 64, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3574, file: !3559, line: 9, baseType: !135, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3574, file: !3559, line: 10, baseType: !123, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3567, file: !3559, line: 49, baseType: !135, size: 32, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3558, file: !3559, line: 57, baseType: !3580, size: 128)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 53, size: 128, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3580, file: !3559, line: 54, baseType: !3230, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3580, file: !3559, line: 55, baseType: !619, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3580, file: !3559, line: 56, baseType: !3573, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3558, file: !3559, line: 66, baseType: !3586, size: 256)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 60, size: 256, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3593}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3586, file: !3559, line: 61, baseType: !3230, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3586, file: !3559, line: 62, baseType: !619, size: 32, offset: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3586, file: !3559, line: 63, baseType: !135, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3586, file: !3559, line: 64, baseType: !3592, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !334, line: 94, baseType: !1047)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3586, file: !3559, line: 65, baseType: !3592, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3558, file: !3559, line: 105, baseType: !3595, size: 256)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 69, size: 256, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3595, file: !3559, line: 70, baseType: !123, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3559, line: 79, baseType: !3599, size: 192, offset: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3559, line: 79, size: 192, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3610, !3615}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3599, file: !3559, line: 81, baseType: !135, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3599, file: !3559, line: 86, baseType: !700, size: 16)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3599, file: !3559, line: 92, baseType: !3604, size: 192)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3559, line: 88, size: 192, elements: !3605)
!3605 = !{!3606, !3608, !3609}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3604, file: !3559, line: 89, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 64, elements: !328)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3604, file: !3559, line: 90, baseType: !123, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3604, file: !3559, line: 91, baseType: !123, size: 64, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3599, file: !3559, line: 97, baseType: !3611, size: 96)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3559, line: 94, size: 96, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3611, file: !3559, line: 95, baseType: !3607, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3611, file: !3559, line: 96, baseType: !118, size: 32, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3599, file: !3559, line: 103, baseType: !3616, size: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3559, line: 99, size: 128, elements: !3617)
!3617 = !{!3618, !3619, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3616, file: !3559, line: 100, baseType: !113, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3616, file: !3559, line: 101, baseType: !118, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3616, file: !3559, line: 102, baseType: !118, size: 32, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3558, file: !3559, line: 111, baseType: !3622, size: 128)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 108, size: 128, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3622, file: !3559, line: 109, baseType: !1006, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3622, file: !3559, line: 110, baseType: !135, size: 32, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3558, file: !3559, line: 118, baseType: !3627, size: 128)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3559, line: 114, size: 128, elements: !3628)
!3628 = !{!3629, !3630, !3631}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3627, file: !3559, line: 115, baseType: !123, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3627, file: !3559, line: 116, baseType: !135, size: 32, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3627, file: !3559, line: 117, baseType: !7, size: 32, offset: 96)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !105, file: !106, line: 1208, baseType: !3412, size: 448, offset: 17664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !105, file: !106, line: 1215, baseType: !186, size: 64, offset: 18112)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !105, file: !106, line: 1217, baseType: !186, size: 64, offset: 18176)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !105, file: !106, line: 1219, baseType: !186, size: 64, offset: 18240)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !105, file: !106, line: 1223, baseType: !3637, size: 64, offset: 18304)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3638, line: 99, baseType: !3639)
!3638 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3638, line: 99, size: 64, elements: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3639, file: !3638, line: 99, baseType: !418, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !105, file: !106, line: 1225, baseType: !862, size: 32, offset: 18368)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !105, file: !106, line: 1226, baseType: !135, size: 32, offset: 18400)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !105, file: !106, line: 1227, baseType: !135, size: 32, offset: 18432)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !105, file: !106, line: 1231, baseType: !3646, size: 64, offset: 18496)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !106, line: 1231, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !105, file: !106, line: 1233, baseType: !191, size: 128, offset: 18560)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !105, file: !106, line: 1240, baseType: !3650, size: 64, offset: 18688)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !106, line: 62, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !105, file: !106, line: 1242, baseType: !3653, size: 64, offset: 18752)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !106, line: 1242, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !105, file: !106, line: 1244, baseType: !191, size: 128, offset: 18816)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !105, file: !106, line: 1245, baseType: !3657, size: 64, offset: 18944)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !106, line: 51, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !105, file: !106, line: 1246, baseType: !531, size: 256, offset: 19008)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !105, file: !106, line: 1247, baseType: !7, size: 32, offset: 19264)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !105, file: !106, line: 1250, baseType: !3662, size: 64, offset: 19328)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !106, line: 57, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !105, file: !106, line: 1251, baseType: !531, size: 256, offset: 19392)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !105, file: !106, line: 1252, baseType: !191, size: 128, offset: 19648)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !105, file: !106, line: 1259, baseType: !1488, size: 64, offset: 19776)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !105, file: !106, line: 1260, baseType: !700, size: 16, offset: 19840)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !105, file: !106, line: 1261, baseType: !700, size: 16, offset: 19856)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !105, file: !106, line: 1314, baseType: !3670, size: 64, offset: 19904)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3672, line: 62, size: 256, align: 256, elements: !3673)
!3672 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3671, file: !3672, line: 75, baseType: !118, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3671, file: !3672, line: 90, baseType: !118, size: 32, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3671, file: !3672, line: 112, baseType: !187, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3671, file: !3672, line: 132, baseType: !118, size: 32, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3671, file: !3672, line: 140, baseType: !118, size: 32, offset: 160)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3671, file: !3672, line: 149, baseType: !118, size: 32, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3671, file: !3672, line: 154, baseType: !3681, offset: 224)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, elements: !609)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !105, file: !106, line: 1315, baseType: !116, size: 32, offset: 19968)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !105, file: !106, line: 1316, baseType: !116, size: 32, offset: 20000)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !105, file: !106, line: 1321, baseType: !113, size: 64, offset: 20032)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !105, file: !106, line: 1325, baseType: !135, size: 32, offset: 20096)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !105, file: !106, line: 1326, baseType: !135, size: 32, offset: 20128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !105, file: !106, line: 1327, baseType: !135, size: 32, offset: 20160)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !105, file: !106, line: 1328, baseType: !135, size: 32, offset: 20192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !105, file: !106, line: 1329, baseType: !511, size: 128, align: 64, offset: 20224)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !105, file: !106, line: 1332, baseType: !3691, size: 128, offset: 20352)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3692, line: 51, size: 128, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3693 = !{!3694, !3699, !3700}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3691, file: !3692, line: 60, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3696, line: 7, size: 64, elements: !3697)
!3696 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3697 = !{!3698}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3695, file: !3696, line: 12, baseType: !415, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3691, file: !3692, line: 63, baseType: !732, size: 8, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3691, file: !3692, line: 70, baseType: !732, size: 8, offset: 72)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !105, file: !106, line: 1335, baseType: !2921, size: 64, offset: 20480)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !105, file: !106, line: 1337, baseType: !3703, size: 128, offset: 20544)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3692, line: 39, size: 128, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3703, file: !3692, line: 40, baseType: !1275, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3703, file: !3692, line: 42, baseType: !118, size: 32, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3703, file: !3692, line: 43, baseType: !118, size: 32, offset: 96)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !105, file: !106, line: 1340, baseType: !3709, size: 64, offset: 20672)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !106, line: 69, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !105, file: !106, line: 1351, baseType: !135, size: 32, offset: 20736)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !105, file: !106, line: 1352, baseType: !135, size: 32, offset: 20768)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !105, file: !106, line: 1354, baseType: !113, size: 64, offset: 20800)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !105, file: !106, line: 1364, baseType: !186, size: 64, offset: 20864)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !105, file: !106, line: 1365, baseType: !186, size: 64, offset: 20928)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !105, file: !106, line: 1412, baseType: !113, size: 64, offset: 20992)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !105, file: !106, line: 1453, baseType: !3718, size: 64, offset: 21056)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !106, line: 1453, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !105, file: !106, line: 1457, baseType: !3721, size: 64, offset: 21120)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3723)
!3723 = !{!3724, !3725, !3744, !3747, !3748, !3781, !3791}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3722, file: !81, line: 62, baseType: !80, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !81, line: 64, baseType: !3726, size: 192, offset: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !81, line: 64, size: 192, elements: !3727)
!3727 = !{!3728, !3739}
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3726, file: !81, line: 65, baseType: !3729, size: 192)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !81, line: 65, size: 192, elements: !3730)
!3730 = !{!3731, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3729, file: !81, line: 66, baseType: !3732, size: 128)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3733, line: 50, size: 128, elements: !3734)
!3733 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3732, file: !3733, line: 52, baseType: !113, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3732, file: !3733, line: 54, baseType: !7, size: 32, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3732, file: !3733, line: 55, baseType: !7, size: 32, offset: 96)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3729, file: !81, line: 67, baseType: !113, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3726, file: !81, line: 70, baseType: !3740, size: 192)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !81, line: 70, size: 192, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3740, file: !81, line: 71, baseType: !511, size: 128, align: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3740, file: !81, line: 72, baseType: !113, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3722, file: !81, line: 76, baseType: !3745, size: 64, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3722, file: !81, line: 77, baseType: !113, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3722, file: !81, line: 79, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3733, line: 25, size: 256, elements: !3751)
!3751 = !{!3752, !3758, !3762}
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !3733, line: 26, baseType: !3753, size: 128)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3750, file: !3733, line: 26, size: 128, elements: !3754)
!3754 = !{!3755, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3753, file: !3733, line: 27, baseType: !3756, size: 128)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 128, elements: !2683)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3753, file: !3733, line: 28, baseType: !3756, size: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3750, file: !3733, line: 31, baseType: !3759, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3733, line: 23, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !3733, line: 33, baseType: !3763, size: 64, offset: 192)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3750, file: !3733, line: 33, size: 64, elements: !3764)
!3764 = !{!3765, !3771, !3776}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3763, file: !3733, line: 38, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3763, file: !3733, line: 34, size: 64, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3766, file: !3733, line: 35, baseType: !664, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3766, file: !3733, line: 36, baseType: !301, size: 8, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3766, file: !3733, line: 37, baseType: !301, size: 8, offset: 40)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3763, file: !3733, line: 42, baseType: !3772, size: 16)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3763, file: !3733, line: 39, size: 16, elements: !3773)
!3773 = !{!3774, !3775}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3772, file: !3733, line: 40, baseType: !301, size: 8)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3772, file: !3733, line: 41, baseType: !301, size: 8, offset: 8)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3763, file: !3733, line: 46, baseType: !3777, size: 16)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3763, file: !3733, line: 43, size: 16, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3777, file: !3733, line: 44, baseType: !301, size: 8)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3777, file: !3733, line: 45, baseType: !301, size: 8, offset: 8)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3722, file: !81, line: 81, baseType: !3782, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3783, file: !81, line: 86, baseType: !3745, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3783, file: !81, line: 87, baseType: !113, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3783, file: !81, line: 88, baseType: !113, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3783, file: !81, line: 89, baseType: !113, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3783, file: !81, line: 90, baseType: !732, size: 8, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3783, file: !81, line: 92, baseType: !3782, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3722, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !105, file: !106, line: 1463, baseType: !3793, offset: 21184)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !106, line: 739, elements: !496)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !105, file: !106, line: 1470, baseType: !511, size: 128, align: 64, offset: 21184)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !105, file: !106, line: 1471, baseType: !125, size: 32, offset: 21312)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !105, file: !106, line: 1472, baseType: !135, size: 32, offset: 21344)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !105, file: !106, line: 1474, baseType: !104, size: 64, offset: 21376)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !105, file: !106, line: 1475, baseType: !2175, size: 320, offset: 21440)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !105, file: !106, line: 1478, baseType: !3800, size: 64, offset: 21760)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3802, line: 49, size: 512, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3813}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3801, file: !3802, line: 50, baseType: !3800, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3801, file: !3802, line: 51, baseType: !123, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3801, file: !3802, line: 52, baseType: !113, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3801, file: !3802, line: 53, baseType: !113, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3801, file: !3802, line: 54, baseType: !1662, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3801, file: !3802, line: 56, baseType: !7, size: 32, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3801, file: !3802, line: 58, baseType: !7, size: 32, offset: 352)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3801, file: !3802, line: 59, baseType: !3812, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !131, line: 159, baseType: !186)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3801, file: !3802, line: 60, baseType: !1791, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !105, file: !106, line: 1482, baseType: !125, size: 32, offset: 21824)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !105, file: !106, line: 1489, baseType: !123, size: 64, offset: 21888)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !105, file: !106, line: 1504, baseType: !123, size: 64, offset: 21952)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !105, file: !106, line: 1505, baseType: !187, size: 64, offset: 22016)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !105, file: !106, line: 1506, baseType: !186, size: 64, offset: 22080)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !105, file: !106, line: 1507, baseType: !187, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !105, file: !106, line: 1508, baseType: !187, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !105, file: !106, line: 1509, baseType: !187, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !105, file: !106, line: 1510, baseType: !511, size: 128, align: 64, offset: 22208)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !105, file: !106, line: 1511, baseType: !135, size: 32, offset: 22336)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !105, file: !106, line: 1515, baseType: !3825, size: 64, offset: 22400)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !145, line: 56, size: 64, elements: !3826)
!3826 = !{!3827}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3825, file: !145, line: 57, baseType: !148, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !105, file: !106, line: 1518, baseType: !3825, size: 64, offset: 22464)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !105, file: !106, line: 1528, baseType: !511, size: 128, align: 64, offset: 22528)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !105, file: !106, line: 1552, baseType: !3831, size: 35328, offset: 23040)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3832, line: 430, size: 35328, elements: !3833)
!3832 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3833 = !{!3834, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3863, !3864, !3865, !3866, !3867, !3868, !3871, !3872, !3873, !3874}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3831, file: !3832, line: 432, baseType: !3835, size: 192)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3836, size: 192, elements: !569)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3837, line: 16, size: 64, elements: !3838)
!3837 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3836, file: !3837, line: 17, baseType: !155, size: 16)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3836, file: !3837, line: 18, baseType: !155, size: 16, offset: 16)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3836, file: !3837, line: 19, baseType: !155, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3836, file: !3837, line: 19, baseType: !155, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3836, file: !3837, line: 19, baseType: !155, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3836, file: !3837, line: 19, baseType: !155, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3836, file: !3837, line: 19, baseType: !155, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3836, file: !3837, line: 20, baseType: !155, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3836, file: !3837, line: 20, baseType: !155, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3836, file: !3837, line: 20, baseType: !155, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3836, file: !3837, line: 20, baseType: !155, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3836, file: !3837, line: 20, baseType: !155, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3836, file: !3837, line: 20, baseType: !155, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3831, file: !3832, line: 436, baseType: !113, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3831, file: !3832, line: 440, baseType: !157, size: 16, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3831, file: !3832, line: 441, baseType: !157, size: 16, offset: 272)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3831, file: !3832, line: 442, baseType: !157, size: 16, offset: 288)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3831, file: !3832, line: 443, baseType: !157, size: 16, offset: 304)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3831, file: !3832, line: 447, baseType: !113, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3831, file: !3832, line: 448, baseType: !113, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3831, file: !3832, line: 459, baseType: !3860, size: 256, offset: 448)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3861, size: 256, elements: !590)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3832, line: 428, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3831, file: !3832, line: 461, baseType: !113, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3831, file: !3832, line: 463, baseType: !113, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3831, file: !3832, line: 465, baseType: !113, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3831, file: !3832, line: 466, baseType: !113, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3831, file: !3832, line: 467, baseType: !113, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3831, file: !3832, line: 473, baseType: !3869, size: 64, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3832, line: 10, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3831, file: !3832, line: 480, baseType: !113, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3831, file: !3832, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3831, file: !3832, line: 491, baseType: !116, size: 32, offset: 1184)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3831, file: !3832, line: 501, baseType: !3875, size: 33792, offset: 1536)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3876, line: 448, size: 33792, elements: !3877)
!3876 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3877 = !{!3878, !3879, !3880, !4042, !4043, !4049, !4050}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3875, file: !3876, line: 461, baseType: !7, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3875, file: !3876, line: 468, baseType: !113, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3875, file: !3876, line: 476, baseType: !3881, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3876, line: 356, size: 33280, align: 512, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3882, file: !3876, line: 358, baseType: !7, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3882, file: !3876, line: 361, baseType: !7, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3882, file: !3876, line: 364, baseType: !186, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3882, file: !3876, line: 367, baseType: !186, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3882, file: !3876, line: 370, baseType: !186, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3882, file: !3876, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3882, file: !3876, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3882, file: !3876, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3882, file: !3876, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3882, file: !3876, line: 397, baseType: !3894, size: 32768, offset: 512)
!3894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3876, line: 348, size: 32768, elements: !3895)
!3895 = !{!3896, !3911, !3948, !4025, !4038}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3894, file: !3876, line: 349, baseType: !3897, size: 896)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3876, line: 12, size: 896, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3910}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3897, file: !3876, line: 13, baseType: !116, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3897, file: !3876, line: 14, baseType: !116, size: 32, offset: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3897, file: !3876, line: 15, baseType: !116, size: 32, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3897, file: !3876, line: 16, baseType: !116, size: 32, offset: 96)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3897, file: !3876, line: 17, baseType: !116, size: 32, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3897, file: !3876, line: 18, baseType: !116, size: 32, offset: 160)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3897, file: !3876, line: 19, baseType: !116, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3897, file: !3876, line: 22, baseType: !3907, size: 640, offset: 224)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 640, elements: !3908)
!3908 = !{!3909}
!3909 = !DISubrange(count: 20)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3897, file: !3876, line: 25, baseType: !116, size: 32, offset: 864)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3894, file: !3876, line: 350, baseType: !3912, size: 4096, align: 128)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3876, line: 34, size: 4096, align: 128, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3933, !3934, !3935, !3937, !3939, !3943}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3912, file: !3876, line: 35, baseType: !155, size: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3912, file: !3876, line: 36, baseType: !155, size: 16, offset: 16)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3912, file: !3876, line: 37, baseType: !155, size: 16, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3912, file: !3876, line: 38, baseType: !155, size: 16, offset: 48)
!3918 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !3876, line: 39, baseType: !3919, size: 128, offset: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !3876, line: 39, size: 128, elements: !3920)
!3920 = !{!3921, !3926}
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3919, file: !3876, line: 40, baseType: !3922, size: 128)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3919, file: !3876, line: 40, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3922, file: !3876, line: 41, baseType: !186, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3922, file: !3876, line: 42, baseType: !186, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3919, file: !3876, line: 44, baseType: !3927, size: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3919, file: !3876, line: 44, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3927, file: !3876, line: 45, baseType: !116, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3927, file: !3876, line: 46, baseType: !116, size: 32, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3927, file: !3876, line: 47, baseType: !116, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3927, file: !3876, line: 48, baseType: !116, size: 32, offset: 96)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3912, file: !3876, line: 51, baseType: !116, size: 32, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3912, file: !3876, line: 52, baseType: !116, size: 32, offset: 224)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3912, file: !3876, line: 55, baseType: !3936, size: 1024, offset: 256)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 1024, elements: !2674)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3912, file: !3876, line: 58, baseType: !3938, size: 2048, offset: 1280)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 2048, elements: !1194)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3912, file: !3876, line: 60, baseType: !3940, size: 384, offset: 3328)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 384, elements: !3941)
!3941 = !{!3942}
!3942 = !DISubrange(count: 12)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !3876, line: 62, baseType: !3944, size: 384, offset: 3712)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !3876, line: 62, size: 384, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3944, file: !3876, line: 63, baseType: !3940, size: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3944, file: !3876, line: 64, baseType: !3940, size: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3894, file: !3876, line: 351, baseType: !3949, size: 1088)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3876, line: 79, size: 1088, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !4024}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3949, file: !3876, line: 80, baseType: !116, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3949, file: !3876, line: 81, baseType: !116, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3949, file: !3876, line: 82, baseType: !116, size: 32, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3949, file: !3876, line: 83, baseType: !116, size: 32, offset: 96)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3949, file: !3876, line: 84, baseType: !116, size: 32, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3949, file: !3876, line: 85, baseType: !116, size: 32, offset: 160)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3949, file: !3876, line: 86, baseType: !116, size: 32, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3949, file: !3876, line: 88, baseType: !3907, size: 640, offset: 224)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3949, file: !3876, line: 89, baseType: !301, size: 8, offset: 864)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3949, file: !3876, line: 90, baseType: !301, size: 8, offset: 872)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3949, file: !3876, line: 91, baseType: !301, size: 8, offset: 880)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3949, file: !3876, line: 92, baseType: !301, size: 8, offset: 888)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3949, file: !3876, line: 93, baseType: !301, size: 8, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3949, file: !3876, line: 94, baseType: !301, size: 8, offset: 904)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3949, file: !3876, line: 95, baseType: !3966, size: 64, offset: 960)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3968, line: 11, size: 128, elements: !3969)
!3968 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3967, file: !3968, line: 12, baseType: !1006, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3967, file: !3968, line: 13, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3974, line: 103, size: 1344, elements: !3975)
!3974 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !4004, !4005, !4006}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3973, file: !3974, line: 109, baseType: !113, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3973, file: !3974, line: 110, baseType: !113, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3973, file: !3974, line: 111, baseType: !113, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3973, file: !3974, line: 112, baseType: !113, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3973, file: !3974, line: 113, baseType: !113, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3973, file: !3974, line: 114, baseType: !113, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3973, file: !3974, line: 117, baseType: !113, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3973, file: !3974, line: 118, baseType: !113, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3973, file: !3974, line: 119, baseType: !113, size: 64, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3973, file: !3974, line: 120, baseType: !113, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3973, file: !3974, line: 121, baseType: !113, size: 64, offset: 640)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3973, file: !3974, line: 122, baseType: !113, size: 64, offset: 704)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3973, file: !3974, line: 123, baseType: !113, size: 64, offset: 768)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3973, file: !3974, line: 124, baseType: !113, size: 64, offset: 832)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3973, file: !3974, line: 125, baseType: !113, size: 64, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3973, file: !3974, line: 139, baseType: !113, size: 64, offset: 960)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3973, file: !3974, line: 142, baseType: !113, size: 64, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !3974, line: 144, baseType: !3994, size: 64, offset: 1088)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !3974, line: 144, size: 64, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3994, file: !3974, line: 146, baseType: !155, size: 16)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3994, file: !3974, line: 148, baseType: !186, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3994, file: !3974, line: 150, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3974, line: 59, size: 64, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3999, file: !3974, line: 61, baseType: !186, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3999, file: !3974, line: 63, baseType: !186, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3999, file: !3974, line: 65, baseType: !186, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3973, file: !3974, line: 153, baseType: !113, size: 64, offset: 1152)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3973, file: !3974, line: 154, baseType: !113, size: 64, offset: 1216)
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !3974, line: 156, baseType: !4007, size: 64, offset: 1280)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !3974, line: 156, size: 64, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4007, file: !3974, line: 158, baseType: !155, size: 16)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4007, file: !3974, line: 160, baseType: !186, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4007, file: !3974, line: 162, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3974, line: 69, size: 64, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4012, file: !3974, line: 71, baseType: !186, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4012, file: !3974, line: 73, baseType: !186, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4012, file: !3974, line: 75, baseType: !186, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4012, file: !3974, line: 77, baseType: !186, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4012, file: !3974, line: 80, baseType: !186, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4012, file: !3974, line: 83, baseType: !186, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4012, file: !3974, line: 86, baseType: !186, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4012, file: !3974, line: 88, baseType: !186, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4012, file: !3974, line: 93, baseType: !186, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4012, file: !3974, line: 100, baseType: !186, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3949, file: !3876, line: 96, baseType: !116, size: 32, offset: 1024)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3894, file: !3876, line: 352, baseType: !4026, size: 4608, align: 512)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3876, line: 333, size: 4608, align: 512, elements: !4027)
!4027 = !{!4028, !4029, !4036}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4026, file: !3876, line: 334, baseType: !3912, size: 4096, align: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4026, file: !3876, line: 335, baseType: !4030, size: 512, offset: 4096)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3876, line: 312, size: 512, elements: !4031)
!4031 = !{!4032, !4033, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4030, file: !3876, line: 313, baseType: !186, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4030, file: !3876, line: 314, baseType: !186, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4030, file: !3876, line: 315, baseType: !4035, size: 384, offset: 128)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 384, elements: !719)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4026, file: !3876, line: 336, baseType: !4037, offset: 4608)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, elements: !609)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3894, file: !3876, line: 353, baseType: !4039, size: 32768)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 32768, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 4096)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3875, file: !3876, line: 484, baseType: !3881, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3875, file: !3876, line: 491, baseType: !4044, size: 128, offset: 256)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3876, line: 404, size: 128, elements: !4045)
!4045 = !{!4046, !4047, !4048}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4044, file: !3876, line: 424, baseType: !186, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4044, file: !3876, line: 432, baseType: !7, size: 32, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4044, file: !3876, line: 440, baseType: !7, size: 32, offset: 96)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3875, file: !3876, line: 498, baseType: !4044, size: 128, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3875, file: !3876, line: 508, baseType: !3882, size: 33280, align: 512, offset: 512)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !101, file: !3, line: 40, baseType: !284, size: 32, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !101, file: !3, line: 41, baseType: !732, size: 8, offset: 96)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "works", scope: !101, file: !3, line: 42, baseType: !191, size: 128, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "stop_work", scope: !101, file: !3, line: 44, baseType: !4055, size: 384, offset: 256)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_stop_work", file: !4056, line: 24, size: 384, elements: !4057)
!4056 = !DIFile(filename: "./include/linux/stop_machine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95637c7d444b53de6b24d77ecb3a5fe3")
!4057 = !{!4058, !4059, !4064, !4065, !4066}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4055, file: !4056, line: 25, baseType: !191, size: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4055, file: !4056, line: 26, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_stop_fn_t", file: !4056, line: 20, baseType: !4061)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!135, !123}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4055, file: !4056, line: 27, baseType: !113, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4055, file: !4056, line: 28, baseType: !123, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4055, file: !4056, line: 29, baseType: !4067, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_stop_done", file: !3, line: 30, size: 320, elements: !4069)
!4069 = !{!4070, !4071, !4072}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_todo", scope: !4068, file: !3, line: 31, baseType: !130, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !4068, file: !3, line: 32, baseType: !135, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4068, file: !3, line: 33, baseType: !1360, size: 256, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !101, file: !3, line: 45, baseType: !113, size: 64, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !101, file: !3, line: 46, baseType: !4060, size: 64, offset: 704)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4079)
!4079 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !414, line: 913, baseType: !4095)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 64, elements: !419)
!4096 = !{!4097, !4102, !4107, !4109, !4111, !0, !4113, !4120, !4125, !4156, !4159, !4164, !4190, !4192, !4194, !4199, !4224, !4259, !4264, !4266, !4268}
!4097 = !DIGlobalVariableExpression(var: !4098, expr: !DIExpression())
!4098 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !4099, isLocal: true, isDefinition: true)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 184, elements: !4100)
!4100 = !{!4101}
!4101 = !DISubrange(count: 23)
!4102 = !DIGlobalVariableExpression(var: !4103, expr: !DIExpression())
!4103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !4104, isLocal: true, isDefinition: true)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 176, elements: !4105)
!4105 = !{!4106}
!4106 = !DISubrange(count: 22)
!4107 = !DIGlobalVariableExpression(var: !4108, expr: !DIExpression())
!4108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_stop_machine__293_584_cpu_stop_initearly294", scope: !2, file: !3, line: 584, type: !123, isLocal: true, isDefinition: true)
!4109 = !DIGlobalVariableExpression(var: !4110, expr: !DIExpression())
!4110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stop_machine295", scope: !2, file: !3, line: 632, type: !123, isLocal: true, isDefinition: true)
!4111 = !DIGlobalVariableExpression(var: !4112, expr: !DIExpression())
!4112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stop_core_cpuslocked296", scope: !2, file: !3, line: 652, type: !123, isLocal: true, isDefinition: true)
!4113 = !DIGlobalVariableExpression(var: !4114, expr: !DIExpression())
!4114 = distinct !DIGlobalVariable(name: "__key", scope: !4115, file: !1361, line: 87, type: !2297, isLocal: true, isDefinition: true)
!4115 = distinct !DISubprogram(name: "init_completion", scope: !1361, file: !1361, line: 84, type: !4116, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !1936}
!4118 = !{!4119}
!4119 = !DILocalVariable(name: "x", arg: 1, scope: !4115, file: !1361, line: 84, type: !1936)
!4120 = !DIGlobalVariableExpression(var: !4121, expr: !DIExpression())
!4121 = distinct !DIGlobalVariable(scope: null, file: !1361, line: 87, type: !4122, isLocal: true, isDefinition: true)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 72, elements: !4123)
!4123 = !{!4124}
!4124 = !DISubrange(count: 9)
!4125 = !DIGlobalVariableExpression(var: !4126, expr: !DIExpression())
!4126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule287", scope: !4127, file: !3, line: 110, type: !123, isLocal: true, isDefinition: true)
!4127 = distinct !DISubprogram(name: "cpu_stop_queue_work", scope: !3, file: !3, line: 93, type: !4128, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4130)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!732, !7, !4089}
!4130 = !{!4131, !4132, !4133, !4134, !4137, !4139, !4146, !4147, !4148, !4151, !4152, !4155}
!4131 = !DILocalVariable(name: "cpu", arg: 1, scope: !4127, file: !3, line: 93, type: !7)
!4132 = !DILocalVariable(name: "work", arg: 2, scope: !4127, file: !3, line: 93, type: !4089)
!4133 = !DILocalVariable(name: "stopper", scope: !4127, file: !3, line: 95, type: !100)
!4134 = !DILocalVariable(name: "__vpp_verify", scope: !4135, file: !3, line: 95, type: !1791)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 95, column: 33)
!4136 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 95, column: 33)
!4137 = !DILocalVariable(name: "__ptr", scope: !4138, file: !3, line: 95, type: !113)
!4138 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 95, column: 33)
!4139 = !DILocalVariable(name: "wakeq", scope: !4127, file: !3, line: 96, type: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !4141, line: 38, size: 128, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4140, file: !4141, line: 39, baseType: !3518, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !4140, file: !4141, line: 40, baseType: !4145, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!4146 = !DILocalVariable(name: "flags", scope: !4127, file: !3, line: 97, type: !113)
!4147 = !DILocalVariable(name: "enabled", scope: !4127, file: !3, line: 98, type: !732)
!4148 = !DILocalVariable(name: "__dummy", scope: !4149, file: !3, line: 101, type: !113)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 101, column: 2)
!4150 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 101, column: 2)
!4151 = !DILocalVariable(name: "__dummy2", scope: !4149, file: !3, line: 101, type: !113)
!4152 = !DILocalVariable(name: "__dummy", scope: !4153, file: !3, line: 107, type: !113)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 107, column: 2)
!4154 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 107, column: 2)
!4155 = !DILocalVariable(name: "__dummy2", scope: !4153, file: !3, line: 107, type: !113)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !4158, file: !106, line: 2104, type: !123, isLocal: true, isDefinition: true)
!4158 = distinct !DISubprogram(name: "_cond_resched", scope: !106, file: !106, line: 2102, type: !2045, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !4161, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 40, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 5)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule290", scope: !4166, file: !3, line: 310, type: !123, isLocal: true, isDefinition: true)
!4166 = distinct !DISubprogram(name: "cpu_stop_queue_two_works", scope: !3, file: !3, line: 261, type: !4167, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!135, !135, !4089, !135, !4089}
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175, !4178, !4180, !4181, !4184, !4186, !4187, !4188, !4189}
!4170 = !DILocalVariable(name: "cpu1", arg: 1, scope: !4166, file: !3, line: 261, type: !135)
!4171 = !DILocalVariable(name: "work1", arg: 2, scope: !4166, file: !3, line: 261, type: !4089)
!4172 = !DILocalVariable(name: "cpu2", arg: 3, scope: !4166, file: !3, line: 262, type: !135)
!4173 = !DILocalVariable(name: "work2", arg: 4, scope: !4166, file: !3, line: 262, type: !4089)
!4174 = !DILocalVariable(name: "stopper1", scope: !4166, file: !3, line: 264, type: !100)
!4175 = !DILocalVariable(name: "__vpp_verify", scope: !4176, file: !3, line: 264, type: !1791)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 264, column: 33)
!4177 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 264, column: 33)
!4178 = !DILocalVariable(name: "__ptr", scope: !4179, file: !3, line: 264, type: !113)
!4179 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 264, column: 33)
!4180 = !DILocalVariable(name: "stopper2", scope: !4166, file: !3, line: 265, type: !100)
!4181 = !DILocalVariable(name: "__vpp_verify", scope: !4182, file: !3, line: 265, type: !1791)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 265, column: 33)
!4183 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 265, column: 33)
!4184 = !DILocalVariable(name: "__ptr", scope: !4185, file: !3, line: 265, type: !113)
!4185 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 265, column: 33)
!4186 = !DILocalVariable(name: "wakeq", scope: !4166, file: !3, line: 266, type: !4140)
!4187 = !DILocalVariable(name: "err", scope: !4166, file: !3, line: 267, type: !135)
!4188 = !DILabel(scope: !4166, name: "retry", file: !3, line: 269)
!4189 = !DILabel(scope: !4166, name: "unlock", file: !3, line: 305)
!4190 = !DIGlobalVariableExpression(var: !4191, expr: !DIExpression())
!4191 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule291", scope: !4166, file: !3, line: 319, type: !123, isLocal: true, isDefinition: true)
!4192 = !DIGlobalVariableExpression(var: !4193, expr: !DIExpression())
!4193 = distinct !DIGlobalVariable(name: "stop_cpus_in_progress", scope: !2, file: !3, line: 68, type: !732, isLocal: true, isDefinition: true)
!4194 = !DIGlobalVariableExpression(var: !4195, expr: !DIExpression())
!4195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 562, type: !4196, isLocal: true, isDefinition: true)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 104, elements: !4197)
!4197 = !{!4198}
!4198 = !DISubrange(count: 13)
!4199 = !DIGlobalVariableExpression(var: !4200, expr: !DIExpression())
!4200 = distinct !DIGlobalVariable(name: "cpu_stop_threads", scope: !2, file: !3, line: 558, type: !4201, isLocal: true, isDefinition: true)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smp_hotplug_thread", file: !4202, line: 31, size: 768, elements: !4203)
!4202 = !DIFile(filename: "./include/linux/smpboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fa1a229f3a0d95109a874de47b845e2")
!4203 = !{!4204, !4205, !4206, !4210, !4214, !4215, !4216, !4220, !4221, !4222, !4223}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4201, file: !4202, line: 32, baseType: !4090, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4201, file: !4202, line: 33, baseType: !191, size: 128, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "thread_should_run", scope: !4201, file: !4202, line: 34, baseType: !4207, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!135, !7}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4201, file: !4202, line: 35, baseType: !4211, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !7}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !4201, file: !4202, line: 36, baseType: !4211, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4201, file: !4202, line: 37, baseType: !4211, size: 64, offset: 384)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4201, file: !4202, line: 38, baseType: !4217, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !7, !732}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "park", scope: !4201, file: !4202, line: 39, baseType: !4211, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !4201, file: !4202, line: 40, baseType: !4211, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "selfparking", scope: !4201, file: !4202, line: 41, baseType: !732, size: 8, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_comm", scope: !4201, file: !4202, line: 42, baseType: !735, size: 64, offset: 704)
!4224 = !DIGlobalVariableExpression(var: !4225, expr: !DIExpression())
!4225 = distinct !DIGlobalVariable(name: "__already_done", scope: !4226, file: !3, line: 520, type: !732, isLocal: true, isDefinition: true)
!4226 = distinct !DISubprogram(name: "cpu_stopper_thread", scope: !3, file: !3, line: 486, type: !4212, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4227 = !{!4228, !4229, !4230, !4233, !4235, !4236, !4237, !4241, !4244, !4245, !4246, !4247, !4249, !4252, !4253, !4255}
!4228 = !DILocalVariable(name: "cpu", arg: 1, scope: !4226, file: !3, line: 486, type: !7)
!4229 = !DILocalVariable(name: "stopper", scope: !4226, file: !3, line: 488, type: !100)
!4230 = !DILocalVariable(name: "__vpp_verify", scope: !4231, file: !3, line: 488, type: !1791)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 488, column: 33)
!4232 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 488, column: 33)
!4233 = !DILocalVariable(name: "__ptr", scope: !4234, file: !3, line: 488, type: !113)
!4234 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 488, column: 33)
!4235 = !DILocalVariable(name: "work", scope: !4226, file: !3, line: 489, type: !4089)
!4236 = !DILabel(scope: !4226, name: "repeat", file: !3, line: 491)
!4237 = !DILocalVariable(name: "__mptr", scope: !4238, file: !3, line: 495, type: !123)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 495, column: 10)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 494, column: 36)
!4240 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 494, column: 6)
!4241 = !DILocalVariable(name: "fn", scope: !4242, file: !3, line: 502, type: !4060)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 501, column: 12)
!4243 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 501, column: 6)
!4244 = !DILocalVariable(name: "arg", scope: !4242, file: !3, line: 503, type: !123)
!4245 = !DILocalVariable(name: "done", scope: !4242, file: !3, line: 504, type: !4067)
!4246 = !DILocalVariable(name: "ret", scope: !4242, file: !3, line: 505, type: !135)
!4247 = !DILocalVariable(name: "__ret_do_once", scope: !4248, file: !3, line: 520, type: !732)
!4248 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 520, column: 3)
!4249 = !DILocalVariable(name: "__ret_cond", scope: !4250, file: !3, line: 520, type: !732)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 520, column: 3)
!4251 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 520, column: 3)
!4252 = !DILocalVariable(name: "__ret_once", scope: !4250, file: !3, line: 520, type: !732)
!4253 = !DILocalVariable(name: "__ret_warn_on", scope: !4254, file: !3, line: 520, type: !135)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 520, column: 3)
!4255 = !DILocalVariable(name: "__flags", scope: !4256, file: !3, line: 520, type: !135)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 520, column: 3)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 520, column: 3)
!4258 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 520, column: 3)
!4259 = !DIGlobalVariableExpression(var: !4260, expr: !DIExpression())
!4260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 520, type: !4261, isLocal: true, isDefinition: true)
!4261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 320, elements: !4262)
!4262 = !{!4263}
!4263 = !DISubrange(count: 40)
!4264 = !DIGlobalVariableExpression(var: !4265, expr: !DIExpression())
!4265 = distinct !DIGlobalVariable(name: "stop_machine_initialized", scope: !2, file: !3, line: 50, type: !732, isLocal: true, isDefinition: true)
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(name: "stop_cpus_mutex", scope: !2, file: !3, line: 67, type: !531, isLocal: true, isDefinition: true)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule292", scope: !4270, file: !3, line: 418, type: !123, isLocal: true, isDefinition: true)
!4270 = distinct !DISubprogram(name: "queue_stop_cpus_work", scope: !3, file: !3, line: 391, type: !4271, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!732, !4075, !4060, !123, !4067}
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4287}
!4274 = !DILocalVariable(name: "cpumask", arg: 1, scope: !4270, file: !3, line: 391, type: !4075)
!4275 = !DILocalVariable(name: "fn", arg: 2, scope: !4270, file: !3, line: 392, type: !4060)
!4276 = !DILocalVariable(name: "arg", arg: 3, scope: !4270, file: !3, line: 392, type: !123)
!4277 = !DILocalVariable(name: "done", arg: 4, scope: !4270, file: !3, line: 393, type: !4067)
!4278 = !DILocalVariable(name: "work", scope: !4270, file: !3, line: 395, type: !4089)
!4279 = !DILocalVariable(name: "cpu", scope: !4270, file: !3, line: 396, type: !7)
!4280 = !DILocalVariable(name: "queued", scope: !4270, file: !3, line: 397, type: !732)
!4281 = !DILocalVariable(name: "__vpp_verify", scope: !4282, file: !3, line: 408, type: !1791)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 408, column: 11)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 408, column: 11)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 407, column: 29)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 407, column: 2)
!4286 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 407, column: 2)
!4287 = !DILocalVariable(name: "__ptr", scope: !4288, file: !3, line: 408, type: !113)
!4288 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 408, column: 11)
!4289 = !{!"rsp"}
!4290 = !{i32 7, !"Dwarf Version", i32 5}
!4291 = !{i32 2, !"Debug Info Version", i32 3}
!4292 = !{i32 1, !"wchar_size", i32 2}
!4293 = !{i32 8, !"cf-protection-branch", i32 1}
!4294 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4295 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4296 = !{i32 1, !"Code Model", i32 2}
!4297 = !{i32 1, !"override-stack-alignment", i32 8}
!4298 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4299 = distinct !DISubprogram(name: "print_stop_info", scope: !3, file: !3, line: 52, type: !4300, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !735, !104}
!4302 = !{!4303, !4304, !4305, !4306, !4309}
!4303 = !DILocalVariable(name: "log_lvl", arg: 1, scope: !4299, file: !3, line: 52, type: !735)
!4304 = !DILocalVariable(name: "task", arg: 2, scope: !4299, file: !3, line: 52, type: !104)
!4305 = !DILocalVariable(name: "stopper", scope: !4299, file: !3, line: 58, type: !100)
!4306 = !DILocalVariable(name: "__vpp_verify", scope: !4307, file: !3, line: 58, type: !1791)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 58, column: 32)
!4308 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 58, column: 32)
!4309 = !DILocalVariable(name: "__ptr", scope: !4310, file: !3, line: 58, type: !113)
!4310 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 58, column: 32)
!4311 = !DILocation(line: 52, column: 34, scope: !4299)
!4312 = !DILocation(line: 52, column: 63, scope: !4299)
!4313 = !DILocation(line: 58, column: 2, scope: !4299)
!4314 = !DILocation(line: 58, column: 22, scope: !4299)
!4315 = !DILocation(line: 58, column: 32, scope: !4308)
!4316 = !DILocation(line: 58, column: 32, scope: !4307)
!4317 = !DILocation(line: 58, column: 32, scope: !4310)
!4318 = !DILocation(line: 60, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 60, column: 6)
!4320 = !DILocation(line: 60, column: 14, scope: !4319)
!4321 = !DILocation(line: 60, column: 23, scope: !4319)
!4322 = !DILocation(line: 60, column: 11, scope: !4319)
!4323 = !DILocation(line: 60, column: 6, scope: !4299)
!4324 = !DILocation(line: 61, column: 3, scope: !4319)
!4325 = !DILocation(line: 63, column: 2, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 63, column: 2)
!4327 = !DILocation(line: 63, column: 2, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 63, column: 2)
!4329 = !DILocation(line: 64, column: 1, scope: !4299)
!4330 = distinct !DISubprogram(name: "task_cpu", scope: !106, file: !106, line: 2270, type: !4331, scopeLine: 2271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4335)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!7, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "p", arg: 1, scope: !4330, file: !106, line: 2270, type: !4333)
!4337 = !DILocation(line: 2270, column: 63, scope: !4330)
!4338 = !DILocation(line: 2272, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4330, file: !106, line: 2272, column: 9)
!4340 = !DILocation(line: 2272, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4339, file: !106, line: 2272, column: 9)
!4342 = !DILocation(line: 2272, column: 2, scope: !4330)
!4343 = !DISubprogram(name: "_printk", scope: !4344, file: !4344, line: 153, type: !4345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4344 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!135, !735, null}
!4347 = distinct !DISubprogram(name: "stop_one_cpu", scope: !3, file: !3, line: 139, type: !4348, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!135, !7, !4060, !123}
!4350 = !{!4351, !4352, !4353, !4354, !4355}
!4351 = !DILocalVariable(name: "cpu", arg: 1, scope: !4347, file: !3, line: 139, type: !7)
!4352 = !DILocalVariable(name: "fn", arg: 2, scope: !4347, file: !3, line: 139, type: !4060)
!4353 = !DILocalVariable(name: "arg", arg: 3, scope: !4347, file: !3, line: 139, type: !123)
!4354 = !DILocalVariable(name: "done", scope: !4347, file: !3, line: 141, type: !4068)
!4355 = !DILocalVariable(name: "work", scope: !4347, file: !3, line: 142, type: !4055)
!4356 = !DILocation(line: 139, column: 31, scope: !4347)
!4357 = !DILocation(line: 139, column: 50, scope: !4347)
!4358 = !DILocation(line: 139, column: 60, scope: !4347)
!4359 = !DILocation(line: 141, column: 2, scope: !4347)
!4360 = !DILocation(line: 141, column: 23, scope: !4347)
!4361 = !DILocation(line: 142, column: 2, scope: !4347)
!4362 = !DILocation(line: 142, column: 23, scope: !4347)
!4363 = !DILocation(line: 142, column: 30, scope: !4347)
!4364 = !DILocation(line: 142, column: 38, scope: !4347)
!4365 = !DILocation(line: 142, column: 79, scope: !4347)
!4366 = !DILocation(line: 142, column: 49, scope: !4347)
!4367 = !DILocation(line: 144, column: 2, scope: !4347)
!4368 = !DILocation(line: 145, column: 27, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 145, column: 6)
!4370 = !DILocation(line: 145, column: 7, scope: !4369)
!4371 = !DILocation(line: 145, column: 6, scope: !4347)
!4372 = !DILocation(line: 146, column: 3, scope: !4369)
!4373 = !DILocation(line: 151, column: 2, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 151, column: 2)
!4375 = !DILocation(line: 152, column: 28, scope: !4347)
!4376 = !DILocation(line: 152, column: 2, scope: !4347)
!4377 = !DILocation(line: 153, column: 14, scope: !4347)
!4378 = !DILocation(line: 153, column: 2, scope: !4347)
!4379 = !DILocation(line: 154, column: 1, scope: !4347)
!4380 = distinct !DISubprogram(name: "cpu_stop_init_done", scope: !3, file: !3, line: 70, type: !4381, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4383)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4067, !7}
!4383 = !{!4384, !4385}
!4384 = !DILocalVariable(name: "done", arg: 1, scope: !4380, file: !3, line: 70, type: !4067)
!4385 = !DILocalVariable(name: "nr_todo", arg: 2, scope: !4380, file: !3, line: 70, type: !7)
!4386 = !DILocation(line: 70, column: 54, scope: !4380)
!4387 = !DILocation(line: 70, column: 73, scope: !4380)
!4388 = !DILocation(line: 72, column: 9, scope: !4380)
!4389 = !DILocation(line: 72, column: 2, scope: !4380)
!4390 = !DILocation(line: 73, column: 14, scope: !4380)
!4391 = !DILocation(line: 73, column: 20, scope: !4380)
!4392 = !DILocation(line: 73, column: 29, scope: !4380)
!4393 = !DILocation(line: 73, column: 2, scope: !4380)
!4394 = !DILocation(line: 74, column: 19, scope: !4380)
!4395 = !DILocation(line: 74, column: 25, scope: !4380)
!4396 = !DILocation(line: 74, column: 2, scope: !4380)
!4397 = !DILocation(line: 75, column: 1, scope: !4380)
!4398 = !DILocation(line: 93, column: 46, scope: !4127)
!4399 = !DILocation(line: 93, column: 73, scope: !4127)
!4400 = !DILocation(line: 95, column: 2, scope: !4127)
!4401 = !DILocation(line: 95, column: 22, scope: !4127)
!4402 = !DILocation(line: 95, column: 33, scope: !4136)
!4403 = !DILocation(line: 95, column: 33, scope: !4135)
!4404 = !DILocation(line: 95, column: 33, scope: !4138)
!4405 = !DILocation(line: 96, column: 2, scope: !4127)
!4406 = !DILocation(line: 97, column: 2, scope: !4127)
!4407 = !DILocation(line: 97, column: 16, scope: !4127)
!4408 = !DILocation(line: 98, column: 2, scope: !4127)
!4409 = !DILocation(line: 98, column: 7, scope: !4127)
!4410 = !DILocation(line: 100, column: 2, scope: !4127)
!4411 = !DILocation(line: 100, column: 2, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 100, column: 2)
!4413 = !{i64 2154642049}
!4414 = !DILocation(line: 101, column: 2, scope: !4127)
!4415 = !DILocation(line: 101, column: 2, scope: !4149)
!4416 = !DILocation(line: 101, column: 2, scope: !4150)
!4417 = !DILocation(line: 102, column: 12, scope: !4127)
!4418 = !DILocation(line: 102, column: 21, scope: !4127)
!4419 = !{i8 0, i8 2}
!4420 = !DILocation(line: 102, column: 10, scope: !4127)
!4421 = !DILocation(line: 103, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 103, column: 6)
!4423 = !DILocation(line: 103, column: 6, scope: !4127)
!4424 = !DILocation(line: 104, column: 25, scope: !4422)
!4425 = !DILocation(line: 104, column: 34, scope: !4422)
!4426 = !DILocation(line: 104, column: 3, scope: !4422)
!4427 = !DILocation(line: 105, column: 11, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 105, column: 11)
!4429 = !DILocation(line: 105, column: 17, scope: !4428)
!4430 = !DILocation(line: 105, column: 11, scope: !4422)
!4431 = !DILocation(line: 106, column: 24, scope: !4428)
!4432 = !DILocation(line: 106, column: 30, scope: !4428)
!4433 = !DILocation(line: 106, column: 3, scope: !4428)
!4434 = !DILocation(line: 107, column: 2, scope: !4127)
!4435 = !DILocation(line: 107, column: 2, scope: !4153)
!4436 = !DILocation(line: 107, column: 2, scope: !4154)
!4437 = !DILocation(line: 109, column: 2, scope: !4127)
!4438 = !DILocation(line: 110, column: 2, scope: !4127)
!4439 = !DILocation(line: 110, column: 2, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 110, column: 2)
!4441 = !{i64 2154642677}
!4442 = !DILocation(line: 110, column: 2, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 110, column: 2)
!4444 = !DILocation(line: 110, column: 2, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 110, column: 2)
!4446 = !{i64 2154642859}
!4447 = !DILocation(line: 112, column: 9, scope: !4127)
!4448 = !DILocation(line: 113, column: 1, scope: !4127)
!4449 = !DILocation(line: 112, column: 2, scope: !4127)
!4450 = distinct !DISubprogram(name: "__might_resched", scope: !4451, file: !4451, line: 184, type: !4452, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4454)
!4451 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !735, !135, !7}
!4454 = !{!4455, !4456, !4457}
!4455 = !DILocalVariable(name: "file", arg: 1, scope: !4450, file: !4451, line: 184, type: !735)
!4456 = !DILocalVariable(name: "line", arg: 2, scope: !4450, file: !4451, line: 184, type: !135)
!4457 = !DILocalVariable(name: "offsets", arg: 3, scope: !4450, file: !4451, line: 185, type: !7)
!4458 = !DILocation(line: 184, column: 50, scope: !4450)
!4459 = !DILocation(line: 184, column: 60, scope: !4450)
!4460 = !DILocation(line: 185, column: 23, scope: !4450)
!4461 = !DILocation(line: 185, column: 34, scope: !4450)
!4462 = !DILocation(line: 2104, column: 9, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4158, file: !106, line: 2104, column: 9)
!4464 = !DILocation(line: 2104, column: 9, scope: !4158)
!4465 = !DILocation(line: 2104, column: 2, scope: !4158)
!4466 = !DISubprogram(name: "wait_for_completion", scope: !1361, file: !1361, line: 102, type: !4116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4467 = distinct !DISubprogram(name: "stop_machine_yield", scope: !3, file: !3, line: 197, type: !4468, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4470)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !4075}
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "cpumask", arg: 1, scope: !4467, file: !3, line: 197, type: !4075)
!4472 = !DILocation(line: 197, column: 62, scope: !4467)
!4473 = !DILocation(line: 199, column: 2, scope: !4467)
!4474 = !DILocation(line: 200, column: 1, scope: !4467)
!4475 = distinct !DISubprogram(name: "cpu_relax", scope: !4476, file: !4476, line: 16, type: !2291, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4476 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4477 = !DILocation(line: 18, column: 2, scope: !4475)
!4478 = !DILocation(line: 19, column: 1, scope: !4475)
!4479 = distinct !DISubprogram(name: "stop_two_cpus", scope: !3, file: !3, line: 334, type: !4480, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4482)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!135, !7, !7, !4060, !123}
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4499}
!4483 = !DILocalVariable(name: "cpu1", arg: 1, scope: !4479, file: !3, line: 334, type: !7)
!4484 = !DILocalVariable(name: "cpu2", arg: 2, scope: !4479, file: !3, line: 334, type: !7)
!4485 = !DILocalVariable(name: "fn", arg: 3, scope: !4479, file: !3, line: 334, type: !4060)
!4486 = !DILocalVariable(name: "arg", arg: 4, scope: !4479, file: !3, line: 334, type: !123)
!4487 = !DILocalVariable(name: "done", scope: !4479, file: !3, line: 336, type: !4068)
!4488 = !DILocalVariable(name: "work1", scope: !4479, file: !3, line: 337, type: !4055)
!4489 = !DILocalVariable(name: "work2", scope: !4479, file: !3, line: 337, type: !4055)
!4490 = !DILocalVariable(name: "msdata", scope: !4479, file: !3, line: 338, type: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multi_stop_data", file: !3, line: 170, size: 320, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4491, file: !3, line: 171, baseType: !4060, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4491, file: !3, line: 172, baseType: !123, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads", scope: !4491, file: !3, line: 174, baseType: !7, size: 32, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "active_cpus", scope: !4491, file: !3, line: 175, baseType: !4075, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4491, file: !3, line: 177, baseType: !87, size: 32, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ack", scope: !4491, file: !3, line: 178, baseType: !130, size: 32, offset: 288)
!4499 = !DILocalVariable(name: "__tmp", scope: !4500, file: !3, line: 358, type: !7)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 358, column: 3)
!4501 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 357, column: 6)
!4502 = !DILocation(line: 334, column: 32, scope: !4479)
!4503 = !DILocation(line: 334, column: 51, scope: !4479)
!4504 = !DILocation(line: 334, column: 71, scope: !4479)
!4505 = !DILocation(line: 334, column: 81, scope: !4479)
!4506 = !DILocation(line: 336, column: 2, scope: !4479)
!4507 = !DILocation(line: 336, column: 23, scope: !4479)
!4508 = !DILocation(line: 337, column: 2, scope: !4479)
!4509 = !DILocation(line: 337, column: 23, scope: !4479)
!4510 = !DILocation(line: 337, column: 30, scope: !4479)
!4511 = !DILocation(line: 338, column: 2, scope: !4479)
!4512 = !DILocation(line: 338, column: 25, scope: !4479)
!4513 = !DILocation(line: 340, column: 35, scope: !4479)
!4514 = !DILocation(line: 341, column: 9, scope: !4479)
!4515 = !DILocation(line: 342, column: 11, scope: !4479)
!4516 = !DILocation(line: 344, column: 18, scope: !4479)
!4517 = !DILocation(line: 340, column: 11, scope: !4479)
!4518 = !DILocation(line: 347, column: 40, scope: !4479)
!4519 = !DILocation(line: 351, column: 13, scope: !4479)
!4520 = !DILocation(line: 347, column: 18, scope: !4479)
!4521 = !DILocation(line: 347, column: 16, scope: !4479)
!4522 = !DILocation(line: 354, column: 2, scope: !4479)
!4523 = !DILocation(line: 355, column: 2, scope: !4479)
!4524 = !DILocation(line: 357, column: 6, scope: !4501)
!4525 = !DILocation(line: 357, column: 13, scope: !4501)
!4526 = !DILocation(line: 357, column: 11, scope: !4501)
!4527 = !DILocation(line: 357, column: 6, scope: !4479)
!4528 = !DILocation(line: 358, column: 3, scope: !4501)
!4529 = !DILocation(line: 358, column: 3, scope: !4500)
!4530 = !DILocation(line: 359, column: 31, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 359, column: 6)
!4532 = !DILocation(line: 359, column: 45, scope: !4531)
!4533 = !DILocation(line: 359, column: 6, scope: !4531)
!4534 = !DILocation(line: 359, column: 6, scope: !4479)
!4535 = !DILocation(line: 360, column: 3, scope: !4531)
!4536 = !DILocation(line: 362, column: 28, scope: !4479)
!4537 = !DILocation(line: 362, column: 2, scope: !4479)
!4538 = !DILocation(line: 363, column: 14, scope: !4479)
!4539 = !DILocation(line: 363, column: 2, scope: !4479)
!4540 = !DILocation(line: 364, column: 1, scope: !4479)
!4541 = distinct !DISubprogram(name: "get_cpu_mask", scope: !414, file: !414, line: 1056, type: !4542, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!4075, !7}
!4544 = !{!4545, !4546}
!4545 = !DILocalVariable(name: "cpu", arg: 1, scope: !4541, file: !414, line: 1056, type: !7)
!4546 = !DILocalVariable(name: "p", scope: !4541, file: !414, line: 1058, type: !4547)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!4548 = !DILocation(line: 1056, column: 63, scope: !4541)
!4549 = !DILocation(line: 1058, column: 2, scope: !4541)
!4550 = !DILocation(line: 1058, column: 23, scope: !4541)
!4551 = !DILocation(line: 1058, column: 46, scope: !4541)
!4552 = !DILocation(line: 1058, column: 50, scope: !4541)
!4553 = !DILocation(line: 1058, column: 44, scope: !4541)
!4554 = !DILocation(line: 1058, column: 27, scope: !4541)
!4555 = !DILocation(line: 1059, column: 7, scope: !4541)
!4556 = !DILocation(line: 1059, column: 11, scope: !4541)
!4557 = !DILocation(line: 1059, column: 4, scope: !4541)
!4558 = !DILocation(line: 1060, column: 9, scope: !4541)
!4559 = !DILocation(line: 1061, column: 1, scope: !4541)
!4560 = !DILocation(line: 1060, column: 2, scope: !4541)
!4561 = distinct !DISubprogram(name: "multi_cpu_stop", scope: !3, file: !3, line: 203, type: !4062, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4562 = !{!4563, !4564, !4566, !4567, !4568, !4569, !4572, !4574, !4576, !4577, !4578, !4579, !4580, !4583, !4584, !4588}
!4563 = !DILocalVariable(name: "data", arg: 1, scope: !4561, file: !3, line: 203, type: !123)
!4564 = !DILocalVariable(name: "msdata", scope: !4561, file: !3, line: 205, type: !4565)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4566 = !DILocalVariable(name: "newstate", scope: !4561, file: !3, line: 206, type: !87)
!4567 = !DILocalVariable(name: "curstate", scope: !4561, file: !3, line: 206, type: !87)
!4568 = !DILocalVariable(name: "cpu", scope: !4561, file: !3, line: 207, type: !135)
!4569 = !DILocalVariable(name: "pscr_ret__", scope: !4570, file: !3, line: 207, type: !135)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 207, column: 12)
!4571 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 207, column: 12)
!4572 = !DILocalVariable(name: "__vpp_verify", scope: !4573, file: !3, line: 207, type: !1791)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 207, column: 12)
!4574 = !DILocalVariable(name: "pfo_val__", scope: !4575, file: !3, line: 207, type: !116)
!4575 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 207, column: 12)
!4576 = !DILocalVariable(name: "err", scope: !4561, file: !3, line: 207, type: !135)
!4577 = !DILocalVariable(name: "cpumask", scope: !4561, file: !3, line: 208, type: !4075)
!4578 = !DILocalVariable(name: "flags", scope: !4561, file: !3, line: 209, type: !113)
!4579 = !DILocalVariable(name: "is_active", scope: !4561, file: !3, line: 210, type: !732)
!4580 = !DILocalVariable(name: "__dummy", scope: !4581, file: !3, line: 216, type: !113)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 216, column: 2)
!4582 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 216, column: 2)
!4583 = !DILocalVariable(name: "__dummy2", scope: !4581, file: !3, line: 216, type: !113)
!4584 = !DILocalVariable(name: "__dummy", scope: !4585, file: !3, line: 257, type: !113)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 257, column: 2)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 257, column: 2)
!4587 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 257, column: 2)
!4588 = !DILocalVariable(name: "__dummy2", scope: !4585, file: !3, line: 257, type: !113)
!4589 = !DILocation(line: 203, column: 33, scope: !4561)
!4590 = !DILocation(line: 205, column: 2, scope: !4561)
!4591 = !DILocation(line: 205, column: 26, scope: !4561)
!4592 = !DILocation(line: 205, column: 35, scope: !4561)
!4593 = !DILocation(line: 206, column: 2, scope: !4561)
!4594 = !DILocation(line: 206, column: 24, scope: !4561)
!4595 = !DILocation(line: 206, column: 34, scope: !4561)
!4596 = !DILocation(line: 207, column: 2, scope: !4561)
!4597 = !DILocation(line: 207, column: 6, scope: !4561)
!4598 = !DILocation(line: 207, column: 12, scope: !4571)
!4599 = !DILocation(line: 207, column: 12, scope: !4570)
!4600 = !DILocation(line: 207, column: 12, scope: !4573)
!4601 = !DILocation(line: 207, column: 12, scope: !4575)
!4602 = !{i64 2154653611}
!4603 = !DILocation(line: 207, column: 32, scope: !4561)
!4604 = !DILocation(line: 208, column: 2, scope: !4561)
!4605 = !DILocation(line: 208, column: 24, scope: !4561)
!4606 = !DILocation(line: 209, column: 2, scope: !4561)
!4607 = !DILocation(line: 209, column: 16, scope: !4561)
!4608 = !DILocation(line: 210, column: 2, scope: !4561)
!4609 = !DILocation(line: 210, column: 7, scope: !4561)
!4610 = !DILocation(line: 216, column: 2, scope: !4561)
!4611 = !DILocation(line: 216, column: 2, scope: !4581)
!4612 = !DILocation(line: 216, column: 2, scope: !4582)
!4613 = !DILocation(line: 218, column: 7, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 218, column: 6)
!4615 = !DILocation(line: 218, column: 15, scope: !4614)
!4616 = !DILocation(line: 218, column: 6, scope: !4561)
!4617 = !DILocation(line: 219, column: 11, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 218, column: 28)
!4619 = !DILocation(line: 220, column: 15, scope: !4618)
!4620 = !DILocation(line: 220, column: 36, scope: !4618)
!4621 = !DILocation(line: 220, column: 22, scope: !4618)
!4622 = !DILocation(line: 220, column: 19, scope: !4618)
!4623 = !DILocation(line: 220, column: 13, scope: !4618)
!4624 = !DILocation(line: 221, column: 2, scope: !4618)
!4625 = !DILocation(line: 222, column: 13, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 221, column: 9)
!4627 = !DILocation(line: 222, column: 21, scope: !4626)
!4628 = !DILocation(line: 222, column: 11, scope: !4626)
!4629 = !DILocation(line: 223, column: 32, scope: !4626)
!4630 = !DILocation(line: 223, column: 37, scope: !4626)
!4631 = !DILocation(line: 223, column: 15, scope: !4626)
!4632 = !DILocation(line: 223, column: 13, scope: !4626)
!4633 = !DILocation(line: 227, column: 2, scope: !4561)
!4634 = !DILocation(line: 229, column: 22, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 227, column: 5)
!4636 = !DILocation(line: 229, column: 3, scope: !4635)
!4637 = !DILocation(line: 230, column: 14, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 230, column: 14)
!4639 = !DILocation(line: 230, column: 14, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 230, column: 14)
!4641 = !DILocation(line: 230, column: 12, scope: !4635)
!4642 = !DILocation(line: 231, column: 7, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 231, column: 7)
!4644 = !DILocation(line: 231, column: 19, scope: !4643)
!4645 = !DILocation(line: 231, column: 16, scope: !4643)
!4646 = !DILocation(line: 231, column: 7, scope: !4635)
!4647 = !DILocation(line: 232, column: 15, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 231, column: 29)
!4649 = !DILocation(line: 232, column: 13, scope: !4648)
!4650 = !DILocation(line: 233, column: 12, scope: !4648)
!4651 = !DILocation(line: 233, column: 4, scope: !4648)
!4652 = !DILocation(line: 235, column: 5, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 233, column: 22)
!4654 = !DILocation(line: 235, column: 5, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 235, column: 5)
!4656 = !DILocation(line: 236, column: 5, scope: !4653)
!4657 = !DILocation(line: 236, column: 5, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 236, column: 5)
!4659 = !DILocation(line: 237, column: 5, scope: !4653)
!4660 = !DILocation(line: 239, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 239, column: 9)
!4662 = !DILocation(line: 239, column: 9, scope: !4653)
!4663 = !DILocation(line: 240, column: 12, scope: !4661)
!4664 = !DILocation(line: 240, column: 20, scope: !4661)
!4665 = !DILocation(line: 240, column: 23, scope: !4661)
!4666 = !DILocation(line: 240, column: 31, scope: !4661)
!4667 = !DILocation(line: 240, column: 10, scope: !4661)
!4668 = !DILocation(line: 240, column: 6, scope: !4661)
!4669 = !DILocation(line: 241, column: 5, scope: !4653)
!4670 = !DILocation(line: 243, column: 5, scope: !4653)
!4671 = !DILocation(line: 245, column: 14, scope: !4648)
!4672 = !DILocation(line: 245, column: 4, scope: !4648)
!4673 = !DILocation(line: 246, column: 3, scope: !4648)
!4674 = !DILocation(line: 246, column: 14, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 246, column: 14)
!4676 = !DILocation(line: 246, column: 23, scope: !4675)
!4677 = !DILocation(line: 246, column: 14, scope: !4643)
!4678 = !DILocation(line: 252, column: 4, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 246, column: 45)
!4680 = !DILocation(line: 253, column: 3, scope: !4679)
!4681 = !DILocation(line: 254, column: 3, scope: !4635)
!4682 = !DILocation(line: 255, column: 2, scope: !4635)
!4683 = !DILocation(line: 255, column: 11, scope: !4561)
!4684 = !DILocation(line: 255, column: 20, scope: !4561)
!4685 = distinct !{!4685, !4633, !4686, !4687, !4688}
!4686 = !DILocation(line: 255, column: 38, scope: !4561)
!4687 = !{!"llvm.loop.mustprogress"}
!4688 = !{!"llvm.loop.unroll.disable"}
!4689 = !DILocation(line: 257, column: 2, scope: !4561)
!4690 = !DILocation(line: 257, column: 2, scope: !4587)
!4691 = !DILocation(line: 257, column: 2, scope: !4585)
!4692 = !DILocation(line: 257, column: 2, scope: !4586)
!4693 = !DILocation(line: 257, column: 2, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 257, column: 2)
!4695 = !DILocation(line: 258, column: 9, scope: !4561)
!4696 = !DILocation(line: 259, column: 1, scope: !4561)
!4697 = !DILocation(line: 258, column: 2, scope: !4561)
!4698 = distinct !DISubprogram(name: "set_state", scope: !3, file: !3, line: 181, type: !4699, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4565, !87}
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "msdata", arg: 1, scope: !4698, file: !3, line: 181, type: !4565)
!4703 = !DILocalVariable(name: "newstate", arg: 2, scope: !4698, file: !3, line: 182, type: !87)
!4704 = !DILocation(line: 181, column: 47, scope: !4698)
!4705 = !DILocation(line: 182, column: 31, scope: !4698)
!4706 = !DILocation(line: 185, column: 14, scope: !4698)
!4707 = !DILocation(line: 185, column: 22, scope: !4698)
!4708 = !DILocation(line: 185, column: 34, scope: !4698)
!4709 = !DILocation(line: 185, column: 42, scope: !4698)
!4710 = !DILocation(line: 185, column: 2, scope: !4698)
!4711 = !DILocation(line: 186, column: 2, scope: !4698)
!4712 = !DILocation(line: 186, column: 2, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 186, column: 2)
!4714 = !DILocation(line: 186, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 186, column: 2)
!4716 = !{i64 2154644698}
!4717 = !DILocation(line: 187, column: 2, scope: !4698)
!4718 = !DILocation(line: 187, column: 2, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 187, column: 2)
!4720 = !DILocation(line: 187, column: 2, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 187, column: 2)
!4722 = !DILocation(line: 187, column: 2, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 187, column: 2)
!4724 = !DILocation(line: 188, column: 1, scope: !4698)
!4725 = !DILocation(line: 261, column: 41, scope: !4166)
!4726 = !DILocation(line: 261, column: 69, scope: !4166)
!4727 = !DILocation(line: 262, column: 13, scope: !4166)
!4728 = !DILocation(line: 262, column: 41, scope: !4166)
!4729 = !DILocation(line: 264, column: 2, scope: !4166)
!4730 = !DILocation(line: 264, column: 22, scope: !4166)
!4731 = !DILocation(line: 264, column: 33, scope: !4177)
!4732 = !DILocation(line: 264, column: 33, scope: !4176)
!4733 = !DILocation(line: 264, column: 33, scope: !4179)
!4734 = !DILocation(line: 265, column: 2, scope: !4166)
!4735 = !DILocation(line: 265, column: 22, scope: !4166)
!4736 = !DILocation(line: 265, column: 33, scope: !4183)
!4737 = !DILocation(line: 265, column: 33, scope: !4182)
!4738 = !DILocation(line: 265, column: 33, scope: !4185)
!4739 = !DILocation(line: 266, column: 2, scope: !4166)
!4740 = !DILocation(line: 267, column: 2, scope: !4166)
!4741 = !DILocation(line: 267, column: 6, scope: !4166)
!4742 = !DILocation(line: 269, column: 1, scope: !4166)
!4743 = !DILocation(line: 277, column: 2, scope: !4166)
!4744 = !DILocation(line: 277, column: 2, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 277, column: 2)
!4746 = !{i64 2154659691}
!4747 = !DILocation(line: 278, column: 2, scope: !4166)
!4748 = !DILocation(line: 279, column: 2, scope: !4166)
!4749 = !DILocation(line: 281, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 281, column: 6)
!4751 = !DILocation(line: 281, column: 17, scope: !4750)
!4752 = !DILocation(line: 281, column: 25, scope: !4750)
!4753 = !DILocation(line: 281, column: 29, scope: !4750)
!4754 = !DILocation(line: 281, column: 39, scope: !4750)
!4755 = !DILocation(line: 281, column: 6, scope: !4166)
!4756 = !DILocation(line: 282, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 281, column: 48)
!4758 = !DILocation(line: 283, column: 3, scope: !4757)
!4759 = !DILocation(line: 296, column: 6, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 296, column: 6)
!4761 = !DILocation(line: 296, column: 6, scope: !4166)
!4762 = !DILocation(line: 297, column: 7, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 296, column: 39)
!4764 = !DILocation(line: 298, column: 3, scope: !4763)
!4765 = !DILocation(line: 301, column: 6, scope: !4166)
!4766 = !DILocation(line: 302, column: 24, scope: !4166)
!4767 = !DILocation(line: 302, column: 34, scope: !4166)
!4768 = !DILocation(line: 302, column: 2, scope: !4166)
!4769 = !DILocation(line: 303, column: 24, scope: !4166)
!4770 = !DILocation(line: 303, column: 34, scope: !4166)
!4771 = !DILocation(line: 303, column: 2, scope: !4166)
!4772 = !DILocation(line: 305, column: 1, scope: !4166)
!4773 = !DILocation(line: 306, column: 2, scope: !4166)
!4774 = !DILocation(line: 307, column: 2, scope: !4166)
!4775 = !DILocation(line: 309, column: 6, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 309, column: 6)
!4777 = !DILocation(line: 309, column: 6, scope: !4166)
!4778 = !DILocation(line: 310, column: 3, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 309, column: 33)
!4780 = !DILocation(line: 310, column: 3, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 310, column: 3)
!4782 = !{i64 2154660119}
!4783 = !DILocation(line: 310, column: 3, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 310, column: 3)
!4785 = !DILocation(line: 310, column: 3, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 310, column: 3)
!4787 = !{i64 2154660301}
!4788 = !DILocation(line: 312, column: 3, scope: !4779)
!4789 = !DILocation(line: 312, column: 10, scope: !4779)
!4790 = !DILocation(line: 313, column: 4, scope: !4779)
!4791 = distinct !{!4791, !4788, !4792, !4687, !4688}
!4792 = !DILocation(line: 313, column: 14, scope: !4779)
!4793 = !DILocation(line: 315, column: 3, scope: !4779)
!4794 = !DILocation(line: 318, column: 2, scope: !4166)
!4795 = !DILocation(line: 319, column: 2, scope: !4166)
!4796 = !DILocation(line: 319, column: 2, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 319, column: 2)
!4798 = !{i64 2154662030}
!4799 = !DILocation(line: 319, column: 2, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 319, column: 2)
!4801 = !DILocation(line: 319, column: 2, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 319, column: 2)
!4803 = !{i64 2154662212}
!4804 = !DILocation(line: 321, column: 9, scope: !4166)
!4805 = !DILocation(line: 322, column: 1, scope: !4166)
!4806 = !DILocation(line: 321, column: 2, scope: !4166)
!4807 = distinct !DISubprogram(name: "stop_one_cpu_nowait", scope: !3, file: !3, line: 384, type: !4808, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!732, !7, !4060, !123, !4089}
!4810 = !{!4811, !4812, !4813, !4814}
!4811 = !DILocalVariable(name: "cpu", arg: 1, scope: !4807, file: !3, line: 384, type: !7)
!4812 = !DILocalVariable(name: "fn", arg: 2, scope: !4807, file: !3, line: 384, type: !4060)
!4813 = !DILocalVariable(name: "arg", arg: 3, scope: !4807, file: !3, line: 384, type: !123)
!4814 = !DILocalVariable(name: "work_buf", arg: 4, scope: !4807, file: !3, line: 385, type: !4089)
!4815 = !DILocation(line: 384, column: 39, scope: !4807)
!4816 = !DILocation(line: 384, column: 58, scope: !4807)
!4817 = !DILocation(line: 384, column: 68, scope: !4807)
!4818 = !DILocation(line: 385, column: 26, scope: !4807)
!4819 = !DILocation(line: 387, column: 3, scope: !4807)
!4820 = !DILocation(line: 387, column: 36, scope: !4807)
!4821 = !DILocation(line: 387, column: 44, scope: !4807)
!4822 = !DILocation(line: 387, column: 70, scope: !4807)
!4823 = !DILocation(line: 387, column: 55, scope: !4807)
!4824 = !DILocation(line: 387, column: 14, scope: !4807)
!4825 = !DILocation(line: 388, column: 29, scope: !4807)
!4826 = !DILocation(line: 388, column: 34, scope: !4807)
!4827 = !DILocation(line: 388, column: 9, scope: !4807)
!4828 = !DILocation(line: 388, column: 2, scope: !4807)
!4829 = distinct !DISubprogram(name: "stop_machine_park", scope: !3, file: !3, line: 526, type: !3472, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4830)
!4830 = !{!4831, !4832, !4833, !4836}
!4831 = !DILocalVariable(name: "cpu", arg: 1, scope: !4829, file: !3, line: 526, type: !135)
!4832 = !DILocalVariable(name: "stopper", scope: !4829, file: !3, line: 528, type: !100)
!4833 = !DILocalVariable(name: "__vpp_verify", scope: !4834, file: !3, line: 528, type: !1791)
!4834 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 528, column: 33)
!4835 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 528, column: 33)
!4836 = !DILocalVariable(name: "__ptr", scope: !4837, file: !3, line: 528, type: !113)
!4837 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 528, column: 33)
!4838 = !DILocation(line: 526, column: 28, scope: !4829)
!4839 = !DILocation(line: 528, column: 2, scope: !4829)
!4840 = !DILocation(line: 528, column: 22, scope: !4829)
!4841 = !DILocation(line: 528, column: 33, scope: !4835)
!4842 = !DILocation(line: 528, column: 33, scope: !4834)
!4843 = !DILocation(line: 528, column: 33, scope: !4837)
!4844 = !DILocation(line: 534, column: 2, scope: !4829)
!4845 = !DILocation(line: 534, column: 11, scope: !4829)
!4846 = !DILocation(line: 534, column: 19, scope: !4829)
!4847 = !DILocation(line: 535, column: 15, scope: !4829)
!4848 = !DILocation(line: 535, column: 24, scope: !4829)
!4849 = !DILocation(line: 535, column: 2, scope: !4829)
!4850 = !DILocation(line: 536, column: 1, scope: !4829)
!4851 = !DISubprogram(name: "kthread_park", scope: !4852, file: !4852, line: 97, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4852 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!135, !104}
!4855 = distinct !DISubprogram(name: "stop_machine_unpark", scope: !3, file: !3, line: 550, type: !3472, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4856)
!4856 = !{!4857, !4858, !4859, !4862}
!4857 = !DILocalVariable(name: "cpu", arg: 1, scope: !4855, file: !3, line: 550, type: !135)
!4858 = !DILocalVariable(name: "stopper", scope: !4855, file: !3, line: 552, type: !100)
!4859 = !DILocalVariable(name: "__vpp_verify", scope: !4860, file: !3, line: 552, type: !1791)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 552, column: 33)
!4861 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 552, column: 33)
!4862 = !DILocalVariable(name: "__ptr", scope: !4863, file: !3, line: 552, type: !113)
!4863 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 552, column: 33)
!4864 = !DILocation(line: 550, column: 30, scope: !4855)
!4865 = !DILocation(line: 552, column: 2, scope: !4855)
!4866 = !DILocation(line: 552, column: 22, scope: !4855)
!4867 = !DILocation(line: 552, column: 33, scope: !4861)
!4868 = !DILocation(line: 552, column: 33, scope: !4860)
!4869 = !DILocation(line: 552, column: 33, scope: !4863)
!4870 = !DILocation(line: 554, column: 2, scope: !4855)
!4871 = !DILocation(line: 554, column: 11, scope: !4855)
!4872 = !DILocation(line: 554, column: 19, scope: !4855)
!4873 = !DILocation(line: 555, column: 17, scope: !4855)
!4874 = !DILocation(line: 555, column: 26, scope: !4855)
!4875 = !DILocation(line: 555, column: 2, scope: !4855)
!4876 = !DILocation(line: 556, column: 1, scope: !4855)
!4877 = !DISubprogram(name: "kthread_unpark", scope: !4852, file: !4852, line: 98, type: !4878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !104}
!4880 = distinct !DISubprogram(name: "__initstub__kmod_stop_machine__293_584_cpu_stop_initearly", scope: !3, file: !3, line: 584, type: !2045, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4881 = !DILocation(line: 584, column: 1, scope: !4880)
!4882 = distinct !DISubprogram(name: "cpu_stop_init", scope: !3, file: !3, line: 568, type: !2045, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4883)
!4883 = !{!4884, !4885, !4889, !4892, !4894, !4896, !4898}
!4884 = !DILocalVariable(name: "cpu", scope: !4882, file: !3, line: 570, type: !7)
!4885 = !DILocalVariable(name: "stopper", scope: !4886, file: !3, line: 573, type: !100)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 572, column: 29)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 572, column: 2)
!4888 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 572, column: 2)
!4889 = !DILocalVariable(name: "__vpp_verify", scope: !4890, file: !3, line: 573, type: !1791)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 573, column: 34)
!4891 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 573, column: 34)
!4892 = !DILocalVariable(name: "__ptr", scope: !4893, file: !3, line: 573, type: !113)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 573, column: 34)
!4894 = !DILocalVariable(name: "pscr_ret__", scope: !4895, file: !3, line: 580, type: !135)
!4895 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 580, column: 22)
!4896 = !DILocalVariable(name: "__vpp_verify", scope: !4897, file: !3, line: 580, type: !1791)
!4897 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 580, column: 22)
!4898 = !DILocalVariable(name: "pfo_val__", scope: !4899, file: !3, line: 580, type: !116)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 580, column: 22)
!4900 = !DILocation(line: 570, column: 2, scope: !4882)
!4901 = !DILocation(line: 570, column: 15, scope: !4882)
!4902 = !DILocation(line: 572, column: 2, scope: !4888)
!4903 = !DILocation(line: 572, column: 2, scope: !4887)
!4904 = !DILocation(line: 573, column: 3, scope: !4886)
!4905 = !DILocation(line: 573, column: 23, scope: !4886)
!4906 = !DILocation(line: 573, column: 34, scope: !4891)
!4907 = !DILocation(line: 573, column: 34, scope: !4890)
!4908 = !DILocation(line: 573, column: 34, scope: !4893)
!4909 = !DILocation(line: 575, column: 3, scope: !4886)
!4910 = !DILocation(line: 575, column: 3, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 575, column: 3)
!4912 = !DILocation(line: 576, column: 19, scope: !4886)
!4913 = !DILocation(line: 576, column: 28, scope: !4886)
!4914 = !DILocation(line: 576, column: 3, scope: !4886)
!4915 = !DILocation(line: 577, column: 2, scope: !4887)
!4916 = !DILocation(line: 577, column: 2, scope: !4886)
!4917 = distinct !{!4917, !4902, !4918, !4687, !4688}
!4918 = !DILocation(line: 577, column: 2, scope: !4888)
!4919 = !DILocation(line: 579, column: 2, scope: !4882)
!4920 = !DILocation(line: 579, column: 2, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 579, column: 2)
!4922 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 579, column: 2)
!4923 = !DILocation(line: 579, column: 2, scope: !4922)
!4924 = !DILocation(line: 579, column: 2, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 579, column: 2)
!4926 = !DILocation(line: 579, column: 2, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 579, column: 2)
!4928 = !DILocation(line: 579, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 579, column: 2)
!4930 = !{i64 2154681044, i64 2154681073, i64 2154681119, i64 2154681177, i64 2154681231, i64 2154681285, i64 2154681340, i64 2154681371}
!4931 = !DILocation(line: 580, column: 22, scope: !4895)
!4932 = !DILocation(line: 580, column: 22, scope: !4897)
!4933 = !DILocation(line: 580, column: 22, scope: !4899)
!4934 = !{i64 2154684321}
!4935 = !DILocation(line: 580, column: 22, scope: !4882)
!4936 = !DILocation(line: 580, column: 2, scope: !4882)
!4937 = !DILocation(line: 581, column: 27, scope: !4882)
!4938 = !DILocation(line: 583, column: 1, scope: !4882)
!4939 = !DILocation(line: 582, column: 2, scope: !4882)
!4940 = distinct !DISubprogram(name: "stop_machine_cpuslocked", scope: !3, file: !3, line: 586, type: !4941, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4943)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!135, !4060, !123, !4075}
!4943 = !{!4944, !4945, !4946, !4947, !4948, !4951, !4952, !4954, !4957, !4961, !4962, !4966}
!4944 = !DILocalVariable(name: "fn", arg: 1, scope: !4940, file: !3, line: 586, type: !4060)
!4945 = !DILocalVariable(name: "data", arg: 2, scope: !4940, file: !3, line: 586, type: !123)
!4946 = !DILocalVariable(name: "cpus", arg: 3, scope: !4940, file: !3, line: 587, type: !4075)
!4947 = !DILocalVariable(name: "msdata", scope: !4940, file: !3, line: 589, type: !4491)
!4948 = !DILocalVariable(name: "flags", scope: !4949, file: !3, line: 604, type: !113)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 598, column: 33)
!4950 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 598, column: 6)
!4951 = !DILocalVariable(name: "ret", scope: !4949, file: !3, line: 605, type: !135)
!4952 = !DILocalVariable(name: "__ret_warn_on", scope: !4953, file: !3, line: 607, type: !135)
!4953 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 607, column: 3)
!4954 = !DILocalVariable(name: "__flags", scope: !4955, file: !3, line: 607, type: !135)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 607, column: 3)
!4956 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 607, column: 3)
!4957 = !DILocalVariable(name: "__dummy", scope: !4958, file: !3, line: 609, type: !113)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 609, column: 3)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 609, column: 3)
!4960 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 609, column: 3)
!4961 = !DILocalVariable(name: "__dummy2", scope: !4958, file: !3, line: 609, type: !113)
!4962 = !DILocalVariable(name: "__dummy", scope: !4963, file: !3, line: 612, type: !113)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 612, column: 3)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 612, column: 3)
!4965 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 612, column: 3)
!4966 = !DILocalVariable(name: "__dummy2", scope: !4963, file: !3, line: 612, type: !113)
!4967 = !DILocation(line: 586, column: 43, scope: !4940)
!4968 = !DILocation(line: 586, column: 53, scope: !4940)
!4969 = !DILocation(line: 587, column: 30, scope: !4940)
!4970 = !DILocation(line: 589, column: 2, scope: !4940)
!4971 = !DILocation(line: 589, column: 25, scope: !4940)
!4972 = !DILocation(line: 589, column: 34, scope: !4940)
!4973 = !DILocation(line: 590, column: 9, scope: !4940)
!4974 = !DILocation(line: 591, column: 11, scope: !4940)
!4975 = !DILocation(line: 592, column: 18, scope: !4940)
!4976 = !DILocation(line: 593, column: 18, scope: !4940)
!4977 = !DILocation(line: 596, column: 2, scope: !4940)
!4978 = !DILocation(line: 598, column: 7, scope: !4950)
!4979 = !DILocation(line: 598, column: 6, scope: !4940)
!4980 = !DILocation(line: 604, column: 3, scope: !4949)
!4981 = !DILocation(line: 604, column: 17, scope: !4949)
!4982 = !DILocation(line: 605, column: 3, scope: !4949)
!4983 = !DILocation(line: 605, column: 7, scope: !4949)
!4984 = !DILocation(line: 607, column: 3, scope: !4953)
!4985 = !DILocation(line: 607, column: 3, scope: !4956)
!4986 = !DILocation(line: 607, column: 3, scope: !4955)
!4987 = !DILocation(line: 607, column: 3, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 607, column: 3)
!4989 = !DILocation(line: 607, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 607, column: 3)
!4991 = !{i64 2154691980, i64 2154692009, i64 2154692055, i64 2154692113, i64 2154692167, i64 2154692221, i64 2154692276, i64 2154692307, i64 2154692615, i64 2154692621, i64 2154692668, i64 2154692691, i64 2154692717}
!4992 = !DILocation(line: 607, column: 3, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 607, column: 3)
!4994 = !DILocation(line: 607, column: 3, scope: !4949)
!4995 = !DILocation(line: 609, column: 3, scope: !4949)
!4996 = !DILocation(line: 609, column: 3, scope: !4960)
!4997 = !DILocation(line: 609, column: 3, scope: !4958)
!4998 = !DILocation(line: 609, column: 3, scope: !4959)
!4999 = !DILocation(line: 610, column: 3, scope: !4949)
!5000 = !DILocation(line: 610, column: 3, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 610, column: 3)
!5002 = !DILocation(line: 611, column: 11, scope: !4949)
!5003 = !DILocation(line: 611, column: 15, scope: !4949)
!5004 = !DILocation(line: 611, column: 9, scope: !4949)
!5005 = !DILocation(line: 611, column: 7, scope: !4949)
!5006 = !DILocation(line: 612, column: 3, scope: !4949)
!5007 = !DILocation(line: 612, column: 3, scope: !4965)
!5008 = !DILocation(line: 612, column: 3, scope: !4963)
!5009 = !DILocation(line: 612, column: 3, scope: !4964)
!5010 = !DILocation(line: 612, column: 3, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 612, column: 3)
!5012 = !DILocation(line: 614, column: 10, scope: !4949)
!5013 = !DILocation(line: 614, column: 3, scope: !4949)
!5014 = !DILocation(line: 615, column: 2, scope: !4950)
!5015 = !DILocation(line: 618, column: 2, scope: !4940)
!5016 = !DILocation(line: 619, column: 9, scope: !4940)
!5017 = !DILocation(line: 619, column: 2, scope: !4940)
!5018 = !DILocation(line: 620, column: 1, scope: !4940)
!5019 = distinct !DISubprogram(name: "num_online_cpus", scope: !414, file: !414, line: 1072, type: !5020, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!7}
!5022 = !DILocation(line: 1074, column: 9, scope: !5019)
!5023 = !DILocation(line: 1074, column: 2, scope: !5019)
!5024 = !DISubprogram(name: "lockdep_assert_cpus_held", scope: !5025, file: !5025, line: 138, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5025 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!5026 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5027, file: !5027, line: 101, type: !5028, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5030)
!5027 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!113}
!5030 = !{!5031}
!5031 = !DILocalVariable(name: "flags", scope: !5026, file: !5027, line: 103, type: !113)
!5032 = !DILocation(line: 103, column: 2, scope: !5026)
!5033 = !DILocation(line: 103, column: 16, scope: !5026)
!5034 = !DILocation(line: 103, column: 24, scope: !5026)
!5035 = !DILocation(line: 104, column: 2, scope: !5026)
!5036 = !DILocation(line: 105, column: 9, scope: !5026)
!5037 = !DILocation(line: 106, column: 1, scope: !5026)
!5038 = !DILocation(line: 105, column: 2, scope: !5026)
!5039 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5027, file: !5027, line: 132, type: !5040, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !113}
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "flags", arg: 1, scope: !5039, file: !5027, line: 132, type: !113)
!5044 = !DILocation(line: 132, column: 66, scope: !5039)
!5045 = !DILocation(line: 134, column: 32, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5039, file: !5027, line: 134, column: 6)
!5047 = !DILocation(line: 134, column: 7, scope: !5046)
!5048 = !DILocation(line: 134, column: 6, scope: !5039)
!5049 = !DILocation(line: 135, column: 3, scope: !5046)
!5050 = !DILocation(line: 136, column: 1, scope: !5039)
!5051 = distinct !DISubprogram(name: "stop_cpus", scope: !3, file: !3, line: 463, type: !5052, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5054)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!135, !4075, !4060, !123}
!5054 = !{!5055, !5056, !5057, !5058}
!5055 = !DILocalVariable(name: "cpumask", arg: 1, scope: !5051, file: !3, line: 463, type: !4075)
!5056 = !DILocalVariable(name: "fn", arg: 2, scope: !5051, file: !3, line: 463, type: !4060)
!5057 = !DILocalVariable(name: "arg", arg: 3, scope: !5051, file: !3, line: 463, type: !123)
!5058 = !DILocalVariable(name: "ret", scope: !5051, file: !3, line: 465, type: !135)
!5059 = !DILocation(line: 463, column: 44, scope: !5051)
!5060 = !DILocation(line: 463, column: 67, scope: !5051)
!5061 = !DILocation(line: 463, column: 77, scope: !5051)
!5062 = !DILocation(line: 465, column: 2, scope: !5051)
!5063 = !DILocation(line: 465, column: 6, scope: !5051)
!5064 = !DILocation(line: 468, column: 2, scope: !5051)
!5065 = !DILocation(line: 469, column: 20, scope: !5051)
!5066 = !DILocation(line: 469, column: 29, scope: !5051)
!5067 = !DILocation(line: 469, column: 33, scope: !5051)
!5068 = !DILocation(line: 469, column: 8, scope: !5051)
!5069 = !DILocation(line: 469, column: 6, scope: !5051)
!5070 = !DILocation(line: 470, column: 2, scope: !5051)
!5071 = !DILocation(line: 471, column: 9, scope: !5051)
!5072 = !DILocation(line: 472, column: 1, scope: !5051)
!5073 = !DILocation(line: 471, column: 2, scope: !5051)
!5074 = distinct !DISubprogram(name: "stop_machine", scope: !3, file: !3, line: 622, type: !4941, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5075)
!5075 = !{!5076, !5077, !5078, !5079}
!5076 = !DILocalVariable(name: "fn", arg: 1, scope: !5074, file: !3, line: 622, type: !4060)
!5077 = !DILocalVariable(name: "data", arg: 2, scope: !5074, file: !3, line: 622, type: !123)
!5078 = !DILocalVariable(name: "cpus", arg: 3, scope: !5074, file: !3, line: 622, type: !4075)
!5079 = !DILocalVariable(name: "ret", scope: !5074, file: !3, line: 624, type: !135)
!5080 = !DILocation(line: 622, column: 32, scope: !5074)
!5081 = !DILocation(line: 622, column: 42, scope: !5074)
!5082 = !DILocation(line: 622, column: 70, scope: !5074)
!5083 = !DILocation(line: 624, column: 2, scope: !5074)
!5084 = !DILocation(line: 624, column: 6, scope: !5074)
!5085 = !DILocation(line: 627, column: 2, scope: !5074)
!5086 = !DILocation(line: 628, column: 32, scope: !5074)
!5087 = !DILocation(line: 628, column: 36, scope: !5074)
!5088 = !DILocation(line: 628, column: 42, scope: !5074)
!5089 = !DILocation(line: 628, column: 8, scope: !5074)
!5090 = !DILocation(line: 628, column: 6, scope: !5074)
!5091 = !DILocation(line: 629, column: 2, scope: !5074)
!5092 = !DILocation(line: 630, column: 9, scope: !5074)
!5093 = !DILocation(line: 631, column: 1, scope: !5074)
!5094 = !DILocation(line: 630, column: 2, scope: !5074)
!5095 = !DISubprogram(name: "cpus_read_lock", scope: !5025, file: !5025, line: 135, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5096 = !DISubprogram(name: "cpus_read_unlock", scope: !5025, file: !5025, line: 136, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = distinct !DISubprogram(name: "stop_core_cpuslocked", scope: !3, file: !3, line: 635, type: !4348, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103}
!5099 = !DILocalVariable(name: "cpu", arg: 1, scope: !5097, file: !3, line: 635, type: !7)
!5100 = !DILocalVariable(name: "fn", arg: 2, scope: !5097, file: !3, line: 635, type: !4060)
!5101 = !DILocalVariable(name: "data", arg: 3, scope: !5097, file: !3, line: 635, type: !123)
!5102 = !DILocalVariable(name: "smt_mask", scope: !5097, file: !3, line: 637, type: !4075)
!5103 = !DILocalVariable(name: "msdata", scope: !5097, file: !3, line: 639, type: !4491)
!5104 = !DILocation(line: 635, column: 39, scope: !5097)
!5105 = !DILocation(line: 635, column: 58, scope: !5097)
!5106 = !DILocation(line: 635, column: 68, scope: !5097)
!5107 = !DILocation(line: 637, column: 2, scope: !5097)
!5108 = !DILocation(line: 637, column: 24, scope: !5097)
!5109 = !DILocation(line: 637, column: 48, scope: !5097)
!5110 = !DILocation(line: 637, column: 35, scope: !5097)
!5111 = !DILocation(line: 639, column: 2, scope: !5097)
!5112 = !DILocation(line: 639, column: 25, scope: !5097)
!5113 = !DILocation(line: 639, column: 34, scope: !5097)
!5114 = !DILocation(line: 640, column: 9, scope: !5097)
!5115 = !DILocation(line: 641, column: 11, scope: !5097)
!5116 = !DILocation(line: 642, column: 33, scope: !5097)
!5117 = !DILocation(line: 642, column: 18, scope: !5097)
!5118 = !DILocation(line: 643, column: 18, scope: !5097)
!5119 = !DILocation(line: 646, column: 2, scope: !5097)
!5120 = !DILocation(line: 649, column: 2, scope: !5097)
!5121 = !DILocation(line: 650, column: 19, scope: !5097)
!5122 = !DILocation(line: 650, column: 9, scope: !5097)
!5123 = !DILocation(line: 651, column: 1, scope: !5097)
!5124 = !DILocation(line: 650, column: 2, scope: !5097)
!5125 = distinct !DISubprogram(name: "cpu_smt_mask", scope: !5126, file: !5126, line: 237, type: !5127, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5126 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!4075, !135}
!5129 = !{!5130, !5131, !5134}
!5130 = !DILocalVariable(name: "cpu", arg: 1, scope: !5125, file: !5126, line: 237, type: !135)
!5131 = !DILocalVariable(name: "__vpp_verify", scope: !5132, file: !5126, line: 239, type: !1791)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !5126, line: 239, column: 9)
!5133 = distinct !DILexicalBlock(scope: !5125, file: !5126, line: 239, column: 9)
!5134 = !DILocalVariable(name: "__ptr", scope: !5135, file: !5126, line: 239, type: !113)
!5135 = distinct !DILexicalBlock(scope: !5133, file: !5126, line: 239, column: 9)
!5136 = !DILocation(line: 237, column: 54, scope: !5125)
!5137 = !DILocation(line: 239, column: 9, scope: !5133)
!5138 = !DILocation(line: 239, column: 9, scope: !5132)
!5139 = !DILocation(line: 239, column: 9, scope: !5135)
!5140 = !DILocation(line: 239, column: 9, scope: !5125)
!5141 = !DILocation(line: 239, column: 2, scope: !5125)
!5142 = distinct !DISubprogram(name: "cpumask_weight", scope: !414, file: !414, line: 690, type: !5143, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5145)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!7, !4075}
!5145 = !{!5146}
!5146 = !DILocalVariable(name: "srcp", arg: 1, scope: !5142, file: !414, line: 690, type: !4075)
!5147 = !DILocation(line: 690, column: 65, scope: !5142)
!5148 = !DILocation(line: 692, column: 23, scope: !5142)
!5149 = !DILocation(line: 692, column: 9, scope: !5142)
!5150 = !DILocation(line: 692, column: 2, scope: !5142)
!5151 = distinct !DISubprogram(name: "stop_machine_from_inactive_cpu", scope: !3, file: !3, line: 677, type: !4941, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5163, !5165}
!5153 = !DILocalVariable(name: "fn", arg: 1, scope: !5151, file: !3, line: 677, type: !4060)
!5154 = !DILocalVariable(name: "data", arg: 2, scope: !5151, file: !3, line: 677, type: !123)
!5155 = !DILocalVariable(name: "cpus", arg: 3, scope: !5151, file: !3, line: 678, type: !4075)
!5156 = !DILocalVariable(name: "msdata", scope: !5151, file: !3, line: 680, type: !4491)
!5157 = !DILocalVariable(name: "done", scope: !5151, file: !3, line: 682, type: !4068)
!5158 = !DILocalVariable(name: "ret", scope: !5151, file: !3, line: 683, type: !135)
!5159 = !DILocalVariable(name: "pscr_ret__", scope: !5160, file: !3, line: 686, type: !135)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 686, column: 2)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 686, column: 2)
!5162 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 686, column: 2)
!5163 = !DILocalVariable(name: "__vpp_verify", scope: !5164, file: !3, line: 686, type: !1791)
!5164 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 686, column: 2)
!5165 = !DILocalVariable(name: "pfo_val__", scope: !5166, file: !3, line: 686, type: !116)
!5166 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 686, column: 2)
!5167 = !DILocation(line: 677, column: 50, scope: !5151)
!5168 = !DILocation(line: 677, column: 60, scope: !5151)
!5169 = !DILocation(line: 678, column: 29, scope: !5151)
!5170 = !DILocation(line: 680, column: 2, scope: !5151)
!5171 = !DILocation(line: 680, column: 25, scope: !5151)
!5172 = !DILocation(line: 680, column: 34, scope: !5151)
!5173 = !DILocation(line: 680, column: 42, scope: !5151)
!5174 = !DILocation(line: 680, column: 54, scope: !5151)
!5175 = !DILocation(line: 681, column: 25, scope: !5151)
!5176 = !DILocation(line: 682, column: 2, scope: !5151)
!5177 = !DILocation(line: 682, column: 23, scope: !5151)
!5178 = !DILocation(line: 683, column: 2, scope: !5151)
!5179 = !DILocation(line: 683, column: 6, scope: !5151)
!5180 = !DILocation(line: 686, column: 2, scope: !5151)
!5181 = !DILocation(line: 686, column: 2, scope: !5160)
!5182 = !DILocation(line: 686, column: 2, scope: !5164)
!5183 = !DILocation(line: 686, column: 2, scope: !5166)
!5184 = !{i64 2154702905}
!5185 = !DILocation(line: 686, column: 2, scope: !5161)
!5186 = !DILocation(line: 686, column: 2, scope: !5162)
!5187 = !DILocation(line: 686, column: 2, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 686, column: 2)
!5189 = !DILocation(line: 686, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 686, column: 2)
!5191 = !DILocation(line: 686, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 686, column: 2)
!5193 = !{i64 2154703653, i64 2154703682, i64 2154703728, i64 2154703786, i64 2154703840, i64 2154703894, i64 2154703949, i64 2154703980}
!5194 = !DILocation(line: 687, column: 23, scope: !5151)
!5195 = !DILocation(line: 687, column: 41, scope: !5151)
!5196 = !DILocation(line: 687, column: 9, scope: !5151)
!5197 = !DILocation(line: 687, column: 21, scope: !5151)
!5198 = !DILocation(line: 690, column: 2, scope: !5151)
!5199 = !DILocation(line: 690, column: 10, scope: !5151)
!5200 = !DILocation(line: 690, column: 9, scope: !5151)
!5201 = !DILocation(line: 691, column: 3, scope: !5151)
!5202 = distinct !{!5202, !5198, !5203, !4687, !4688}
!5203 = !DILocation(line: 691, column: 13, scope: !5151)
!5204 = !DILocation(line: 694, column: 2, scope: !5151)
!5205 = !DILocation(line: 695, column: 28, scope: !5151)
!5206 = !DILocation(line: 695, column: 2, scope: !5151)
!5207 = !DILocation(line: 696, column: 2, scope: !5151)
!5208 = !DILocation(line: 698, column: 8, scope: !5151)
!5209 = !DILocation(line: 698, column: 6, scope: !5151)
!5210 = !DILocation(line: 701, column: 2, scope: !5151)
!5211 = !DILocation(line: 701, column: 32, scope: !5151)
!5212 = !DILocation(line: 701, column: 10, scope: !5151)
!5213 = !DILocation(line: 701, column: 9, scope: !5151)
!5214 = !DILocation(line: 702, column: 3, scope: !5151)
!5215 = distinct !{!5215, !5210, !5216, !4687, !4688}
!5216 = !DILocation(line: 702, column: 13, scope: !5151)
!5217 = !DILocation(line: 704, column: 2, scope: !5151)
!5218 = !DILocation(line: 705, column: 9, scope: !5151)
!5219 = !DILocation(line: 705, column: 21, scope: !5151)
!5220 = !DILocation(line: 706, column: 1, scope: !5151)
!5221 = !DILocation(line: 705, column: 2, scope: !5151)
!5222 = distinct !DISubprogram(name: "cpu_active", scope: !414, file: !414, line: 1095, type: !5223, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!732, !7}
!5225 = !{!5226}
!5226 = !DILocalVariable(name: "cpu", arg: 1, scope: !5222, file: !414, line: 1095, type: !7)
!5227 = !DILocation(line: 1095, column: 44, scope: !5222)
!5228 = !DILocation(line: 1097, column: 26, scope: !5222)
!5229 = !DILocation(line: 1097, column: 9, scope: !5222)
!5230 = !DILocation(line: 1097, column: 2, scope: !5222)
!5231 = !DISubprogram(name: "mutex_trylock", scope: !532, file: !532, line: 245, type: !5232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!135, !5234}
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!5235 = !DILocation(line: 391, column: 56, scope: !4270)
!5236 = !DILocation(line: 392, column: 20, scope: !4270)
!5237 = !DILocation(line: 392, column: 30, scope: !4270)
!5238 = !DILocation(line: 393, column: 28, scope: !4270)
!5239 = !DILocation(line: 395, column: 2, scope: !4270)
!5240 = !DILocation(line: 395, column: 24, scope: !4270)
!5241 = !DILocation(line: 396, column: 2, scope: !4270)
!5242 = !DILocation(line: 396, column: 15, scope: !4270)
!5243 = !DILocation(line: 397, column: 2, scope: !4270)
!5244 = !DILocation(line: 397, column: 7, scope: !4270)
!5245 = !DILocation(line: 404, column: 2, scope: !4270)
!5246 = !DILocation(line: 404, column: 2, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 404, column: 2)
!5248 = !{i64 2154664142}
!5249 = !DILocation(line: 405, column: 24, scope: !4270)
!5250 = !DILocation(line: 406, column: 2, scope: !4270)
!5251 = !{i64 2154664180}
!5252 = !DILocation(line: 407, column: 2, scope: !4286)
!5253 = !DILocation(line: 407, column: 2, scope: !4285)
!5254 = !DILocation(line: 408, column: 11, scope: !4283)
!5255 = !DILocation(line: 408, column: 11, scope: !4282)
!5256 = !DILocation(line: 408, column: 11, scope: !4288)
!5257 = !DILocation(line: 408, column: 8, scope: !4284)
!5258 = !DILocation(line: 409, column: 14, scope: !4284)
!5259 = !DILocation(line: 409, column: 3, scope: !4284)
!5260 = !DILocation(line: 409, column: 9, scope: !4284)
!5261 = !DILocation(line: 409, column: 12, scope: !4284)
!5262 = !DILocation(line: 410, column: 15, scope: !4284)
!5263 = !DILocation(line: 410, column: 3, scope: !4284)
!5264 = !DILocation(line: 410, column: 9, scope: !4284)
!5265 = !DILocation(line: 410, column: 13, scope: !4284)
!5266 = !DILocation(line: 411, column: 16, scope: !4284)
!5267 = !DILocation(line: 411, column: 3, scope: !4284)
!5268 = !DILocation(line: 411, column: 9, scope: !4284)
!5269 = !DILocation(line: 411, column: 14, scope: !4284)
!5270 = !DILocation(line: 412, column: 18, scope: !4284)
!5271 = !DILocation(line: 412, column: 3, scope: !4284)
!5272 = !DILocation(line: 412, column: 9, scope: !4284)
!5273 = !DILocation(line: 412, column: 16, scope: !4284)
!5274 = !DILocation(line: 413, column: 27, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 413, column: 7)
!5276 = !DILocation(line: 413, column: 32, scope: !5275)
!5277 = !DILocation(line: 413, column: 7, scope: !5275)
!5278 = !DILocation(line: 413, column: 7, scope: !4284)
!5279 = !DILocation(line: 414, column: 11, scope: !5275)
!5280 = !DILocation(line: 414, column: 4, scope: !5275)
!5281 = !DILocation(line: 415, column: 2, scope: !4284)
!5282 = distinct !{!5282, !5252, !5283, !4687, !4688}
!5283 = !DILocation(line: 415, column: 2, scope: !4286)
!5284 = !DILocation(line: 416, column: 2, scope: !4270)
!5285 = !{i64 2154665494}
!5286 = !DILocation(line: 417, column: 24, scope: !4270)
!5287 = !DILocation(line: 418, column: 2, scope: !4270)
!5288 = !DILocation(line: 418, column: 2, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 418, column: 2)
!5290 = !{i64 2154665640}
!5291 = !DILocation(line: 418, column: 2, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 418, column: 2)
!5293 = !DILocation(line: 418, column: 2, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 418, column: 2)
!5295 = !{i64 2154665822}
!5296 = !DILocation(line: 420, column: 9, scope: !4270)
!5297 = !DILocation(line: 421, column: 1, scope: !4270)
!5298 = !DILocation(line: 420, column: 2, scope: !4270)
!5299 = !DISubprogram(name: "completion_done", scope: !1361, file: !1361, line: 116, type: !5300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!732, !1936}
!5302 = !DISubprogram(name: "mutex_unlock", scope: !532, file: !532, line: 246, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{null, !5234}
!5305 = distinct !DISubprogram(name: "atomic_set", scope: !5306, file: !5306, line: 65, type: !5307, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5310)
!5306 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5307 = !DISubroutineType(types: !5308)
!5308 = !{null, !5309, !135}
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!5310 = !{!5311, !5312}
!5311 = !DILocalVariable(name: "v", arg: 1, scope: !5305, file: !5306, line: 65, type: !5309)
!5312 = !DILocalVariable(name: "i", arg: 2, scope: !5305, file: !5306, line: 65, type: !135)
!5313 = !DILocation(line: 65, column: 22, scope: !5305)
!5314 = !DILocation(line: 65, column: 29, scope: !5305)
!5315 = !DILocation(line: 67, column: 26, scope: !5305)
!5316 = !DILocation(line: 67, column: 2, scope: !5305)
!5317 = !DILocation(line: 68, column: 17, scope: !5305)
!5318 = !DILocation(line: 68, column: 20, scope: !5305)
!5319 = !DILocation(line: 68, column: 2, scope: !5305)
!5320 = !DILocation(line: 69, column: 1, scope: !5305)
!5321 = !DILocation(line: 84, column: 55, scope: !4115)
!5322 = !DILocation(line: 86, column: 2, scope: !4115)
!5323 = !DILocation(line: 86, column: 5, scope: !4115)
!5324 = !DILocation(line: 86, column: 10, scope: !4115)
!5325 = !DILocation(line: 87, column: 2, scope: !4115)
!5326 = !DILocation(line: 87, column: 2, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !4115, file: !1361, line: 87, column: 2)
!5328 = !DILocation(line: 88, column: 1, scope: !4115)
!5329 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5330, file: !5330, line: 80, type: !5331, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5336)
!5330 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !5333, !1048}
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5335)
!5335 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5336 = !{!5337, !5338}
!5337 = !DILocalVariable(name: "v", arg: 1, scope: !5329, file: !5330, line: 80, type: !5333)
!5338 = !DILocalVariable(name: "size", arg: 2, scope: !5329, file: !5330, line: 80, type: !1048)
!5339 = !DILocation(line: 80, column: 74, scope: !5329)
!5340 = !DILocation(line: 80, column: 84, scope: !5329)
!5341 = !DILocation(line: 82, column: 20, scope: !5329)
!5342 = !DILocation(line: 82, column: 23, scope: !5329)
!5343 = !DILocation(line: 82, column: 2, scope: !5329)
!5344 = !DILocation(line: 83, column: 2, scope: !5329)
!5345 = !DILocation(line: 84, column: 1, scope: !5329)
!5346 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5347, file: !5347, line: 488, type: !5307, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5347 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5348 = !{!5349, !5350}
!5349 = !DILocalVariable(name: "v", arg: 1, scope: !5346, file: !5347, line: 488, type: !5309)
!5350 = !DILocalVariable(name: "i", arg: 2, scope: !5346, file: !5347, line: 488, type: !135)
!5351 = !DILocation(line: 488, column: 26, scope: !5346)
!5352 = !DILocation(line: 488, column: 33, scope: !5346)
!5353 = !DILocation(line: 490, column: 18, scope: !5346)
!5354 = !DILocation(line: 490, column: 21, scope: !5346)
!5355 = !DILocation(line: 490, column: 2, scope: !5346)
!5356 = !DILocation(line: 491, column: 1, scope: !5346)
!5357 = distinct !DISubprogram(name: "kasan_check_write", scope: !5358, file: !5358, line: 44, type: !5359, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5358 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!732, !5333, !7}
!5361 = !{!5362, !5363}
!5362 = !DILocalVariable(name: "p", arg: 1, scope: !5357, file: !5358, line: 44, type: !5333)
!5363 = !DILocalVariable(name: "size", arg: 2, scope: !5357, file: !5358, line: 44, type: !7)
!5364 = !DILocation(line: 44, column: 59, scope: !5357)
!5365 = !DILocation(line: 44, column: 75, scope: !5357)
!5366 = !DILocation(line: 46, column: 2, scope: !5357)
!5367 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5368, file: !5368, line: 229, type: !5369, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5368 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !5333, !1048, !135}
!5371 = !{!5372, !5373, !5374}
!5372 = !DILocalVariable(name: "ptr", arg: 1, scope: !5367, file: !5368, line: 229, type: !5333)
!5373 = !DILocalVariable(name: "size", arg: 2, scope: !5367, file: !5368, line: 229, type: !1048)
!5374 = !DILocalVariable(name: "type", arg: 3, scope: !5367, file: !5368, line: 230, type: !135)
!5375 = !DILocation(line: 229, column: 60, scope: !5367)
!5376 = !DILocation(line: 229, column: 72, scope: !5367)
!5377 = !DILocation(line: 230, column: 15, scope: !5367)
!5378 = !DILocation(line: 230, column: 23, scope: !5367)
!5379 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5380, file: !5380, line: 26, type: !5307, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5381)
!5380 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5381 = !{!5382, !5383}
!5382 = !DILocalVariable(name: "v", arg: 1, scope: !5379, file: !5380, line: 26, type: !5309)
!5383 = !DILocalVariable(name: "i", arg: 2, scope: !5379, file: !5380, line: 26, type: !135)
!5384 = !DILocation(line: 26, column: 55, scope: !5379)
!5385 = !DILocation(line: 26, column: 62, scope: !5379)
!5386 = !DILocation(line: 28, column: 2, scope: !5379)
!5387 = !DILocation(line: 28, column: 2, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5379, file: !5380, line: 28, column: 2)
!5389 = !DILocation(line: 29, column: 1, scope: !5379)
!5390 = !DISubprogram(name: "__init_swait_queue_head", scope: !1366, file: !1366, line: 69, type: !5391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5393, !735, !5394}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!5395 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5396, file: !5396, line: 78, type: !3472, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5396 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5397 = !{!5398, !5399, !5401}
!5398 = !DILocalVariable(name: "val", arg: 1, scope: !5395, file: !5396, line: 78, type: !135)
!5399 = !DILocalVariable(name: "pao_ID__", scope: !5400, file: !5396, line: 80, type: !2139)
!5400 = distinct !DILexicalBlock(scope: !5395, file: !5396, line: 80, column: 2)
!5401 = !DILocalVariable(name: "pto_val__", scope: !5402, file: !5396, line: 80, type: !116)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !5396, line: 80, column: 2)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !5396, line: 80, column: 2)
!5404 = distinct !DILexicalBlock(scope: !5400, file: !5396, line: 80, column: 2)
!5405 = !DILocation(line: 78, column: 53, scope: !5395)
!5406 = !DILocation(line: 80, column: 2, scope: !5395)
!5407 = !DILocation(line: 80, column: 2, scope: !5400)
!5408 = !DILocation(line: 80, column: 2, scope: !5404)
!5409 = !DILocation(line: 80, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5404, file: !5396, line: 80, column: 2)
!5411 = !{i64 2149481257}
!5412 = !DILocation(line: 80, column: 2, scope: !5403)
!5413 = !DILocation(line: 80, column: 2, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5403, file: !5396, line: 80, column: 2)
!5415 = !{i64 2149481552}
!5416 = !DILocation(line: 80, column: 2, scope: !5402)
!5417 = !{i64 2149482257}
!5418 = !DILocation(line: 81, column: 1, scope: !5395)
!5419 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5420, file: !5420, line: 32, type: !5421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5420 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!113, !5423}
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!5424 = distinct !DISubprogram(name: "__cpu_stop_queue_work", scope: !3, file: !3, line: 84, type: !5425, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5428)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !100, !4089, !5427}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!5428 = !{!5429, !5430, !5431}
!5429 = !DILocalVariable(name: "stopper", arg: 1, scope: !5424, file: !3, line: 84, type: !100)
!5430 = !DILocalVariable(name: "work", arg: 2, scope: !5424, file: !3, line: 85, type: !4089)
!5431 = !DILocalVariable(name: "wakeq", arg: 3, scope: !5424, file: !3, line: 86, type: !5427)
!5432 = !DILocation(line: 84, column: 55, scope: !5424)
!5433 = !DILocation(line: 85, column: 28, scope: !5424)
!5434 = !DILocation(line: 86, column: 26, scope: !5424)
!5435 = !DILocation(line: 88, column: 17, scope: !5424)
!5436 = !DILocation(line: 88, column: 23, scope: !5424)
!5437 = !DILocation(line: 88, column: 30, scope: !5424)
!5438 = !DILocation(line: 88, column: 39, scope: !5424)
!5439 = !DILocation(line: 88, column: 2, scope: !5424)
!5440 = !DILocation(line: 89, column: 13, scope: !5424)
!5441 = !DILocation(line: 89, column: 20, scope: !5424)
!5442 = !DILocation(line: 89, column: 29, scope: !5424)
!5443 = !DILocation(line: 89, column: 2, scope: !5424)
!5444 = !DILocation(line: 90, column: 1, scope: !5424)
!5445 = distinct !DISubprogram(name: "cpu_stop_signal_done", scope: !3, file: !3, line: 78, type: !5446, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5448)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !4067}
!5448 = !{!5449}
!5449 = !DILocalVariable(name: "done", arg: 1, scope: !5445, file: !3, line: 78, type: !4067)
!5450 = !DILocation(line: 78, column: 56, scope: !5445)
!5451 = !DILocation(line: 80, column: 27, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 80, column: 6)
!5453 = !DILocation(line: 80, column: 33, scope: !5452)
!5454 = !DILocation(line: 80, column: 6, scope: !5452)
!5455 = !DILocation(line: 80, column: 6, scope: !5445)
!5456 = !DILocation(line: 81, column: 13, scope: !5452)
!5457 = !DILocation(line: 81, column: 19, scope: !5452)
!5458 = !DILocation(line: 81, column: 3, scope: !5452)
!5459 = !DILocation(line: 82, column: 1, scope: !5445)
!5460 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5420, file: !5420, line: 43, type: !5461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{null, !5423, !113}
!5463 = !DISubprogram(name: "wake_up_q", scope: !4141, file: !4141, line: 64, type: !5464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !5427}
!5466 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5396, file: !5396, line: 93, type: !1781, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5467)
!5467 = !{!5468}
!5468 = !DILocalVariable(name: "c", scope: !5469, file: !5396, line: 95, type: !732)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !5396, line: 95, column: 9)
!5470 = !DILocation(line: 95, column: 9, scope: !5469)
!5471 = !{i64 2149485613, i64 2149485706}
!5472 = !DILocation(line: 95, column: 9, scope: !5466)
!5473 = !DILocation(line: 95, column: 2, scope: !5466)
!5474 = distinct !DISubprogram(name: "list_add_tail", scope: !5475, file: !5475, line: 181, type: !5476, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5478)
!5475 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !194, !194}
!5478 = !{!5479, !5480}
!5479 = !DILocalVariable(name: "new", arg: 1, scope: !5474, file: !5475, line: 181, type: !194)
!5480 = !DILocalVariable(name: "head", arg: 2, scope: !5474, file: !5475, line: 181, type: !194)
!5481 = !DILocation(line: 181, column: 52, scope: !5474)
!5482 = !DILocation(line: 181, column: 75, scope: !5474)
!5483 = !DILocation(line: 183, column: 13, scope: !5474)
!5484 = !DILocation(line: 183, column: 18, scope: !5474)
!5485 = !DILocation(line: 183, column: 24, scope: !5474)
!5486 = !DILocation(line: 183, column: 30, scope: !5474)
!5487 = !DILocation(line: 183, column: 2, scope: !5474)
!5488 = !DILocation(line: 184, column: 1, scope: !5474)
!5489 = !DISubprogram(name: "wake_q_add", scope: !4141, file: !4141, line: 62, type: !5490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{null, !5427, !104}
!5492 = distinct !DISubprogram(name: "__list_add", scope: !5475, file: !5475, line: 146, type: !5493, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !194, !194, !194}
!5495 = !{!5496, !5497, !5498}
!5496 = !DILocalVariable(name: "new", arg: 1, scope: !5492, file: !5475, line: 146, type: !194)
!5497 = !DILocalVariable(name: "prev", arg: 2, scope: !5492, file: !5475, line: 147, type: !194)
!5498 = !DILocalVariable(name: "next", arg: 3, scope: !5492, file: !5475, line: 148, type: !194)
!5499 = !DILocation(line: 146, column: 49, scope: !5492)
!5500 = !DILocation(line: 147, column: 28, scope: !5492)
!5501 = !DILocation(line: 148, column: 28, scope: !5492)
!5502 = !DILocation(line: 150, column: 24, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5492, file: !5475, line: 150, column: 6)
!5504 = !DILocation(line: 150, column: 29, scope: !5503)
!5505 = !DILocation(line: 150, column: 35, scope: !5503)
!5506 = !DILocation(line: 150, column: 7, scope: !5503)
!5507 = !DILocation(line: 150, column: 6, scope: !5492)
!5508 = !DILocation(line: 151, column: 3, scope: !5503)
!5509 = !DILocation(line: 153, column: 15, scope: !5492)
!5510 = !DILocation(line: 153, column: 2, scope: !5492)
!5511 = !DILocation(line: 153, column: 8, scope: !5492)
!5512 = !DILocation(line: 153, column: 13, scope: !5492)
!5513 = !DILocation(line: 154, column: 14, scope: !5492)
!5514 = !DILocation(line: 154, column: 2, scope: !5492)
!5515 = !DILocation(line: 154, column: 7, scope: !5492)
!5516 = !DILocation(line: 154, column: 12, scope: !5492)
!5517 = !DILocation(line: 155, column: 14, scope: !5492)
!5518 = !DILocation(line: 155, column: 2, scope: !5492)
!5519 = !DILocation(line: 155, column: 7, scope: !5492)
!5520 = !DILocation(line: 155, column: 12, scope: !5492)
!5521 = !DILocation(line: 156, column: 2, scope: !5492)
!5522 = !DILocation(line: 156, column: 2, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5492, file: !5475, line: 156, column: 2)
!5524 = !DILocation(line: 156, column: 2, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5523, file: !5475, line: 156, column: 2)
!5526 = !DILocation(line: 156, column: 2, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !5475, line: 156, column: 2)
!5528 = !DILocation(line: 157, column: 1, scope: !5492)
!5529 = distinct !DISubprogram(name: "__list_add_valid", scope: !5475, file: !5475, line: 128, type: !5530, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!732, !194, !194, !194}
!5532 = !{!5533, !5534, !5535}
!5533 = !DILocalVariable(name: "new", arg: 1, scope: !5529, file: !5475, line: 128, type: !194)
!5534 = !DILocalVariable(name: "prev", arg: 2, scope: !5529, file: !5475, line: 129, type: !194)
!5535 = !DILocalVariable(name: "next", arg: 3, scope: !5529, file: !5475, line: 130, type: !194)
!5536 = !DILocation(line: 128, column: 55, scope: !5529)
!5537 = !DILocation(line: 129, column: 23, scope: !5529)
!5538 = !DILocation(line: 130, column: 23, scope: !5529)
!5539 = !DILocation(line: 132, column: 2, scope: !5529)
!5540 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !5306, file: !5306, line: 1372, type: !5541, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!732, !5309}
!5543 = !{!5544}
!5544 = !DILocalVariable(name: "v", arg: 1, scope: !5540, file: !5306, line: 1372, type: !5309)
!5545 = !DILocation(line: 1372, column: 31, scope: !5540)
!5546 = !DILocation(line: 1374, column: 2, scope: !5540)
!5547 = !DILocation(line: 1374, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5540, file: !5306, line: 1374, column: 2)
!5549 = !DILocation(line: 1375, column: 31, scope: !5540)
!5550 = !DILocation(line: 1375, column: 2, scope: !5540)
!5551 = !DILocation(line: 1376, column: 33, scope: !5540)
!5552 = !DILocation(line: 1376, column: 9, scope: !5540)
!5553 = !DILocation(line: 1376, column: 2, scope: !5540)
!5554 = !DISubprogram(name: "complete", scope: !1361, file: !1361, line: 118, type: !4116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5555 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5330, file: !5330, line: 94, type: !5331, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5556)
!5556 = !{!5557, !5558}
!5557 = !DILocalVariable(name: "v", arg: 1, scope: !5555, file: !5330, line: 94, type: !5333)
!5558 = !DILocalVariable(name: "size", arg: 2, scope: !5555, file: !5330, line: 94, type: !1048)
!5559 = !DILocation(line: 94, column: 79, scope: !5555)
!5560 = !DILocation(line: 94, column: 89, scope: !5555)
!5561 = !DILocation(line: 96, column: 20, scope: !5555)
!5562 = !DILocation(line: 96, column: 23, scope: !5555)
!5563 = !DILocation(line: 96, column: 2, scope: !5555)
!5564 = !DILocation(line: 97, column: 2, scope: !5555)
!5565 = !DILocation(line: 98, column: 1, scope: !5555)
!5566 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !5347, file: !5347, line: 2254, type: !5541, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5567)
!5567 = !{!5568}
!5568 = !DILocalVariable(name: "v", arg: 1, scope: !5566, file: !5347, line: 2254, type: !5309)
!5569 = !DILocation(line: 2254, column: 35, scope: !5566)
!5570 = !DILocation(line: 2257, column: 34, scope: !5566)
!5571 = !DILocation(line: 2257, column: 9, scope: !5566)
!5572 = !DILocation(line: 2257, column: 2, scope: !5566)
!5573 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !5380, file: !5380, line: 65, type: !5541, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5574)
!5574 = !{!5575, !5576}
!5575 = !DILocalVariable(name: "v", arg: 1, scope: !5573, file: !5380, line: 65, type: !5309)
!5576 = !DILocalVariable(name: "c", scope: !5577, file: !5380, line: 67, type: !732)
!5577 = distinct !DILexicalBlock(scope: !5573, file: !5380, line: 67, column: 9)
!5578 = !DILocation(line: 65, column: 64, scope: !5573)
!5579 = !DILocation(line: 67, column: 9, scope: !5577)
!5580 = !{i64 2148834311, i64 2148834350, i64 2148834371, i64 2148834408, i64 2148834431, i64 2148834440, i64 2148834514}
!5581 = !DILocation(line: 67, column: 9, scope: !5573)
!5582 = !DILocation(line: 67, column: 2, scope: !5573)
!5583 = distinct !DISubprogram(name: "rep_nop", scope: !4476, file: !4476, line: 11, type: !2291, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5584 = !DILocation(line: 13, column: 2, scope: !5583)
!5585 = !{i64 1950043}
!5586 = !DILocation(line: 14, column: 1, scope: !5583)
!5587 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5588, file: !5588, line: 313, type: !5589, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5588 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !735}
!5591 = !{!5592}
!5592 = !DILocalVariable(name: "op", arg: 1, scope: !5587, file: !5588, line: 313, type: !735)
!5593 = !DILocation(line: 313, column: 66, scope: !5587)
!5594 = !DILocation(line: 313, column: 72, scope: !5587)
!5595 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5027, file: !5027, line: 65, type: !5028, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5596 = !DILocation(line: 67, column: 9, scope: !5595)
!5597 = !DILocation(line: 67, column: 2, scope: !5595)
!5598 = distinct !DISubprogram(name: "cpumask_first", scope: !414, file: !414, line: 160, type: !5143, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5599)
!5599 = !{!5600}
!5600 = !DILocalVariable(name: "srcp", arg: 1, scope: !5598, file: !414, line: 160, type: !4075)
!5601 = !DILocation(line: 160, column: 64, scope: !5598)
!5602 = !DILocation(line: 162, column: 24, scope: !5598)
!5603 = !DILocation(line: 162, column: 9, scope: !5598)
!5604 = !DILocation(line: 162, column: 2, scope: !5598)
!5605 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !414, file: !414, line: 502, type: !5606, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5608)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!732, !135, !4075}
!5608 = !{!5609, !5610}
!5609 = !DILocalVariable(name: "cpu", arg: 1, scope: !5605, file: !414, line: 502, type: !135)
!5610 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5605, file: !414, line: 502, type: !4075)
!5611 = !DILocation(line: 502, column: 50, scope: !5605)
!5612 = !DILocation(line: 502, column: 77, scope: !5605)
!5613 = !DILocation(line: 504, column: 9, scope: !5605)
!5614 = !DILocation(line: 504, column: 2, scope: !5605)
!5615 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5027, file: !5027, line: 70, type: !2291, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5616 = !DILocation(line: 72, column: 2, scope: !5615)
!5617 = !DILocation(line: 73, column: 1, scope: !5615)
!5618 = distinct !DISubprogram(name: "ack_state", scope: !3, file: !3, line: 191, type: !5619, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !4565}
!5621 = !{!5622}
!5622 = !DILocalVariable(name: "msdata", arg: 1, scope: !5618, file: !3, line: 191, type: !4565)
!5623 = !DILocation(line: 191, column: 47, scope: !5618)
!5624 = !DILocation(line: 193, column: 27, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 193, column: 6)
!5626 = !DILocation(line: 193, column: 35, scope: !5625)
!5627 = !DILocation(line: 193, column: 6, scope: !5625)
!5628 = !DILocation(line: 193, column: 6, scope: !5618)
!5629 = !DILocation(line: 194, column: 13, scope: !5625)
!5630 = !DILocation(line: 194, column: 21, scope: !5625)
!5631 = !DILocation(line: 194, column: 29, scope: !5625)
!5632 = !DILocation(line: 194, column: 35, scope: !5625)
!5633 = !DILocation(line: 194, column: 3, scope: !5625)
!5634 = !DILocation(line: 195, column: 1, scope: !5618)
!5635 = distinct !DISubprogram(name: "touch_nmi_watchdog", scope: !5636, file: !5636, line: 139, type: !2291, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5636 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!5637 = !DILocation(line: 147, column: 2, scope: !5635)
!5638 = !DILocation(line: 149, column: 2, scope: !5635)
!5639 = !DILocation(line: 150, column: 1, scope: !5635)
!5640 = !DISubprogram(name: "rcu_momentary_dyntick_idle", scope: !5641, file: !5641, line: 41, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5641 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!5642 = distinct !DISubprogram(name: "native_save_fl", scope: !5027, file: !5027, line: 17, type: !5028, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5643)
!5643 = !{!5644}
!5644 = !DILocalVariable(name: "flags", scope: !5642, file: !5027, line: 19, type: !113)
!5645 = !DILocation(line: 19, column: 2, scope: !5642)
!5646 = !DILocation(line: 19, column: 16, scope: !5642)
!5647 = !DILocation(line: 26, column: 2, scope: !5642)
!5648 = !{i64 1908179, i64 1908200}
!5649 = !DILocation(line: 32, column: 9, scope: !5642)
!5650 = !DILocation(line: 33, column: 1, scope: !5642)
!5651 = !DILocation(line: 32, column: 2, scope: !5642)
!5652 = distinct !DISubprogram(name: "find_first_bit", scope: !5653, file: !5653, line: 200, type: !5654, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5656)
!5653 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!113, !4547, !113}
!5656 = !{!5657, !5658, !5659}
!5657 = !DILocalVariable(name: "addr", arg: 1, scope: !5652, file: !5653, line: 200, type: !4547)
!5658 = !DILocalVariable(name: "size", arg: 2, scope: !5652, file: !5653, line: 200, type: !113)
!5659 = !DILocalVariable(name: "val", scope: !5660, file: !5653, line: 203, type: !113)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !5653, line: 202, column: 31)
!5661 = distinct !DILexicalBlock(scope: !5652, file: !5653, line: 202, column: 6)
!5662 = !DILocation(line: 200, column: 51, scope: !5652)
!5663 = !DILocation(line: 200, column: 71, scope: !5652)
!5664 = !DILocation(line: 202, column: 6, scope: !5661)
!5665 = !DILocation(line: 202, column: 6, scope: !5652)
!5666 = !DILocation(line: 203, column: 3, scope: !5660)
!5667 = !DILocation(line: 203, column: 17, scope: !5660)
!5668 = !DILocation(line: 203, column: 24, scope: !5660)
!5669 = !DILocation(line: 203, column: 23, scope: !5660)
!5670 = !DILocation(line: 203, column: 31, scope: !5660)
!5671 = !DILocation(line: 203, column: 29, scope: !5660)
!5672 = !DILocation(line: 205, column: 10, scope: !5660)
!5673 = !DILocation(line: 205, column: 16, scope: !5660)
!5674 = !DILocation(line: 205, column: 29, scope: !5660)
!5675 = !DILocation(line: 205, column: 3, scope: !5660)
!5676 = !DILocation(line: 206, column: 2, scope: !5661)
!5677 = !DILocation(line: 208, column: 25, scope: !5652)
!5678 = !DILocation(line: 208, column: 31, scope: !5652)
!5679 = !DILocation(line: 208, column: 9, scope: !5652)
!5680 = !DILocation(line: 208, column: 2, scope: !5652)
!5681 = !DILocation(line: 209, column: 1, scope: !5652)
!5682 = distinct !DISubprogram(name: "variable__ffs", scope: !5683, file: !5683, line: 250, type: !5684, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5686)
!5683 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!113, !113}
!5686 = !{!5687}
!5687 = !DILocalVariable(name: "word", arg: 1, scope: !5682, file: !5683, line: 250, type: !113)
!5688 = !DILocation(line: 250, column: 66, scope: !5682)
!5689 = !DILocation(line: 254, column: 11, scope: !5682)
!5690 = !DILocation(line: 252, column: 2, scope: !5682)
!5691 = !{i64 494783}
!5692 = !DILocation(line: 255, column: 9, scope: !5682)
!5693 = !DILocation(line: 255, column: 2, scope: !5682)
!5694 = !DISubprogram(name: "_find_first_bit", scope: !5653, file: !5653, line: 21, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5695 = distinct !DISubprogram(name: "_test_bit", scope: !5696, file: !5696, line: 139, type: !5697, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5696 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!732, !113, !5699}
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5701)
!5701 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!5702 = !{!5703, !5704}
!5703 = !DILocalVariable(name: "nr", arg: 1, scope: !5695, file: !5696, line: 139, type: !113)
!5704 = !DILocalVariable(name: "addr", arg: 2, scope: !5695, file: !5696, line: 139, type: !5699)
!5705 = !DILocation(line: 139, column: 25, scope: !5695)
!5706 = !DILocation(line: 139, column: 59, scope: !5695)
!5707 = !DILocation(line: 141, column: 25, scope: !5695)
!5708 = !DILocation(line: 141, column: 32, scope: !5695)
!5709 = !DILocation(line: 141, column: 30, scope: !5695)
!5710 = !DILocation(line: 141, column: 2, scope: !5695)
!5711 = !DILocation(line: 142, column: 23, scope: !5695)
!5712 = !DILocation(line: 142, column: 27, scope: !5695)
!5713 = !DILocation(line: 142, column: 9, scope: !5695)
!5714 = !DILocation(line: 142, column: 2, scope: !5695)
!5715 = distinct !DISubprogram(name: "cpumask_check", scope: !414, file: !414, line: 148, type: !5716, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!7, !7}
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "cpu", arg: 1, scope: !5715, file: !414, line: 148, type: !7)
!5720 = !DILocation(line: 148, column: 64, scope: !5715)
!5721 = !DILocation(line: 150, column: 20, scope: !5715)
!5722 = !DILocation(line: 150, column: 2, scope: !5715)
!5723 = !DILocation(line: 151, column: 9, scope: !5715)
!5724 = !DILocation(line: 151, column: 2, scope: !5715)
!5725 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5330, file: !5330, line: 66, type: !5331, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5726)
!5726 = !{!5727, !5728}
!5727 = !DILocalVariable(name: "v", arg: 1, scope: !5725, file: !5330, line: 66, type: !5333)
!5728 = !DILocalVariable(name: "size", arg: 2, scope: !5725, file: !5330, line: 66, type: !1048)
!5729 = !DILocation(line: 66, column: 73, scope: !5725)
!5730 = !DILocation(line: 66, column: 83, scope: !5725)
!5731 = !DILocation(line: 68, column: 19, scope: !5725)
!5732 = !DILocation(line: 68, column: 22, scope: !5725)
!5733 = !DILocation(line: 68, column: 2, scope: !5725)
!5734 = !DILocation(line: 69, column: 2, scope: !5725)
!5735 = !DILocation(line: 70, column: 1, scope: !5725)
!5736 = distinct !DISubprogram(name: "arch_test_bit", scope: !5683, file: !5683, line: 237, type: !5697, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5737 = !{!5738, !5739}
!5738 = !DILocalVariable(name: "nr", arg: 1, scope: !5736, file: !5683, line: 237, type: !113)
!5739 = !DILocalVariable(name: "addr", arg: 2, scope: !5736, file: !5683, line: 237, type: !5699)
!5740 = !DILocation(line: 237, column: 29, scope: !5736)
!5741 = !DILocation(line: 237, column: 63, scope: !5736)
!5742 = !DILocation(line: 239, column: 30, scope: !5736)
!5743 = !DILocation(line: 239, column: 9, scope: !5736)
!5744 = !DILocation(line: 239, column: 54, scope: !5736)
!5745 = !DILocation(line: 239, column: 58, scope: !5736)
!5746 = !DILocation(line: 239, column: 36, scope: !5736)
!5747 = !DILocation(line: 240, column: 26, scope: !5736)
!5748 = !DILocation(line: 240, column: 30, scope: !5736)
!5749 = !DILocation(line: 240, column: 8, scope: !5736)
!5750 = !DILocation(line: 239, column: 2, scope: !5736)
!5751 = distinct !DISubprogram(name: "kasan_check_read", scope: !5358, file: !5358, line: 40, type: !5359, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5752)
!5752 = !{!5753, !5754}
!5753 = !DILocalVariable(name: "p", arg: 1, scope: !5751, file: !5358, line: 40, type: !5333)
!5754 = !DILocalVariable(name: "size", arg: 2, scope: !5751, file: !5358, line: 40, type: !7)
!5755 = !DILocation(line: 40, column: 58, scope: !5751)
!5756 = !DILocation(line: 40, column: 74, scope: !5751)
!5757 = !DILocation(line: 42, column: 2, scope: !5751)
!5758 = distinct !DISubprogram(name: "constant_test_bit", scope: !5683, file: !5683, line: 204, type: !5759, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5761)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!732, !1006, !5699}
!5761 = !{!5762, !5763}
!5762 = !DILocalVariable(name: "nr", arg: 1, scope: !5758, file: !5683, line: 204, type: !1006)
!5763 = !DILocalVariable(name: "addr", arg: 2, scope: !5758, file: !5683, line: 204, type: !5699)
!5764 = !DILocation(line: 204, column: 52, scope: !5758)
!5765 = !DILocation(line: 204, column: 86, scope: !5758)
!5766 = !DILocation(line: 206, column: 19, scope: !5758)
!5767 = !DILocation(line: 206, column: 22, scope: !5758)
!5768 = !DILocation(line: 206, column: 15, scope: !5758)
!5769 = !DILocation(line: 207, column: 4, scope: !5758)
!5770 = !DILocation(line: 207, column: 9, scope: !5758)
!5771 = !DILocation(line: 207, column: 12, scope: !5758)
!5772 = !DILocation(line: 206, column: 44, scope: !5758)
!5773 = !DILocation(line: 207, column: 37, scope: !5758)
!5774 = !DILocation(line: 206, column: 2, scope: !5758)
!5775 = distinct !DISubprogram(name: "variable_test_bit", scope: !5683, file: !5683, line: 224, type: !5759, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5776 = !{!5777, !5778, !5779}
!5777 = !DILocalVariable(name: "nr", arg: 1, scope: !5775, file: !5683, line: 224, type: !1006)
!5778 = !DILocalVariable(name: "addr", arg: 2, scope: !5775, file: !5683, line: 224, type: !5699)
!5779 = !DILocalVariable(name: "oldbit", scope: !5775, file: !5683, line: 226, type: !732)
!5780 = !DILocation(line: 224, column: 52, scope: !5775)
!5781 = !DILocation(line: 224, column: 86, scope: !5775)
!5782 = !DILocation(line: 226, column: 2, scope: !5775)
!5783 = !DILocation(line: 226, column: 7, scope: !5775)
!5784 = !DILocation(line: 231, column: 33, scope: !5775)
!5785 = !DILocation(line: 231, column: 46, scope: !5775)
!5786 = !DILocation(line: 228, column: 2, scope: !5775)
!5787 = !{i64 2147996861, i64 2147996935}
!5788 = !DILocation(line: 233, column: 9, scope: !5775)
!5789 = !DILocation(line: 234, column: 1, scope: !5775)
!5790 = !DILocation(line: 233, column: 2, scope: !5775)
!5791 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !414, file: !414, line: 140, type: !5792, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{null, !7, !7}
!5794 = !{!5795, !5796}
!5795 = !DILocalVariable(name: "cpu", arg: 1, scope: !5791, file: !414, line: 140, type: !7)
!5796 = !DILocalVariable(name: "bits", arg: 2, scope: !5791, file: !414, line: 140, type: !7)
!5797 = !DILocation(line: 140, column: 60, scope: !5791)
!5798 = !DILocation(line: 140, column: 78, scope: !5791)
!5799 = !DILocation(line: 145, column: 1, scope: !5791)
!5800 = distinct !DISubprogram(name: "native_irq_disable", scope: !5027, file: !5027, line: 35, type: !2291, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5801 = !DILocation(line: 37, column: 2, scope: !5800)
!5802 = !{i64 1908383}
!5803 = !DILocation(line: 38, column: 1, scope: !5800)
!5804 = distinct !DISubprogram(name: "arch_touch_nmi_watchdog", scope: !5636, file: !5636, line: 96, type: !2291, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5805 = !DILocation(line: 96, column: 52, scope: !5804)
!5806 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !5636, file: !5636, line: 54, type: !2291, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5807 = !DILocation(line: 54, column: 54, scope: !5806)
!5808 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5420, file: !5420, line: 29, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{null, !5423}
!5811 = !DISubprogram(name: "_raw_spin_lock", scope: !5420, file: !5420, line: 22, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5812 = !DISubprogram(name: "_raw_spin_unlock", scope: !5420, file: !5420, line: 39, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5813 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5420, file: !5420, line: 41, type: !5809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = distinct !DISubprogram(name: "find_next_bit", scope: !5653, file: !5653, line: 54, type: !5815, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!113, !4547, !113, !113}
!5817 = !{!5818, !5819, !5820, !5821}
!5818 = !DILocalVariable(name: "addr", arg: 1, scope: !5814, file: !5653, line: 54, type: !4547)
!5819 = !DILocalVariable(name: "size", arg: 2, scope: !5814, file: !5653, line: 54, type: !113)
!5820 = !DILocalVariable(name: "offset", arg: 3, scope: !5814, file: !5653, line: 55, type: !113)
!5821 = !DILocalVariable(name: "val", scope: !5822, file: !5653, line: 58, type: !113)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !5653, line: 57, column: 31)
!5823 = distinct !DILexicalBlock(scope: !5814, file: !5653, line: 57, column: 6)
!5824 = !DILocation(line: 54, column: 50, scope: !5814)
!5825 = !DILocation(line: 54, column: 70, scope: !5814)
!5826 = !DILocation(line: 55, column: 22, scope: !5814)
!5827 = !DILocation(line: 57, column: 6, scope: !5823)
!5828 = !DILocation(line: 57, column: 6, scope: !5814)
!5829 = !DILocation(line: 58, column: 3, scope: !5822)
!5830 = !DILocation(line: 58, column: 17, scope: !5822)
!5831 = !DILocation(line: 60, column: 7, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5822, file: !5653, line: 60, column: 7)
!5833 = !DILocation(line: 60, column: 7, scope: !5822)
!5834 = !DILocation(line: 61, column: 11, scope: !5832)
!5835 = !DILocation(line: 61, column: 4, scope: !5832)
!5836 = !DILocation(line: 63, column: 10, scope: !5822)
!5837 = !DILocation(line: 63, column: 9, scope: !5822)
!5838 = !DILocation(line: 63, column: 17, scope: !5822)
!5839 = !DILocation(line: 63, column: 15, scope: !5822)
!5840 = !DILocation(line: 63, column: 7, scope: !5822)
!5841 = !DILocation(line: 64, column: 10, scope: !5822)
!5842 = !DILocation(line: 64, column: 16, scope: !5822)
!5843 = !DILocation(line: 64, column: 29, scope: !5822)
!5844 = !DILocation(line: 64, column: 3, scope: !5822)
!5845 = !DILocation(line: 65, column: 2, scope: !5823)
!5846 = !DILocation(line: 67, column: 24, scope: !5814)
!5847 = !DILocation(line: 67, column: 30, scope: !5814)
!5848 = !DILocation(line: 67, column: 36, scope: !5814)
!5849 = !DILocation(line: 67, column: 9, scope: !5814)
!5850 = !DILocation(line: 67, column: 2, scope: !5814)
!5851 = !DILocation(line: 68, column: 1, scope: !5814)
!5852 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5475, file: !5475, line: 35, type: !5853, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !194}
!5855 = !{!5856}
!5856 = !DILocalVariable(name: "list", arg: 1, scope: !5852, file: !5475, line: 35, type: !194)
!5857 = !DILocation(line: 35, column: 53, scope: !5852)
!5858 = !DILocation(line: 37, column: 2, scope: !5852)
!5859 = !DILocation(line: 37, column: 2, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5852, file: !5475, line: 37, column: 2)
!5861 = !DILocation(line: 37, column: 2, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5860, file: !5475, line: 37, column: 2)
!5863 = !DILocation(line: 37, column: 2, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !5475, line: 37, column: 2)
!5865 = !DILocation(line: 38, column: 2, scope: !5852)
!5866 = !DILocation(line: 38, column: 2, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5852, file: !5475, line: 38, column: 2)
!5868 = !DILocation(line: 38, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5867, file: !5475, line: 38, column: 2)
!5870 = !DILocation(line: 38, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5867, file: !5475, line: 38, column: 2)
!5872 = !DILocation(line: 39, column: 1, scope: !5852)
!5873 = !DISubprogram(name: "smpboot_register_percpu_thread", scope: !4202, file: !4202, line: 45, type: !5874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!135, !5876}
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!5877 = !DISubprogram(name: "_find_next_bit", scope: !5653, file: !5653, line: 11, type: !5815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5878 = distinct !DISubprogram(name: "cpu_stop_should_run", scope: !3, file: !3, line: 474, type: !4208, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5879 = !{!5880, !5881, !5882, !5885, !5887, !5888, !5889, !5892, !5893, !5896}
!5880 = !DILocalVariable(name: "cpu", arg: 1, scope: !5878, file: !3, line: 474, type: !7)
!5881 = !DILocalVariable(name: "stopper", scope: !5878, file: !3, line: 476, type: !100)
!5882 = !DILocalVariable(name: "__vpp_verify", scope: !5883, file: !3, line: 476, type: !1791)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 476, column: 33)
!5884 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 476, column: 33)
!5885 = !DILocalVariable(name: "__ptr", scope: !5886, file: !3, line: 476, type: !113)
!5886 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 476, column: 33)
!5887 = !DILocalVariable(name: "flags", scope: !5878, file: !3, line: 477, type: !113)
!5888 = !DILocalVariable(name: "run", scope: !5878, file: !3, line: 478, type: !135)
!5889 = !DILocalVariable(name: "__dummy", scope: !5890, file: !3, line: 480, type: !113)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 480, column: 2)
!5891 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 480, column: 2)
!5892 = !DILocalVariable(name: "__dummy2", scope: !5890, file: !3, line: 480, type: !113)
!5893 = !DILocalVariable(name: "__dummy", scope: !5894, file: !3, line: 482, type: !113)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 482, column: 2)
!5895 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 482, column: 2)
!5896 = !DILocalVariable(name: "__dummy2", scope: !5894, file: !3, line: 482, type: !113)
!5897 = !DILocation(line: 474, column: 45, scope: !5878)
!5898 = !DILocation(line: 476, column: 2, scope: !5878)
!5899 = !DILocation(line: 476, column: 22, scope: !5878)
!5900 = !DILocation(line: 476, column: 33, scope: !5884)
!5901 = !DILocation(line: 476, column: 33, scope: !5883)
!5902 = !DILocation(line: 476, column: 33, scope: !5886)
!5903 = !DILocation(line: 477, column: 2, scope: !5878)
!5904 = !DILocation(line: 477, column: 16, scope: !5878)
!5905 = !DILocation(line: 478, column: 2, scope: !5878)
!5906 = !DILocation(line: 478, column: 6, scope: !5878)
!5907 = !DILocation(line: 480, column: 2, scope: !5878)
!5908 = !DILocation(line: 480, column: 2, scope: !5890)
!5909 = !DILocation(line: 480, column: 2, scope: !5891)
!5910 = !DILocation(line: 481, column: 21, scope: !5878)
!5911 = !DILocation(line: 481, column: 30, scope: !5878)
!5912 = !DILocation(line: 481, column: 9, scope: !5878)
!5913 = !DILocation(line: 481, column: 8, scope: !5878)
!5914 = !DILocation(line: 481, column: 6, scope: !5878)
!5915 = !DILocation(line: 482, column: 2, scope: !5878)
!5916 = !DILocation(line: 482, column: 2, scope: !5894)
!5917 = !DILocation(line: 482, column: 2, scope: !5895)
!5918 = !DILocation(line: 483, column: 9, scope: !5878)
!5919 = !DILocation(line: 484, column: 1, scope: !5878)
!5920 = !DILocation(line: 483, column: 2, scope: !5878)
!5921 = !DILocation(line: 486, column: 45, scope: !4226)
!5922 = !DILocation(line: 488, column: 2, scope: !4226)
!5923 = !DILocation(line: 488, column: 22, scope: !4226)
!5924 = !DILocation(line: 488, column: 33, scope: !4232)
!5925 = !DILocation(line: 488, column: 33, scope: !4231)
!5926 = !DILocation(line: 488, column: 33, scope: !4234)
!5927 = !DILocation(line: 489, column: 2, scope: !4226)
!5928 = !DILocation(line: 489, column: 24, scope: !4226)
!5929 = !DILocation(line: 491, column: 1, scope: !4226)
!5930 = !DILocation(line: 492, column: 7, scope: !4226)
!5931 = !DILocation(line: 493, column: 2, scope: !4226)
!5932 = !DILocation(line: 494, column: 19, scope: !4240)
!5933 = !DILocation(line: 494, column: 28, scope: !4240)
!5934 = !DILocation(line: 494, column: 7, scope: !4240)
!5935 = !DILocation(line: 494, column: 6, scope: !4226)
!5936 = !DILocation(line: 495, column: 10, scope: !4238)
!5937 = !DILocation(line: 495, column: 10, scope: !4239)
!5938 = !DILocation(line: 495, column: 8, scope: !4239)
!5939 = !DILocation(line: 497, column: 18, scope: !4239)
!5940 = !DILocation(line: 497, column: 24, scope: !4239)
!5941 = !DILocation(line: 497, column: 3, scope: !4239)
!5942 = !DILocation(line: 498, column: 2, scope: !4239)
!5943 = !DILocation(line: 499, column: 2, scope: !4226)
!5944 = !DILocation(line: 501, column: 6, scope: !4243)
!5945 = !DILocation(line: 501, column: 6, scope: !4226)
!5946 = !DILocation(line: 502, column: 3, scope: !4242)
!5947 = !DILocation(line: 502, column: 17, scope: !4242)
!5948 = !DILocation(line: 502, column: 22, scope: !4242)
!5949 = !DILocation(line: 502, column: 28, scope: !4242)
!5950 = !DILocation(line: 503, column: 3, scope: !4242)
!5951 = !DILocation(line: 503, column: 9, scope: !4242)
!5952 = !DILocation(line: 503, column: 15, scope: !4242)
!5953 = !DILocation(line: 503, column: 21, scope: !4242)
!5954 = !DILocation(line: 504, column: 3, scope: !4242)
!5955 = !DILocation(line: 504, column: 25, scope: !4242)
!5956 = !DILocation(line: 504, column: 32, scope: !4242)
!5957 = !DILocation(line: 504, column: 38, scope: !4242)
!5958 = !DILocation(line: 505, column: 3, scope: !4242)
!5959 = !DILocation(line: 505, column: 7, scope: !4242)
!5960 = !DILocation(line: 508, column: 21, scope: !4242)
!5961 = !DILocation(line: 508, column: 27, scope: !4242)
!5962 = !DILocation(line: 508, column: 3, scope: !4242)
!5963 = !DILocation(line: 508, column: 12, scope: !4242)
!5964 = !DILocation(line: 508, column: 19, scope: !4242)
!5965 = !DILocation(line: 509, column: 17, scope: !4242)
!5966 = !DILocation(line: 509, column: 3, scope: !4242)
!5967 = !DILocation(line: 509, column: 12, scope: !4242)
!5968 = !DILocation(line: 509, column: 15, scope: !4242)
!5969 = !DILocation(line: 510, column: 3, scope: !4242)
!5970 = !DILocation(line: 511, column: 9, scope: !4242)
!5971 = !DILocation(line: 511, column: 12, scope: !4242)
!5972 = !DILocation(line: 511, column: 7, scope: !4242)
!5973 = !DILocation(line: 512, column: 7, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 512, column: 7)
!5975 = !DILocation(line: 512, column: 7, scope: !4242)
!5976 = !DILocation(line: 513, column: 8, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 513, column: 8)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 512, column: 13)
!5979 = !DILocation(line: 513, column: 8, scope: !5978)
!5980 = !DILocation(line: 514, column: 17, scope: !5977)
!5981 = !DILocation(line: 514, column: 5, scope: !5977)
!5982 = !DILocation(line: 514, column: 11, scope: !5977)
!5983 = !DILocation(line: 514, column: 15, scope: !5977)
!5984 = !DILocation(line: 515, column: 25, scope: !5978)
!5985 = !DILocation(line: 515, column: 4, scope: !5978)
!5986 = !DILocation(line: 516, column: 3, scope: !5978)
!5987 = !DILocation(line: 517, column: 3, scope: !4242)
!5988 = !DILocation(line: 518, column: 3, scope: !4242)
!5989 = !DILocation(line: 518, column: 12, scope: !4242)
!5990 = !DILocation(line: 518, column: 15, scope: !4242)
!5991 = !DILocation(line: 519, column: 3, scope: !4242)
!5992 = !DILocation(line: 519, column: 12, scope: !4242)
!5993 = !DILocation(line: 519, column: 19, scope: !4242)
!5994 = !DILocation(line: 520, column: 3, scope: !4248)
!5995 = !DILocation(line: 520, column: 3, scope: !4250)
!5996 = !DILocation(line: 520, column: 3, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 520, column: 3)
!5998 = !DILocation(line: 0, scope: !5997)
!5999 = !DILocation(line: 520, column: 3, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 520, column: 3)
!6001 = !DILocation(line: 520, column: 3, scope: !4251)
!6002 = !DILocation(line: 520, column: 3, scope: !4254)
!6003 = !DILocation(line: 520, column: 3, scope: !4258)
!6004 = !DILocation(line: 520, column: 3, scope: !4257)
!6005 = !DILocation(line: 520, column: 3, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 520, column: 3)
!6007 = !DILocation(line: 520, column: 3, scope: !4256)
!6008 = !DILocation(line: 520, column: 3, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 520, column: 3)
!6010 = !DILocation(line: 520, column: 3, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 520, column: 3)
!6012 = !{i64 2154672921, i64 2154672950, i64 2154672996, i64 2154673054, i64 2154673108, i64 2154673162, i64 2154673217, i64 2154673248, i64 2154673556, i64 2154673562, i64 2154673609, i64 2154673632, i64 2154673658}
!6013 = !DILocation(line: 520, column: 3, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 520, column: 3)
!6015 = !DILocation(line: 520, column: 3, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 520, column: 3)
!6017 = !DILocation(line: 520, column: 3, scope: !4242)
!6018 = !DILocation(line: 523, column: 2, scope: !4243)
!6019 = !DILocation(line: 524, column: 1, scope: !4226)
!6020 = distinct !DISubprogram(name: "cpu_stop_create", scope: !3, file: !3, line: 538, type: !4212, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6021 = !{!6022, !6023, !6026}
!6022 = !DILocalVariable(name: "cpu", arg: 1, scope: !6020, file: !3, line: 538, type: !7)
!6023 = !DILocalVariable(name: "__vpp_verify", scope: !6024, file: !3, line: 540, type: !1791)
!6024 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 540, column: 27)
!6025 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 540, column: 27)
!6026 = !DILocalVariable(name: "__ptr", scope: !6027, file: !3, line: 540, type: !113)
!6027 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 540, column: 27)
!6028 = !DILocation(line: 538, column: 42, scope: !6020)
!6029 = !DILocation(line: 540, column: 22, scope: !6020)
!6030 = !DILocation(line: 540, column: 27, scope: !6025)
!6031 = !DILocation(line: 540, column: 27, scope: !6024)
!6032 = !DILocation(line: 540, column: 27, scope: !6027)
!6033 = !DILocation(line: 540, column: 27, scope: !6020)
!6034 = !DILocation(line: 540, column: 2, scope: !6020)
!6035 = !DILocation(line: 541, column: 1, scope: !6020)
!6036 = distinct !DISubprogram(name: "cpu_stop_park", scope: !3, file: !3, line: 543, type: !4212, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6037 = !{!6038, !6039, !6040, !6043, !6045, !6047}
!6038 = !DILocalVariable(name: "cpu", arg: 1, scope: !6036, file: !3, line: 543, type: !7)
!6039 = !DILocalVariable(name: "stopper", scope: !6036, file: !3, line: 545, type: !100)
!6040 = !DILocalVariable(name: "__vpp_verify", scope: !6041, file: !3, line: 545, type: !1791)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 545, column: 33)
!6042 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 545, column: 33)
!6043 = !DILocalVariable(name: "__ptr", scope: !6044, file: !3, line: 545, type: !113)
!6044 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 545, column: 33)
!6045 = !DILocalVariable(name: "__ret_warn_on", scope: !6046, file: !3, line: 547, type: !135)
!6046 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 547, column: 2)
!6047 = !DILocalVariable(name: "__flags", scope: !6048, file: !3, line: 547, type: !135)
!6048 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 547, column: 2)
!6049 = distinct !DILexicalBlock(scope: !6046, file: !3, line: 547, column: 2)
!6050 = !DILocation(line: 543, column: 40, scope: !6036)
!6051 = !DILocation(line: 545, column: 2, scope: !6036)
!6052 = !DILocation(line: 545, column: 22, scope: !6036)
!6053 = !DILocation(line: 545, column: 33, scope: !6042)
!6054 = !DILocation(line: 545, column: 33, scope: !6041)
!6055 = !DILocation(line: 545, column: 33, scope: !6044)
!6056 = !DILocation(line: 547, column: 2, scope: !6046)
!6057 = !DILocation(line: 547, column: 2, scope: !6049)
!6058 = !DILocation(line: 547, column: 2, scope: !6048)
!6059 = !DILocation(line: 547, column: 2, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 547, column: 2)
!6061 = !DILocation(line: 547, column: 2, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 547, column: 2)
!6063 = !{i64 2154677033, i64 2154677062, i64 2154677108, i64 2154677166, i64 2154677220, i64 2154677274, i64 2154677329, i64 2154677360, i64 2154677668, i64 2154677674, i64 2154677721, i64 2154677744, i64 2154677770}
!6064 = !DILocation(line: 547, column: 2, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 547, column: 2)
!6066 = !DILocation(line: 547, column: 2, scope: !6036)
!6067 = !DILocation(line: 548, column: 1, scope: !6036)
!6068 = distinct !DISubprogram(name: "list_empty", scope: !5475, file: !5475, line: 371, type: !6069, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6073)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!135, !6071}
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!6073 = !{!6074}
!6074 = !DILocalVariable(name: "head", arg: 1, scope: !6068, file: !5475, line: 371, type: !6071)
!6075 = !DILocation(line: 371, column: 54, scope: !6068)
!6076 = !DILocation(line: 373, column: 9, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6068, file: !5475, line: 373, column: 9)
!6078 = !DILocation(line: 373, column: 9, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6077, file: !5475, line: 373, column: 9)
!6080 = !DILocation(line: 373, column: 34, scope: !6068)
!6081 = !DILocation(line: 373, column: 31, scope: !6068)
!6082 = !DILocation(line: 373, column: 2, scope: !6068)
!6083 = distinct !DISubprogram(name: "list_del_init", scope: !5475, file: !5475, line: 285, type: !5853, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6084 = !{!6085}
!6085 = !DILocalVariable(name: "entry", arg: 1, scope: !6083, file: !5475, line: 285, type: !194)
!6086 = !DILocation(line: 285, column: 52, scope: !6083)
!6087 = !DILocation(line: 287, column: 19, scope: !6083)
!6088 = !DILocation(line: 287, column: 2, scope: !6083)
!6089 = !DILocation(line: 288, column: 17, scope: !6083)
!6090 = !DILocation(line: 288, column: 2, scope: !6083)
!6091 = !DILocation(line: 289, column: 1, scope: !6083)
!6092 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !5396, file: !5396, line: 83, type: !3472, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6093)
!6093 = !{!6094, !6095, !6097}
!6094 = !DILocalVariable(name: "val", arg: 1, scope: !6092, file: !5396, line: 83, type: !135)
!6095 = !DILocalVariable(name: "pao_ID__", scope: !6096, file: !5396, line: 85, type: !2139)
!6096 = distinct !DILexicalBlock(scope: !6092, file: !5396, line: 85, column: 2)
!6097 = !DILocalVariable(name: "pto_val__", scope: !6098, file: !5396, line: 85, type: !116)
!6098 = distinct !DILexicalBlock(scope: !6099, file: !5396, line: 85, column: 2)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !5396, line: 85, column: 2)
!6100 = distinct !DILexicalBlock(scope: !6096, file: !5396, line: 85, column: 2)
!6101 = !DILocation(line: 83, column: 53, scope: !6092)
!6102 = !DILocation(line: 85, column: 2, scope: !6092)
!6103 = !DILocation(line: 85, column: 2, scope: !6096)
!6104 = !DILocation(line: 85, column: 2, scope: !6100)
!6105 = !DILocation(line: 85, column: 2, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6100, file: !5396, line: 85, column: 2)
!6107 = !{i64 2149483486}
!6108 = !DILocation(line: 85, column: 2, scope: !6099)
!6109 = !DILocation(line: 85, column: 2, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6099, file: !5396, line: 85, column: 2)
!6111 = !{i64 2149483781}
!6112 = !DILocation(line: 85, column: 2, scope: !6098)
!6113 = !{i64 2149484489}
!6114 = !DILocation(line: 86, column: 1, scope: !6092)
!6115 = distinct !DISubprogram(name: "preempt_count", scope: !5396, file: !5396, line: 25, type: !2045, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6116)
!6116 = !{!6117}
!6117 = !DILocalVariable(name: "pfo_val__", scope: !6118, file: !5396, line: 27, type: !116)
!6118 = distinct !DILexicalBlock(scope: !6115, file: !5396, line: 27, column: 9)
!6119 = !DILocation(line: 27, column: 9, scope: !6118)
!6120 = !{i64 2149471292}
!6121 = !DILocation(line: 27, column: 9, scope: !6115)
!6122 = !DILocation(line: 27, column: 48, scope: !6115)
!6123 = !DILocation(line: 27, column: 2, scope: !6115)
!6124 = !DISubprogram(name: "__warn_printk", scope: !2093, file: !2093, line: 93, type: !6125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{null, !735, null}
!6127 = distinct !DISubprogram(name: "__list_del_entry", scope: !5475, file: !5475, line: 213, type: !5853, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6128 = !{!6129}
!6129 = !DILocalVariable(name: "entry", arg: 1, scope: !6127, file: !5475, line: 213, type: !194)
!6130 = !DILocation(line: 213, column: 55, scope: !6127)
!6131 = !DILocation(line: 215, column: 30, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6127, file: !5475, line: 215, column: 6)
!6133 = !DILocation(line: 215, column: 7, scope: !6132)
!6134 = !DILocation(line: 215, column: 6, scope: !6127)
!6135 = !DILocation(line: 216, column: 3, scope: !6132)
!6136 = !DILocation(line: 218, column: 13, scope: !6127)
!6137 = !DILocation(line: 218, column: 20, scope: !6127)
!6138 = !DILocation(line: 218, column: 26, scope: !6127)
!6139 = !DILocation(line: 218, column: 33, scope: !6127)
!6140 = !DILocation(line: 218, column: 2, scope: !6127)
!6141 = !DILocation(line: 219, column: 1, scope: !6127)
!6142 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5475, file: !5475, line: 134, type: !6143, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6145)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!732, !194}
!6145 = !{!6146}
!6146 = !DILocalVariable(name: "entry", arg: 1, scope: !6142, file: !5475, line: 134, type: !194)
!6147 = !DILocation(line: 134, column: 61, scope: !6142)
!6148 = !DILocation(line: 136, column: 2, scope: !6142)
!6149 = distinct !DISubprogram(name: "__list_del", scope: !5475, file: !5475, line: 193, type: !5476, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6150)
!6150 = !{!6151, !6152}
!6151 = !DILocalVariable(name: "prev", arg: 1, scope: !6149, file: !5475, line: 193, type: !194)
!6152 = !DILocalVariable(name: "next", arg: 2, scope: !6149, file: !5475, line: 193, type: !194)
!6153 = !DILocation(line: 193, column: 50, scope: !6149)
!6154 = !DILocation(line: 193, column: 75, scope: !6149)
!6155 = !DILocation(line: 195, column: 15, scope: !6149)
!6156 = !DILocation(line: 195, column: 2, scope: !6149)
!6157 = !DILocation(line: 195, column: 8, scope: !6149)
!6158 = !DILocation(line: 195, column: 13, scope: !6149)
!6159 = !DILocation(line: 196, column: 2, scope: !6149)
!6160 = !DILocation(line: 196, column: 2, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6149, file: !5475, line: 196, column: 2)
!6162 = !DILocation(line: 196, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6161, file: !5475, line: 196, column: 2)
!6164 = !DILocation(line: 196, column: 2, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6161, file: !5475, line: 196, column: 2)
!6166 = !DILocation(line: 197, column: 1, scope: !6149)
!6167 = !DISubprogram(name: "sched_set_stop_task", scope: !106, file: !106, line: 2465, type: !6168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{null, !135, !104}
!6170 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5347, file: !5347, line: 442, type: !6171, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!135, !6173}
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!6175 = !{!6176}
!6176 = !DILocalVariable(name: "v", arg: 1, scope: !6170, file: !5347, line: 442, type: !6173)
!6177 = !DILocation(line: 442, column: 33, scope: !6170)
!6178 = !DILocation(line: 444, column: 26, scope: !6170)
!6179 = !DILocation(line: 444, column: 9, scope: !6170)
!6180 = !DILocation(line: 444, column: 2, scope: !6170)
!6181 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5380, file: !5380, line: 17, type: !6171, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6182)
!6182 = !{!6183}
!6183 = !DILocalVariable(name: "v", arg: 1, scope: !6181, file: !5380, line: 17, type: !6173)
!6184 = !DILocation(line: 17, column: 61, scope: !6181)
!6185 = !DILocation(line: 23, column: 9, scope: !6181)
!6186 = !DILocation(line: 23, column: 2, scope: !6181)
!6187 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !5027, file: !5027, line: 120, type: !6188, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6190)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!135, !113}
!6190 = !{!6191}
!6191 = !DILocalVariable(name: "flags", arg: 1, scope: !6187, file: !5027, line: 120, type: !113)
!6192 = !DILocation(line: 120, column: 67, scope: !6187)
!6193 = !DILocation(line: 122, column: 11, scope: !6187)
!6194 = !DILocation(line: 122, column: 17, scope: !6187)
!6195 = !DILocation(line: 122, column: 9, scope: !6187)
!6196 = !DILocation(line: 122, column: 2, scope: !6187)
!6197 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5027, file: !5027, line: 75, type: !2291, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6198 = !DILocation(line: 77, column: 2, scope: !6197)
!6199 = !DILocation(line: 78, column: 1, scope: !6197)
!6200 = distinct !DISubprogram(name: "native_irq_enable", scope: !5027, file: !5027, line: 40, type: !2291, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6201 = !DILocation(line: 42, column: 2, scope: !6200)
!6202 = !{i64 1908475}
!6203 = !DILocation(line: 43, column: 1, scope: !6200)
!6204 = !DISubprogram(name: "mutex_lock", scope: !532, file: !532, line: 227, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6205 = distinct !DISubprogram(name: "__stop_cpus", scope: !3, file: !3, line: 423, type: !5052, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6206)
!6206 = !{!6207, !6208, !6209, !6210}
!6207 = !DILocalVariable(name: "cpumask", arg: 1, scope: !6205, file: !3, line: 423, type: !4075)
!6208 = !DILocalVariable(name: "fn", arg: 2, scope: !6205, file: !3, line: 424, type: !4060)
!6209 = !DILocalVariable(name: "arg", arg: 3, scope: !6205, file: !3, line: 424, type: !123)
!6210 = !DILocalVariable(name: "done", scope: !6205, file: !3, line: 426, type: !4068)
!6211 = !DILocation(line: 423, column: 46, scope: !6205)
!6212 = !DILocation(line: 424, column: 24, scope: !6205)
!6213 = !DILocation(line: 424, column: 34, scope: !6205)
!6214 = !DILocation(line: 426, column: 2, scope: !6205)
!6215 = !DILocation(line: 426, column: 23, scope: !6205)
!6216 = !DILocation(line: 428, column: 43, scope: !6205)
!6217 = !DILocation(line: 428, column: 28, scope: !6205)
!6218 = !DILocation(line: 428, column: 2, scope: !6205)
!6219 = !DILocation(line: 429, column: 28, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 429, column: 6)
!6221 = !DILocation(line: 429, column: 37, scope: !6220)
!6222 = !DILocation(line: 429, column: 41, scope: !6220)
!6223 = !DILocation(line: 429, column: 7, scope: !6220)
!6224 = !DILocation(line: 429, column: 6, scope: !6205)
!6225 = !DILocation(line: 430, column: 3, scope: !6220)
!6226 = !DILocation(line: 431, column: 28, scope: !6205)
!6227 = !DILocation(line: 431, column: 2, scope: !6205)
!6228 = !DILocation(line: 432, column: 14, scope: !6205)
!6229 = !DILocation(line: 432, column: 2, scope: !6205)
!6230 = !DILocation(line: 433, column: 1, scope: !6205)
!6231 = distinct !DISubprogram(name: "bitmap_weight", scope: !6232, file: !6232, line: 453, type: !6233, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6235)
!6232 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6233 = !DISubroutineType(types: !6234)
!6234 = !{!7, !4547, !7}
!6235 = !{!6236, !6237}
!6236 = !DILocalVariable(name: "src", arg: 1, scope: !6231, file: !6232, line: 453, type: !4547)
!6237 = !DILocalVariable(name: "nbits", arg: 2, scope: !6231, file: !6232, line: 453, type: !7)
!6238 = !DILocation(line: 453, column: 49, scope: !6231)
!6239 = !DILocation(line: 453, column: 67, scope: !6231)
!6240 = !DILocation(line: 455, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6231, file: !6232, line: 455, column: 6)
!6242 = !DILocation(line: 455, column: 6, scope: !6231)
!6243 = !DILocation(line: 456, column: 24, scope: !6241)
!6244 = !DILocation(line: 456, column: 23, scope: !6241)
!6245 = !DILocation(line: 456, column: 30, scope: !6241)
!6246 = !DILocation(line: 456, column: 28, scope: !6241)
!6247 = !DILocation(line: 456, column: 10, scope: !6241)
!6248 = !DILocation(line: 456, column: 3, scope: !6241)
!6249 = !DILocation(line: 457, column: 25, scope: !6231)
!6250 = !DILocation(line: 457, column: 30, scope: !6231)
!6251 = !DILocation(line: 457, column: 9, scope: !6231)
!6252 = !DILocation(line: 457, column: 2, scope: !6231)
!6253 = !DILocation(line: 458, column: 1, scope: !6231)
!6254 = distinct !DISubprogram(name: "hweight_long", scope: !6255, file: !6255, line: 95, type: !5684, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6255 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!6256 = !{!6257}
!6257 = !DILocalVariable(name: "w", arg: 1, scope: !6254, file: !6255, line: 95, type: !113)
!6258 = !DILocation(line: 95, column: 65, scope: !6254)
!6259 = !DILocation(line: 97, column: 41, scope: !6254)
!6260 = !DILocation(line: 97, column: 2, scope: !6254)
!6261 = !DISubprogram(name: "__bitmap_weight", scope: !6232, file: !6232, line: 171, type: !6233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6262 = distinct !DISubprogram(name: "__arch_hweight64", scope: !6263, file: !6263, line: 43, type: !6264, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6266)
!6263 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!113, !187}
!6266 = !{!6267, !6268}
!6267 = !DILocalVariable(name: "w", arg: 1, scope: !6262, file: !6263, line: 43, type: !187)
!6268 = !DILocalVariable(name: "res", scope: !6262, file: !6263, line: 45, type: !113)
!6269 = !DILocation(line: 43, column: 61, scope: !6262)
!6270 = !DILocation(line: 45, column: 2, scope: !6262)
!6271 = !DILocation(line: 45, column: 16, scope: !6262)
!6272 = !DILocation(line: 49, column: 15, scope: !6262)
!6273 = !DILocation(line: 47, column: 2, scope: !6262)
!6274 = !{i64 2148044653, i64 2148044681, i64 2148044687, i64 2148044703, i64 2148044719, i64 2148044746, i64 2148045079, i64 2148044379, i64 2148045085, i64 2148045133, i64 2148045197, i64 2148045261, i64 2148045318, i64 2148044460, i64 2148044485, i64 2148045525, i64 2148045655, i64 2148045586, i64 2148045669, i64 2148044577}
!6275 = !DILocation(line: 51, column: 9, scope: !6262)
!6276 = !DILocation(line: 52, column: 1, scope: !6262)
!6277 = !DILocation(line: 51, column: 2, scope: !6262)
