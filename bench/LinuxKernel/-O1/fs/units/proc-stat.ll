; ModuleID = 'fs/proc/stat.c'
source_filename = "fs/proc/stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_proc__259_216_proc_stat_init\22, \22a\22\09\09"
module asm "__initcall__kmod_proc__259_216_proc_stat_init5:\09\09\09"
module asm ".long\09__initstub__kmod_proc__259_216_proc_stat_init5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [1 x i64] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.timespec64 = type { i64, i64 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.time_namespace = type { ptr, ptr, %struct.ns_common, %struct.timens_offsets, ptr, i8 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }

@__UNIQUE_ID___addressable___initstub__kmod_proc__259_216_proc_stat_init5260 = internal global ptr @__initstub__kmod_proc__259_216_proc_stat_init5, section ".discard.addressable", align 8, !dbg !0
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1, !dbg !3336
@stat_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @stat_open, ptr null, ptr @seq_read_iter, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3341
@nr_irqs = external dso_local global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"cpu  \00", align 1, !dbg !3359
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !3361
@.str.3 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1, !dbg !3364
@.str.4 = private unnamed_addr constant [6 x i8] c"intr \00", align 1, !dbg !3366
@.str.5 = private unnamed_addr constant [71 x i8] c"\0Actxt %llu\0Abtime %llu\0Aprocesses %lu\0Aprocs_running %u\0Aprocs_blocked %u\0A\00", align 1, !dbg !3368
@total_forks = external dso_local global i64, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"softirq \00", align 1, !dbg !3373
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@show_irq_gap.zeros = internal constant [33 x i8] c" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\00", align 16, !dbg !3378
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_proc__259_216_proc_stat_init5260], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @get_idle_time(ptr noundef %kcs, i32 noundef %cpu) #0 align 16 !dbg !3403 {
entry:
  %kcs.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %idle = alloca i64, align 8
  %idle_usecs = alloca i64, align 8
  store ptr %kcs, ptr %kcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcs.addr, metadata !3407, metadata !DIExpression()), !dbg !3411
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3408, metadata !DIExpression()), !dbg !3412
  call void @llvm.lifetime.start.p0(i64 8, ptr %idle) #12, !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %idle, metadata !3409, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.start.p0(i64 8, ptr %idle_usecs) #12, !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %idle_usecs, metadata !3410, metadata !DIExpression()), !dbg !3415
  store i64 -1, ptr %idle_usecs, align 8, !dbg !3415
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3416
  %call = call zeroext i1 @cpu_online(i32 noundef %0) #13, !dbg !3418
  br i1 %call, label %if.then, label %if.end, !dbg !3419

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3420
  %call1 = call i64 @get_cpu_idle_time_us(i32 noundef %1, ptr noundef null) #13, !dbg !3421
  store i64 %call1, ptr %idle_usecs, align 8, !dbg !3422
  br label %if.end, !dbg !3423

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %idle_usecs, align 8, !dbg !3424
  %cmp = icmp eq i64 %2, -1, !dbg !3426
  br i1 %cmp, label %if.then2, label %if.else, !dbg !3427

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %kcs.addr, align 8, !dbg !3428
  %cpustat = getelementptr inbounds %struct.kernel_cpustat, ptr %3, i32 0, i32 0, !dbg !3429
  %arrayidx = getelementptr [10 x i64], ptr %cpustat, i64 0, i64 5, !dbg !3428
  %4 = load i64, ptr %arrayidx, align 8, !dbg !3428
  store i64 %4, ptr %idle, align 8, !dbg !3430
  br label %if.end3, !dbg !3431

if.else:                                          ; preds = %if.end
  %5 = load i64, ptr %idle_usecs, align 8, !dbg !3432
  %mul = mul i64 %5, 1000, !dbg !3433
  store i64 %mul, ptr %idle, align 8, !dbg !3434
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %6 = load i64, ptr %idle, align 8, !dbg !3435
  call void @llvm.lifetime.end.p0(i64 8, ptr %idle_usecs) #12, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr %idle) #12, !dbg !3436
  ret i64 %6, !dbg !3437
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !3438 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3444
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !3445
  ret i1 %call, !dbg !3446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3447 dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_proc__259_216_proc_stat_init5() #5 section ".init.text" align 16 !dbg !3452 {
entry:
  %call = call i32 @proc_stat_init() #14, !dbg !3455
  ret i32 %call, !dbg !3455
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @proc_stat_init() #5 section ".init.text" align 16 !dbg !3456 {
entry:
  %call = call ptr @proc_create(ptr noundef @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef @stat_proc_ops) #13, !dbg !3457
  ret i32 0, !dbg !3458
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !3459 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3463, metadata !DIExpression()), !dbg !3465
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3464, metadata !DIExpression()), !dbg !3466
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3467
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !3467
  %conv = zext i32 %call to i64, !dbg !3467
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !3467
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3467
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3467
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !3467
  ret i1 %call1, !dbg !3468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3469 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3477, metadata !DIExpression()), !dbg !3479
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3478, metadata !DIExpression()), !dbg !3480
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3481
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3482
  %div = udiv i64 %1, 64, !dbg !3482
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3483
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !3484
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3485
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3486
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !3487
  ret i1 %call, !dbg !3488
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !3489 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3495
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !3496
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3497
  ret i32 %1, !dbg !3498
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3499 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3507, metadata !DIExpression()), !dbg !3509
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3508, metadata !DIExpression()), !dbg !3510
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3511
  %1 = load i64, ptr %size.addr, align 8, !dbg !3512
  %conv = trunc i64 %1 to i32, !dbg !3512
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !3513
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3514
  %3 = load i64, ptr %size.addr, align 8, !dbg !3514
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !3514
  ret void, !dbg !3515
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3516 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3519, metadata !DIExpression()), !dbg !3521
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3520, metadata !DIExpression()), !dbg !3522
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3523
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3524
  br i1 %1, label %cond.true, label %cond.false, !dbg !3524

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3525
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3526
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !3527
  %conv = zext i1 %call to i32, !dbg !3527
  br label %cond.end, !dbg !3524

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3528
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3529
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !3530
  %conv2 = zext i1 %call1 to i32, !dbg !3530
  br label %cond.end, !dbg !3524

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3524
  %tobool = icmp ne i32 %cond, 0, !dbg !3524
  ret i1 %tobool, !dbg !3531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3532 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3537, metadata !DIExpression()), !dbg !3539
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3538, metadata !DIExpression()), !dbg !3540
  ret i1 true, !dbg !3541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !3542 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3547, metadata !DIExpression()), !dbg !3550
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3548, metadata !DIExpression()), !dbg !3551
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3549, metadata !DIExpression()), !dbg !3552
  ret void, !dbg !3553
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3554 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3558, metadata !DIExpression()), !dbg !3560
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3559, metadata !DIExpression()), !dbg !3561
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3562
  %and = and i64 %0, 63, !dbg !3563
  %shl = shl i64 1, %and, !dbg !3564
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3565
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3566
  %shr = ashr i64 %2, 6, !dbg !3567
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3565
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3565
  %and1 = and i64 %shl, %3, !dbg !3568
  %cmp = icmp ne i64 %and1, 0, !dbg !3569
  ret i1 %cmp, !dbg !3570
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3571 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3573, metadata !DIExpression()), !dbg !3576
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3574, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3575, metadata !DIExpression()), !dbg !3579
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3580
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3581
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !3582, !srcloc !3583
  %3 = icmp ult i8 %2, 2, !dbg !3582
  call void @llvm.assume(i1 %3), !dbg !3582
  store i8 %2, ptr %oldbit, align 1, !dbg !3582
  %4 = load i8, ptr %oldbit, align 1, !dbg !3584, !range !3585, !noundef !484
  %tobool = trunc i8 %4 to i1, !dbg !3584
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !3586
  ret i1 %tobool, !dbg !3587
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !3588 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3592, metadata !DIExpression()), !dbg !3594
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3593, metadata !DIExpression()), !dbg !3595
  ret void, !dbg !3596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3597 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stat_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !3603 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3605, metadata !DIExpression()), !dbg !3608
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #12, !dbg !3610
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3607, metadata !DIExpression()), !dbg !3611
  %call = call i32 @num_online_cpus() #13, !dbg !3612
  %mul = mul i32 128, %call, !dbg !3613
  %add = add i32 1024, %mul, !dbg !3614
  store i32 %add, ptr %size, align 4, !dbg !3611
  %0 = load i32, ptr @nr_irqs, align 4, !dbg !3615
  %mul1 = mul i32 2, %0, !dbg !3616
  %1 = load i32, ptr %size, align 4, !dbg !3617
  %add2 = add i32 %1, %mul1, !dbg !3617
  store i32 %add2, ptr %size, align 4, !dbg !3617
  %2 = load ptr, ptr %file.addr, align 8, !dbg !3618
  %3 = load i32, ptr %size, align 4, !dbg !3619
  %conv = zext i32 %3 to i64, !dbg !3619
  %call3 = call i32 @single_open_size(ptr noundef %2, ptr noundef @show_stat, ptr noundef null, i64 noundef %conv) #13, !dbg !3620
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #12, !dbg !3621
  ret i32 %call3, !dbg !3622
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read_iter(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #6 align 16 !dbg !3623 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #13, !dbg !3626
  ret i32 %call, !dbg !3627
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3628 dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_stat(ptr noundef %p, ptr noundef %v) #0 align 16 !dbg !3631 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %user = alloca i64, align 8
  %nice = alloca i64, align 8
  %system = alloca i64, align 8
  %idle = alloca i64, align 8
  %iowait = alloca i64, align 8
  %irq = alloca i64, align 8
  %softirq = alloca i64, align 8
  %steal = alloca i64, align 8
  %guest = alloca i64, align 8
  %guest_nice = alloca i64, align 8
  %sum = alloca i64, align 8
  %sum_softirq = alloca i64, align 8
  %per_softirq_sums = alloca [10 x i32], align 16
  %boottime = alloca %struct.timespec64, align 8
  %kcpustat = alloca %struct.kernel_cpustat, align 8
  %cpustat = alloca ptr, align 8
  %softirq_stat = alloca i32, align 4
  %kcpustat57 = alloca %struct.kernel_cpustat, align 8
  %cpustat58 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3633, metadata !DIExpression()), !dbg !3665
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3634, metadata !DIExpression()), !dbg !3666
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3667
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3635, metadata !DIExpression()), !dbg !3668
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !3667
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3636, metadata !DIExpression()), !dbg !3669
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %user, metadata !3637, metadata !DIExpression()), !dbg !3671
  call void @llvm.lifetime.start.p0(i64 8, ptr %nice) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %nice, metadata !3638, metadata !DIExpression()), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 8, ptr %system) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %system, metadata !3639, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 8, ptr %idle) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %idle, metadata !3640, metadata !DIExpression()), !dbg !3674
  call void @llvm.lifetime.start.p0(i64 8, ptr %iowait) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %iowait, metadata !3641, metadata !DIExpression()), !dbg !3675
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !3642, metadata !DIExpression()), !dbg !3676
  call void @llvm.lifetime.start.p0(i64 8, ptr %softirq) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %softirq, metadata !3643, metadata !DIExpression()), !dbg !3677
  call void @llvm.lifetime.start.p0(i64 8, ptr %steal) #12, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %steal, metadata !3644, metadata !DIExpression()), !dbg !3678
  call void @llvm.lifetime.start.p0(i64 8, ptr %guest) #12, !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %guest, metadata !3645, metadata !DIExpression()), !dbg !3680
  call void @llvm.lifetime.start.p0(i64 8, ptr %guest_nice) #12, !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %guest_nice, metadata !3646, metadata !DIExpression()), !dbg !3681
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #12, !dbg !3682
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !3647, metadata !DIExpression()), !dbg !3683
  store i64 0, ptr %sum, align 8, !dbg !3683
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum_softirq) #12, !dbg !3684
  call void @llvm.dbg.declare(metadata ptr %sum_softirq, metadata !3648, metadata !DIExpression()), !dbg !3685
  store i64 0, ptr %sum_softirq, align 8, !dbg !3685
  call void @llvm.lifetime.start.p0(i64 40, ptr %per_softirq_sums) #12, !dbg !3686
  call void @llvm.dbg.declare(metadata ptr %per_softirq_sums, metadata !3649, metadata !DIExpression()), !dbg !3687
  call void @llvm.memset.p0.i64(ptr align 16 %per_softirq_sums, i8 0, i64 40, i1 false), !dbg !3687
  call void @llvm.lifetime.start.p0(i64 16, ptr %boottime) #12, !dbg !3688
  call void @llvm.dbg.declare(metadata ptr %boottime, metadata !3650, metadata !DIExpression()), !dbg !3689
  store i64 0, ptr %steal, align 8, !dbg !3690
  store i64 0, ptr %softirq, align 8, !dbg !3691
  store i64 0, ptr %irq, align 8, !dbg !3692
  store i64 0, ptr %iowait, align 8, !dbg !3693
  store i64 0, ptr %idle, align 8, !dbg !3694
  store i64 0, ptr %system, align 8, !dbg !3695
  store i64 0, ptr %nice, align 8, !dbg !3696
  store i64 0, ptr %user, align 8, !dbg !3697
  store i64 0, ptr %guest_nice, align 8, !dbg !3698
  store i64 0, ptr %guest, align 8, !dbg !3699
  call void @getboottime64(ptr noundef %boottime) #13, !dbg !3700
  call void @timens_sub_boottime(ptr noundef %boottime) #13, !dbg !3701
  store i32 0, ptr %i, align 4, !dbg !3702
  br label %for.cond, !dbg !3702

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3703
  %conv = sext i32 %0 to i64, !dbg !3703
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #13, !dbg !3703
  %conv1 = trunc i64 %call to i32, !dbg !3703
  store i32 %conv1, ptr %i, align 4, !dbg !3703
  %1 = load i32, ptr %i, align 4, !dbg !3703
  %cmp = icmp ult i32 %1, 64, !dbg !3703
  br i1 %cmp, label %for.body, label %for.end37, !dbg !3702

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr %kcpustat) #12, !dbg !3704
  call void @llvm.dbg.declare(metadata ptr %kcpustat, metadata !3651, metadata !DIExpression()), !dbg !3705
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpustat) #12, !dbg !3706
  call void @llvm.dbg.declare(metadata ptr %cpustat, metadata !3655, metadata !DIExpression()), !dbg !3707
  %cpustat3 = getelementptr inbounds %struct.kernel_cpustat, ptr %kcpustat, i32 0, i32 0, !dbg !3708
  %arraydecay = getelementptr inbounds [10 x i64], ptr %cpustat3, i64 0, i64 0, !dbg !3709
  store ptr %arraydecay, ptr %cpustat, align 8, !dbg !3707
  %2 = load i32, ptr %i, align 4, !dbg !3710
  call void @kcpustat_cpu_fetch(ptr noundef %kcpustat, i32 noundef %2) #13, !dbg !3711
  %3 = load ptr, ptr %cpustat, align 8, !dbg !3712
  %arrayidx = getelementptr i64, ptr %3, i64 0, !dbg !3712
  %4 = load i64, ptr %arrayidx, align 8, !dbg !3712
  %5 = load i64, ptr %user, align 8, !dbg !3713
  %add = add i64 %5, %4, !dbg !3713
  store i64 %add, ptr %user, align 8, !dbg !3713
  %6 = load ptr, ptr %cpustat, align 8, !dbg !3714
  %arrayidx4 = getelementptr i64, ptr %6, i64 1, !dbg !3714
  %7 = load i64, ptr %arrayidx4, align 8, !dbg !3714
  %8 = load i64, ptr %nice, align 8, !dbg !3715
  %add5 = add i64 %8, %7, !dbg !3715
  store i64 %add5, ptr %nice, align 8, !dbg !3715
  %9 = load ptr, ptr %cpustat, align 8, !dbg !3716
  %arrayidx6 = getelementptr i64, ptr %9, i64 2, !dbg !3716
  %10 = load i64, ptr %arrayidx6, align 8, !dbg !3716
  %11 = load i64, ptr %system, align 8, !dbg !3717
  %add7 = add i64 %11, %10, !dbg !3717
  store i64 %add7, ptr %system, align 8, !dbg !3717
  %12 = load i32, ptr %i, align 4, !dbg !3718
  %call8 = call i64 @get_idle_time(ptr noundef %kcpustat, i32 noundef %12) #13, !dbg !3719
  %13 = load i64, ptr %idle, align 8, !dbg !3720
  %add9 = add i64 %13, %call8, !dbg !3720
  store i64 %add9, ptr %idle, align 8, !dbg !3720
  %14 = load i32, ptr %i, align 4, !dbg !3721
  %call10 = call i64 @get_iowait_time(ptr noundef %kcpustat, i32 noundef %14) #13, !dbg !3722
  %15 = load i64, ptr %iowait, align 8, !dbg !3723
  %add11 = add i64 %15, %call10, !dbg !3723
  store i64 %add11, ptr %iowait, align 8, !dbg !3723
  %16 = load ptr, ptr %cpustat, align 8, !dbg !3724
  %arrayidx12 = getelementptr i64, ptr %16, i64 4, !dbg !3724
  %17 = load i64, ptr %arrayidx12, align 8, !dbg !3724
  %18 = load i64, ptr %irq, align 8, !dbg !3725
  %add13 = add i64 %18, %17, !dbg !3725
  store i64 %add13, ptr %irq, align 8, !dbg !3725
  %19 = load ptr, ptr %cpustat, align 8, !dbg !3726
  %arrayidx14 = getelementptr i64, ptr %19, i64 3, !dbg !3726
  %20 = load i64, ptr %arrayidx14, align 8, !dbg !3726
  %21 = load i64, ptr %softirq, align 8, !dbg !3727
  %add15 = add i64 %21, %20, !dbg !3727
  store i64 %add15, ptr %softirq, align 8, !dbg !3727
  %22 = load ptr, ptr %cpustat, align 8, !dbg !3728
  %arrayidx16 = getelementptr i64, ptr %22, i64 7, !dbg !3728
  %23 = load i64, ptr %arrayidx16, align 8, !dbg !3728
  %24 = load i64, ptr %steal, align 8, !dbg !3729
  %add17 = add i64 %24, %23, !dbg !3729
  store i64 %add17, ptr %steal, align 8, !dbg !3729
  %25 = load ptr, ptr %cpustat, align 8, !dbg !3730
  %arrayidx18 = getelementptr i64, ptr %25, i64 8, !dbg !3730
  %26 = load i64, ptr %arrayidx18, align 8, !dbg !3730
  %27 = load i64, ptr %guest, align 8, !dbg !3731
  %add19 = add i64 %27, %26, !dbg !3731
  store i64 %add19, ptr %guest, align 8, !dbg !3731
  %28 = load ptr, ptr %cpustat, align 8, !dbg !3732
  %arrayidx20 = getelementptr i64, ptr %28, i64 9, !dbg !3732
  %29 = load i64, ptr %arrayidx20, align 8, !dbg !3732
  %30 = load i64, ptr %guest_nice, align 8, !dbg !3733
  %add21 = add i64 %30, %29, !dbg !3733
  store i64 %add21, ptr %guest_nice, align 8, !dbg !3733
  %31 = load i32, ptr %i, align 4, !dbg !3734
  %call22 = call i64 @kstat_cpu_irqs_sum(i32 noundef %31) #13, !dbg !3735
  %32 = load i64, ptr %sum, align 8, !dbg !3736
  %add23 = add i64 %32, %call22, !dbg !3736
  store i64 %add23, ptr %sum, align 8, !dbg !3736
  %33 = load i32, ptr %i, align 4, !dbg !3737
  %call24 = call i64 @arch_irq_stat_cpu(i32 noundef %33) #13, !dbg !3738
  %34 = load i64, ptr %sum, align 8, !dbg !3739
  %add25 = add i64 %34, %call24, !dbg !3739
  store i64 %add25, ptr %sum, align 8, !dbg !3739
  store i32 0, ptr %j, align 4, !dbg !3740
  br label %for.cond26, !dbg !3741

for.cond26:                                       ; preds = %for.inc, %for.body
  %35 = load i32, ptr %j, align 4, !dbg !3742
  %cmp27 = icmp slt i32 %35, 10, !dbg !3743
  br i1 %cmp27, label %for.body29, label %for.end, !dbg !3744

for.body29:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 4, ptr %softirq_stat) #12, !dbg !3745
  call void @llvm.dbg.declare(metadata ptr %softirq_stat, metadata !3656, metadata !DIExpression()), !dbg !3746
  %36 = load i32, ptr %j, align 4, !dbg !3747
  %37 = load i32, ptr %i, align 4, !dbg !3748
  %call30 = call i32 @kstat_softirqs_cpu(i32 noundef %36, i32 noundef %37) #13, !dbg !3749
  store i32 %call30, ptr %softirq_stat, align 4, !dbg !3746
  %38 = load i32, ptr %softirq_stat, align 4, !dbg !3750
  %39 = load i32, ptr %j, align 4, !dbg !3751
  %idxprom = sext i32 %39 to i64, !dbg !3752
  %arrayidx31 = getelementptr [10 x i32], ptr %per_softirq_sums, i64 0, i64 %idxprom, !dbg !3752
  %40 = load i32, ptr %arrayidx31, align 4, !dbg !3753
  %add32 = add i32 %40, %38, !dbg !3753
  store i32 %add32, ptr %arrayidx31, align 4, !dbg !3753
  %41 = load i32, ptr %softirq_stat, align 4, !dbg !3754
  %conv33 = zext i32 %41 to i64, !dbg !3754
  %42 = load i64, ptr %sum_softirq, align 8, !dbg !3755
  %add34 = add i64 %42, %conv33, !dbg !3755
  store i64 %add34, ptr %sum_softirq, align 8, !dbg !3755
  call void @llvm.lifetime.end.p0(i64 4, ptr %softirq_stat) #12, !dbg !3756
  br label %for.inc, !dbg !3757

for.inc:                                          ; preds = %for.body29
  %43 = load i32, ptr %j, align 4, !dbg !3758
  %inc = add i32 %43, 1, !dbg !3758
  store i32 %inc, ptr %j, align 4, !dbg !3758
  br label %for.cond26, !dbg !3759, !llvm.loop !3760

for.end:                                          ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpustat) #12, !dbg !3764
  call void @llvm.lifetime.end.p0(i64 80, ptr %kcpustat) #12, !dbg !3764
  br label %for.inc35, !dbg !3765

for.inc35:                                        ; preds = %for.end
  %44 = load i32, ptr %i, align 4, !dbg !3703
  %inc36 = add i32 %44, 1, !dbg !3703
  store i32 %inc36, ptr %i, align 4, !dbg !3703
  br label %for.cond, !dbg !3703, !llvm.loop !3766

for.end37:                                        ; preds = %for.cond
  %call38 = call i64 @arch_irq_stat() #13, !dbg !3768
  %45 = load i64, ptr %sum, align 8, !dbg !3769
  %add39 = add i64 %45, %call38, !dbg !3769
  store i64 %add39, ptr %sum, align 8, !dbg !3769
  %46 = load ptr, ptr %p.addr, align 8, !dbg !3770
  %47 = load i64, ptr %user, align 8, !dbg !3771
  %call40 = call i64 @nsec_to_clock_t(i64 noundef %47) #13, !dbg !3772
  call void @seq_put_decimal_ull(ptr noundef %46, ptr noundef @.str.1, i64 noundef %call40) #13, !dbg !3773
  %48 = load ptr, ptr %p.addr, align 8, !dbg !3774
  %49 = load i64, ptr %nice, align 8, !dbg !3775
  %call41 = call i64 @nsec_to_clock_t(i64 noundef %49) #13, !dbg !3776
  call void @seq_put_decimal_ull(ptr noundef %48, ptr noundef @.str.2, i64 noundef %call41) #13, !dbg !3777
  %50 = load ptr, ptr %p.addr, align 8, !dbg !3778
  %51 = load i64, ptr %system, align 8, !dbg !3779
  %call42 = call i64 @nsec_to_clock_t(i64 noundef %51) #13, !dbg !3780
  call void @seq_put_decimal_ull(ptr noundef %50, ptr noundef @.str.2, i64 noundef %call42) #13, !dbg !3781
  %52 = load ptr, ptr %p.addr, align 8, !dbg !3782
  %53 = load i64, ptr %idle, align 8, !dbg !3783
  %call43 = call i64 @nsec_to_clock_t(i64 noundef %53) #13, !dbg !3784
  call void @seq_put_decimal_ull(ptr noundef %52, ptr noundef @.str.2, i64 noundef %call43) #13, !dbg !3785
  %54 = load ptr, ptr %p.addr, align 8, !dbg !3786
  %55 = load i64, ptr %iowait, align 8, !dbg !3787
  %call44 = call i64 @nsec_to_clock_t(i64 noundef %55) #13, !dbg !3788
  call void @seq_put_decimal_ull(ptr noundef %54, ptr noundef @.str.2, i64 noundef %call44) #13, !dbg !3789
  %56 = load ptr, ptr %p.addr, align 8, !dbg !3790
  %57 = load i64, ptr %irq, align 8, !dbg !3791
  %call45 = call i64 @nsec_to_clock_t(i64 noundef %57) #13, !dbg !3792
  call void @seq_put_decimal_ull(ptr noundef %56, ptr noundef @.str.2, i64 noundef %call45) #13, !dbg !3793
  %58 = load ptr, ptr %p.addr, align 8, !dbg !3794
  %59 = load i64, ptr %softirq, align 8, !dbg !3795
  %call46 = call i64 @nsec_to_clock_t(i64 noundef %59) #13, !dbg !3796
  call void @seq_put_decimal_ull(ptr noundef %58, ptr noundef @.str.2, i64 noundef %call46) #13, !dbg !3797
  %60 = load ptr, ptr %p.addr, align 8, !dbg !3798
  %61 = load i64, ptr %steal, align 8, !dbg !3799
  %call47 = call i64 @nsec_to_clock_t(i64 noundef %61) #13, !dbg !3800
  call void @seq_put_decimal_ull(ptr noundef %60, ptr noundef @.str.2, i64 noundef %call47) #13, !dbg !3801
  %62 = load ptr, ptr %p.addr, align 8, !dbg !3802
  %63 = load i64, ptr %guest, align 8, !dbg !3803
  %call48 = call i64 @nsec_to_clock_t(i64 noundef %63) #13, !dbg !3804
  call void @seq_put_decimal_ull(ptr noundef %62, ptr noundef @.str.2, i64 noundef %call48) #13, !dbg !3805
  %64 = load ptr, ptr %p.addr, align 8, !dbg !3806
  %65 = load i64, ptr %guest_nice, align 8, !dbg !3807
  %call49 = call i64 @nsec_to_clock_t(i64 noundef %65) #13, !dbg !3808
  call void @seq_put_decimal_ull(ptr noundef %64, ptr noundef @.str.2, i64 noundef %call49) #13, !dbg !3809
  %66 = load ptr, ptr %p.addr, align 8, !dbg !3810
  call void @seq_putc(ptr noundef %66, i8 noundef zeroext 10) #13, !dbg !3811
  store i32 0, ptr %i, align 4, !dbg !3812
  br label %for.cond50, !dbg !3812

for.cond50:                                       ; preds = %for.inc81, %for.end37
  %67 = load i32, ptr %i, align 4, !dbg !3813
  %conv51 = sext i32 %67 to i64, !dbg !3813
  %call52 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv51) #13, !dbg !3813
  %conv53 = trunc i64 %call52 to i32, !dbg !3813
  store i32 %conv53, ptr %i, align 4, !dbg !3813
  %68 = load i32, ptr %i, align 4, !dbg !3813
  %cmp54 = icmp ult i32 %68, 64, !dbg !3813
  br i1 %cmp54, label %for.body56, label %for.end83, !dbg !3812

for.body56:                                       ; preds = %for.cond50
  call void @llvm.lifetime.start.p0(i64 80, ptr %kcpustat57) #12, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %kcpustat57, metadata !3660, metadata !DIExpression()), !dbg !3815
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpustat58) #12, !dbg !3816
  call void @llvm.dbg.declare(metadata ptr %cpustat58, metadata !3664, metadata !DIExpression()), !dbg !3817
  %cpustat59 = getelementptr inbounds %struct.kernel_cpustat, ptr %kcpustat57, i32 0, i32 0, !dbg !3818
  %arraydecay60 = getelementptr inbounds [10 x i64], ptr %cpustat59, i64 0, i64 0, !dbg !3819
  store ptr %arraydecay60, ptr %cpustat58, align 8, !dbg !3817
  %69 = load i32, ptr %i, align 4, !dbg !3820
  call void @kcpustat_cpu_fetch(ptr noundef %kcpustat57, i32 noundef %69) #13, !dbg !3821
  %70 = load ptr, ptr %cpustat58, align 8, !dbg !3822
  %arrayidx61 = getelementptr i64, ptr %70, i64 0, !dbg !3822
  %71 = load i64, ptr %arrayidx61, align 8, !dbg !3822
  store i64 %71, ptr %user, align 8, !dbg !3823
  %72 = load ptr, ptr %cpustat58, align 8, !dbg !3824
  %arrayidx62 = getelementptr i64, ptr %72, i64 1, !dbg !3824
  %73 = load i64, ptr %arrayidx62, align 8, !dbg !3824
  store i64 %73, ptr %nice, align 8, !dbg !3825
  %74 = load ptr, ptr %cpustat58, align 8, !dbg !3826
  %arrayidx63 = getelementptr i64, ptr %74, i64 2, !dbg !3826
  %75 = load i64, ptr %arrayidx63, align 8, !dbg !3826
  store i64 %75, ptr %system, align 8, !dbg !3827
  %76 = load i32, ptr %i, align 4, !dbg !3828
  %call64 = call i64 @get_idle_time(ptr noundef %kcpustat57, i32 noundef %76) #13, !dbg !3829
  store i64 %call64, ptr %idle, align 8, !dbg !3830
  %77 = load i32, ptr %i, align 4, !dbg !3831
  %call65 = call i64 @get_iowait_time(ptr noundef %kcpustat57, i32 noundef %77) #13, !dbg !3832
  store i64 %call65, ptr %iowait, align 8, !dbg !3833
  %78 = load ptr, ptr %cpustat58, align 8, !dbg !3834
  %arrayidx66 = getelementptr i64, ptr %78, i64 4, !dbg !3834
  %79 = load i64, ptr %arrayidx66, align 8, !dbg !3834
  store i64 %79, ptr %irq, align 8, !dbg !3835
  %80 = load ptr, ptr %cpustat58, align 8, !dbg !3836
  %arrayidx67 = getelementptr i64, ptr %80, i64 3, !dbg !3836
  %81 = load i64, ptr %arrayidx67, align 8, !dbg !3836
  store i64 %81, ptr %softirq, align 8, !dbg !3837
  %82 = load ptr, ptr %cpustat58, align 8, !dbg !3838
  %arrayidx68 = getelementptr i64, ptr %82, i64 7, !dbg !3838
  %83 = load i64, ptr %arrayidx68, align 8, !dbg !3838
  store i64 %83, ptr %steal, align 8, !dbg !3839
  %84 = load ptr, ptr %cpustat58, align 8, !dbg !3840
  %arrayidx69 = getelementptr i64, ptr %84, i64 8, !dbg !3840
  %85 = load i64, ptr %arrayidx69, align 8, !dbg !3840
  store i64 %85, ptr %guest, align 8, !dbg !3841
  %86 = load ptr, ptr %cpustat58, align 8, !dbg !3842
  %arrayidx70 = getelementptr i64, ptr %86, i64 9, !dbg !3842
  %87 = load i64, ptr %arrayidx70, align 8, !dbg !3842
  store i64 %87, ptr %guest_nice, align 8, !dbg !3843
  %88 = load ptr, ptr %p.addr, align 8, !dbg !3844
  %89 = load i32, ptr %i, align 4, !dbg !3845
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef @.str.3, i32 noundef %89) #13, !dbg !3846
  %90 = load ptr, ptr %p.addr, align 8, !dbg !3847
  %91 = load i64, ptr %user, align 8, !dbg !3848
  %call71 = call i64 @nsec_to_clock_t(i64 noundef %91) #13, !dbg !3849
  call void @seq_put_decimal_ull(ptr noundef %90, ptr noundef @.str.2, i64 noundef %call71) #13, !dbg !3850
  %92 = load ptr, ptr %p.addr, align 8, !dbg !3851
  %93 = load i64, ptr %nice, align 8, !dbg !3852
  %call72 = call i64 @nsec_to_clock_t(i64 noundef %93) #13, !dbg !3853
  call void @seq_put_decimal_ull(ptr noundef %92, ptr noundef @.str.2, i64 noundef %call72) #13, !dbg !3854
  %94 = load ptr, ptr %p.addr, align 8, !dbg !3855
  %95 = load i64, ptr %system, align 8, !dbg !3856
  %call73 = call i64 @nsec_to_clock_t(i64 noundef %95) #13, !dbg !3857
  call void @seq_put_decimal_ull(ptr noundef %94, ptr noundef @.str.2, i64 noundef %call73) #13, !dbg !3858
  %96 = load ptr, ptr %p.addr, align 8, !dbg !3859
  %97 = load i64, ptr %idle, align 8, !dbg !3860
  %call74 = call i64 @nsec_to_clock_t(i64 noundef %97) #13, !dbg !3861
  call void @seq_put_decimal_ull(ptr noundef %96, ptr noundef @.str.2, i64 noundef %call74) #13, !dbg !3862
  %98 = load ptr, ptr %p.addr, align 8, !dbg !3863
  %99 = load i64, ptr %iowait, align 8, !dbg !3864
  %call75 = call i64 @nsec_to_clock_t(i64 noundef %99) #13, !dbg !3865
  call void @seq_put_decimal_ull(ptr noundef %98, ptr noundef @.str.2, i64 noundef %call75) #13, !dbg !3866
  %100 = load ptr, ptr %p.addr, align 8, !dbg !3867
  %101 = load i64, ptr %irq, align 8, !dbg !3868
  %call76 = call i64 @nsec_to_clock_t(i64 noundef %101) #13, !dbg !3869
  call void @seq_put_decimal_ull(ptr noundef %100, ptr noundef @.str.2, i64 noundef %call76) #13, !dbg !3870
  %102 = load ptr, ptr %p.addr, align 8, !dbg !3871
  %103 = load i64, ptr %softirq, align 8, !dbg !3872
  %call77 = call i64 @nsec_to_clock_t(i64 noundef %103) #13, !dbg !3873
  call void @seq_put_decimal_ull(ptr noundef %102, ptr noundef @.str.2, i64 noundef %call77) #13, !dbg !3874
  %104 = load ptr, ptr %p.addr, align 8, !dbg !3875
  %105 = load i64, ptr %steal, align 8, !dbg !3876
  %call78 = call i64 @nsec_to_clock_t(i64 noundef %105) #13, !dbg !3877
  call void @seq_put_decimal_ull(ptr noundef %104, ptr noundef @.str.2, i64 noundef %call78) #13, !dbg !3878
  %106 = load ptr, ptr %p.addr, align 8, !dbg !3879
  %107 = load i64, ptr %guest, align 8, !dbg !3880
  %call79 = call i64 @nsec_to_clock_t(i64 noundef %107) #13, !dbg !3881
  call void @seq_put_decimal_ull(ptr noundef %106, ptr noundef @.str.2, i64 noundef %call79) #13, !dbg !3882
  %108 = load ptr, ptr %p.addr, align 8, !dbg !3883
  %109 = load i64, ptr %guest_nice, align 8, !dbg !3884
  %call80 = call i64 @nsec_to_clock_t(i64 noundef %109) #13, !dbg !3885
  call void @seq_put_decimal_ull(ptr noundef %108, ptr noundef @.str.2, i64 noundef %call80) #13, !dbg !3886
  %110 = load ptr, ptr %p.addr, align 8, !dbg !3887
  call void @seq_putc(ptr noundef %110, i8 noundef zeroext 10) #13, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpustat58) #12, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 80, ptr %kcpustat57) #12, !dbg !3889
  br label %for.inc81, !dbg !3890

for.inc81:                                        ; preds = %for.body56
  %111 = load i32, ptr %i, align 4, !dbg !3813
  %inc82 = add i32 %111, 1, !dbg !3813
  store i32 %inc82, ptr %i, align 4, !dbg !3813
  br label %for.cond50, !dbg !3813, !llvm.loop !3891

for.end83:                                        ; preds = %for.cond50
  %112 = load ptr, ptr %p.addr, align 8, !dbg !3893
  %113 = load i64, ptr %sum, align 8, !dbg !3894
  call void @seq_put_decimal_ull(ptr noundef %112, ptr noundef @.str.4, i64 noundef %113) #13, !dbg !3895
  %114 = load ptr, ptr %p.addr, align 8, !dbg !3896
  call void @show_all_irqs(ptr noundef %114) #13, !dbg !3897
  %115 = load ptr, ptr %p.addr, align 8, !dbg !3898
  %call84 = call i64 @nr_context_switches() #13, !dbg !3899
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %boottime, i32 0, i32 0, !dbg !3900
  %116 = load i64, ptr %tv_sec, align 8, !dbg !3900
  %117 = load i64, ptr @total_forks, align 8, !dbg !3901
  %call85 = call i32 @nr_running() #13, !dbg !3902
  %call86 = call i32 @nr_iowait() #13, !dbg !3903
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %115, ptr noundef @.str.5, i64 noundef %call84, i64 noundef %116, i64 noundef %117, i32 noundef %call85, i32 noundef %call86) #13, !dbg !3904
  %118 = load ptr, ptr %p.addr, align 8, !dbg !3905
  %119 = load i64, ptr %sum_softirq, align 8, !dbg !3906
  call void @seq_put_decimal_ull(ptr noundef %118, ptr noundef @.str.6, i64 noundef %119) #13, !dbg !3907
  store i32 0, ptr %i, align 4, !dbg !3908
  br label %for.cond87, !dbg !3910

for.cond87:                                       ; preds = %for.inc94, %for.end83
  %120 = load i32, ptr %i, align 4, !dbg !3911
  %cmp88 = icmp slt i32 %120, 10, !dbg !3913
  br i1 %cmp88, label %for.body90, label %for.end96, !dbg !3914

for.body90:                                       ; preds = %for.cond87
  %121 = load ptr, ptr %p.addr, align 8, !dbg !3915
  %122 = load i32, ptr %i, align 4, !dbg !3916
  %idxprom91 = sext i32 %122 to i64, !dbg !3917
  %arrayidx92 = getelementptr [10 x i32], ptr %per_softirq_sums, i64 0, i64 %idxprom91, !dbg !3917
  %123 = load i32, ptr %arrayidx92, align 4, !dbg !3917
  %conv93 = zext i32 %123 to i64, !dbg !3917
  call void @seq_put_decimal_ull(ptr noundef %121, ptr noundef @.str.2, i64 noundef %conv93) #13, !dbg !3918
  br label %for.inc94, !dbg !3918

for.inc94:                                        ; preds = %for.body90
  %124 = load i32, ptr %i, align 4, !dbg !3919
  %inc95 = add i32 %124, 1, !dbg !3919
  store i32 %inc95, ptr %i, align 4, !dbg !3919
  br label %for.cond87, !dbg !3920, !llvm.loop !3921

for.end96:                                        ; preds = %for.cond87
  %125 = load ptr, ptr %p.addr, align 8, !dbg !3923
  call void @seq_putc(ptr noundef %125, i8 noundef zeroext 10) #13, !dbg !3924
  call void @llvm.lifetime.end.p0(i64 16, ptr %boottime) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 40, ptr %per_softirq_sums) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum_softirq) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %guest_nice) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %guest) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %steal) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %softirq) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %iowait) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %idle) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %system) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %nice) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3925
  ret i32 0, !dbg !3926
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !3927 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3934, metadata !DIExpression()), !dbg !3935
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3936
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !3937
  ret i32 %call, !dbg !3938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !3939 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3942, metadata !DIExpression()), !dbg !3943
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3944
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3944
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3944
  ret i32 %1, !dbg !3945
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3946 dso_local void @getboottime64(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timens_sub_boottime(ptr noundef %ts) #3 align 16 !dbg !3951 {
entry:
  %ts.addr = alloca ptr, align 8
  %ns_offsets = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_offsets) #12, !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %ns_offsets, metadata !3954, metadata !DIExpression()), !dbg !3958
  %call = call ptr @get_current() #13, !dbg !3959
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !3960
  %0 = load ptr, ptr %nsproxy, align 8, !dbg !3960
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 6, !dbg !3961
  %1 = load ptr, ptr %time_ns, align 8, !dbg !3961
  %offsets = getelementptr inbounds %struct.time_namespace, ptr %1, i32 0, i32 3, !dbg !3962
  store ptr %offsets, ptr %ns_offsets, align 8, !dbg !3958
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !3963
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #12, !dbg !3964
  %3 = load ptr, ptr %ts.addr, align 8, !dbg !3965
  %4 = load ptr, ptr %ns_offsets, align 8, !dbg !3966
  %boottime = getelementptr inbounds %struct.timens_offsets, ptr %4, i32 0, i32 1, !dbg !3967
  %5 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0, !dbg !3964
  %6 = load i64, ptr %5, align 8, !dbg !3964
  %7 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1, !dbg !3964
  %8 = load i64, ptr %7, align 8, !dbg !3964
  %9 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 0, !dbg !3964
  %10 = load i64, ptr %9, align 8, !dbg !3964
  %11 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 1, !dbg !3964
  %12 = load i64, ptr %11, align 8, !dbg !3964
  %call1 = call { i64, i64 } @timespec64_sub(i64 %6, i64 %8, i64 %10, i64 %12) #13, !dbg !3964
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !3964
  %14 = extractvalue { i64, i64 } %call1, 0, !dbg !3964
  store i64 %14, ptr %13, align 8, !dbg !3964
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !3964
  %16 = extractvalue { i64, i64 } %call1, 1, !dbg !3964
  store i64 %16, ptr %15, align 8, !dbg !3964
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %tmp, i64 16, i1 false), !dbg !3964
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #12, !dbg !3964
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_offsets) #12, !dbg !3968
  ret void, !dbg !3968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !3969 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3976, metadata !DIExpression()), !dbg !3982
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3977, metadata !DIExpression()), !dbg !3983
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3978, metadata !DIExpression()), !dbg !3984
  %0 = load i64, ptr %size.addr, align 8, !dbg !3985
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3985
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3985

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3985
  %cmp = icmp ule i64 %2, 64, !dbg !3985
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3985

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3985
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3985
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3986

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3979, metadata !DIExpression()), !dbg !3988
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3989
  %5 = load i64, ptr %size.addr, align 8, !dbg !3989
  %cmp3 = icmp uge i64 %4, %5, !dbg !3989
  %lnot = xor i1 %cmp3, true, !dbg !3989
  %lnot4 = xor i1 %lnot, true, !dbg !3989
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3989
  %conv = sext i32 %lnot.ext to i64, !dbg !3989
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3989
  %tobool = icmp ne i64 %expval, 0, !dbg !3989
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3991

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3992
  store i64 %6, ptr %retval, align 8, !dbg !3993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3993

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3994
  %8 = load i64, ptr %7, align 8, !dbg !3995
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3996
  %shl = shl i64 1, %9, !dbg !3996
  %sub = sub i64 -1, %shl, !dbg !3996
  %add = add i64 %sub, 1, !dbg !3996
  %10 = load i64, ptr %size.addr, align 8, !dbg !3996
  %sub6 = sub i64 %10, 1, !dbg !3996
  %sub7 = sub i64 63, %sub6, !dbg !3996
  %shr = lshr i64 -1, %sub7, !dbg !3996
  %and = and i64 %add, %shr, !dbg !3996
  %add8 = add i64 0, %and, !dbg !3996
  %and9 = and i64 %8, %add8, !dbg !3997
  store i64 %and9, ptr %val, align 8, !dbg !3998
  %11 = load i64, ptr %val, align 8, !dbg !3999
  %tobool10 = icmp ne i64 %11, 0, !dbg !3999
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3999

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !4000
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4000
  br i1 %13, label %cond.true11, label %cond.false, !dbg !4000

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !4000
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !4000
  %cast = trunc i64 %15 to i32, !dbg !4000
  %conv12 = sext i32 %cast to i64, !dbg !4000
  br label %cond.end, !dbg !4000

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !4000
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !4000
  br label %cond.end, !dbg !4000

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !4000
  br label %cond.end14, !dbg !3999

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !4001
  br label %cond.end14, !dbg !3999

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3999
  store i64 %cond15, ptr %retval, align 8, !dbg !4002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4002

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !4003
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !4004
  %19 = load i64, ptr %size.addr, align 8, !dbg !4005
  %20 = load i64, ptr %offset.addr, align 8, !dbg !4006
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !4007
  store i64 %call17, ptr %retval, align 8, !dbg !4008
  br label %return, !dbg !4008

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !4009
  ret i64 %21, !dbg !4009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcpustat_cpu_fetch(ptr noundef %dst, i32 noundef %cpu) #3 align 16 !dbg !4010 {
entry:
  %dst.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4014, metadata !DIExpression()), !dbg !4021
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4015, metadata !DIExpression()), !dbg !4022
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4023
  br label %do.body, !dbg !4024

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4016, metadata !DIExpression()), !dbg !4025
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4025
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4024
  br label %do.end, !dbg !4025

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !4026
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4019, metadata !DIExpression()), !dbg !4026
  store i64 ptrtoint (ptr @kernel_cpustat to i64), ptr %__ptr, align 8, !dbg !4026
  %2 = load i64, ptr %__ptr, align 8, !dbg !4026
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !4026
  %idxprom = sext i32 %3 to i64, !dbg !4026
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4026
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4026
  %add = add i64 %2, %4, !dbg !4026
  %5 = inttoptr i64 %add to ptr, !dbg !4026
  store ptr %5, ptr %tmp1, align 8, !dbg !4026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !4024
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4026
  store ptr %6, ptr %tmp, align 8, !dbg !4025
  %7 = load ptr, ptr %tmp, align 8, !dbg !4024
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %7, i64 80, i1 false), !dbg !4027
  ret void, !dbg !4028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_iowait_time(ptr noundef %kcs, i32 noundef %cpu) #0 align 16 !dbg !4029 {
entry:
  %kcs.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %iowait = alloca i64, align 8
  %iowait_usecs = alloca i64, align 8
  store ptr %kcs, ptr %kcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcs.addr, metadata !4031, metadata !DIExpression()), !dbg !4035
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4032, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 8, ptr %iowait) #12, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %iowait, metadata !4033, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.start.p0(i64 8, ptr %iowait_usecs) #12, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %iowait_usecs, metadata !4034, metadata !DIExpression()), !dbg !4039
  store i64 -1, ptr %iowait_usecs, align 8, !dbg !4039
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4040
  %call = call zeroext i1 @cpu_online(i32 noundef %0) #13, !dbg !4042
  br i1 %call, label %if.then, label %if.end, !dbg !4043

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4044
  %call1 = call i64 @get_cpu_iowait_time_us(i32 noundef %1, ptr noundef null) #13, !dbg !4045
  store i64 %call1, ptr %iowait_usecs, align 8, !dbg !4046
  br label %if.end, !dbg !4047

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %iowait_usecs, align 8, !dbg !4048
  %cmp = icmp eq i64 %2, -1, !dbg !4050
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4051

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %kcs.addr, align 8, !dbg !4052
  %cpustat = getelementptr inbounds %struct.kernel_cpustat, ptr %3, i32 0, i32 0, !dbg !4053
  %arrayidx = getelementptr [10 x i64], ptr %cpustat, i64 0, i64 6, !dbg !4052
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4052
  store i64 %4, ptr %iowait, align 8, !dbg !4054
  br label %if.end3, !dbg !4055

if.else:                                          ; preds = %if.end
  %5 = load i64, ptr %iowait_usecs, align 8, !dbg !4056
  %mul = mul i64 %5, 1000, !dbg !4057
  store i64 %mul, ptr %iowait, align 8, !dbg !4058
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %6 = load i64, ptr %iowait, align 8, !dbg !4059
  call void @llvm.lifetime.end.p0(i64 8, ptr %iowait_usecs) #12, !dbg !4060
  call void @llvm.lifetime.end.p0(i64 8, ptr %iowait) #12, !dbg !4060
  ret i64 %6, !dbg !4061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kstat_cpu_irqs_sum(i32 noundef %cpu) #3 align 16 !dbg !4062 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4066, metadata !DIExpression()), !dbg !4072
  br label %do.body, !dbg !4073

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4074
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4067, metadata !DIExpression()), !dbg !4074
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4074
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4074
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4073
  br label %do.end, !dbg !4074

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !4075
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4070, metadata !DIExpression()), !dbg !4075
  store i64 ptrtoint (ptr @kstat to i64), ptr %__ptr, align 8, !dbg !4075
  %1 = load i64, ptr %__ptr, align 8, !dbg !4075
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4075
  %idxprom = zext i32 %2 to i64, !dbg !4075
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4075
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4075
  %add = add i64 %1, %3, !dbg !4075
  %4 = inttoptr i64 %add to ptr, !dbg !4075
  store ptr %4, ptr %tmp1, align 8, !dbg !4075
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !4073
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4075
  store ptr %5, ptr %tmp, align 8, !dbg !4074
  %6 = load ptr, ptr %tmp, align 8, !dbg !4073
  %irqs_sum = getelementptr inbounds %struct.kernel_stat, ptr %6, i32 0, i32 0, !dbg !4076
  %7 = load i64, ptr %irqs_sum, align 8, !dbg !4076
  ret i64 %7, !dbg !4077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4078 dso_local i64 @arch_irq_stat_cpu(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstat_softirqs_cpu(i32 noundef %irq, i32 noundef %cpu) #3 align 16 !dbg !4082 {
entry:
  %irq.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4086, metadata !DIExpression()), !dbg !4093
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4087, metadata !DIExpression()), !dbg !4094
  br label %do.body, !dbg !4095

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4096
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4088, metadata !DIExpression()), !dbg !4096
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4096
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4095
  br label %do.end, !dbg !4096

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !4097
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4091, metadata !DIExpression()), !dbg !4097
  store i64 ptrtoint (ptr @kstat to i64), ptr %__ptr, align 8, !dbg !4097
  %1 = load i64, ptr %__ptr, align 8, !dbg !4097
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4097
  %idxprom = sext i32 %2 to i64, !dbg !4097
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4097
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4097
  %add = add i64 %1, %3, !dbg !4097
  %4 = inttoptr i64 %add to ptr, !dbg !4097
  store ptr %4, ptr %tmp1, align 8, !dbg !4097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !4095
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4097
  store ptr %5, ptr %tmp, align 8, !dbg !4096
  %6 = load ptr, ptr %tmp, align 8, !dbg !4095
  %softirqs = getelementptr inbounds %struct.kernel_stat, ptr %6, i32 0, i32 1, !dbg !4098
  %7 = load i32, ptr %irq.addr, align 4, !dbg !4099
  %idxprom2 = zext i32 %7 to i64, !dbg !4100
  %arrayidx3 = getelementptr [10 x i32], ptr %softirqs, i64 0, i64 %idxprom2, !dbg !4100
  %8 = load i32, ptr %arrayidx3, align 4, !dbg !4100
  ret i32 %8, !dbg !4101
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4102 dso_local i64 @arch_irq_stat() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4105 dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4108 dso_local i64 @nsec_to_clock_t(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4112 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4115 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_all_irqs(ptr noundef %p) #0 align 16 !dbg !4118 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %next = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4126
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #12, !dbg !4126
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4124, metadata !DIExpression()), !dbg !4128
  store i32 0, ptr %next, align 4, !dbg !4128
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #13, !dbg !4129
  store i32 %call, ptr %i, align 4, !dbg !4129
  br label %for.cond, !dbg !4129

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4131
  %1 = load i32, ptr @nr_irqs, align 4, !dbg !4131
  %cmp = icmp ult i32 %0, %1, !dbg !4131
  br i1 %cmp, label %for.body, label %for.end, !dbg !4129

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4133
  %3 = load i32, ptr %i, align 4, !dbg !4135
  %4 = load i32, ptr %next, align 4, !dbg !4136
  %sub = sub i32 %3, %4, !dbg !4137
  call void @show_irq_gap(ptr noundef %2, i32 noundef %sub) #13, !dbg !4138
  %5 = load ptr, ptr %p.addr, align 8, !dbg !4139
  %6 = load i32, ptr %i, align 4, !dbg !4140
  %call1 = call i32 @kstat_irqs_usr(i32 noundef %6) #13, !dbg !4141
  %conv = zext i32 %call1 to i64, !dbg !4141
  call void @seq_put_decimal_ull(ptr noundef %5, ptr noundef @.str.2, i64 noundef %conv) #13, !dbg !4142
  %7 = load i32, ptr %i, align 4, !dbg !4143
  %add = add i32 %7, 1, !dbg !4144
  store i32 %add, ptr %next, align 4, !dbg !4145
  br label %for.inc, !dbg !4146

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4131
  %add2 = add i32 %8, 1, !dbg !4131
  %call3 = call i32 @irq_get_next_irq(i32 noundef %add2) #13, !dbg !4131
  store i32 %call3, ptr %i, align 4, !dbg !4131
  br label %for.cond, !dbg !4131, !llvm.loop !4147

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %p.addr, align 8, !dbg !4149
  %10 = load i32, ptr @nr_irqs, align 4, !dbg !4150
  %11 = load i32, ptr %next, align 4, !dbg !4151
  %sub4 = sub i32 %10, %11, !dbg !4152
  call void @show_irq_gap(ptr noundef %9, i32 noundef %sub4) #13, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #12, !dbg !4154
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4154
  ret void, !dbg !4154
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4155 dso_local i64 @nr_context_switches() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4158 dso_local i32 @nr_running() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4160 dso_local i32 @nr_iowait() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4161 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4166, metadata !DIExpression()), !dbg !4172
  br label %do.body, !dbg !4172

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4173
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4168, metadata !DIExpression()), !dbg !4173
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4173
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4173
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4172
  br label %do.cond, !dbg !4173

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4173

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !4174
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4170, metadata !DIExpression()), !dbg !4174
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !4174, !srcloc !4175
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4174
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4174
  %3 = inttoptr i64 %2 to ptr, !dbg !4174
  store ptr %3, ptr %tmp, align 8, !dbg !4174
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !4172
  %4 = load ptr, ptr %tmp, align 8, !dbg !4174
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4172
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4172
  store ptr %5, ptr %tmp1, align 8, !dbg !4172
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4176
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4172
  ret ptr %6, !dbg !4177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @timespec64_sub(i64 %lhs.coerce0, i64 %lhs.coerce1, i64 %rhs.coerce0, i64 %rhs.coerce1) #3 align 16 !dbg !4178 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs = alloca %struct.timespec64, align 8
  %rhs = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 0
  store i64 %lhs.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 1
  store i64 %lhs.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 0
  store i64 %rhs.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 1
  store i64 %rhs.coerce1, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %lhs, metadata !4182, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.declare(metadata ptr %rhs, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !4184, metadata !DIExpression()), !dbg !4187
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 0, !dbg !4188
  %4 = load i64, ptr %tv_sec, align 8, !dbg !4188
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 0, !dbg !4189
  %5 = load i64, ptr %tv_sec1, align 8, !dbg !4189
  %sub = sub i64 %4, %5, !dbg !4190
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 1, !dbg !4191
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !4191
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 1, !dbg !4192
  %7 = load i64, ptr %tv_nsec2, align 8, !dbg !4192
  %sub3 = sub i64 %6, %7, !dbg !4193
  call void @set_normalized_timespec64(ptr noundef %retval, i64 noundef %sub, i64 noundef %sub3) #13, !dbg !4194
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !4195
  ret { i64, i64 } %8, !dbg !4195
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4196 dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !4199 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  %0 = load i64, ptr %word.addr, align 8, !dbg !4205
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !4206, !srcloc !4207
  store i64 %1, ptr %word.addr, align 8, !dbg !4206
  %2 = load i64, ptr %word.addr, align 8, !dbg !4208
  ret i64 %2, !dbg !4209
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4210 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4211 dso_local i64 @get_cpu_iowait_time_us(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4212 dso_local i32 @irq_get_next_irq(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_irq_gap(ptr noundef %p, i32 noundef %gap) #0 align 16 !dbg !3380 {
entry:
  %p.addr = alloca ptr, align 8
  %gap.addr = alloca i32, align 4
  %inc = alloca i32, align 4
  %__UNIQUE_ID___x257 = alloca i32, align 4
  %__UNIQUE_ID___y258 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3384, metadata !DIExpression()), !dbg !4214
  store i32 %gap, ptr %gap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gap.addr, metadata !3385, metadata !DIExpression()), !dbg !4215
  br label %while.cond, !dbg !4216

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load i32, ptr %gap.addr, align 4, !dbg !4217
  %cmp = icmp ugt i32 %0, 0, !dbg !4218
  br i1 %cmp, label %while.body, label %while.end, !dbg !4216

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc) #12, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %inc, metadata !3386, metadata !DIExpression()), !dbg !4220
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x257) #12, !dbg !4221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x257, metadata !3388, metadata !DIExpression()), !dbg !4221
  %1 = load i32, ptr %gap.addr, align 4, !dbg !4221
  store i32 %1, ptr %__UNIQUE_ID___x257, align 4, !dbg !4221
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y258) #12, !dbg !4221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y258, metadata !3390, metadata !DIExpression()), !dbg !4221
  store i32 16, ptr %__UNIQUE_ID___y258, align 4, !dbg !4221
  %2 = load i32, ptr %__UNIQUE_ID___x257, align 4, !dbg !4221
  %3 = load i32, ptr %__UNIQUE_ID___y258, align 4, !dbg !4221
  %cmp1 = icmp ult i32 %2, %3, !dbg !4221
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4221

cond.true:                                        ; preds = %while.body
  %4 = load i32, ptr %__UNIQUE_ID___x257, align 4, !dbg !4221
  br label %cond.end, !dbg !4221

cond.false:                                       ; preds = %while.body
  %5 = load i32, ptr %__UNIQUE_ID___y258, align 4, !dbg !4221
  br label %cond.end, !dbg !4221

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !4221
  store i32 %cond, ptr %tmp, align 4, !dbg !4221
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y258) #12, !dbg !4222
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x257) #12, !dbg !4222
  %6 = load i32, ptr %tmp, align 4, !dbg !4221
  store i32 %6, ptr %inc, align 4, !dbg !4223
  %7 = load ptr, ptr %p.addr, align 8, !dbg !4224
  %8 = load i32, ptr %inc, align 4, !dbg !4225
  %mul = mul i32 2, %8, !dbg !4226
  %conv = zext i32 %mul to i64, !dbg !4227
  %call = call i32 @seq_write(ptr noundef %7, ptr noundef @show_irq_gap.zeros, i64 noundef %conv) #13, !dbg !4228
  %9 = load i32, ptr %inc, align 4, !dbg !4229
  %10 = load i32, ptr %gap.addr, align 4, !dbg !4230
  %sub = sub i32 %10, %9, !dbg !4230
  store i32 %sub, ptr %gap.addr, align 4, !dbg !4230
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc) #12, !dbg !4231
  br label %while.cond, !dbg !4216, !llvm.loop !4232

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4233
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4234 dso_local i32 @kstat_irqs_usr(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4235 dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!llvm.ident = !{!3402}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_proc__259_216_proc_stat_init5260", scope: !2, file: !3, line: 216, type: !84, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.stat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22stat\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/stat.ll fs/proc/stat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !3335, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/proc/stat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "692385129d3a470f21a8f2b71cd84dee")
!4 = !{!5, !20, !25, !30, !38, !45, !51, !56, !62, !69}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpu_usage_stat", file: !6, line: 20, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kernel_stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3834cb8375a149cb1dacea31b5d9e6b8")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "CPUTIME_USER", value: 0)
!10 = !DIEnumerator(name: "CPUTIME_NICE", value: 1)
!11 = !DIEnumerator(name: "CPUTIME_SYSTEM", value: 2)
!12 = !DIEnumerator(name: "CPUTIME_SOFTIRQ", value: 3)
!13 = !DIEnumerator(name: "CPUTIME_IRQ", value: 4)
!14 = !DIEnumerator(name: "CPUTIME_IDLE", value: 5)
!15 = !DIEnumerator(name: "CPUTIME_IOWAIT", value: 6)
!16 = !DIEnumerator(name: "CPUTIME_STEAL", value: 7)
!17 = !DIEnumerator(name: "CPUTIME_GUEST", value: 8)
!18 = !DIEnumerator(name: "CPUTIME_GUEST_NICE", value: 9)
!19 = !DIEnumerator(name: "NR_STATS", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 10, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "false", value: 0)
!24 = !DIEnumerator(name: "true", value: 1)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !26, line: 2052, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!29 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !31, line: 9, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!34 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!35 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!36 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!37 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !39, line: 15, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!43 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !46, line: 54, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "USRQUOTA", value: 0)
!49 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!50 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !52, line: 65, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!55 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !57, line: 16, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "TT_NONE", value: 0)
!60 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!61 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !63, line: 51, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!66 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!67 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!68 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 548, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!72 = !DIEnumerator(name: "HI_SOFTIRQ", value: 0)
!73 = !DIEnumerator(name: "TIMER_SOFTIRQ", value: 1)
!74 = !DIEnumerator(name: "NET_TX_SOFTIRQ", value: 2)
!75 = !DIEnumerator(name: "NET_RX_SOFTIRQ", value: 3)
!76 = !DIEnumerator(name: "BLOCK_SOFTIRQ", value: 4)
!77 = !DIEnumerator(name: "IRQ_POLL_SOFTIRQ", value: 5)
!78 = !DIEnumerator(name: "TASKLET_SOFTIRQ", value: 6)
!79 = !DIEnumerator(name: "SCHED_SOFTIRQ", value: 7)
!80 = !DIEnumerator(name: "HRTIMER_SOFTIRQ", value: 8)
!81 = !DIEnumerator(name: "RCU_SOFTIRQ", value: 9)
!82 = !DIEnumerator(name: "NR_SOFTIRQS", value: 10)
!83 = !{!84, !85, !95, !7, !96, !100, !101, !102, !92, !99, !3322, !3329}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !88, line: 19, size: 64, elements: !89)
!88 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !87, file: !88, line: 19, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !93)
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !104, line: 746, size: 58368, elements: !105)
!104 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!105 = !{!106, !118, !119, !120, !131, !132, !133, !134, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !225, !236, !363, !367, !370, !401, !402, !403, !404, !408, !410, !411, !412, !413, !414, !415, !426, !427, !430, !431, !432, !433, !434, !435, !436, !437, !444, !445, !452, !453, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2424, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2439, !2440, !2441, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2483, !2489, !2490, !2491, !2492, !2493, !2495, !2498, !2505, !2510, !2513, !2516, !2519, !2567, !2707, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2750, !2751, !2760, !2768, !2769, !2770, !2771, !2772, !2777, !2778, !2779, !2782, !2783, !2786, !2789, !2792, !2800, !2803, !2804, !2890, !2891, !2892, !2893, !2894, !2900, !2901, !2902, !2903, !2906, !2907, !2910, !2913, !2914, !2917, !2918, !2919, !2922, !2923, !2924, !2925, !2926, !2927, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2959, !2960, !2966, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2978, !3050, !3052, !3053, !3054, !3055, !3056, !3068, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3099, !3100, !3101}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !103, file: !104, line: 752, baseType: !107, size: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !108, line: 56, size: 192, elements: !109)
!108 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!109 = !{!110, !111, !112, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !108, line: 57, baseType: !92, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !107, file: !108, line: 58, baseType: !92, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !107, file: !108, line: 59, baseType: !113, size: 32, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !114, line: 21, baseType: !115)
!114 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !7)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !107, file: !108, line: 61, baseType: !113, size: 32, offset: 160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !103, file: !104, line: 754, baseType: !7, size: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !103, file: !104, line: 767, baseType: !84, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !103, file: !104, line: 768, baseType: !121, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !122, line: 113, baseType: !123)
!122 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !122, line: 111, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !123, file: !122, line: 112, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 174, baseType: !128)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 172, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !128, file: !127, line: 173, baseType: !99, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !104, line: 770, baseType: !7, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !103, file: !104, line: 771, baseType: !7, size: 32, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !103, file: !104, line: 774, baseType: !99, size: 32, offset: 416)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !103, file: !104, line: 775, baseType: !135, size: 128, offset: 448)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !136, line: 58, size: 128, elements: !137)
!136 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!137 = !{!138, !144, !149, !153}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !135, file: !136, line: 59, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !140, line: 60, size: 64, elements: !141)
!140 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 61, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !136, line: 60, baseType: !145, size: 32, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !136, line: 60, size: 32, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !145, file: !136, line: 61, baseType: !7, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !145, file: !136, line: 62, baseType: !126, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !135, file: !136, line: 65, baseType: !150, size: 16, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !114, line: 19, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !152)
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !135, file: !136, line: 65, baseType: !150, size: 16, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !103, file: !104, line: 776, baseType: !7, size: 32, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !103, file: !104, line: 777, baseType: !92, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !103, file: !104, line: 778, baseType: !102, size: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !103, file: !104, line: 787, baseType: !99, size: 32, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !103, file: !104, line: 788, baseType: !99, size: 32, offset: 800)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !103, file: !104, line: 790, baseType: !99, size: 32, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !103, file: !104, line: 792, baseType: !99, size: 32, offset: 864)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !103, file: !104, line: 793, baseType: !99, size: 32, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !103, file: !104, line: 794, baseType: !99, size: 32, offset: 928)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !103, file: !104, line: 795, baseType: !7, size: 32, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !103, file: !104, line: 797, baseType: !165, size: 2048, offset: 1024)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !104, line: 551, size: 2048, elements: !166)
!166 = !{!167, !172, !180, !183, !184, !190, !191, !192, !193, !194, !195, !199, !200, !201, !202, !204, !207, !208, !209}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !165, file: !104, line: 553, baseType: !168, size: 128)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !104, line: 411, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !168, file: !104, line: 412, baseType: !92, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !168, file: !104, line: 413, baseType: !113, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !165, file: !104, line: 554, baseType: !173, size: 192, align: 64, offset: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !174, line: 5, size: 192, align: 64, elements: !175)
!174 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!175 = !{!176, !177, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !173, file: !174, line: 6, baseType: !92, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !173, file: !174, line: 7, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !173, file: !174, line: 8, baseType: !178, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !165, file: !104, line: 555, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !114, line: 23, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !100)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !165, file: !104, line: 556, baseType: !181, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !165, file: !104, line: 558, baseType: !185, size: 128, offset: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 190, size: 128, elements: !186)
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !127, line: 191, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !185, file: !127, line: 191, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !165, file: !104, line: 559, baseType: !7, size: 32, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !165, file: !104, line: 561, baseType: !181, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !165, file: !104, line: 562, baseType: !181, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !165, file: !104, line: 563, baseType: !181, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !165, file: !104, line: 564, baseType: !181, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !165, file: !104, line: 565, baseType: !196, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !114, line: 22, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !198)
!198 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !165, file: !104, line: 566, baseType: !181, size: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !165, file: !104, line: 568, baseType: !181, size: 64, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !165, file: !104, line: 571, baseType: !99, size: 32, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !104, line: 572, baseType: !203, size: 64, offset: 1152)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !165, file: !104, line: 574, baseType: !205, size: 64, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !104, line: 49, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !165, file: !104, line: 576, baseType: !205, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !165, file: !104, line: 578, baseType: !92, size: 64, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !165, file: !104, line: 588, baseType: !210, size: 512, align: 512, offset: 1536)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !104, line: 497, size: 512, align: 512, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !210, file: !104, line: 498, baseType: !181, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !210, file: !104, line: 499, baseType: !181, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !210, file: !104, line: 500, baseType: !181, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !210, file: !104, line: 501, baseType: !113, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !210, file: !104, line: 502, baseType: !113, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !210, file: !104, line: 503, baseType: !92, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !210, file: !104, line: 504, baseType: !92, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !210, file: !104, line: 505, baseType: !92, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !210, file: !104, line: 506, baseType: !221, size: 64, align: 64, offset: 448)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !104, line: 445, size: 64, align: 64, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !221, file: !104, line: 446, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !221, file: !104, line: 447, baseType: !7, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !103, file: !104, line: 798, baseType: !226, size: 384, offset: 3072)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !104, line: 592, size: 384, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !226, file: !104, line: 593, baseType: !185, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !226, file: !104, line: 594, baseType: !92, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !226, file: !104, line: 595, baseType: !92, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !226, file: !104, line: 596, baseType: !7, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !226, file: !104, line: 597, baseType: !152, size: 16, offset: 288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !226, file: !104, line: 598, baseType: !152, size: 16, offset: 304)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !226, file: !104, line: 600, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !103, file: !104, line: 799, baseType: !237, size: 1792, offset: 3456)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !104, line: 610, size: 1792, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !360, !361}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !237, file: !104, line: 611, baseType: !173, size: 192, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !237, file: !104, line: 618, baseType: !181, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !237, file: !104, line: 619, baseType: !181, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !237, file: !104, line: 620, baseType: !181, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !237, file: !104, line: 621, baseType: !181, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !237, file: !104, line: 622, baseType: !181, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !237, file: !104, line: 629, baseType: !196, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !237, file: !104, line: 630, baseType: !181, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !104, line: 631, baseType: !7, size: 32, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !237, file: !104, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !237, file: !104, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !237, file: !104, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !237, file: !104, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !237, file: !104, line: 662, baseType: !253, size: 512, offset: 704)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !52, line: 118, size: 512, elements: !254)
!254 = !{!255, !263, !264, !269, !356, !357, !358, !359}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !52, line: 119, baseType: !256, size: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !257, line: 9, size: 256, elements: !258)
!257 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !256, file: !257, line: 10, baseType: !173, size: 192, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !256, file: !257, line: 11, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !262, line: 29, baseType: !196)
!262 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !253, file: !52, line: 120, baseType: !261, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !253, file: !52, line: 121, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!51, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !253, file: !52, line: 122, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !52, line: 159, size: 512, align: 512, elements: !272)
!272 = !{!273, !324, !325, !329, !339, !340, !351, !355}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !271, file: !52, line: 160, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !52, line: 215, size: 4608, align: 512, elements: !276)
!276 = !{!277, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !275, file: !52, line: 216, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !279, line: 23, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !279, line: 14, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !280, file: !279, line: 15, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !284, line: 44, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !284, line: 14, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 15, baseType: !288, size: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 15, size: 32, elements: !289)
!289 = !{!290, !291, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !288, file: !284, line: 16, baseType: !126, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 24, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 24, size: 16, elements: !293)
!293 = !{!294, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !284, line: 25, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !114, line: 17, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !116, line: 21, baseType: !297)
!297 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !292, file: !284, line: 26, baseType: !295, size: 8, offset: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 28, baseType: !300, size: 32)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 28, size: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !300, file: !284, line: 29, baseType: !150, size: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !300, file: !284, line: 30, baseType: !150, size: 16, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !275, file: !52, line: 217, baseType: !7, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !275, file: !52, line: 218, baseType: !7, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !275, file: !52, line: 219, baseType: !7, size: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !275, file: !52, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !275, file: !52, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !275, file: !52, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !275, file: !52, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !275, file: !52, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !275, file: !52, line: 226, baseType: !7, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !275, file: !52, line: 227, baseType: !152, size: 16, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !275, file: !52, line: 228, baseType: !152, size: 16, offset: 208)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !275, file: !52, line: 229, baseType: !7, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !275, file: !52, line: 235, baseType: !261, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !275, file: !52, line: 236, baseType: !268, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !275, file: !52, line: 237, baseType: !261, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !275, file: !52, line: 238, baseType: !268, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !275, file: !52, line: 239, baseType: !321, size: 4096, align: 512, offset: 512)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, align: 512, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 8)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !271, file: !52, line: 161, baseType: !7, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !271, file: !52, line: 162, baseType: !326, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 32, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !328, line: 96, baseType: !99)
!328 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !271, file: !52, line: 163, baseType: !330, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !331, line: 274, baseType: !332)
!331 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !331, line: 274, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !332, file: !331, line: 274, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !331, line: 69, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !331, line: 64, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !336, file: !331, line: 65, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !271, file: !52, line: 164, baseType: !268, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !271, file: !52, line: 165, baseType: !341, size: 128, offset: 256)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !257, line: 14, size: 128, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !341, file: !257, line: 15, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !174, line: 26, size: 128, elements: !345)
!345 = !{!346, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !344, file: !174, line: 27, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !174, line: 12, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !347, file: !174, line: 13, baseType: !178, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !344, file: !174, line: 28, baseType: !178, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !271, file: !52, line: 166, baseType: !352, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!261}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !271, file: !52, line: 167, baseType: !261, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !52, line: 123, baseType: !295, size: 8, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !253, file: !52, line: 124, baseType: !295, size: 8, offset: 456)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !253, file: !52, line: 125, baseType: !295, size: 8, offset: 464)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !253, file: !52, line: 126, baseType: !295, size: 8, offset: 472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !237, file: !104, line: 671, baseType: !253, size: 512, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !237, file: !104, line: 679, baseType: !362, size: 64, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !103, file: !104, line: 800, baseType: !364, size: 64, offset: 5248)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !104, line: 800, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !103, file: !104, line: 809, baseType: !368, size: 64, offset: 5312)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !104, line: 70, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !103, file: !104, line: 825, baseType: !371, size: 2048, align: 512, offset: 5632)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !104, line: 509, size: 2048, align: 512, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !371, file: !104, line: 511, baseType: !181, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !371, file: !104, line: 512, baseType: !181, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !371, file: !104, line: 513, baseType: !181, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !371, file: !104, line: 514, baseType: !181, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !371, file: !104, line: 515, baseType: !181, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !371, file: !104, line: 516, baseType: !181, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !371, file: !104, line: 518, baseType: !181, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !371, file: !104, line: 519, baseType: !181, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !371, file: !104, line: 520, baseType: !196, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !371, file: !104, line: 522, baseType: !181, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !371, file: !104, line: 523, baseType: !181, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !371, file: !104, line: 524, baseType: !196, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !371, file: !104, line: 526, baseType: !196, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !371, file: !104, line: 527, baseType: !181, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !371, file: !104, line: 529, baseType: !181, size: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !371, file: !104, line: 530, baseType: !181, size: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !371, file: !104, line: 531, baseType: !181, size: 64, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !371, file: !104, line: 532, baseType: !181, size: 64, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !371, file: !104, line: 533, baseType: !181, size: 64, offset: 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !371, file: !104, line: 535, baseType: !181, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !371, file: !104, line: 536, baseType: !181, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !371, file: !104, line: 537, baseType: !181, size: 64, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !371, file: !104, line: 538, baseType: !181, size: 64, offset: 1408)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !371, file: !104, line: 539, baseType: !181, size: 64, offset: 1472)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !371, file: !104, line: 540, baseType: !181, size: 64, offset: 1536)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !371, file: !104, line: 541, baseType: !181, size: 64, offset: 1600)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !371, file: !104, line: 542, baseType: !181, size: 64, offset: 1664)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !371, file: !104, line: 543, baseType: !181, size: 64, offset: 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !103, file: !104, line: 833, baseType: !7, size: 32, offset: 7680)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !103, file: !104, line: 836, baseType: !7, size: 32, offset: 7712)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !103, file: !104, line: 837, baseType: !99, size: 32, offset: 7744)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !103, file: !104, line: 838, baseType: !405, size: 64, offset: 7808)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !88, line: 19, baseType: !87)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !103, file: !104, line: 839, baseType: !409, size: 64, offset: 7872)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !103, file: !104, line: 840, baseType: !407, size: 64, offset: 7936)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !103, file: !104, line: 841, baseType: !84, size: 64, offset: 8000)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !103, file: !104, line: 843, baseType: !152, size: 16, offset: 8064)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !103, file: !104, line: 845, baseType: !152, size: 16, offset: 8080)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !103, file: !104, line: 848, baseType: !99, size: 32, offset: 8096)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !103, file: !104, line: 849, baseType: !416, size: 32, offset: 8128)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !104, line: 718, size: 32, elements: !417)
!417 = !{!418, !425}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !416, file: !104, line: 724, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !104, line: 719, size: 32, elements: !420)
!420 = !{!421, !422, !423, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !419, file: !104, line: 720, baseType: !295, size: 8)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !419, file: !104, line: 721, baseType: !295, size: 8, offset: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !419, file: !104, line: 722, baseType: !295, size: 8, offset: 16)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !419, file: !104, line: 723, baseType: !295, size: 8, offset: 24)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !416, file: !104, line: 725, baseType: !113, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !103, file: !104, line: 850, baseType: !185, size: 128, offset: 8192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !103, file: !104, line: 851, baseType: !428, size: 64, offset: 8320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !104, line: 60, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !103, file: !104, line: 855, baseType: !92, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !103, file: !104, line: 856, baseType: !295, size: 8, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !103, file: !104, line: 857, baseType: !295, size: 8, offset: 8456)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !103, file: !104, line: 858, baseType: !99, size: 32, offset: 8480)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !103, file: !104, line: 859, baseType: !185, size: 128, offset: 8512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !103, file: !104, line: 860, baseType: !99, size: 32, offset: 8640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !103, file: !104, line: 861, baseType: !185, size: 128, offset: 8704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !103, file: !104, line: 873, baseType: !438, size: 256, offset: 8832)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !104, line: 376, size: 256, elements: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !438, file: !104, line: 381, baseType: !92, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !438, file: !104, line: 384, baseType: !100, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !438, file: !104, line: 389, baseType: !100, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !438, file: !104, line: 392, baseType: !100, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !103, file: !104, line: 875, baseType: !185, size: 128, offset: 9088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !103, file: !104, line: 877, baseType: !446, size: 320, offset: 9216)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !447, line: 86, size: 320, elements: !448)
!447 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !446, file: !447, line: 87, baseType: !99, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !446, file: !447, line: 88, baseType: !185, size: 128, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !446, file: !447, line: 89, baseType: !185, size: 128, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !103, file: !104, line: 878, baseType: !173, size: 192, align: 64, offset: 9536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !103, file: !104, line: 881, baseType: !454, size: 64, offset: 9728)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !456, line: 733, size: 10240, elements: !457)
!456 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!457 = !{!458, !2343}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 734, baseType: !459, size: 10240)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !455, file: !456, line: 734, size: 10240, elements: !460)
!460 = !{!461, !465, !487, !2241, !2242, !2243, !2244, !2245, !2246, !2253, !2254, !2255, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2294, !2296, !2299, !2323, !2324, !2325, !2328, !2329, !2330, !2333, !2334, !2335, !2341, !2342}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !456, line: 739, baseType: !462, size: 512, align: 512)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !456, line: 739, size: 512, align: 512, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !462, file: !456, line: 747, baseType: !126, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !459, file: !456, line: 750, baseType: !466, size: 128, offset: 512)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !467, line: 218, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!468 = !{!469, !485, !486}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 219, baseType: !470, size: 32)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 219, size: 32, elements: !471)
!471 = !{!472, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !470, file: !467, line: 220, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !474, line: 29, baseType: !475)
!474 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !474, line: 17, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !474, line: 18, baseType: !478, size: 32)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !474, line: 18, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !478, file: !474, line: 19, baseType: !280, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !470, file: !467, line: 221, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !467, line: 197, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 197, elements: !484)
!484 = !{}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !466, file: !467, line: 223, baseType: !7, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !466, file: !467, line: 224, baseType: !84, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !459, file: !456, line: 752, baseType: !488, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!92, !491, !92, !92, !92, !92}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !26, line: 994, size: 1856, align: 64, elements: !493)
!493 = !{!494, !508, !509, !511, !518, !530, !533, !534, !610, !825, !834, !2231, !2232, !2233, !2234, !2235, !2236, !2238, !2239, !2240}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !26, line: 995, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !26, line: 995, size: 128, elements: !496)
!496 = !{!497, !498, !507}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !495, file: !26, line: 996, baseType: !139, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !495, file: !26, line: 997, baseType: !499, size: 128, align: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 232, size: 128, align: 64, elements: !500)
!500 = !{!501, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !127, line: 233, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !499, file: !127, line: 234, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !502}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !495, file: !26, line: 998, baseType: !7, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !492, file: !26, line: 1005, baseType: !473, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !492, file: !26, line: 1006, baseType: !510, size: 32, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !127, line: 156, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !492, file: !26, line: 1007, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !513, line: 13, baseType: !514)
!513 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 181, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 179, size: 64, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !515, file: !127, line: 180, baseType: !196, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !492, file: !26, line: 1008, baseType: !519, size: 256, offset: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !520, line: 66, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!521 = !{!522, !523, !524, !529}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !519, file: !520, line: 67, baseType: !512, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !519, file: !520, line: 68, baseType: !278, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !519, file: !520, line: 70, baseType: !525, size: 32, offset: 96)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !526, line: 15, size: 32, elements: !527)
!526 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !525, file: !526, line: 20, baseType: !126, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !519, file: !520, line: 72, baseType: !185, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !492, file: !26, line: 1009, baseType: !531, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 52, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !328, line: 88, baseType: !198)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !492, file: !26, line: 1010, baseType: !7, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !492, file: !26, line: 1011, baseType: !535, size: 256, offset: 640)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !26, line: 948, size: 256, elements: !536)
!536 = !{!537, !560, !599, !600, !608, !609}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !26, line: 949, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !539, line: 34, baseType: !540)
!539 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 25, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !540, file: !539, line: 26, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !544, line: 27, baseType: !545)
!544 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !544, line: 13, size: 64, elements: !546)
!546 = !{!547, !559}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !544, line: 14, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !544, line: 14, size: 32, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !548, file: !544, line: 15, baseType: !126, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !544, line: 16, baseType: !552, size: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !548, file: !544, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !552, file: !544, line: 18, baseType: !295, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !552, file: !544, line: 19, baseType: !556, size: 24, offset: 8)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 24, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 3)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !545, file: !544, line: 26, baseType: !283, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !535, file: !26, line: 950, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !31, line: 59, size: 768, elements: !563)
!563 = !{!564, !565, !566, !567, !580, !581, !588, !589}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !31, line: 61, baseType: !121, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !562, file: !31, line: 62, baseType: !7, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !31, line: 63, baseType: !473, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !562, file: !31, line: 65, baseType: !568, size: 256, offset: 128)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 256, elements: !578)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !127, line: 194, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !569, file: !127, line: 195, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 198, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !127, line: 199, baseType: !572, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !573, file: !127, line: 199, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!578 = !{!579}
!579 = !DISubrange(count: 4)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !562, file: !31, line: 66, baseType: !569, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !562, file: !31, line: 68, baseType: !582, size: 192, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !583, line: 41, baseType: !584)
!583 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !583, line: 37, size: 192, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !584, file: !583, line: 38, baseType: !473, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !584, file: !583, line: 39, baseType: !185, size: 128, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !562, file: !31, line: 69, baseType: !499, size: 128, align: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !562, file: !31, line: 70, baseType: !590, offset: 768)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, elements: !597)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !31, line: 54, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !591, file: !31, line: 55, baseType: !99, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !591, file: !31, line: 56, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !31, line: 56, flags: DIFlagFwdDecl)
!597 = !{!598}
!598 = !DISubrange(count: -1)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !535, file: !26, line: 951, baseType: !30, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !26, line: 952, baseType: !601, size: 32, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !602, line: 23, baseType: !603)
!602 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 21, size: 32, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !603, file: !602, line: 22, baseType: !606, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 37, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !328, line: 49, baseType: !7)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !535, file: !26, line: 952, baseType: !601, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !535, file: !26, line: 953, baseType: !99, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !492, file: !26, line: 1012, baseType: !611, size: 64, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !614, line: 110, size: 1472, elements: !615)
!614 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!615 = !{!616, !617, !618, !625, !626, !627, !628, !629, !630, !631, !632, !638, !639, !640, !641, !642, !643, !770, !771, !772, !773, !774, !805, !808, !812, !820}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !613, file: !614, line: 111, baseType: !512, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !613, file: !614, line: 112, baseType: !601, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !613, file: !614, line: 113, baseType: !619, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !602, line: 28, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 26, size: 32, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !620, file: !602, line: 27, baseType: !623, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 38, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !328, line: 50, baseType: !7)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !613, file: !614, line: 114, baseType: !601, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !613, file: !614, line: 115, baseType: !619, size: 32, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !613, file: !614, line: 116, baseType: !601, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !613, file: !614, line: 117, baseType: !619, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !613, file: !614, line: 118, baseType: !601, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !613, file: !614, line: 119, baseType: !619, size: 32, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !613, file: !614, line: 120, baseType: !7, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !613, file: !614, line: 121, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !634, line: 24, baseType: !635)
!634 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 24, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !635, file: !634, line: 24, baseType: !181, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !613, file: !614, line: 122, baseType: !633, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !613, file: !614, line: 123, baseType: !633, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !613, file: !614, line: 124, baseType: !633, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !613, file: !614, line: 125, baseType: !633, size: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !613, file: !614, line: 127, baseType: !297, size: 8, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !613, file: !614, line: 129, baseType: !644, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !646, line: 195, size: 1728, elements: !647)
!646 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!647 = !{!648, !649, !654, !659, !668, !671, !672, !679, !680, !681, !682, !685, !686, !687, !689, !690, !734, !755}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !645, file: !646, line: 196, baseType: !121, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !645, file: !646, line: 197, baseType: !650, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !646, line: 28, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !127, line: 104, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !114, line: 20, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !116, line: 26, baseType: !99)
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 198, baseType: !655, size: 192, offset: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 198, size: 192, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !655, file: !646, line: 199, baseType: !185, size: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !655, file: !646, line: 200, baseType: !173, size: 192, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !645, file: !646, line: 205, baseType: !660, size: 320, offset: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !661, line: 48, size: 320, elements: !662)
!661 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!662 = !{!663, !664, !665, !666, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !661, line: 49, baseType: !512, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !660, file: !661, line: 55, baseType: !512, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !660, file: !661, line: 57, baseType: !525, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !660, file: !661, line: 59, baseType: !278, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !660, file: !661, line: 60, baseType: !185, size: 128, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !645, file: !646, line: 206, baseType: !669, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !646, line: 206, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !645, file: !646, line: 207, baseType: !84, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 208, baseType: !673, size: 64, offset: 704)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 208, size: 64, elements: !674)
!674 = !{!675, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !673, file: !646, line: 209, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !677, line: 8, baseType: !197)
!677 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !673, file: !646, line: 210, baseType: !676, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !645, file: !646, line: 212, baseType: !676, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !645, file: !646, line: 213, baseType: !601, size: 32, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !645, file: !646, line: 214, baseType: !619, size: 32, offset: 864)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !645, file: !646, line: 215, baseType: !683, size: 32, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !646, line: 31, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 110, baseType: !113)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !645, file: !646, line: 216, baseType: !152, size: 16, offset: 928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !645, file: !646, line: 217, baseType: !152, size: 16, offset: 944)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !645, file: !646, line: 221, baseType: !688, size: 16, offset: 960)
!688 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !646, line: 228, baseType: !92, size: 64, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 245, baseType: !691, size: 320, offset: 1088)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 245, size: 320, elements: !692)
!692 = !{!693, !725}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !691, file: !646, line: 246, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !646, line: 114, size: 320, elements: !695)
!695 = !{!696, !697, !710, !713, !722}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !694, file: !646, line: 116, baseType: !92, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !646, line: 117, baseType: !698, size: 64, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !646, line: 117, size: 64, elements: !699)
!699 = !{!700, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !646, line: 118, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !646, line: 118, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !701, file: !646, line: 120, baseType: !150, size: 16)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !701, file: !646, line: 121, baseType: !705, size: 48, offset: 16)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 48, elements: !707)
!706 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!707 = !{!708}
!708 = !DISubrange(count: 6)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !698, file: !646, line: 127, baseType: !92, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !646, line: 129, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !646, line: 102, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !694, file: !646, line: 130, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !646, line: 108, size: 192, elements: !716)
!716 = !{!717, !718, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !715, file: !646, line: 109, baseType: !499, size: 128, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !715, file: !646, line: 110, baseType: !121, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !715, file: !646, line: 111, baseType: !720, size: 8, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 35, baseType: !721)
!721 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !694, file: !646, line: 131, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !646, line: 247, baseType: !726, size: 320)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !646, line: 247, size: 320, elements: !727)
!727 = !{!728, !729, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !726, file: !646, line: 248, baseType: !92, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !726, file: !646, line: 249, baseType: !92, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !646, line: 250, baseType: !711, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !726, file: !646, line: 251, baseType: !714, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !726, file: !646, line: 252, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 260, baseType: !735, size: 256, offset: 1408)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 260, size: 256, elements: !736)
!736 = !{!737, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !735, file: !646, line: 261, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !646, line: 134, size: 256, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !738, file: !646, line: 135, baseType: !84, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !646, line: 136, baseType: !742, size: 256)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !578)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !646, line: 262, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !646, line: 262, size: 256, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !744, file: !646, line: 264, baseType: !185, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !744, file: !646, line: 265, baseType: !748, size: 128, offset: 128)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !749, line: 22, size: 128, elements: !750)
!749 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!750 = !{!751, !754}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !748, file: !749, line: 23, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !749, line: 23, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !748, file: !749, line: 24, baseType: !92, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !645, file: !646, line: 280, baseType: !756, size: 64, offset: 1664)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !646, line: 176, size: 192, elements: !758)
!758 = !{!759, !768, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !757, file: !646, line: 177, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !646, line: 171, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!99, !644, !764, !766, !644}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !757, file: !646, line: 178, baseType: !644, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !757, file: !646, line: 179, baseType: !711, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !613, file: !614, line: 130, baseType: !644, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !613, file: !614, line: 131, baseType: !644, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !613, file: !614, line: 132, baseType: !644, size: 64, offset: 960)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !613, file: !614, line: 135, baseType: !84, size: 64, offset: 1024)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !613, file: !614, line: 137, baseType: !775, size: 64, offset: 1088)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !777, line: 14, size: 1088, elements: !778)
!777 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!778 = !{!779, !780, !789, !790, !791, !792, !793, !794}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !776, file: !777, line: 15, baseType: !121, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !776, file: !777, line: 17, baseType: !781, size: 320, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !782, line: 22, size: 320, elements: !783)
!782 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !782, line: 23, baseType: !278, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !782, line: 24, baseType: !196, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !781, file: !782, line: 26, baseType: !185, size: 128, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !781, file: !782, line: 28, baseType: !788, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !776, file: !777, line: 19, baseType: !92, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !776, file: !777, line: 20, baseType: !512, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !776, file: !777, line: 23, baseType: !573, size: 128, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !777, line: 24, baseType: !601, size: 32, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !776, file: !777, line: 29, baseType: !512, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !776, file: !777, line: 36, baseType: !795, size: 320, offset: 768)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !796, line: 15, size: 320, elements: !797)
!796 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!797 = !{!798, !799, !800, !801, !802, !803, !804}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !795, file: !796, line: 16, baseType: !278, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !795, file: !796, line: 18, baseType: !99, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !795, file: !796, line: 19, baseType: !99, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !795, file: !796, line: 20, baseType: !99, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !795, file: !796, line: 21, baseType: !99, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !795, file: !796, line: 22, baseType: !92, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 23, baseType: !92, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !613, file: !614, line: 138, baseType: !806, size: 64, offset: 1152)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !602, line: 18, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !613, file: !614, line: 139, baseType: !809, size: 64, offset: 1216)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !811, line: 16, flags: DIFlagFwdDecl)
!811 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !613, file: !614, line: 140, baseType: !813, size: 64, offset: 1280)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !614, line: 25, size: 64, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !814, file: !614, line: 26, baseType: !126, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !814, file: !614, line: 27, baseType: !99, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !814, file: !614, line: 28, baseType: !819, offset: 64)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, elements: !597)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !614, line: 142, baseType: !821, size: 128, offset: 1344)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !614, line: 142, size: 128, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !821, file: !614, line: 143, baseType: !99, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !821, file: !614, line: 144, baseType: !499, size: 128, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !492, file: !26, line: 1013, baseType: !826, size: 256, offset: 960)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !26, line: 970, size: 256, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !826, file: !26, line: 971, baseType: !92, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !826, file: !26, line: 972, baseType: !7, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !826, file: !26, line: 973, baseType: !7, size: 32, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !826, file: !26, line: 974, baseType: !7, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !826, file: !26, line: 975, baseType: !7, size: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !826, file: !26, line: 976, baseType: !531, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !492, file: !26, line: 1014, baseType: !835, size: 128, offset: 1216)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !836, line: 8, size: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!837 = !{!838, !2230}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !835, file: !836, line: 9, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !841, line: 70, size: 256, elements: !842)
!841 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!842 = !{!843, !2227, !2228, !2229}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !840, file: !841, line: 71, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !846, line: 82, size: 1536, elements: !847)
!846 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!847 = !{!848, !849, !854, !862, !863, !878, !2194, !2196, !2209, !2210, !2211, !2212, !2213, !2219, !2220, !2221}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !845, file: !846, line: 84, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !845, file: !846, line: 85, baseType: !850, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !331, line: 275, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !331, line: 275, size: 32, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !851, file: !331, line: 275, baseType: !335, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !845, file: !846, line: 86, baseType: !855, size: 128, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !856, line: 38, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!857 = !{!858, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !856, line: 39, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !855, file: !856, line: 39, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !845, file: !846, line: 87, baseType: !844, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !845, file: !846, line: 88, baseType: !864, size: 128, offset: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !846, line: 49, size: 128, elements: !865)
!865 = !{!866, !875}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !846, line: 50, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !846, line: 50, size: 64, elements: !868)
!868 = !{!869, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !846, line: 51, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !846, line: 51, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !870, file: !846, line: 52, baseType: !113, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !870, file: !846, line: 52, baseType: !113, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !867, file: !846, line: 54, baseType: !181, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !846, line: 56, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !845, file: !846, line: 89, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !26, line: 641, size: 4800, elements: !881)
!881 = !{!882, !884, !885, !886, !887, !888, !889, !892, !893, !1091, !1686, !1948, !1949, !1950, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !2176, !2179, !2180, !2181, !2190, !2191, !2192, !2193}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !880, file: !26, line: 642, baseType: !883, size: 16)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 24, baseType: !152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !880, file: !26, line: 643, baseType: !152, size: 16, offset: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !880, file: !26, line: 644, baseType: !601, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !880, file: !26, line: 645, baseType: !185, size: 128, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !880, file: !26, line: 646, baseType: !619, size: 32, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !880, file: !26, line: 647, baseType: !7, size: 32, offset: 224)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !880, file: !26, line: 650, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !26, line: 607, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !880, file: !26, line: 651, baseType: !890, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !880, file: !26, line: 654, baseType: !894, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !26, line: 1966, size: 2048, align: 512, elements: !897)
!897 = !{!898, !902, !915, !921, !925, !929, !933, !937, !941, !945, !949, !950, !956, !960, !998, !1029, !1039, !1045, !1049, !1053, !1057, !1061, !1065, !1071, !1075}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !896, file: !26, line: 1967, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!844, !879, !844, !7}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !896, file: !26, line: 1968, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!723, !844, !879, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !908, line: 10, size: 128, elements: !909)
!908 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!909 = !{!910, !914}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !907, file: !908, line: 11, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !84}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !907, file: !908, line: 12, baseType: !84, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !896, file: !26, line: 1969, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!99, !919, !879, !99}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !634, line: 42, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !896, file: !26, line: 1970, baseType: !922, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!890, !879, !99, !720}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !896, file: !26, line: 1972, baseType: !926, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!99, !844, !733, !99}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !896, file: !26, line: 1974, baseType: !930, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!99, !919, !879, !844, !883, !720}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !896, file: !26, line: 1976, baseType: !934, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!99, !844, !879, !844}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !896, file: !26, line: 1977, baseType: !938, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!99, !879, !844}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !896, file: !26, line: 1978, baseType: !942, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!99, !919, !879, !844, !723}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !896, file: !26, line: 1980, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!99, !919, !879, !844, !883}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !896, file: !26, line: 1982, baseType: !938, size: 64, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !896, file: !26, line: 1983, baseType: !951, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!99, !919, !879, !844, !883, !954}
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !127, line: 21, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !127, line: 18, baseType: !113)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !896, file: !26, line: 1985, baseType: !957, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!99, !919, !879, !844, !879, !844, !7}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !896, file: !26, line: 1987, baseType: !961, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!99, !919, !844, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !26, line: 226, size: 640, elements: !966)
!966 = !{!967, !968, !969, !979, !988, !989, !995, !996, !997}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !965, file: !26, line: 227, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !965, file: !26, line: 228, baseType: !883, size: 16, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !26, line: 241, baseType: !970, size: 32, offset: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !26, line: 241, size: 32, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !970, file: !26, line: 242, baseType: !601, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !970, file: !26, line: 243, baseType: !974, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !975, line: 16, baseType: !976)
!975 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !975, line: 14, size: 32, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !976, file: !975, line: 15, baseType: !606, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !26, line: 245, baseType: !980, size: 32, offset: 96)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !26, line: 245, size: 32, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !980, file: !26, line: 246, baseType: !619, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !980, file: !26, line: 247, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !975, line: 20, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !975, line: 18, size: 32, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !985, file: !975, line: 19, baseType: !623, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !965, file: !26, line: 249, baseType: !531, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !965, file: !26, line: 250, baseType: !990, size: 128, offset: 192)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !677, line: 13, size: 128, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !990, file: !677, line: 14, baseType: !676, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !990, file: !677, line: 15, baseType: !994, size: 64, offset: 64)
!994 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !965, file: !26, line: 251, baseType: !990, size: 128, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !965, file: !26, line: 252, baseType: !990, size: 128, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !965, file: !26, line: 259, baseType: !491, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !896, file: !26, line: 1988, baseType: !999, size: 64, offset: 896)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!99, !919, !1002, !1004, !113, !7}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1006, line: 22, size: 1280, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1005, file: !1006, line: 23, baseType: !113, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1005, file: !1006, line: 24, baseType: !883, size: 16, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1005, file: !1006, line: 25, baseType: !7, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1005, file: !1006, line: 26, baseType: !684, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1005, file: !1006, line: 27, baseType: !181, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1005, file: !1006, line: 28, baseType: !181, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1005, file: !1006, line: 41, baseType: !181, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1005, file: !1006, line: 42, baseType: !954, size: 32, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1005, file: !1006, line: 43, baseType: !954, size: 32, offset: 352)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1005, file: !1006, line: 44, baseType: !601, size: 32, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1005, file: !1006, line: 45, baseType: !619, size: 32, offset: 416)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !1006, line: 46, baseType: !531, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1005, file: !1006, line: 47, baseType: !990, size: 128, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1005, file: !1006, line: 48, baseType: !990, size: 128, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1005, file: !1006, line: 49, baseType: !990, size: 128, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1005, file: !1006, line: 50, baseType: !990, size: 128, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1005, file: !1006, line: 51, baseType: !181, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1005, file: !1006, line: 52, baseType: !181, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1005, file: !1006, line: 53, baseType: !113, size: 32, offset: 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1005, file: !1006, line: 54, baseType: !113, size: 32, offset: 1184)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1005, file: !1006, line: 55, baseType: !181, size: 64, offset: 1216)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !896, file: !26, line: 1990, baseType: !1030, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !844, !733, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 66, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !328, line: 73, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !328, line: 15, baseType: !994)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 61, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !328, line: 72, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !328, line: 16, baseType: !92)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !896, file: !26, line: 1991, baseType: !1040, size: 64, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!99, !879, !1043, !181, !181}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !26, line: 55, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !896, file: !26, line: 1993, baseType: !1046, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!99, !879, !99}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !896, file: !26, line: 1994, baseType: !1050, size: 64, offset: 1152)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!99, !879, !844, !491, !7, !883}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !896, file: !26, line: 1997, baseType: !1054, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!99, !919, !879, !491, !883}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !896, file: !26, line: 1999, baseType: !1058, size: 64, offset: 1280)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!890, !919, !844, !99}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !896, file: !26, line: 2001, baseType: !1062, size: 64, offset: 1344)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!99, !919, !844, !890, !99}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !896, file: !26, line: 2003, baseType: !1066, size: 64, offset: 1408)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!99, !919, !844, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !26, line: 76, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !896, file: !26, line: 2005, baseType: !1072, size: 64, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!99, !844, !1069}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !896, file: !26, line: 2006, baseType: !1076, size: 64, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1079, !879}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !26, line: 3192, size: 192, elements: !1081)
!1081 = !{!1082, !1090}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1080, file: !26, line: 3193, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1084, line: 296, size: 128, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1085 = !{!1086, !1087, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1083, file: !1084, line: 297, baseType: !473, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1083, file: !1084, line: 299, baseType: !1088, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !127, line: 154, baseType: !7)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1083, file: !1084, line: 300, baseType: !84, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1080, file: !26, line: 3194, baseType: !113, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !880, file: !26, line: 655, baseType: !1092, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !26, line: 1190, size: 10752, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1141, !1315, !1355, !1438, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1455, !1459, !1460, !1463, !1466, !1469, !1472, !1473, !1474, !1515, !1542, !1543, !1544, !1545, !1546, !1547, !1550, !1554, !1563, !1564, !1565, !1566, !1625, !1640, !1641, !1642, !1643, !1646, !1650, !1651, !1652, !1667, !1668, !1669, !1680, !1681, !1682, !1683, !1684, !1685}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1093, file: !26, line: 1191, baseType: !185, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1093, file: !26, line: 1192, baseType: !954, size: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1093, file: !26, line: 1193, baseType: !297, size: 8, offset: 160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1093, file: !26, line: 1194, baseType: !92, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1093, file: !26, line: 1195, baseType: !531, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1093, file: !26, line: 1196, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !26, line: 2366, size: 576, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1112, !1116, !1120, !1124, !1128, !1129, !1130, !1133, !1134, !1135, !1137, !1138, !1139, !1140}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1102, file: !26, line: 2367, baseType: !723, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1102, file: !26, line: 2368, baseType: !99, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1102, file: !26, line: 2376, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!99, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !841, line: 21, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1102, file: !26, line: 2377, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !26, line: 75, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1102, file: !26, line: 2378, baseType: !1117, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!844, !1101, !99, !723, !84}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1102, file: !26, line: 2380, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1092}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1102, file: !26, line: 2381, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1127, line: 103, flags: DIFlagFwdDecl)
!1127 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1102, file: !26, line: 2382, baseType: !1101, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1102, file: !26, line: 2383, baseType: !569, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1102, file: !26, line: 2385, baseType: !1131, offset: 576)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1132, line: 206, elements: !484)
!1132 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1102, file: !26, line: 2386, baseType: !1131, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1102, file: !26, line: 2387, baseType: !1131, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1102, file: !26, line: 2388, baseType: !1136, offset: 576)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, elements: !557)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1102, file: !26, line: 2390, baseType: !1131, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1102, file: !26, line: 2391, baseType: !1131, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1102, file: !26, line: 2392, baseType: !1131, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1102, file: !26, line: 2393, baseType: !1131, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1093, file: !26, line: 1197, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !26, line: 2057, size: 1664, elements: !1145)
!1145 = !{!1146, !1150, !1154, !1155, !1159, !1165, !1169, !1170, !1171, !1175, !1179, !1183, !1184, !1185, !1191, !1196, !1197, !1240, !1241, !1242, !1243, !1247, !1251, !1298, !1313, !1314}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1144, file: !26, line: 2058, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!879, !1092}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1144, file: !26, line: 2059, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !879}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1144, file: !26, line: 2060, baseType: !1151, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1144, file: !26, line: 2062, baseType: !1156, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !879, !99}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1144, file: !26, line: 2063, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!99, !879, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 309, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1144, file: !26, line: 2064, baseType: !1166, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!99, !879}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1144, file: !26, line: 2065, baseType: !1151, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1144, file: !26, line: 2066, baseType: !1121, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1144, file: !26, line: 2067, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!99, !1092, !99}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1144, file: !26, line: 2068, baseType: !1176, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!99, !1092, !25}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1144, file: !26, line: 2069, baseType: !1180, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!99, !1092}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1144, file: !26, line: 2070, baseType: !1176, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1144, file: !26, line: 2071, baseType: !1180, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1144, file: !26, line: 2072, baseType: !1186, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!99, !844, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !26, line: 62, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1144, file: !26, line: 2073, baseType: !1192, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!99, !1092, !1195, !733}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1144, file: !26, line: 2074, baseType: !1121, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1144, file: !26, line: 2076, baseType: !1198, size: 64, offset: 1024)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!99, !1201, !844}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1203, line: 17, size: 960, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1235, !1236, !1239}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1202, file: !1203, line: 18, baseType: !733, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1202, file: !1203, line: 19, baseType: !1036, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1202, file: !1203, line: 20, baseType: !1036, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1202, file: !1203, line: 21, baseType: !1036, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1202, file: !1203, line: 22, baseType: !1036, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1202, file: !1203, line: 23, baseType: !531, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1202, file: !1203, line: 24, baseType: !531, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1203, line: 25, baseType: !519, size: 256, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1202, file: !1203, line: 26, baseType: !1214, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1203, line: 32, size: 256, elements: !1217)
!1217 = !{!1218, !1223, !1227, !1231}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1216, file: !1203, line: 33, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!84, !1201, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1216, file: !1203, line: 34, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1201, !84}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1216, file: !1203, line: 35, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!84, !1201, !84, !1222}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1216, file: !1203, line: 36, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!99, !1201, !84}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1202, file: !1203, line: 27, baseType: !99, size: 32, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1202, file: !1203, line: 28, baseType: !1237, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1202, file: !1203, line: 29, baseType: !84, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1144, file: !26, line: 2077, baseType: !1198, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1144, file: !26, line: 2078, baseType: !1198, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1144, file: !26, line: 2079, baseType: !1198, size: 64, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1144, file: !26, line: 2081, baseType: !1244, size: 64, offset: 1280)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1033, !1092, !99, !733, !1036, !531}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1144, file: !26, line: 2082, baseType: !1248, size: 64, offset: 1344)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1033, !1092, !99, !723, !1036, !531}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1144, file: !26, line: 2083, baseType: !1252, size: 64, offset: 1408)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255, !879}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !46, line: 296, size: 1664, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1283, !1284, !1285}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1257, file: !46, line: 297, baseType: !573, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1257, file: !46, line: 298, baseType: !185, size: 128, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1257, file: !46, line: 299, baseType: !185, size: 128, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1257, file: !46, line: 300, baseType: !185, size: 128, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1257, file: !46, line: 301, baseType: !519, size: 256, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1257, file: !46, line: 302, baseType: !473, size: 32, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1257, file: !46, line: 303, baseType: !126, size: 32, offset: 800)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1257, file: !46, line: 304, baseType: !1092, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1257, file: !46, line: 305, baseType: !1268, size: 64, offset: 896)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !46, line: 68, size: 64, elements: !1269)
!1269 = !{!1270, !1282}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !46, line: 69, baseType: !1271, size: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !46, line: 69, size: 32, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1271, file: !46, line: 70, baseType: !601, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1271, file: !46, line: 71, baseType: !619, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1271, file: !46, line: 72, baseType: !1276, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1277, line: 24, baseType: !1278)
!1277 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 22, size: 32, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1278, file: !1277, line: 23, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1277, line: 20, baseType: !607)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !46, line: 74, baseType: !45, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1257, file: !46, line: 306, baseType: !531, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1257, file: !46, line: 307, baseType: !92, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1257, file: !46, line: 308, baseType: !1286, size: 576, offset: 1088)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !46, line: 205, size: 576, elements: !1287)
!1287 = !{!1288, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1286, file: !46, line: 206, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !46, line: 66, baseType: !198)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1286, file: !46, line: 207, baseType: !1289, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1286, file: !46, line: 208, baseType: !1289, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1286, file: !46, line: 209, baseType: !1289, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1286, file: !46, line: 210, baseType: !1289, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1286, file: !46, line: 211, baseType: !1289, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1286, file: !46, line: 212, baseType: !1289, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1286, file: !46, line: 213, baseType: !676, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1286, file: !46, line: 214, baseType: !676, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1144, file: !26, line: 2085, baseType: !1299, size: 64, offset: 1472)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!994, !1092, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1304, line: 15, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1305 = !{!1306, !1307, !1308, !1309, !1310}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1303, file: !1304, line: 16, baseType: !1088, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1303, file: !1304, line: 19, baseType: !99, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1303, file: !1304, line: 26, baseType: !92, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1303, file: !1304, line: 33, baseType: !92, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1303, file: !1304, line: 36, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1304, line: 36, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1144, file: !26, line: 2087, baseType: !1299, size: 64, offset: 1536)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1144, file: !26, line: 2089, baseType: !1121, size: 64, offset: 1600)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1093, file: !26, line: 1198, baseType: !1316, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !46, line: 324, size: 704, elements: !1319)
!1319 = !{!1320, !1324, !1328, !1332, !1333, !1334, !1335, !1336, !1341, !1346, !1350}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1318, file: !46, line: 325, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!99, !1256}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1318, file: !46, line: 326, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1256, !1092, !99}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1318, file: !46, line: 327, baseType: !1329, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1256}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1318, file: !46, line: 328, baseType: !1321, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1318, file: !46, line: 329, baseType: !1321, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1318, file: !46, line: 330, baseType: !1321, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1318, file: !46, line: 331, baseType: !1172, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1318, file: !46, line: 334, baseType: !1337, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1340, !879}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1318, file: !46, line: 335, baseType: !1342, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!99, !879, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1318, file: !46, line: 337, baseType: !1347, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!99, !879, !1340}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1318, file: !46, line: 339, baseType: !1351, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!99, !1092, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1093, file: !26, line: 1199, baseType: !1356, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !46, line: 430, size: 704, elements: !1359)
!1359 = !{!1360, !1364, !1365, !1369, !1370, !1371, !1386, !1409, !1413, !1414, !1437}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1358, file: !46, line: 431, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!99, !1092, !99, !99, !1002}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1358, file: !46, line: 432, baseType: !1172, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1358, file: !46, line: 433, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!99, !1092, !7}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1358, file: !46, line: 434, baseType: !1366, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1358, file: !46, line: 435, baseType: !1172, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1358, file: !46, line: 436, baseType: !1372, size: 64, offset: 320)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!99, !1092, !99, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !46, line: 417, size: 256, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1376, file: !46, line: 418, baseType: !99, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1376, file: !46, line: 419, baseType: !7, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1376, file: !46, line: 420, baseType: !7, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1376, file: !46, line: 422, baseType: !7, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1376, file: !46, line: 423, baseType: !7, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1376, file: !46, line: 424, baseType: !7, size: 32, offset: 160)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1376, file: !46, line: 425, baseType: !7, size: 32, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1376, file: !46, line: 426, baseType: !7, size: 32, offset: 224)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1358, file: !46, line: 437, baseType: !1387, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!99, !1092, !1268, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !46, line: 345, size: 960, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1391, file: !46, line: 346, baseType: !99, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1391, file: !46, line: 347, baseType: !181, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1391, file: !46, line: 348, baseType: !181, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1391, file: !46, line: 349, baseType: !181, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1391, file: !46, line: 350, baseType: !181, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1391, file: !46, line: 351, baseType: !181, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1391, file: !46, line: 352, baseType: !181, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1391, file: !46, line: 353, baseType: !196, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1391, file: !46, line: 355, baseType: !196, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1391, file: !46, line: 356, baseType: !99, size: 32, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1391, file: !46, line: 357, baseType: !99, size: 32, offset: 608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1391, file: !46, line: 358, baseType: !181, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1391, file: !46, line: 359, baseType: !181, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1391, file: !46, line: 360, baseType: !181, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1391, file: !46, line: 361, baseType: !196, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1391, file: !46, line: 362, baseType: !99, size: 32, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1358, file: !46, line: 438, baseType: !1410, size: 64, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!99, !1092, !1354, !1390}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1358, file: !46, line: 440, baseType: !1387, size: 64, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1358, file: !46, line: 441, baseType: !1415, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!99, !1092, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !46, line: 411, size: 1408, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1419, file: !46, line: 412, baseType: !7, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1419, file: !46, line: 413, baseType: !1423, size: 1344, offset: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 1344, elements: !557)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !46, line: 397, size: 448, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1436}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !46, line: 398, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1424, file: !46, line: 399, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1424, file: !46, line: 401, baseType: !7, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1424, file: !46, line: 402, baseType: !7, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1424, file: !46, line: 403, baseType: !7, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1424, file: !46, line: 404, baseType: !7, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1424, file: !46, line: 405, baseType: !7, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1424, file: !46, line: 406, baseType: !100, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1424, file: !46, line: 407, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !127, line: 132, baseType: !181)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1424, file: !46, line: 408, baseType: !1435, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1358, file: !46, line: 442, baseType: !1366, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1093, file: !26, line: 1200, baseType: !1439, size: 64, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !26, line: 54, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1093, file: !26, line: 1201, baseType: !92, size: 64, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1093, file: !26, line: 1202, baseType: !92, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1093, file: !26, line: 1203, baseType: !92, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1093, file: !26, line: 1204, baseType: !844, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1093, file: !26, line: 1205, baseType: !660, size: 320, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1093, file: !26, line: 1206, baseType: !99, size: 32, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1093, file: !26, line: 1207, baseType: !126, size: 32, offset: 1248)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1093, file: !26, line: 1209, baseType: !84, size: 64, offset: 1280)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1093, file: !26, line: 1211, baseType: !1451, size: 64, offset: 1344)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !26, line: 1211, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1093, file: !26, line: 1223, baseType: !1456, size: 64, offset: 1408)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !856, line: 34, size: 64, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1456, file: !856, line: 35, baseType: !859, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1093, file: !26, line: 1224, baseType: !185, size: 128, offset: 1472)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1093, file: !26, line: 1225, baseType: !1461, size: 64, offset: 1600)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !26, line: 1225, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1093, file: !26, line: 1226, baseType: !1464, size: 64, offset: 1664)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !26, line: 1226, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1093, file: !26, line: 1227, baseType: !1467, size: 64, offset: 1728)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !26, line: 50, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1093, file: !26, line: 1228, baseType: !1470, size: 64, offset: 1792)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !26, line: 1228, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1093, file: !26, line: 1229, baseType: !573, size: 128, offset: 1856)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1093, file: !26, line: 1230, baseType: !7, size: 32, offset: 1984)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1093, file: !26, line: 1231, baseType: !1475, size: 2496, offset: 2048)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !46, line: 521, size: 2496, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1481, !1513}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1475, file: !46, line: 522, baseType: !7, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1475, file: !46, line: 523, baseType: !660, size: 320, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1475, file: !46, line: 524, baseType: !1480, size: 192, offset: 384)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 192, elements: !557)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1475, file: !46, line: 525, baseType: !1482, size: 1728, offset: 576)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 1728, elements: !557)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !46, line: 222, size: 576, elements: !1484)
!1484 = !{!1485, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1483, file: !46, line: 223, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !46, line: 445, size: 256, elements: !1488)
!1488 = !{!1489, !1490, !1503, !1504}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1487, file: !46, line: 446, baseType: !99, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1487, file: !46, line: 447, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !46, line: 312, size: 512, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1493, file: !46, line: 313, baseType: !1172, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1493, file: !46, line: 314, baseType: !1172, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1493, file: !46, line: 315, baseType: !1172, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1493, file: !46, line: 316, baseType: !1172, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1493, file: !46, line: 317, baseType: !1321, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1493, file: !46, line: 318, baseType: !1321, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1493, file: !46, line: 319, baseType: !1321, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1493, file: !46, line: 320, baseType: !1351, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1487, file: !46, line: 448, baseType: !1125, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1487, file: !46, line: 449, baseType: !1486, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1483, file: !46, line: 224, baseType: !99, size: 32, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1483, file: !46, line: 226, baseType: !185, size: 128, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1483, file: !46, line: 227, baseType: !92, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1483, file: !46, line: 228, baseType: !7, size: 32, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1483, file: !46, line: 229, baseType: !7, size: 32, offset: 352)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1483, file: !46, line: 230, baseType: !1289, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1483, file: !46, line: 231, baseType: !1289, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1483, file: !46, line: 232, baseType: !84, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1475, file: !46, line: 526, baseType: !1514, size: 192, offset: 2304)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, size: 192, elements: !557)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1093, file: !26, line: 1233, baseType: !1516, size: 2368, offset: 4544)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !26, line: 1184, size: 2368, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1516, file: !26, line: 1185, baseType: !152, size: 16)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1516, file: !26, line: 1186, baseType: !152, size: 16, offset: 16)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1516, file: !26, line: 1187, baseType: !1521, size: 2304, offset: 64)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 2304, elements: !557)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1523, line: 12, size: 768, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1524 = !{!1525, !1533, !1535, !1540, !1541}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1522, file: !1523, line: 13, baseType: !1526, size: 384)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1527, line: 17, size: 384, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1526, file: !1527, line: 18, baseType: !99, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1526, file: !1527, line: 19, baseType: !99, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1526, file: !1527, line: 20, baseType: !582, size: 192, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1526, file: !1527, line: 22, baseType: !499, size: 128, align: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1522, file: !1523, line: 14, baseType: !1534, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1522, file: !1523, line: 15, baseType: !1536, size: 64, offset: 448)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1537, line: 16, size: 64, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1536, file: !1537, line: 17, baseType: !102, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1522, file: !1523, line: 16, baseType: !582, size: 192, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1522, file: !1523, line: 17, baseType: !126, size: 32, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1093, file: !26, line: 1240, baseType: !84, size: 64, offset: 6912)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1093, file: !26, line: 1243, baseType: !113, size: 32, offset: 6976)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1093, file: !26, line: 1245, baseType: !676, size: 64, offset: 7040)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1093, file: !26, line: 1246, baseType: !676, size: 64, offset: 7104)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1093, file: !26, line: 1248, baseType: !115, size: 32, offset: 7168)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1093, file: !26, line: 1249, baseType: !1548, size: 64, offset: 7232)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !26, line: 634, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1093, file: !26, line: 1252, baseType: !1551, size: 256, offset: 7296)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 256, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1093, file: !26, line: 1253, baseType: !1555, size: 128, offset: 7552)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1556, line: 21, baseType: !1557)
!1556 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1556, line: 19, size: 128, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1557, file: !1556, line: 20, baseType: !1560, size: 128)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 16)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1093, file: !26, line: 1255, baseType: !7, size: 32, offset: 7680)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1093, file: !26, line: 1261, baseType: !519, size: 256, offset: 7744)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1093, file: !26, line: 1267, baseType: !723, size: 64, offset: 8000)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1093, file: !26, line: 1269, baseType: !1567, size: 64, offset: 8064)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !846, line: 128, size: 1024, align: 512, elements: !1570)
!1570 = !{!1571, !1575, !1576, !1583, !1589, !1593, !1597, !1601, !1602, !1606, !1610, !1615, !1619}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1569, file: !846, line: 129, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!99, !844, !7}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1569, file: !846, line: 130, baseType: !1572, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1569, file: !846, line: 131, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!99, !1580, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1569, file: !846, line: 132, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!99, !1580, !7, !723, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1569, file: !846, line: 134, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!99, !1580}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1569, file: !846, line: 135, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!99, !844}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1569, file: !846, line: 136, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !844}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1569, file: !846, line: 137, baseType: !1598, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1569, file: !846, line: 138, baseType: !1603, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !844, !879}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1569, file: !846, line: 139, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!733, !844, !733, !99}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1569, file: !846, line: 140, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!839, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1569, file: !846, line: 141, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!99, !1002, !720}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1569, file: !846, line: 142, baseType: !1620, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!844, !844, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1093, file: !26, line: 1271, baseType: !1626, size: 448, offset: 8128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1304, line: 63, size: 448, elements: !1627)
!1627 = !{!1628, !1633, !1634, !1635, !1636, !1637, !1638}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1626, file: !1304, line: 64, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!92, !1632, !1302}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1626, file: !1304, line: 66, baseType: !1629, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1626, file: !1304, line: 69, baseType: !994, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1626, file: !1304, line: 70, baseType: !99, size: 32, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1304, line: 71, baseType: !7, size: 32, offset: 224)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1626, file: !1304, line: 74, baseType: !185, size: 128, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1626, file: !1304, line: 85, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1093, file: !26, line: 1274, baseType: !512, size: 64, offset: 8576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1093, file: !26, line: 1280, baseType: !512, size: 64, offset: 8640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1093, file: !26, line: 1283, baseType: !99, size: 32, offset: 8704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1093, file: !26, line: 1286, baseType: !1644, size: 32, offset: 8736)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1645, line: 8, baseType: !113)
!1645 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1093, file: !26, line: 1289, baseType: !1647, size: 64, offset: 8768)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1649, line: 18, flags: DIFlagFwdDecl)
!1649 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1093, file: !26, line: 1290, baseType: !569, size: 64, offset: 8832)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1093, file: !26, line: 1297, baseType: !806, size: 64, offset: 8896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1093, file: !26, line: 1304, baseType: !1653, size: 64, offset: 8960)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1654, line: 49, size: 64, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1653, file: !1654, line: 50, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1654, line: 41, size: 512, align: 512, elements: !1659)
!1659 = !{!1660, !1661, !1666}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1658, file: !1654, line: 43, baseType: !473, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1658, file: !1654, line: 45, baseType: !1662, size: 192, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1654, line: 29, size: 192, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1662, file: !1654, line: 30, baseType: !185, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1662, file: !1654, line: 32, baseType: !994, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1658, file: !1654, line: 46, baseType: !994, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1093, file: !26, line: 1305, baseType: !1653, size: 64, offset: 9024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1093, file: !26, line: 1306, baseType: !499, size: 128, align: 64, offset: 9088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1093, file: !26, line: 1307, baseType: !1670, size: 256, offset: 9216)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1649, line: 98, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1670, file: !1649, line: 99, baseType: !512, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1670, file: !1649, line: 100, baseType: !185, size: 128, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1670, file: !1649, line: 101, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1649, line: 21, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1093, file: !26, line: 1309, baseType: !519, size: 256, offset: 9472)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1093, file: !26, line: 1314, baseType: !99, size: 32, offset: 9728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1093, file: !26, line: 1317, baseType: !473, size: 32, align: 512, offset: 10240)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1093, file: !26, line: 1318, baseType: !185, size: 128, offset: 10304)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1093, file: !26, line: 1320, baseType: !473, size: 32, offset: 10432)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1093, file: !26, line: 1321, baseType: !185, size: 128, offset: 10496)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !880, file: !26, line: 656, baseType: !1687, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !26, line: 472, size: 1536, align: 64, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1942, !1943, !1944, !1945, !1946, !1947}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1688, file: !26, line: 473, baseType: !879, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1688, file: !26, line: 474, baseType: !1083, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1688, file: !26, line: 475, baseType: !660, size: 320, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1688, file: !26, line: 476, baseType: !1088, size: 32, offset: 512)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1688, file: !26, line: 477, baseType: !126, size: 32, offset: 544)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1688, file: !26, line: 482, baseType: !344, size: 128, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1688, file: !26, line: 483, baseType: !92, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1688, file: !26, line: 484, baseType: !92, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1688, file: !26, line: 485, baseType: !1699, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !26, line: 404, size: 1280, elements: !1702)
!1702 = !{!1703, !1767, !1837, !1841, !1845, !1851, !1857, !1861, !1866, !1870, !1874, !1878, !1906, !1910, !1914, !1918, !1923, !1927, !1934, !1938}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1701, file: !26, line: 405, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!99, !1707, !1163}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !456, line: 74, size: 512, align: 128, elements: !1709)
!1709 = !{!1710, !1711, !1761, !1766}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !456, line: 75, baseType: !92, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !456, line: 83, baseType: !1712, size: 320, offset: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !456, line: 83, size: 320, elements: !1713)
!1713 = !{!1714, !1735, !1749, !1753, !1760}
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !456, line: 84, baseType: !1715, size: 320)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1712, file: !456, line: 84, size: 320, elements: !1716)
!1716 = !{!1717, !1728, !1729, !1734}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !456, line: 90, baseType: !1718, size: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !456, line: 90, size: 128, elements: !1719)
!1719 = !{!1720, !1721, !1726, !1727}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1718, file: !456, line: 91, baseType: !185, size: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !456, line: 94, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1718, file: !456, line: 94, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1722, file: !456, line: 96, baseType: !84, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1722, file: !456, line: 98, baseType: !7, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1718, file: !456, line: 102, baseType: !185, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1718, file: !456, line: 103, baseType: !185, size: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1715, file: !456, line: 106, baseType: !1687, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !456, line: 107, baseType: !1730, size: 64, offset: 192)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !456, line: 107, size: 64, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1730, file: !456, line: 108, baseType: !92, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1730, file: !456, line: 109, baseType: !92, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1715, file: !456, line: 117, baseType: !92, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !456, line: 119, baseType: !1736, size: 320)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1712, file: !456, line: 119, size: 320, elements: !1737)
!1737 = !{!1738, !1739, !1742, !1743, !1744}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1736, file: !456, line: 124, baseType: !92, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1736, file: !456, line: 125, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !456, line: 125, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1736, file: !456, line: 126, baseType: !92, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1736, file: !456, line: 127, baseType: !92, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !456, line: 128, baseType: !1745, size: 64, offset: 256)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !456, line: 128, size: 64, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1745, file: !456, line: 133, baseType: !92, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1745, file: !456, line: 138, baseType: !512, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !456, line: 141, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1712, file: !456, line: 141, size: 64, elements: !1751)
!1751 = !{!1752}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1750, file: !456, line: 142, baseType: !92, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !456, line: 144, baseType: !1754, size: 128)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1712, file: !456, line: 144, size: 128, elements: !1755)
!1755 = !{!1756, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1754, file: !456, line: 146, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !456, line: 146, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1754, file: !456, line: 147, baseType: !84, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1712, file: !456, line: 161, baseType: !499, size: 128, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !456, line: 164, baseType: !1762, size: 32, offset: 384)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !456, line: 164, size: 32, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1762, file: !456, line: 169, baseType: !126, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1762, file: !456, line: 177, baseType: !7, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1708, file: !456, line: 181, baseType: !126, size: 32, offset: 416)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1701, file: !26, line: 406, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!99, !491, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !456, line: 293, size: 1536, elements: !1773)
!1773 = !{!1774, !1804, !1818}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !456, line: 295, baseType: !1775, size: 512)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !456, line: 295, size: 512, elements: !1776)
!1776 = !{!1777, !1803}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !456, line: 296, baseType: !1778, size: 448)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !456, line: 296, size: 448, elements: !1779)
!1779 = !{!1780, !1781, !1790, !1791, !1792, !1801, !1802}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1778, file: !456, line: 298, baseType: !92, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !456, line: 299, baseType: !1782, size: 128, offset: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !456, line: 299, size: 128, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1782, file: !456, line: 300, baseType: !185, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !456, line: 302, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !456, line: 302, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1786, file: !456, line: 303, baseType: !84, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1786, file: !456, line: 305, baseType: !7, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1778, file: !456, line: 310, baseType: !1687, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1778, file: !456, line: 311, baseType: !92, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !456, line: 312, baseType: !1793, size: 64, offset: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !456, line: 312, size: 64, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1793, file: !456, line: 313, baseType: !84, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1793, file: !456, line: 314, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !456, line: 257, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 255, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1798, file: !456, line: 256, baseType: !92, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1778, file: !456, line: 316, baseType: !126, size: 32, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1778, file: !456, line: 317, baseType: !126, size: 32, offset: 416)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1775, file: !456, line: 323, baseType: !1708, size: 512, align: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !456, line: 325, baseType: !1805, size: 512, offset: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !456, line: 325, size: 512, elements: !1806)
!1806 = !{!1807, !1817}
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !456, line: 326, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !456, line: 326, size: 320, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1808, file: !456, line: 327, baseType: !92, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1808, file: !456, line: 328, baseType: !92, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1808, file: !456, line: 329, baseType: !92, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1808, file: !456, line: 331, baseType: !126, size: 32, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1808, file: !456, line: 332, baseType: !126, size: 32, offset: 224)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1808, file: !456, line: 333, baseType: !126, size: 32, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1808, file: !456, line: 335, baseType: !7, size: 32, offset: 288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1805, file: !456, line: 339, baseType: !1708, size: 512, align: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !456, line: 341, baseType: !1819, size: 512, offset: 1024)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !456, line: 341, size: 512, elements: !1820)
!1820 = !{!1821, !1830, !1836}
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !456, line: 342, baseType: !1822, size: 384)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !456, line: 342, size: 384, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1822, file: !456, line: 343, baseType: !92, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1822, file: !456, line: 344, baseType: !92, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1822, file: !456, line: 346, baseType: !84, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1822, file: !456, line: 347, baseType: !84, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1822, file: !456, line: 348, baseType: !84, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1822, file: !456, line: 349, baseType: !84, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !456, line: 352, baseType: !1831, size: 256)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !456, line: 352, size: 256, elements: !1832)
!1832 = !{!1833, !1834, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1831, file: !456, line: 353, baseType: !92, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1831, file: !456, line: 354, baseType: !92, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1831, file: !456, line: 356, baseType: !185, size: 128, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1819, file: !456, line: 359, baseType: !1708, size: 512, align: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1701, file: !26, line: 409, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!99, !1687, !1163}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1701, file: !26, line: 412, baseType: !1842, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!720, !1687, !1771}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1701, file: !26, line: 414, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !26, line: 310, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1701, file: !26, line: 416, baseType: !1852, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!99, !491, !1687, !531, !7, !1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1701, file: !26, line: 419, baseType: !1858, size: 64, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!99, !491, !1687, !531, !7, !7, !1707, !84}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1701, file: !26, line: 424, baseType: !1862, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1865, !1687, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !127, line: 131, baseType: !181)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1701, file: !26, line: 425, baseType: !1867, size: 64, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1771, !1036, !1036}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1701, file: !26, line: 426, baseType: !1871, size: 64, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!720, !1771, !1088}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1701, file: !26, line: 427, baseType: !1875, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1771}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1701, file: !26, line: 428, baseType: !1879, size: 64, offset: 704)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1033, !1882, !1904}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !26, line: 373, size: 384, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1891, !1892, !1893, !1894}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1883, file: !26, line: 374, baseType: !491, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1883, file: !26, line: 375, baseType: !531, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1883, file: !26, line: 376, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1882, !994}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1883, file: !26, line: 377, baseType: !84, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1883, file: !26, line: 378, baseType: !99, size: 32, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1883, file: !26, line: 379, baseType: !150, size: 16, offset: 288)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !26, line: 380, baseType: !1895, size: 64, offset: 320)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1883, file: !26, line: 380, size: 64, elements: !1896)
!1896 = !{!1897, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1895, file: !26, line: 386, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !26, line: 386, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1895, file: !26, line: 395, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1033, !84}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !26, line: 69, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1701, file: !26, line: 433, baseType: !1907, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!99, !1687, !1771, !1771, !38}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1701, file: !26, line: 435, baseType: !1911, size: 64, offset: 832)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!99, !1771}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1701, file: !26, line: 436, baseType: !1915, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!720, !1771, !1036, !1036}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1701, file: !26, line: 438, baseType: !1919, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1771, !1922, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1701, file: !26, line: 439, baseType: !1924, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!99, !1687, !1707}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1701, file: !26, line: 442, baseType: !1928, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!99, !1931, !491, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !26, line: 66, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1701, file: !26, line: 444, baseType: !1935, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !491}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1701, file: !26, line: 445, baseType: !1939, size: 64, offset: 1216)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!99, !1882, !1904}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !26, line: 486, baseType: !92, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1688, file: !26, line: 487, baseType: !660, size: 320, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1688, file: !26, line: 488, baseType: !1644, size: 32, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1688, file: !26, line: 489, baseType: !473, size: 32, offset: 1312)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1688, file: !26, line: 490, baseType: !185, size: 128, offset: 1344)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1688, file: !26, line: 491, baseType: !84, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !880, file: !26, line: 659, baseType: !84, size: 64, offset: 576)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !880, file: !26, line: 663, baseType: !92, size: 64, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !26, line: 671, baseType: !1951, size: 32, offset: 704)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !26, line: 671, size: 32, elements: !1952)
!1952 = !{!1953, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1951, file: !26, line: 672, baseType: !1954, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1951, file: !26, line: 673, baseType: !7, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !880, file: !26, line: 675, baseType: !954, size: 32, offset: 736)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !880, file: !26, line: 676, baseType: !531, size: 64, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !880, file: !26, line: 677, baseType: !990, size: 128, offset: 832)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !880, file: !26, line: 678, baseType: !990, size: 128, offset: 960)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !880, file: !26, line: 679, baseType: !990, size: 128, offset: 1088)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !880, file: !26, line: 680, baseType: !473, size: 32, offset: 1216)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !880, file: !26, line: 681, baseType: !152, size: 16, offset: 1248)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !880, file: !26, line: 682, baseType: !295, size: 8, offset: 1264)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !880, file: !26, line: 683, baseType: !295, size: 8, offset: 1272)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !880, file: !26, line: 684, baseType: !1435, size: 64, offset: 1280)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !880, file: !26, line: 691, baseType: !92, size: 64, offset: 1344)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !880, file: !26, line: 692, baseType: !660, size: 320, offset: 1408)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !880, file: !26, line: 694, baseType: !92, size: 64, offset: 1728)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !880, file: !26, line: 695, baseType: !92, size: 64, offset: 1792)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !880, file: !26, line: 697, baseType: !573, size: 128, offset: 1856)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !880, file: !26, line: 698, baseType: !185, size: 128, offset: 1984)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !880, file: !26, line: 707, baseType: !185, size: 128, offset: 2112)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !880, file: !26, line: 708, baseType: !185, size: 128, offset: 2240)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !26, line: 709, baseType: !1975, size: 128, offset: 2368)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !26, line: 709, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1975, file: !26, line: 710, baseType: !569, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1975, file: !26, line: 711, baseType: !499, size: 128, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !880, file: !26, line: 713, baseType: !514, size: 64, offset: 2496)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !880, file: !26, line: 714, baseType: !514, size: 64, offset: 2560)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !880, file: !26, line: 715, baseType: !126, size: 32, offset: 2624)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !880, file: !26, line: 716, baseType: !126, size: 32, offset: 2656)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !880, file: !26, line: 717, baseType: !126, size: 32, offset: 2688)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !880, file: !26, line: 719, baseType: !126, size: 32, offset: 2720)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !26, line: 721, baseType: !1986, size: 64, offset: 2752)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !26, line: 721, size: 64, elements: !1987)
!1987 = !{!1988, !2175}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1986, file: !26, line: 722, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !26, line: 1914, size: 2112, elements: !1992)
!1992 = !{!1993, !1994, !1998, !2002, !2006, !2007, !2008, !2014, !2027, !2035, !2039, !2040, !2101, !2102, !2106, !2111, !2112, !2116, !2120, !2126, !2127, !2131, !2132, !2138, !2142, !2143, !2148, !2152, !2156, !2160, !2164, !2165, !2171}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1991, file: !26, line: 1915, baseType: !1125, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1991, file: !26, line: 1916, baseType: !1995, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!531, !491, !531, !99}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1991, file: !26, line: 1917, baseType: !1999, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1033, !491, !733, !1036, !1222}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1991, file: !26, line: 1918, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!1033, !491, !723, !1036, !1222}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1991, file: !26, line: 1919, baseType: !1879, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1991, file: !26, line: 1920, baseType: !1879, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1991, file: !26, line: 1921, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!99, !1882, !2012, !7}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !26, line: 53, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1991, file: !26, line: 1923, baseType: !2015, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!99, !491, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !26, line: 1858, size: 128, elements: !2020)
!2020 = !{!2021, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2019, file: !26, line: 1859, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !26, line: 1855, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!720, !2018, !723, !99, !531, !181, !7}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2019, file: !26, line: 1860, baseType: !531, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1991, file: !26, line: 1924, baseType: !2028, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!2031, !491, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2032, line: 59, baseType: !7)
!2032 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !26, line: 61, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1991, file: !26, line: 1925, baseType: !2036, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!994, !491, !7, !92}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1991, file: !26, line: 1926, baseType: !2036, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1991, file: !26, line: 1927, baseType: !2041, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!99, !491, !2044}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !456, line: 625, size: 1344, elements: !2046)
!2046 = !{!2047, !2056, !2057, !2065, !2072, !2073, !2078, !2079, !2084, !2085, !2088, !2092, !2093, !2094, !2095, !2096, !2099}
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !456, line: 628, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !456, line: 628, size: 128, elements: !2049)
!2049 = !{!2050, !2055}
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !456, line: 629, baseType: !2051, size: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2048, file: !456, line: 629, size: 128, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2051, file: !456, line: 631, baseType: !92, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2051, file: !456, line: 632, baseType: !92, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2048, file: !456, line: 635, baseType: !499, size: 128, align: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2045, file: !456, line: 639, baseType: !454, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2045, file: !456, line: 640, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2059, line: 297, baseType: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2059, line: 297, size: 64, elements: !2061)
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2060, file: !2059, line: 297, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2064, line: 19, baseType: !92)
!2064 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !456, line: 646, baseType: !2066, size: 64, offset: 256)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !456, line: 646, size: 64, elements: !2067)
!2067 = !{!2068, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2066, file: !456, line: 647, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !456, line: 542, baseType: !92)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2066, file: !456, line: 648, baseType: !2070, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2045, file: !456, line: 666, baseType: !99, size: 32, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2045, file: !456, line: 667, baseType: !2074, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !456, line: 579, size: 320, elements: !2076)
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2075, file: !456, line: 580, baseType: !660, size: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2045, file: !456, line: 670, baseType: !720, size: 8, offset: 448)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2045, file: !456, line: 681, baseType: !2080, size: 256, offset: 512)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !456, line: 678, size: 256, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2080, file: !456, line: 679, baseType: !173, size: 192, align: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2080, file: !456, line: 680, baseType: !92, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2045, file: !456, line: 689, baseType: !185, size: 128, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2045, file: !456, line: 691, baseType: !2086, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !456, line: 691, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2045, file: !456, line: 694, baseType: !2089, size: 64, offset: 960)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !456, line: 694, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2045, file: !456, line: 697, baseType: !92, size: 64, offset: 1024)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2045, file: !456, line: 699, baseType: !491, size: 64, offset: 1088)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2045, file: !456, line: 700, baseType: !84, size: 64, offset: 1152)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2045, file: !456, line: 711, baseType: !512, size: 64, offset: 1216)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2045, file: !456, line: 717, baseType: !2097, size: 64, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !456, line: 717, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2045, file: !456, line: 722, baseType: !2100, offset: 1344)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !456, line: 570, elements: !484)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1991, file: !26, line: 1928, baseType: !92, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1991, file: !26, line: 1929, baseType: !2103, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!99, !879, !491}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1991, file: !26, line: 1930, baseType: !2107, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!99, !491, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !26, line: 1061, baseType: !84)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1991, file: !26, line: 1931, baseType: !2103, size: 64, offset: 960)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1991, file: !26, line: 1932, baseType: !2113, size: 64, offset: 1024)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!99, !491, !531, !531, !99}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1991, file: !26, line: 1933, baseType: !2117, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!99, !99, !491, !99}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1991, file: !26, line: 1934, baseType: !2121, size: 64, offset: 1152)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!99, !491, !99, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !26, line: 1063, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1991, file: !26, line: 1935, baseType: !488, size: 64, offset: 1216)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1991, file: !26, line: 1936, baseType: !2128, size: 64, offset: 1280)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!99, !99}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1991, file: !26, line: 1937, baseType: !2121, size: 64, offset: 1344)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1991, file: !26, line: 1938, baseType: !2133, size: 64, offset: 1408)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!1033, !2136, !491, !1222, !1036, !7}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !104, line: 59, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1991, file: !26, line: 1939, baseType: !2139, size: 64, offset: 1472)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!1033, !491, !1222, !2136, !1036, !7}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1991, file: !26, line: 1940, baseType: !1935, size: 64, offset: 1536)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1991, file: !26, line: 1941, baseType: !2144, size: 64, offset: 1600)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!99, !491, !99, !2147, !1856}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1991, file: !26, line: 1942, baseType: !2149, size: 64, offset: 1664)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!994, !491, !99, !531, !531}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1991, file: !26, line: 1944, baseType: !2153, size: 64, offset: 1728)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !1201, !491}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1991, file: !26, line: 1948, baseType: !2157, size: 64, offset: 1792)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1033, !491, !531, !491, !531, !1036, !7}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1991, file: !26, line: 1950, baseType: !2161, size: 64, offset: 1856)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!531, !491, !531, !491, !531, !531, !7}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1991, file: !26, line: 1953, baseType: !2113, size: 64, offset: 1920)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1991, file: !26, line: 1954, baseType: !2166, size: 64, offset: 1984)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!99, !2169, !7}
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !26, line: 1911, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1991, file: !26, line: 1955, baseType: !2172, size: 64, offset: 2048)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!99, !2169, !2012, !7}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1986, file: !26, line: 723, baseType: !1151, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !880, file: !26, line: 725, baseType: !2177, size: 64, offset: 2816)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !26, line: 725, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !880, file: !26, line: 726, baseType: !1688, size: 1536, align: 64, offset: 2880)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !880, file: !26, line: 727, baseType: !185, size: 128, offset: 4416)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !26, line: 728, baseType: !2182, size: 64, offset: 4544)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !26, line: 728, size: 64, elements: !2183)
!2183 = !{!2184, !2185, !2188, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2182, file: !26, line: 729, baseType: !2136, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2182, file: !26, line: 730, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !26, line: 730, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2182, file: !26, line: 731, baseType: !733, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2182, file: !26, line: 732, baseType: !7, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !880, file: !26, line: 735, baseType: !115, size: 32, offset: 4608)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !880, file: !26, line: 738, baseType: !115, size: 32, offset: 4640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !880, file: !26, line: 739, baseType: !1548, size: 64, offset: 4672)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !880, file: !26, line: 750, baseType: !84, size: 64, offset: 4736)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !845, file: !846, line: 91, baseType: !2195, size: 256, offset: 448)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !1552)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !845, file: !846, line: 94, baseType: !2197, size: 64, offset: 704)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2198, line: 25, size: 64, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2199 = !{!2200}
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2198, line: 26, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2198, line: 26, size: 64, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2201, file: !2198, line: 28, baseType: !182, size: 64, align: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2198, line: 30, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !2198, line: 30, size: 64, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2205, file: !2198, line: 31, baseType: !473, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2205, file: !2198, line: 32, baseType: !99, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !845, file: !846, line: 95, baseType: !1567, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !845, file: !846, line: 96, baseType: !1092, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !845, file: !846, line: 97, baseType: !92, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !845, file: !846, line: 98, baseType: !84, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 100, baseType: !2214, size: 128, offset: 1024)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 100, size: 128, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2214, file: !846, line: 101, baseType: !185, size: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2214, file: !846, line: 102, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !845, file: !846, line: 104, baseType: !185, size: 128, offset: 1152)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !845, file: !846, line: 105, baseType: !185, size: 128, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !845, file: !846, line: 113, baseType: !2222, size: 128, offset: 1408)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 109, size: 128, elements: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2222, file: !846, line: 110, baseType: !573, size: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2222, file: !846, line: 111, baseType: !855, size: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2222, file: !846, line: 112, baseType: !499, size: 128, align: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !840, file: !841, line: 72, baseType: !1092, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !840, file: !841, line: 73, baseType: !99, size: 32, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !840, file: !841, line: 74, baseType: !919, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !835, file: !836, line: 10, baseType: !844, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !492, file: !26, line: 1015, baseType: !879, size: 64, offset: 1344)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !492, file: !26, line: 1016, baseType: !1989, size: 64, offset: 1408)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !492, file: !26, line: 1018, baseType: !181, size: 64, offset: 1472)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !492, file: !26, line: 1020, baseType: !84, size: 64, offset: 1536)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !492, file: !26, line: 1023, baseType: !84, size: 64, offset: 1600)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !492, file: !26, line: 1027, baseType: !2237, size: 64, offset: 1664)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !492, file: !26, line: 1029, baseType: !1687, size: 64, offset: 1728)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !492, file: !26, line: 1030, baseType: !1644, size: 32, offset: 1792)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !492, file: !26, line: 1031, baseType: !1644, size: 32, offset: 1824)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !459, file: !456, line: 756, baseType: !92, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !459, file: !456, line: 757, baseType: !92, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !459, file: !456, line: 760, baseType: !92, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !459, file: !456, line: 761, baseType: !92, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !459, file: !456, line: 763, baseType: !92, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !459, file: !456, line: 764, baseType: !2247, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2059, line: 299, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2059, line: 299, size: 64, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2249, file: !2059, line: 299, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2064, line: 18, baseType: !92)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !459, file: !456, line: 773, baseType: !126, size: 32, offset: 1088)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !459, file: !456, line: 785, baseType: !126, size: 32, offset: 1120)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !459, file: !456, line: 795, baseType: !2256, size: 64, offset: 1152)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !456, line: 726, size: 128, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2257, file: !456, line: 727, baseType: !181, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2257, file: !456, line: 728, baseType: !99, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !459, file: !456, line: 801, baseType: !92, size: 64, offset: 1216)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !459, file: !456, line: 804, baseType: !512, size: 64, offset: 1280)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !459, file: !456, line: 806, baseType: !99, size: 32, offset: 1344)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !459, file: !456, line: 808, baseType: !473, size: 32, offset: 1376)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !459, file: !456, line: 823, baseType: !660, size: 320, offset: 1408)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !459, file: !456, line: 825, baseType: !185, size: 128, offset: 1728)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !459, file: !456, line: 845, baseType: !99, size: 32, offset: 1856)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !459, file: !456, line: 849, baseType: !92, size: 64, offset: 1920)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !459, file: !456, line: 850, baseType: !92, size: 64, offset: 1984)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !459, file: !456, line: 852, baseType: !92, size: 64, offset: 2048)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !459, file: !456, line: 853, baseType: !92, size: 64, offset: 2112)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !459, file: !456, line: 854, baseType: !514, size: 64, offset: 2176)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !459, file: !456, line: 855, baseType: !92, size: 64, offset: 2240)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !459, file: !456, line: 856, baseType: !92, size: 64, offset: 2304)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !459, file: !456, line: 857, baseType: !92, size: 64, offset: 2368)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !459, file: !456, line: 858, baseType: !92, size: 64, offset: 2432)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !459, file: !456, line: 865, baseType: !335, size: 32, offset: 2496)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !459, file: !456, line: 867, baseType: !473, size: 32, offset: 2528)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !459, file: !456, line: 869, baseType: !92, size: 64, offset: 2560)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !459, file: !456, line: 869, baseType: !92, size: 64, offset: 2624)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !459, file: !456, line: 869, baseType: !92, size: 64, offset: 2688)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !459, file: !456, line: 869, baseType: !92, size: 64, offset: 2752)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !459, file: !456, line: 870, baseType: !92, size: 64, offset: 2816)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !459, file: !456, line: 870, baseType: !92, size: 64, offset: 2880)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !459, file: !456, line: 870, baseType: !92, size: 64, offset: 2944)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !459, file: !456, line: 871, baseType: !92, size: 64, offset: 3008)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !459, file: !456, line: 871, baseType: !92, size: 64, offset: 3072)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !459, file: !456, line: 871, baseType: !92, size: 64, offset: 3136)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !459, file: !456, line: 871, baseType: !92, size: 64, offset: 3200)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !459, file: !456, line: 873, baseType: !2291, size: 3328, offset: 3264)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 3328, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 52)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !459, file: !456, line: 875, baseType: !2295, size: 1280, offset: 6592)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 1280, elements: !578)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !459, file: !456, line: 877, baseType: !2297, size: 64, offset: 7872)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !456, line: 877, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !459, file: !456, line: 880, baseType: !2300, size: 1088, offset: 7936)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2301, line: 72, baseType: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2301, line: 23, size: 1088, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2311, !2312, !2313, !2314, !2318, !2319, !2320}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2302, file: !2301, line: 28, baseType: !181, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2302, file: !2301, line: 38, baseType: !514, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2302, file: !2301, line: 40, baseType: !92, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2302, file: !2301, line: 43, baseType: !660, size: 320, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2302, file: !2301, line: 44, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2301, line: 44, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2302, file: !2301, line: 48, baseType: !92, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2302, file: !2301, line: 59, baseType: !519, size: 256, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2302, file: !2301, line: 60, baseType: !84, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2302, file: !2301, line: 61, baseType: !2315, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2301, line: 61, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2302, file: !2301, line: 63, baseType: !126, size: 32, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2302, file: !2301, line: 69, baseType: !150, size: 16, offset: 1056)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2302, file: !2301, line: 70, baseType: !2321, size: 16, offset: 1072)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !114, line: 18, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !116, line: 23, baseType: !688)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !456, line: 882, baseType: !92, size: 64, offset: 9024)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !459, file: !456, line: 885, baseType: !473, size: 32, offset: 9088)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !459, file: !456, line: 886, baseType: !2326, size: 64, offset: 9152)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !456, line: 732, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !459, file: !456, line: 901, baseType: !806, size: 64, offset: 9216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !459, file: !456, line: 904, baseType: !491, size: 64, offset: 9280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !459, file: !456, line: 906, baseType: !2331, size: 64, offset: 9344)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !456, line: 906, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !459, file: !456, line: 930, baseType: !126, size: 32, offset: 9408)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !459, file: !456, line: 933, baseType: !126, size: 32, offset: 9440)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !459, file: !456, line: 935, baseType: !2336, size: 64, offset: 9472)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !63, line: 103, size: 64, elements: !2337)
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2336, file: !63, line: 104, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !63, line: 101, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !459, file: !456, line: 940, baseType: !512, size: 64, offset: 9536)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !459, file: !456, line: 942, baseType: !1670, size: 256, offset: 9600)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !455, file: !456, line: 986, baseType: !2344, offset: 10240)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !597)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !103, file: !104, line: 882, baseType: !454, size: 64, offset: 9792)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !103, file: !104, line: 884, baseType: !99, size: 32, offset: 9856)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !103, file: !104, line: 885, baseType: !99, size: 32, offset: 9888)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !103, file: !104, line: 886, baseType: !99, size: 32, offset: 9920)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !103, file: !104, line: 888, baseType: !99, size: 32, offset: 9952)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !103, file: !104, line: 890, baseType: !92, size: 64, offset: 9984)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !103, file: !104, line: 893, baseType: !7, size: 32, offset: 10048)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !103, file: !104, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !103, file: !104, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !103, file: !104, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !103, file: !104, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !103, file: !104, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !103, file: !104, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !103, file: !104, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !103, file: !104, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !103, file: !104, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !103, file: !104, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !103, file: !104, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !103, file: !104, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !103, file: !104, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !103, file: !104, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !103, file: !104, line: 969, baseType: !92, size: 64, offset: 10176)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !103, file: !104, line: 971, baseType: !2368, size: 448, offset: 10240)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !57, line: 25, size: 448, elements: !2369)
!2369 = !{!2370, !2371, !2376}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2368, file: !57, line: 26, baseType: !92, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2368, file: !57, line: 27, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!994, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !57, line: 28, baseType: !2377, size: 320, offset: 128)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !57, line: 28, size: 320, elements: !2378)
!2378 = !{!2379, !2389, !2414}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2377, file: !57, line: 37, baseType: !2380, size: 320)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2377, file: !57, line: 30, size: 320, elements: !2381)
!2381 = !{!2382, !2384, !2385, !2386, !2387, !2388}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2380, file: !57, line: 31, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2380, file: !57, line: 32, baseType: !113, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2380, file: !57, line: 33, baseType: !113, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2380, file: !57, line: 34, baseType: !113, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2380, file: !57, line: 35, baseType: !181, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2380, file: !57, line: 36, baseType: !2383, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2377, file: !57, line: 47, baseType: !2390, size: 192)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2377, file: !57, line: 39, size: 192, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2413}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2390, file: !57, line: 40, baseType: !326, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2390, file: !57, line: 41, baseType: !56, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !57, line: 42, baseType: !2395, size: 64, offset: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !57, line: 42, size: 64, elements: !2396)
!2396 = !{!2397, !2405}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2395, file: !57, line: 43, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2400, line: 7, size: 128, elements: !2401)
!2400 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2401 = !{!2402, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2399, file: !2400, line: 8, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !328, line: 93, baseType: !198)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2399, file: !2400, line: 9, baseType: !198, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2395, file: !57, line: 44, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2408, line: 7, size: 64, elements: !2409)
!2408 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2409 = !{!2410, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2407, file: !2408, line: 8, baseType: !2411, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2408, line: 5, baseType: !652)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2407, file: !2408, line: 9, baseType: !652, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2390, file: !57, line: 46, baseType: !181, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2377, file: !57, line: 55, baseType: !2415, size: 256)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2377, file: !57, line: 49, size: 256, elements: !2416)
!2416 = !{!2417, !2420, !2421, !2422, !2423}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2415, file: !57, line: 50, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !57, line: 14, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2415, file: !57, line: 51, baseType: !99, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2415, file: !57, line: 52, baseType: !99, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2415, file: !57, line: 53, baseType: !92, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2415, file: !57, line: 54, baseType: !92, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !103, file: !104, line: 973, baseType: !2425, size: 32, offset: 10688)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 27, baseType: !2426)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !328, line: 28, baseType: !99)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !103, file: !104, line: 974, baseType: !2425, size: 32, offset: 10720)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !103, file: !104, line: 978, baseType: !92, size: 64, offset: 10752)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !103, file: !104, line: 987, baseType: !102, size: 64, offset: 10816)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !104, line: 990, baseType: !102, size: 64, offset: 10880)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !103, file: !104, line: 995, baseType: !185, size: 128, offset: 10944)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !103, file: !104, line: 996, baseType: !185, size: 128, offset: 11072)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !103, file: !104, line: 997, baseType: !102, size: 64, offset: 11200)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !103, file: !104, line: 1005, baseType: !185, size: 128, offset: 11264)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !103, file: !104, line: 1006, baseType: !185, size: 128, offset: 11392)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !103, file: !104, line: 1009, baseType: !561, size: 64, offset: 11520)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !103, file: !104, line: 1010, baseType: !2438, size: 512, offset: 11584)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 512, elements: !578)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !103, file: !104, line: 1011, baseType: !185, size: 128, offset: 12096)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !103, file: !104, line: 1012, baseType: !185, size: 128, offset: 12224)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !103, file: !104, line: 1014, baseType: !2442, size: 64, offset: 12352)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2444, line: 26, size: 256, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2443, file: !2444, line: 27, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2443, file: !2444, line: 28, baseType: !2448, size: 192, offset: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2449, line: 43, size: 192, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2448, file: !2449, line: 44, baseType: !278, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2448, file: !2449, line: 45, baseType: !185, size: 128, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !103, file: !104, line: 1017, baseType: !1195, size: 64, offset: 12416)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !103, file: !104, line: 1020, baseType: !1195, size: 64, offset: 12480)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !103, file: !104, line: 1023, baseType: !84, size: 64, offset: 12544)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !103, file: !104, line: 1025, baseType: !181, size: 64, offset: 12608)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !103, file: !104, line: 1026, baseType: !181, size: 64, offset: 12672)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !103, file: !104, line: 1031, baseType: !181, size: 64, offset: 12736)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !103, file: !104, line: 1032, baseType: !2460, size: 192, offset: 12800)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !104, line: 324, size: 192, elements: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2460, file: !104, line: 326, baseType: !181, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2460, file: !104, line: 327, baseType: !181, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2460, file: !104, line: 328, baseType: !278, size: 32, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !103, file: !104, line: 1041, baseType: !92, size: 64, offset: 12992)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !103, file: !104, line: 1042, baseType: !92, size: 64, offset: 13056)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !103, file: !104, line: 1045, baseType: !181, size: 64, offset: 13120)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !103, file: !104, line: 1048, baseType: !181, size: 64, offset: 13184)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !103, file: !104, line: 1051, baseType: !92, size: 64, offset: 13248)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !103, file: !104, line: 1052, baseType: !92, size: 64, offset: 13312)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !103, file: !104, line: 1055, baseType: !2472, size: 640, offset: 13376)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2473, line: 132, size: 640, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2474 = !{!2475, !2481, !2482}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2472, file: !2473, line: 133, baseType: !2476, size: 576)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 576, elements: !557)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2473, line: 117, size: 192, elements: !2478)
!2478 = !{!2479, !2480}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2477, file: !2473, line: 118, baseType: !181, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2477, file: !2473, line: 119, baseType: !341, size: 128, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2472, file: !2473, line: 134, baseType: !7, size: 32, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2472, file: !2473, line: 135, baseType: !7, size: 32, offset: 608)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !103, file: !104, line: 1058, baseType: !2484, size: 448, offset: 14016)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2473, line: 144, size: 448, elements: !2485)
!2485 = !{!2486, !2487, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2484, file: !2473, line: 145, baseType: !499, size: 128, align: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2484, file: !2473, line: 146, baseType: !519, size: 256, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2484, file: !2473, line: 147, baseType: !7, size: 32, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !103, file: !104, line: 1064, baseType: !611, size: 64, offset: 14464)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !103, file: !104, line: 1067, baseType: !611, size: 64, offset: 14528)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !103, file: !104, line: 1070, baseType: !611, size: 64, offset: 14592)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !103, file: !104, line: 1074, baseType: !644, size: 64, offset: 14656)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !103, file: !104, line: 1084, baseType: !2494, size: 128, offset: 14720)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 128, elements: !1561)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !103, file: !104, line: 1086, baseType: !2496, size: 64, offset: 14848)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !104, line: 55, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !103, file: !104, line: 1089, baseType: !2499, size: 64, offset: 14912)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2500, line: 12, size: 64, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2501 = !{!2502}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2499, file: !2500, line: 13, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2500, line: 8, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !103, file: !104, line: 1090, baseType: !2506, size: 128, offset: 14976)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2507, line: 13, size: 128, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2508 = !{!2509}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2506, file: !2507, line: 14, baseType: !185, size: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !103, file: !104, line: 1097, baseType: !2511, size: 64, offset: 15104)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !104, line: 50, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !103, file: !104, line: 1100, baseType: !2514, size: 64, offset: 15168)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !104, line: 1100, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !103, file: !104, line: 1103, baseType: !2517, size: 64, offset: 15232)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !104, line: 53, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !103, file: !104, line: 1107, baseType: !2520, size: 64, offset: 15296)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2522, line: 31, size: 576, elements: !2523)
!2522 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2523 = !{!2524, !2525, !2528, !2531, !2534, !2535, !2538, !2563, !2564}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2521, file: !2522, line: 32, baseType: !121, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2521, file: !2522, line: 33, baseType: !2526, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2522, line: 9, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2521, file: !2522, line: 34, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2522, line: 10, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2521, file: !2522, line: 35, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2522, line: 8, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2521, file: !2522, line: 36, baseType: !595, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2521, file: !2522, line: 37, baseType: !2536, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !646, line: 34, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2521, file: !2522, line: 38, baseType: !2539, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2541, line: 19, size: 704, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/time_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e4f4316dfa2293dcdad2ed9ce6a78cf")
!2542 = !{!2543, !2544, !2545, !2556, !2561, !2562}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2540, file: !2541, line: 20, baseType: !806, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2540, file: !2541, line: 21, baseType: !809, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2540, file: !2541, line: 22, baseType: !2546, size: 192, offset: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2547, line: 9, size: 192, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2548 = !{!2549, !2550, !2554, !2555}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2546, file: !2547, line: 10, baseType: !512, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2546, file: !2547, line: 11, baseType: !2551, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2553)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2547, line: 7, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2546, file: !2547, line: 12, baseType: !7, size: 32, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2546, file: !2547, line: 13, baseType: !121, size: 32, offset: 160)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !2540, file: !2541, line: 23, baseType: !2557, size: 256, offset: 320)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offsets", file: !2541, line: 14, size: 256, elements: !2558)
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !2557, file: !2541, line: 15, baseType: !990, size: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !2557, file: !2541, line: 16, baseType: !990, size: 128, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "vvar_page", scope: !2540, file: !2541, line: 24, baseType: !1707, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "frozen_offsets", scope: !2540, file: !2541, line: 26, baseType: !720, size: 8, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2521, file: !2522, line: 39, baseType: !2539, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2521, file: !2522, line: 40, baseType: !2565, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2522, line: 12, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !103, file: !104, line: 1110, baseType: !2568, size: 64, offset: 15360)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2570, line: 93, size: 8768, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2621, !2630, !2631, !2633, !2634, !2635, !2638, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2676, !2677, !2684, !2694, !2697, !2698, !2701, !2702, !2703, !2704, !2705, !2706}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2569, file: !2570, line: 94, baseType: !121, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2569, file: !2570, line: 95, baseType: !126, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2569, file: !2570, line: 96, baseType: !99, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2569, file: !2570, line: 97, baseType: !99, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2569, file: !2570, line: 98, baseType: !185, size: 128, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2569, file: !2570, line: 100, baseType: !582, size: 192, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2569, file: !2570, line: 103, baseType: !102, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2569, file: !2570, line: 106, baseType: !2580, size: 192, offset: 512)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !811, line: 32, size: 192, elements: !2581)
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2580, file: !811, line: 33, baseType: !185, size: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2580, file: !811, line: 34, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2585, line: 25, baseType: !2586)
!2585 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2585, line: 23, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2586, file: !2585, line: 24, baseType: !91, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2569, file: !2570, line: 109, baseType: !569, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2569, file: !2570, line: 112, baseType: !99, size: 32, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2569, file: !2570, line: 114, baseType: !99, size: 32, offset: 800)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2569, file: !2570, line: 115, baseType: !102, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2569, file: !2570, line: 118, baseType: !99, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !2570, line: 119, baseType: !7, size: 32, offset: 928)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2569, file: !2570, line: 121, baseType: !2596, size: 64, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2570, line: 80, size: 448, elements: !2598)
!2598 = !{!2599, !2600, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2597, file: !2570, line: 81, baseType: !126, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2597, file: !2570, line: 82, baseType: !2601, size: 128, offset: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2570, line: 75, size: 128, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2601, file: !2570, line: 76, baseType: !102, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2601, file: !2570, line: 77, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2597, file: !2570, line: 83, baseType: !2443, size: 256, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2569, file: !2570, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2569, file: !2570, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2569, file: !2570, line: 138, baseType: !7, size: 32, offset: 1056)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2569, file: !2570, line: 139, baseType: !185, size: 128, offset: 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2569, file: !2570, line: 142, baseType: !253, size: 512, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2569, file: !2570, line: 143, baseType: !261, size: 64, offset: 1728)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2569, file: !2570, line: 150, baseType: !2614, size: 256, offset: 1792)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 256, elements: !2619)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2570, line: 38, size: 128, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2615, file: !2570, line: 39, baseType: !181, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2615, file: !2570, line: 40, baseType: !181, size: 64, offset: 64)
!2619 = !{!2620}
!2620 = !DISubrange(count: 2)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2569, file: !2570, line: 156, baseType: !2622, size: 192, offset: 2048)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2570, line: 66, size: 192, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2622, file: !2570, line: 67, baseType: !2625, size: 192)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2570, line: 47, size: 192, elements: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2625, file: !2570, line: 48, baseType: !514, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2625, file: !2570, line: 49, baseType: !514, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2625, file: !2570, line: 50, baseType: !514, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2569, file: !2570, line: 160, baseType: !2472, size: 640, offset: 2240)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2569, file: !2570, line: 163, baseType: !2632, size: 256, offset: 2880)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !578)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2569, file: !2570, line: 169, baseType: !561, size: 64, offset: 3136)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2569, file: !2570, line: 172, baseType: !99, size: 32, offset: 3200)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2569, file: !2570, line: 174, baseType: !2636, size: 64, offset: 3264)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2570, line: 174, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2569, file: !2570, line: 185, baseType: !2639, size: 64, offset: 3328)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !331, line: 860, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 853, size: 64, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2640, file: !331, line: 858, baseType: !850, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2640, file: !331, line: 859, baseType: !473, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2569, file: !2570, line: 186, baseType: !181, size: 64, offset: 3392)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2569, file: !2570, line: 186, baseType: !181, size: 64, offset: 3456)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2569, file: !2570, line: 186, baseType: !181, size: 64, offset: 3520)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2569, file: !2570, line: 186, baseType: !181, size: 64, offset: 3584)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2569, file: !2570, line: 187, baseType: !181, size: 64, offset: 3648)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2569, file: !2570, line: 188, baseType: !181, size: 64, offset: 3712)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2569, file: !2570, line: 189, baseType: !2460, size: 192, offset: 3776)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2569, file: !2570, line: 190, baseType: !92, size: 64, offset: 3968)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2569, file: !2570, line: 190, baseType: !92, size: 64, offset: 4032)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2569, file: !2570, line: 190, baseType: !92, size: 64, offset: 4096)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2569, file: !2570, line: 190, baseType: !92, size: 64, offset: 4160)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2569, file: !2570, line: 191, baseType: !92, size: 64, offset: 4224)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2569, file: !2570, line: 191, baseType: !92, size: 64, offset: 4288)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2569, file: !2570, line: 191, baseType: !92, size: 64, offset: 4352)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2569, file: !2570, line: 191, baseType: !92, size: 64, offset: 4416)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2569, file: !2570, line: 192, baseType: !92, size: 64, offset: 4480)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2569, file: !2570, line: 192, baseType: !92, size: 64, offset: 4544)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2569, file: !2570, line: 192, baseType: !92, size: 64, offset: 4608)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2569, file: !2570, line: 192, baseType: !92, size: 64, offset: 4672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2569, file: !2570, line: 193, baseType: !92, size: 64, offset: 4736)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2569, file: !2570, line: 193, baseType: !92, size: 64, offset: 4800)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2569, file: !2570, line: 194, baseType: !2666, size: 448, offset: 4864)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2667, line: 12, size: 448, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2666, file: !2667, line: 15, baseType: !181, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2666, file: !2667, line: 17, baseType: !181, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2666, file: !2667, line: 19, baseType: !181, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2666, file: !2667, line: 21, baseType: !181, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2666, file: !2667, line: 29, baseType: !181, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2666, file: !2667, line: 35, baseType: !181, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2666, file: !2667, line: 44, baseType: !181, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2569, file: !2570, line: 202, baseType: !100, size: 64, offset: 5312)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2569, file: !2570, line: 213, baseType: !2678, size: 2048, offset: 5376)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 2048, elements: !1561)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2680, line: 43, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2679, file: !2680, line: 44, baseType: !1038, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2679, file: !2680, line: 45, baseType: !1038, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2569, file: !2570, line: 216, baseType: !2685, size: 448, offset: 7424)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2570, line: 30, size: 448, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2685, file: !2570, line: 31, baseType: !99, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2685, file: !2570, line: 32, baseType: !994, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2685, file: !2570, line: 33, baseType: !92, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2685, file: !2570, line: 34, baseType: !181, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2685, file: !2570, line: 34, baseType: !181, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2685, file: !2570, line: 35, baseType: !92, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2685, file: !2570, line: 35, baseType: !92, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2569, file: !2570, line: 219, baseType: !2695, size: 64, offset: 7872)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2570, line: 219, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2569, file: !2570, line: 222, baseType: !7, size: 32, offset: 7936)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2569, file: !2570, line: 223, baseType: !2699, size: 64, offset: 8000)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2570, line: 223, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2569, file: !2570, line: 230, baseType: !720, size: 8, offset: 8064)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2569, file: !2570, line: 231, baseType: !688, size: 16, offset: 8080)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2569, file: !2570, line: 232, baseType: !688, size: 16, offset: 8096)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2569, file: !2570, line: 234, baseType: !454, size: 64, offset: 8128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2569, file: !2570, line: 237, baseType: !519, size: 256, offset: 8192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2569, file: !2570, line: 243, baseType: !660, size: 320, offset: 8448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !103, file: !104, line: 1111, baseType: !2708, size: 64, offset: 15424)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2570, line: 20, size: 16640, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2709, file: !2570, line: 21, baseType: !473, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2709, file: !2570, line: 22, baseType: !121, size: 32, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2709, file: !2570, line: 23, baseType: !582, size: 192, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2709, file: !2570, line: 24, baseType: !2715, size: 16384, offset: 256)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2716, size: 16384, elements: !2736)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !811, line: 51, size: 256, elements: !2717)
!2717 = !{!2718}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2716, file: !811, line: 52, baseType: !2719, size: 256)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !811, line: 37, size: 256, elements: !2720)
!2720 = !{!2721, !2728, !2729, !2735}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2719, file: !811, line: 39, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2723, line: 83, baseType: !2724)
!2723 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2723, line: 82, baseType: !2726)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !99}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2719, file: !811, line: 40, baseType: !92, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2719, file: !811, line: 46, baseType: !2730, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2723, line: 86, baseType: !2731)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2723, line: 85, baseType: !2733)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{null}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2719, file: !811, line: 48, baseType: !2584, size: 64, offset: 192)
!2736 = !{!2737}
!2737 = !DISubrange(count: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !103, file: !104, line: 1112, baseType: !2584, size: 64, offset: 15488)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !103, file: !104, line: 1113, baseType: !2584, size: 64, offset: 15552)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !103, file: !104, line: 1115, baseType: !2584, size: 64, offset: 15616)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !103, file: !104, line: 1116, baseType: !2580, size: 192, offset: 15680)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !103, file: !104, line: 1117, baseType: !92, size: 64, offset: 15872)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !103, file: !104, line: 1118, baseType: !1036, size: 64, offset: 15936)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !103, file: !104, line: 1119, baseType: !7, size: 32, offset: 16000)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !103, file: !104, line: 1121, baseType: !502, size: 64, offset: 16064)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !103, file: !104, line: 1125, baseType: !2747, size: 64, offset: 16128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !104, line: 43, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !103, file: !104, line: 1127, baseType: !601, size: 32, offset: 16192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !103, file: !104, line: 1128, baseType: !7, size: 32, offset: 16224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !103, file: !104, line: 1130, baseType: !2752, size: 128, offset: 16256)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2753, line: 37, size: 128, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2752, file: !2753, line: 38, baseType: !99, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2752, file: !2753, line: 39, baseType: !126, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2752, file: !2753, line: 40, baseType: !2758, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2753, line: 24, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !103, file: !104, line: 1131, baseType: !2761, size: 256, offset: 16384)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2762, line: 12, size: 256, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2761, file: !2762, line: 13, baseType: !733, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2761, file: !2762, line: 14, baseType: !92, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2761, file: !2762, line: 15, baseType: !92, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2761, file: !2762, line: 16, baseType: !720, size: 8, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !103, file: !104, line: 1134, baseType: !181, size: 64, offset: 16640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !103, file: !104, line: 1135, baseType: !181, size: 64, offset: 16704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !103, file: !104, line: 1138, baseType: !473, size: 32, offset: 16768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !103, file: !104, line: 1141, baseType: !278, size: 32, offset: 16800)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !103, file: !104, line: 1143, baseType: !2773, size: 64, offset: 16832)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !104, line: 735, size: 64, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2773, file: !104, line: 736, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !103, file: !104, line: 1147, baseType: !344, size: 128, offset: 16896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !103, file: !104, line: 1149, baseType: !102, size: 64, offset: 17024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !103, file: !104, line: 1151, baseType: !2780, size: 64, offset: 17088)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !104, line: 1151, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !103, file: !104, line: 1188, baseType: !84, size: 64, offset: 17152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !103, file: !104, line: 1191, baseType: !2784, size: 64, offset: 17216)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !104, line: 44, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !103, file: !104, line: 1194, baseType: !2787, size: 64, offset: 17280)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !104, line: 45, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !103, file: !104, line: 1197, baseType: !2790, size: 64, offset: 17344)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !104, line: 61, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !103, file: !104, line: 1199, baseType: !2793, size: 64, offset: 17408)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2795, line: 99, size: 128, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2794, file: !2795, line: 100, baseType: !512, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2794, file: !2795, line: 101, baseType: !126, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2794, file: !2795, line: 103, baseType: !152, size: 16, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !103, file: !104, line: 1202, baseType: !2801, size: 64, offset: 17472)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !104, line: 48, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !103, file: !104, line: 1205, baseType: !92, size: 64, offset: 17536)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !103, file: !104, line: 1206, baseType: !2805, size: 64, offset: 17600)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !811, line: 14, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !811, line: 12, size: 384, elements: !2808)
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2807, file: !811, line: 13, baseType: !2810, size: 384)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !811, line: 13, size: 384, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2810, file: !811, line: 13, baseType: !99, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2810, file: !811, line: 13, baseType: !99, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2810, file: !811, line: 13, baseType: !99, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2810, file: !811, line: 13, baseType: !2816, size: 256, offset: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2817, line: 37, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2818 = !{!2819, !2824, !2837, !2843, !2852, !2879, !2884}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2816, file: !2817, line: 42, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 39, size: 64, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2820, file: !2817, line: 40, baseType: !2426, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2820, file: !2817, line: 41, baseType: !607, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2816, file: !2817, line: 50, baseType: !2825, size: 192)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 45, size: 192, elements: !2826)
!2826 = !{!2827, !2829, !2830, !2836}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2825, file: !2817, line: 46, baseType: !2828, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !328, line: 95, baseType: !99)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2825, file: !2817, line: 47, baseType: !99, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2825, file: !2817, line: 48, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2817, line: 11, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2817, line: 8, size: 64, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2832, file: !2817, line: 9, baseType: !99, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2832, file: !2817, line: 10, baseType: !84, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2825, file: !2817, line: 49, baseType: !99, size: 32, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2816, file: !2817, line: 57, baseType: !2838, size: 128)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 53, size: 128, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2838, file: !2817, line: 54, baseType: !2426, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2838, file: !2817, line: 55, baseType: !607, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2838, file: !2817, line: 56, baseType: !2831, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2816, file: !2817, line: 66, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 60, size: 256, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2851}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2844, file: !2817, line: 61, baseType: !2426, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2844, file: !2817, line: 62, baseType: !607, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2844, file: !2817, line: 63, baseType: !99, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2844, file: !2817, line: 64, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !328, line: 94, baseType: !1035)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2844, file: !2817, line: 65, baseType: !2850, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2816, file: !2817, line: 105, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 69, size: 256, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2853, file: !2817, line: 70, baseType: !84, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !2817, line: 79, baseType: !2857, size: 192, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2853, file: !2817, line: 79, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2868, !2873}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2857, file: !2817, line: 81, baseType: !99, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2857, file: !2817, line: 86, baseType: !688, size: 16)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2857, file: !2817, line: 92, baseType: !2862, size: 192)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 88, size: 192, elements: !2863)
!2863 = !{!2864, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2862, file: !2817, line: 89, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 64, elements: !322)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2862, file: !2817, line: 90, baseType: !84, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2862, file: !2817, line: 91, baseType: !84, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2857, file: !2817, line: 97, baseType: !2869, size: 96)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 94, size: 96, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2869, file: !2817, line: 95, baseType: !2865, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2869, file: !2817, line: 96, baseType: !115, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2857, file: !2817, line: 103, baseType: !2874, size: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 99, size: 128, elements: !2875)
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2874, file: !2817, line: 100, baseType: !92, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2874, file: !2817, line: 101, baseType: !115, size: 32, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2874, file: !2817, line: 102, baseType: !115, size: 32, offset: 96)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2816, file: !2817, line: 111, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 108, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2880, file: !2817, line: 109, baseType: !994, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2880, file: !2817, line: 110, baseType: !99, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2816, file: !2817, line: 118, baseType: !2885, size: 128)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 114, size: 128, elements: !2886)
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2885, file: !2817, line: 115, baseType: !84, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2885, file: !2817, line: 116, baseType: !99, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2885, file: !2817, line: 117, baseType: !7, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !103, file: !104, line: 1208, baseType: !2666, size: 448, offset: 17664)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !103, file: !104, line: 1215, baseType: !181, size: 64, offset: 18112)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !103, file: !104, line: 1217, baseType: !181, size: 64, offset: 18176)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !103, file: !104, line: 1219, baseType: !181, size: 64, offset: 18240)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !103, file: !104, line: 1223, baseType: !2895, size: 64, offset: 18304)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2896, line: 99, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 99, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2897, file: !2896, line: 99, baseType: !91, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !103, file: !104, line: 1225, baseType: !850, size: 32, offset: 18368)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !103, file: !104, line: 1226, baseType: !99, size: 32, offset: 18400)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !103, file: !104, line: 1227, baseType: !99, size: 32, offset: 18432)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !103, file: !104, line: 1231, baseType: !2904, size: 64, offset: 18496)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !104, line: 1231, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !103, file: !104, line: 1233, baseType: !185, size: 128, offset: 18560)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !103, file: !104, line: 1240, baseType: !2908, size: 64, offset: 18688)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !104, line: 62, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !103, file: !104, line: 1242, baseType: !2911, size: 64, offset: 18752)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !104, line: 1242, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !103, file: !104, line: 1244, baseType: !185, size: 128, offset: 18816)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !103, file: !104, line: 1245, baseType: !2915, size: 64, offset: 18944)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !104, line: 51, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !103, file: !104, line: 1246, baseType: !519, size: 256, offset: 19008)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !103, file: !104, line: 1247, baseType: !7, size: 32, offset: 19264)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !103, file: !104, line: 1250, baseType: !2920, size: 64, offset: 19328)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !104, line: 57, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !103, file: !104, line: 1251, baseType: !519, size: 256, offset: 19392)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !103, file: !104, line: 1252, baseType: !185, size: 128, offset: 19648)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !103, file: !104, line: 1259, baseType: !2097, size: 64, offset: 19776)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !103, file: !104, line: 1260, baseType: !688, size: 16, offset: 19840)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !103, file: !104, line: 1261, baseType: !688, size: 16, offset: 19856)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !103, file: !104, line: 1314, baseType: !2928, size: 64, offset: 19904)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2930, line: 62, size: 256, align: 256, elements: !2931)
!2930 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2929, file: !2930, line: 75, baseType: !115, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2929, file: !2930, line: 90, baseType: !115, size: 32, offset: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2929, file: !2930, line: 112, baseType: !182, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2929, file: !2930, line: 132, baseType: !115, size: 32, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2929, file: !2930, line: 140, baseType: !115, size: 32, offset: 160)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2929, file: !2930, line: 149, baseType: !115, size: 32, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2929, file: !2930, line: 154, baseType: !2939, offset: 224)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !597)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !103, file: !104, line: 1315, baseType: !113, size: 32, offset: 19968)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !103, file: !104, line: 1316, baseType: !113, size: 32, offset: 20000)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !103, file: !104, line: 1321, baseType: !92, size: 64, offset: 20032)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !103, file: !104, line: 1325, baseType: !99, size: 32, offset: 20096)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !103, file: !104, line: 1326, baseType: !99, size: 32, offset: 20128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !103, file: !104, line: 1327, baseType: !99, size: 32, offset: 20160)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !103, file: !104, line: 1328, baseType: !99, size: 32, offset: 20192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !103, file: !104, line: 1329, baseType: !499, size: 128, align: 64, offset: 20224)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !103, file: !104, line: 1332, baseType: !2949, size: 128, offset: 20352)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2950, line: 51, size: 128, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2951 = !{!2952, !2957, !2958}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2949, file: !2950, line: 60, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2954, line: 7, size: 64, elements: !2955)
!2954 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2953, file: !2954, line: 12, baseType: !87, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2949, file: !2950, line: 63, baseType: !720, size: 8, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2949, file: !2950, line: 70, baseType: !720, size: 8, offset: 72)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !103, file: !104, line: 1335, baseType: !2136, size: 64, offset: 20480)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !103, file: !104, line: 1337, baseType: !2961, size: 128, offset: 20544)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2950, line: 39, size: 128, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2961, file: !2950, line: 40, baseType: !1707, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2961, file: !2950, line: 42, baseType: !115, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2961, file: !2950, line: 43, baseType: !115, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !103, file: !104, line: 1340, baseType: !2967, size: 64, offset: 20672)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !104, line: 69, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !103, file: !104, line: 1351, baseType: !99, size: 32, offset: 20736)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !103, file: !104, line: 1352, baseType: !99, size: 32, offset: 20768)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !103, file: !104, line: 1354, baseType: !92, size: 64, offset: 20800)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !103, file: !104, line: 1364, baseType: !181, size: 64, offset: 20864)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !103, file: !104, line: 1365, baseType: !181, size: 64, offset: 20928)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !103, file: !104, line: 1412, baseType: !92, size: 64, offset: 20992)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !103, file: !104, line: 1453, baseType: !2976, size: 64, offset: 21056)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !104, line: 1453, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !103, file: !104, line: 1457, baseType: !2979, size: 64, offset: 21120)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !63, line: 61, size: 576, elements: !2981)
!2981 = !{!2982, !2983, !3002, !3005, !3006, !3039, !3049}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2980, file: !63, line: 62, baseType: !62, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !63, line: 64, baseType: !2984, size: 192, offset: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !63, line: 64, size: 192, elements: !2985)
!2985 = !{!2986, !2997}
!2986 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !63, line: 65, baseType: !2987, size: 192)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !63, line: 65, size: 192, elements: !2988)
!2988 = !{!2989, !2996}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2987, file: !63, line: 66, baseType: !2990, size: 128)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2991, line: 50, size: 128, elements: !2992)
!2991 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2992 = !{!2993, !2994, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2990, file: !2991, line: 52, baseType: !92, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2990, file: !2991, line: 54, baseType: !7, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2990, file: !2991, line: 55, baseType: !7, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2987, file: !63, line: 67, baseType: !92, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !63, line: 70, baseType: !2998, size: 192)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !63, line: 70, size: 192, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2998, file: !63, line: 71, baseType: !499, size: 128, align: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2998, file: !63, line: 72, baseType: !92, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2980, file: !63, line: 76, baseType: !3003, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !63, line: 76, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2980, file: !63, line: 77, baseType: !92, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2980, file: !63, line: 79, baseType: !3007, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2991, line: 25, size: 256, elements: !3009)
!3009 = !{!3010, !3016, !3020}
!3010 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !2991, line: 26, baseType: !3011, size: 128)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !2991, line: 26, size: 128, elements: !3012)
!3012 = !{!3013, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3011, file: !2991, line: 27, baseType: !3014, size: 128)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !1561)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3011, file: !2991, line: 28, baseType: !3014, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3008, file: !2991, line: 31, baseType: !3017, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2991, line: 23, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !2991, line: 33, baseType: !3021, size: 64, offset: 192)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !2991, line: 33, size: 64, elements: !3022)
!3022 = !{!3023, !3029, !3034}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3021, file: !2991, line: 38, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !2991, line: 34, size: 64, elements: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3024, file: !2991, line: 35, baseType: !652, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3024, file: !2991, line: 36, baseType: !295, size: 8, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3024, file: !2991, line: 37, baseType: !295, size: 8, offset: 40)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3021, file: !2991, line: 42, baseType: !3030, size: 16)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !2991, line: 39, size: 16, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3030, file: !2991, line: 40, baseType: !295, size: 8)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3030, file: !2991, line: 41, baseType: !295, size: 8, offset: 8)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3021, file: !2991, line: 46, baseType: !3035, size: 16)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !2991, line: 43, size: 16, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3035, file: !2991, line: 44, baseType: !295, size: 8)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3035, file: !2991, line: 45, baseType: !295, size: 8, offset: 8)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2980, file: !63, line: 81, baseType: !3040, size: 64, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !63, line: 85, size: 384, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3041, file: !63, line: 86, baseType: !3003, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3041, file: !63, line: 87, baseType: !92, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3041, file: !63, line: 88, baseType: !92, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3041, file: !63, line: 89, baseType: !92, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3041, file: !63, line: 90, baseType: !720, size: 8, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3041, file: !63, line: 92, baseType: !3040, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2980, file: !63, line: 82, baseType: !7, size: 32, offset: 512)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !103, file: !104, line: 1463, baseType: !3051, offset: 21184)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !104, line: 739, elements: !484)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !103, file: !104, line: 1470, baseType: !499, size: 128, align: 64, offset: 21184)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !103, file: !104, line: 1471, baseType: !121, size: 32, offset: 21312)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !103, file: !104, line: 1472, baseType: !99, size: 32, offset: 21344)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !103, file: !104, line: 1474, baseType: !102, size: 64, offset: 21376)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !103, file: !104, line: 1475, baseType: !3057, size: 320, offset: 21440)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3058, line: 11, size: 320, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3059 = !{!3060, !3061, !3062, !3067}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3057, file: !3058, line: 16, baseType: !573, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3057, file: !3058, line: 17, baseType: !92, size: 64, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3057, file: !3058, line: 18, baseType: !3063, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !3058, line: 19, baseType: !113, size: 32, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !103, file: !104, line: 1478, baseType: !3069, size: 64, offset: 21760)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3071, line: 49, size: 512, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3082}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3070, file: !3071, line: 50, baseType: !3069, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3070, file: !3071, line: 51, baseType: !84, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3070, file: !3071, line: 52, baseType: !92, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !3071, line: 53, baseType: !92, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3070, file: !3071, line: 54, baseType: !1855, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3070, file: !3071, line: 56, baseType: !7, size: 32, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3070, file: !3071, line: 58, baseType: !7, size: 32, offset: 352)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3070, file: !3071, line: 59, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !127, line: 159, baseType: !181)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3070, file: !3071, line: 60, baseType: !3083, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !103, file: !104, line: 1482, baseType: !121, size: 32, offset: 21824)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !103, file: !104, line: 1489, baseType: !84, size: 64, offset: 21888)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !103, file: !104, line: 1504, baseType: !84, size: 64, offset: 21952)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !103, file: !104, line: 1505, baseType: !182, size: 64, offset: 22016)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !103, file: !104, line: 1506, baseType: !181, size: 64, offset: 22080)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !103, file: !104, line: 1507, baseType: !182, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !103, file: !104, line: 1508, baseType: !182, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !103, file: !104, line: 1509, baseType: !182, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !103, file: !104, line: 1510, baseType: !499, size: 128, align: 64, offset: 22208)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !103, file: !104, line: 1511, baseType: !99, size: 32, offset: 22336)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !103, file: !104, line: 1515, baseType: !3096, size: 64, offset: 22400)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !140, line: 56, size: 64, elements: !3097)
!3097 = !{!3098}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3096, file: !140, line: 57, baseType: !143, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !103, file: !104, line: 1518, baseType: !3096, size: 64, offset: 22464)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !103, file: !104, line: 1528, baseType: !499, size: 128, align: 64, offset: 22528)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !103, file: !104, line: 1552, baseType: !3102, size: 35328, offset: 23040)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3103, line: 430, size: 35328, elements: !3104)
!3103 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3104 = !{!3105, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3134, !3135, !3136, !3137, !3138, !3139, !3142, !3143, !3144, !3145}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3102, file: !3103, line: 432, baseType: !3106, size: 192)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3107, size: 192, elements: !557)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3108, line: 16, size: 64, elements: !3109)
!3108 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3107, file: !3108, line: 17, baseType: !150, size: 16)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3107, file: !3108, line: 18, baseType: !150, size: 16, offset: 16)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3107, file: !3108, line: 19, baseType: !150, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3107, file: !3108, line: 19, baseType: !150, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3107, file: !3108, line: 19, baseType: !150, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3107, file: !3108, line: 19, baseType: !150, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3107, file: !3108, line: 19, baseType: !150, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3107, file: !3108, line: 20, baseType: !150, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3107, file: !3108, line: 20, baseType: !150, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3107, file: !3108, line: 20, baseType: !150, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3107, file: !3108, line: 20, baseType: !150, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3107, file: !3108, line: 20, baseType: !150, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3107, file: !3108, line: 20, baseType: !150, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3102, file: !3103, line: 436, baseType: !92, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3102, file: !3103, line: 440, baseType: !152, size: 16, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3102, file: !3103, line: 441, baseType: !152, size: 16, offset: 272)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3102, file: !3103, line: 442, baseType: !152, size: 16, offset: 288)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3102, file: !3103, line: 443, baseType: !152, size: 16, offset: 304)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3102, file: !3103, line: 447, baseType: !92, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3102, file: !3103, line: 448, baseType: !92, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3102, file: !3103, line: 459, baseType: !3131, size: 256, offset: 448)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3132, size: 256, elements: !578)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3103, line: 428, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3102, file: !3103, line: 461, baseType: !92, size: 64, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3102, file: !3103, line: 463, baseType: !92, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3102, file: !3103, line: 465, baseType: !92, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3102, file: !3103, line: 466, baseType: !92, size: 64, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3102, file: !3103, line: 467, baseType: !92, size: 64, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3102, file: !3103, line: 473, baseType: !3140, size: 64, offset: 1024)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3103, line: 10, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3102, file: !3103, line: 480, baseType: !92, size: 64, offset: 1088)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3102, file: !3103, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3102, file: !3103, line: 491, baseType: !113, size: 32, offset: 1184)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3102, file: !3103, line: 501, baseType: !3146, size: 33792, offset: 1536)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3147, line: 448, size: 33792, elements: !3148)
!3147 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3148 = !{!3149, !3150, !3151, !3313, !3314, !3320, !3321}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3146, file: !3147, line: 461, baseType: !7, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3146, file: !3147, line: 468, baseType: !92, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3146, file: !3147, line: 476, baseType: !3152, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3147, line: 356, size: 33280, align: 512, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3153, file: !3147, line: 358, baseType: !7, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3153, file: !3147, line: 361, baseType: !7, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3153, file: !3147, line: 364, baseType: !181, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3153, file: !3147, line: 367, baseType: !181, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3153, file: !3147, line: 370, baseType: !181, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3153, file: !3147, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3153, file: !3147, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3153, file: !3147, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3153, file: !3147, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3153, file: !3147, line: 397, baseType: !3165, size: 32768, offset: 512)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3147, line: 348, size: 32768, elements: !3166)
!3166 = !{!3167, !3182, !3219, !3296, !3309}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3165, file: !3147, line: 349, baseType: !3168, size: 896)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3147, line: 12, size: 896, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3181}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3168, file: !3147, line: 13, baseType: !113, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3168, file: !3147, line: 14, baseType: !113, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3168, file: !3147, line: 15, baseType: !113, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3168, file: !3147, line: 16, baseType: !113, size: 32, offset: 96)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3168, file: !3147, line: 17, baseType: !113, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3168, file: !3147, line: 18, baseType: !113, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3168, file: !3147, line: 19, baseType: !113, size: 32, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3168, file: !3147, line: 22, baseType: !3178, size: 640, offset: 224)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !3179)
!3179 = !{!3180}
!3180 = !DISubrange(count: 20)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3168, file: !3147, line: 25, baseType: !113, size: 32, offset: 864)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3165, file: !3147, line: 350, baseType: !3183, size: 4096, align: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3147, line: 34, size: 4096, align: 128, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3204, !3205, !3206, !3208, !3210, !3214}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3183, file: !3147, line: 35, baseType: !150, size: 16)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3183, file: !3147, line: 36, baseType: !150, size: 16, offset: 16)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3183, file: !3147, line: 37, baseType: !150, size: 16, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3183, file: !3147, line: 38, baseType: !150, size: 16, offset: 48)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3147, line: 39, baseType: !3190, size: 128, offset: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3147, line: 39, size: 128, elements: !3191)
!3191 = !{!3192, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !3147, line: 40, baseType: !3193, size: 128)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !3147, line: 40, size: 128, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3193, file: !3147, line: 41, baseType: !181, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3193, file: !3147, line: 42, baseType: !181, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !3147, line: 44, baseType: !3198, size: 128)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !3147, line: 44, size: 128, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3198, file: !3147, line: 45, baseType: !113, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3198, file: !3147, line: 46, baseType: !113, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3198, file: !3147, line: 47, baseType: !113, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3198, file: !3147, line: 48, baseType: !113, size: 32, offset: 96)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3183, file: !3147, line: 51, baseType: !113, size: 32, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3183, file: !3147, line: 52, baseType: !113, size: 32, offset: 224)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3183, file: !3147, line: 55, baseType: !3207, size: 1024, offset: 256)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1024, elements: !1552)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3183, file: !3147, line: 58, baseType: !3209, size: 2048, offset: 1280)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2048, elements: !2736)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3183, file: !3147, line: 60, baseType: !3211, size: 384, offset: 3328)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 384, elements: !3212)
!3212 = !{!3213}
!3213 = !DISubrange(count: 12)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3147, line: 62, baseType: !3215, size: 384, offset: 3712)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3147, line: 62, size: 384, elements: !3216)
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3215, file: !3147, line: 63, baseType: !3211, size: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3215, file: !3147, line: 64, baseType: !3211, size: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3165, file: !3147, line: 351, baseType: !3220, size: 1088)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3147, line: 79, size: 1088, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3295}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3220, file: !3147, line: 80, baseType: !113, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3220, file: !3147, line: 81, baseType: !113, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3220, file: !3147, line: 82, baseType: !113, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3220, file: !3147, line: 83, baseType: !113, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3220, file: !3147, line: 84, baseType: !113, size: 32, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3220, file: !3147, line: 85, baseType: !113, size: 32, offset: 160)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3220, file: !3147, line: 86, baseType: !113, size: 32, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3220, file: !3147, line: 88, baseType: !3178, size: 640, offset: 224)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3220, file: !3147, line: 89, baseType: !295, size: 8, offset: 864)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3220, file: !3147, line: 90, baseType: !295, size: 8, offset: 872)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3220, file: !3147, line: 91, baseType: !295, size: 8, offset: 880)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3220, file: !3147, line: 92, baseType: !295, size: 8, offset: 888)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3220, file: !3147, line: 93, baseType: !295, size: 8, offset: 896)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3220, file: !3147, line: 94, baseType: !295, size: 8, offset: 904)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3220, file: !3147, line: 95, baseType: !3237, size: 64, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3239, line: 11, size: 128, elements: !3240)
!3239 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3238, file: !3239, line: 12, baseType: !994, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3238, file: !3239, line: 13, baseType: !3243, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3245, line: 103, size: 1344, elements: !3246)
!3245 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3275, !3276, !3277}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3244, file: !3245, line: 109, baseType: !92, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3244, file: !3245, line: 110, baseType: !92, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3244, file: !3245, line: 111, baseType: !92, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3244, file: !3245, line: 112, baseType: !92, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3244, file: !3245, line: 113, baseType: !92, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3244, file: !3245, line: 114, baseType: !92, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3244, file: !3245, line: 117, baseType: !92, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3244, file: !3245, line: 118, baseType: !92, size: 64, offset: 448)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3244, file: !3245, line: 119, baseType: !92, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3244, file: !3245, line: 120, baseType: !92, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3244, file: !3245, line: 121, baseType: !92, size: 64, offset: 640)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3244, file: !3245, line: 122, baseType: !92, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3244, file: !3245, line: 123, baseType: !92, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3244, file: !3245, line: 124, baseType: !92, size: 64, offset: 832)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3244, file: !3245, line: 125, baseType: !92, size: 64, offset: 896)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3244, file: !3245, line: 139, baseType: !92, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3244, file: !3245, line: 142, baseType: !92, size: 64, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !3245, line: 144, baseType: !3265, size: 64, offset: 1088)
!3265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3244, file: !3245, line: 144, size: 64, elements: !3266)
!3266 = !{!3267, !3268, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3265, file: !3245, line: 146, baseType: !150, size: 16)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3265, file: !3245, line: 148, baseType: !181, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3265, file: !3245, line: 150, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3245, line: 59, size: 64, elements: !3271)
!3271 = !{!3272, !3273, !3274}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3270, file: !3245, line: 61, baseType: !181, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3270, file: !3245, line: 63, baseType: !181, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3270, file: !3245, line: 65, baseType: !181, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !3245, line: 153, baseType: !92, size: 64, offset: 1152)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3244, file: !3245, line: 154, baseType: !92, size: 64, offset: 1216)
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !3245, line: 156, baseType: !3278, size: 64, offset: 1280)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3244, file: !3245, line: 156, size: 64, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3278, file: !3245, line: 158, baseType: !150, size: 16)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3278, file: !3245, line: 160, baseType: !181, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3278, file: !3245, line: 162, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3245, line: 69, size: 64, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3283, file: !3245, line: 71, baseType: !181, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3283, file: !3245, line: 73, baseType: !181, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3283, file: !3245, line: 75, baseType: !181, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3283, file: !3245, line: 77, baseType: !181, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3283, file: !3245, line: 80, baseType: !181, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3283, file: !3245, line: 83, baseType: !181, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3283, file: !3245, line: 86, baseType: !181, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3283, file: !3245, line: 88, baseType: !181, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3283, file: !3245, line: 93, baseType: !181, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3283, file: !3245, line: 100, baseType: !181, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3220, file: !3147, line: 96, baseType: !113, size: 32, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3165, file: !3147, line: 352, baseType: !3297, size: 4608, align: 512)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3147, line: 333, size: 4608, align: 512, elements: !3298)
!3298 = !{!3299, !3300, !3307}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3297, file: !3147, line: 334, baseType: !3183, size: 4096, align: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3297, file: !3147, line: 335, baseType: !3301, size: 512, offset: 4096)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3147, line: 312, size: 512, elements: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3301, file: !3147, line: 313, baseType: !181, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3301, file: !3147, line: 314, baseType: !181, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3301, file: !3147, line: 315, baseType: !3306, size: 384, offset: 128)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 384, elements: !707)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3297, file: !3147, line: 336, baseType: !3308, offset: 4608)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !597)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3165, file: !3147, line: 353, baseType: !3310, size: 32768)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 32768, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 4096)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3146, file: !3147, line: 484, baseType: !3152, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3146, file: !3147, line: 491, baseType: !3315, size: 128, offset: 256)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3147, line: 404, size: 128, elements: !3316)
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3315, file: !3147, line: 424, baseType: !181, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3315, file: !3147, line: 432, baseType: !7, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3315, file: !3147, line: 440, baseType: !7, size: 32, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3146, file: !3147, line: 498, baseType: !3315, size: 128, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3146, file: !3147, line: 508, baseType: !3153, size: 33280, align: 512, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cpustat", file: !6, line: 37, size: 640, elements: !3324)
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cpustat", scope: !3323, file: !6, line: 38, baseType: !3326, size: 640)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 640, elements: !3327)
!3327 = !{!3328}
!3328 = !DISubrange(count: 10)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_stat", file: !6, line: 41, size: 384, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_sum", scope: !3330, file: !6, line: 42, baseType: !92, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "softirqs", scope: !3330, file: !6, line: 43, baseType: !3334, size: 320, offset: 64)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !3327)
!3335 = !{!0, !3336, !3341, !3359, !3361, !3364, !3366, !3368, !3373, !3378}
!3336 = !DIGlobalVariableExpression(var: !3337, expr: !DIExpression())
!3337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !3338, isLocal: true, isDefinition: true)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 40, elements: !3339)
!3339 = !{!3340}
!3340 = !DISubrange(count: 5)
!3341 = !DIGlobalVariableExpression(var: !3342, expr: !DIExpression())
!3342 = distinct !DIGlobalVariable(name: "stat_proc_ops", scope: !2, file: !3, line: 203, type: !3343, isLocal: true, isDefinition: true)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3344)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !3345, line: 29, size: 768, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !3344, file: !3345, line: 30, baseType: !7, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !3344, file: !3345, line: 31, baseType: !2103, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !3344, file: !3345, line: 32, baseType: !1999, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !3344, file: !3345, line: 33, baseType: !1879, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !3344, file: !3345, line: 34, baseType: !2003, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !3344, file: !3345, line: 36, baseType: !1995, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !3344, file: !3345, line: 37, baseType: !2103, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !3344, file: !3345, line: 38, baseType: !2028, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !3344, file: !3345, line: 39, baseType: !2036, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !3344, file: !3345, line: 41, baseType: !2036, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !3344, file: !3345, line: 43, baseType: !2041, size: 64, offset: 640)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !3344, file: !3345, line: 44, baseType: !488, size: 64, offset: 704)
!3359 = !DIGlobalVariableExpression(var: !3360, expr: !DIExpression())
!3360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !705, isLocal: true, isDefinition: true)
!3361 = !DIGlobalVariableExpression(var: !3362, expr: !DIExpression())
!3362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !3363, isLocal: true, isDefinition: true)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 16, elements: !2619)
!3364 = !DIGlobalVariableExpression(var: !3365, expr: !DIExpression())
!3365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !705, isLocal: true, isDefinition: true)
!3366 = !DIGlobalVariableExpression(var: !3367, expr: !DIExpression())
!3367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !705, isLocal: true, isDefinition: true)
!3368 = !DIGlobalVariableExpression(var: !3369, expr: !DIExpression())
!3369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !3370, isLocal: true, isDefinition: true)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 568, elements: !3371)
!3371 = !{!3372}
!3372 = !DISubrange(count: 71)
!3373 = !DIGlobalVariableExpression(var: !3374, expr: !DIExpression())
!3374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !3375, isLocal: true, isDefinition: true)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 72, elements: !3376)
!3376 = !{!3377}
!3377 = !DISubrange(count: 9)
!3378 = !DIGlobalVariableExpression(var: !3379, expr: !DIExpression())
!3379 = distinct !DIGlobalVariable(name: "zeros", scope: !3380, file: !3, line: 59, type: !3391, isLocal: true, isDefinition: true)
!3380 = distinct !DISubprogram(name: "show_irq_gap", scope: !3, file: !3, line: 57, type: !3381, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !1201, !7}
!3383 = !{!3384, !3385, !3386, !3388, !3390}
!3384 = !DILocalVariable(name: "p", arg: 1, scope: !3380, file: !3, line: 57, type: !1201)
!3385 = !DILocalVariable(name: "gap", arg: 2, scope: !3380, file: !3, line: 57, type: !7)
!3386 = !DILocalVariable(name: "inc", scope: !3387, file: !3, line: 62, type: !7)
!3387 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 61, column: 18)
!3388 = !DILocalVariable(name: "__UNIQUE_ID___x257", scope: !3389, file: !3, line: 64, type: !7)
!3389 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 64, column: 9)
!3390 = !DILocalVariable(name: "__UNIQUE_ID___y258", scope: !3389, file: !3, line: 64, type: !7)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 264, elements: !3392)
!3392 = !{!3393}
!3393 = !DISubrange(count: 33)
!3394 = !{i32 7, !"Dwarf Version", i32 5}
!3395 = !{i32 2, !"Debug Info Version", i32 3}
!3396 = !{i32 1, !"wchar_size", i32 2}
!3397 = !{i32 8, !"cf-protection-branch", i32 1}
!3398 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3399 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3400 = !{i32 1, !"Code Model", i32 2}
!3401 = !{i32 1, !"override-stack-alignment", i32 8}
!3402 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3403 = distinct !DISubprogram(name: "get_idle_time", scope: !3, file: !3, line: 25, type: !3404, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!181, !3322, !99}
!3406 = !{!3407, !3408, !3409, !3410}
!3407 = !DILocalVariable(name: "kcs", arg: 1, scope: !3403, file: !3, line: 25, type: !3322)
!3408 = !DILocalVariable(name: "cpu", arg: 2, scope: !3403, file: !3, line: 25, type: !99)
!3409 = !DILocalVariable(name: "idle", scope: !3403, file: !3, line: 27, type: !181)
!3410 = !DILocalVariable(name: "idle_usecs", scope: !3403, file: !3, line: 27, type: !181)
!3411 = !DILocation(line: 25, column: 42, scope: !3403)
!3412 = !DILocation(line: 25, column: 51, scope: !3403)
!3413 = !DILocation(line: 27, column: 2, scope: !3403)
!3414 = !DILocation(line: 27, column: 6, scope: !3403)
!3415 = !DILocation(line: 27, column: 12, scope: !3403)
!3416 = !DILocation(line: 29, column: 17, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 29, column: 6)
!3418 = !DILocation(line: 29, column: 6, scope: !3417)
!3419 = !DILocation(line: 29, column: 6, scope: !3403)
!3420 = !DILocation(line: 30, column: 37, scope: !3417)
!3421 = !DILocation(line: 30, column: 16, scope: !3417)
!3422 = !DILocation(line: 30, column: 14, scope: !3417)
!3423 = !DILocation(line: 30, column: 3, scope: !3417)
!3424 = !DILocation(line: 32, column: 6, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 32, column: 6)
!3426 = !DILocation(line: 32, column: 17, scope: !3425)
!3427 = !DILocation(line: 32, column: 6, scope: !3403)
!3428 = !DILocation(line: 34, column: 10, scope: !3425)
!3429 = !DILocation(line: 34, column: 15, scope: !3425)
!3430 = !DILocation(line: 34, column: 8, scope: !3425)
!3431 = !DILocation(line: 34, column: 3, scope: !3425)
!3432 = !DILocation(line: 36, column: 10, scope: !3425)
!3433 = !DILocation(line: 36, column: 21, scope: !3425)
!3434 = !DILocation(line: 36, column: 8, scope: !3425)
!3435 = !DILocation(line: 38, column: 9, scope: !3403)
!3436 = !DILocation(line: 39, column: 1, scope: !3403)
!3437 = !DILocation(line: 38, column: 2, scope: !3403)
!3438 = distinct !DISubprogram(name: "cpu_online", scope: !88, file: !88, line: 1080, type: !3439, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!720, !7}
!3441 = !{!3442}
!3442 = !DILocalVariable(name: "cpu", arg: 1, scope: !3438, file: !88, line: 1080, type: !7)
!3443 = !DILocation(line: 1080, column: 44, scope: !3438)
!3444 = !DILocation(line: 1082, column: 26, scope: !3438)
!3445 = !DILocation(line: 1082, column: 9, scope: !3438)
!3446 = !DILocation(line: 1082, column: 2, scope: !3438)
!3447 = !DISubprogram(name: "get_cpu_idle_time_us", scope: !3448, file: !3448, line: 141, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3448 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!181, !99, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3452 = distinct !DISubprogram(name: "__initstub__kmod_proc__259_216_proc_stat_init5", scope: !3, file: !3, line: 216, type: !3453, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!99}
!3455 = !DILocation(line: 216, column: 1, scope: !3452)
!3456 = distinct !DISubprogram(name: "proc_stat_init", scope: !3, file: !3, line: 211, type: !3453, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3457 = !DILocation(line: 213, column: 2, scope: !3456)
!3458 = !DILocation(line: 214, column: 2, scope: !3456)
!3459 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !88, file: !88, line: 502, type: !3460, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!720, !99, !85}
!3462 = !{!3463, !3464}
!3463 = !DILocalVariable(name: "cpu", arg: 1, scope: !3459, file: !88, line: 502, type: !99)
!3464 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3459, file: !88, line: 502, type: !85)
!3465 = !DILocation(line: 502, column: 50, scope: !3459)
!3466 = !DILocation(line: 502, column: 77, scope: !3459)
!3467 = !DILocation(line: 504, column: 9, scope: !3459)
!3468 = !DILocation(line: 504, column: 2, scope: !3459)
!3469 = distinct !DISubprogram(name: "_test_bit", scope: !3470, file: !3470, line: 139, type: !3471, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3476)
!3470 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!720, !92, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "nr", arg: 1, scope: !3469, file: !3470, line: 139, type: !92)
!3478 = !DILocalVariable(name: "addr", arg: 2, scope: !3469, file: !3470, line: 139, type: !3473)
!3479 = !DILocation(line: 139, column: 25, scope: !3469)
!3480 = !DILocation(line: 139, column: 59, scope: !3469)
!3481 = !DILocation(line: 141, column: 25, scope: !3469)
!3482 = !DILocation(line: 141, column: 32, scope: !3469)
!3483 = !DILocation(line: 141, column: 30, scope: !3469)
!3484 = !DILocation(line: 141, column: 2, scope: !3469)
!3485 = !DILocation(line: 142, column: 23, scope: !3469)
!3486 = !DILocation(line: 142, column: 27, scope: !3469)
!3487 = !DILocation(line: 142, column: 9, scope: !3469)
!3488 = !DILocation(line: 142, column: 2, scope: !3469)
!3489 = distinct !DISubprogram(name: "cpumask_check", scope: !88, file: !88, line: 148, type: !3490, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!7, !7}
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "cpu", arg: 1, scope: !3489, file: !88, line: 148, type: !7)
!3494 = !DILocation(line: 148, column: 64, scope: !3489)
!3495 = !DILocation(line: 150, column: 20, scope: !3489)
!3496 = !DILocation(line: 150, column: 2, scope: !3489)
!3497 = !DILocation(line: 151, column: 9, scope: !3489)
!3498 = !DILocation(line: 151, column: 2, scope: !3489)
!3499 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3500, file: !3500, line: 66, type: !3501, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3506)
!3500 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3503, !1036}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "v", arg: 1, scope: !3499, file: !3500, line: 66, type: !3503)
!3508 = !DILocalVariable(name: "size", arg: 2, scope: !3499, file: !3500, line: 66, type: !1036)
!3509 = !DILocation(line: 66, column: 73, scope: !3499)
!3510 = !DILocation(line: 66, column: 83, scope: !3499)
!3511 = !DILocation(line: 68, column: 19, scope: !3499)
!3512 = !DILocation(line: 68, column: 22, scope: !3499)
!3513 = !DILocation(line: 68, column: 2, scope: !3499)
!3514 = !DILocation(line: 69, column: 2, scope: !3499)
!3515 = !DILocation(line: 70, column: 1, scope: !3499)
!3516 = distinct !DISubprogram(name: "arch_test_bit", scope: !3517, file: !3517, line: 237, type: !3471, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3517 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "nr", arg: 1, scope: !3516, file: !3517, line: 237, type: !92)
!3520 = !DILocalVariable(name: "addr", arg: 2, scope: !3516, file: !3517, line: 237, type: !3473)
!3521 = !DILocation(line: 237, column: 29, scope: !3516)
!3522 = !DILocation(line: 237, column: 63, scope: !3516)
!3523 = !DILocation(line: 239, column: 30, scope: !3516)
!3524 = !DILocation(line: 239, column: 9, scope: !3516)
!3525 = !DILocation(line: 239, column: 54, scope: !3516)
!3526 = !DILocation(line: 239, column: 58, scope: !3516)
!3527 = !DILocation(line: 239, column: 36, scope: !3516)
!3528 = !DILocation(line: 240, column: 26, scope: !3516)
!3529 = !DILocation(line: 240, column: 30, scope: !3516)
!3530 = !DILocation(line: 240, column: 8, scope: !3516)
!3531 = !DILocation(line: 239, column: 2, scope: !3516)
!3532 = distinct !DISubprogram(name: "kasan_check_read", scope: !3533, file: !3533, line: 40, type: !3534, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3533 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!720, !3503, !7}
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "p", arg: 1, scope: !3532, file: !3533, line: 40, type: !3503)
!3538 = !DILocalVariable(name: "size", arg: 2, scope: !3532, file: !3533, line: 40, type: !7)
!3539 = !DILocation(line: 40, column: 58, scope: !3532)
!3540 = !DILocation(line: 40, column: 74, scope: !3532)
!3541 = !DILocation(line: 42, column: 2, scope: !3532)
!3542 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3543, file: !3543, line: 229, type: !3544, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3543 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !3503, !1036, !99}
!3546 = !{!3547, !3548, !3549}
!3547 = !DILocalVariable(name: "ptr", arg: 1, scope: !3542, file: !3543, line: 229, type: !3503)
!3548 = !DILocalVariable(name: "size", arg: 2, scope: !3542, file: !3543, line: 229, type: !1036)
!3549 = !DILocalVariable(name: "type", arg: 3, scope: !3542, file: !3543, line: 230, type: !99)
!3550 = !DILocation(line: 229, column: 60, scope: !3542)
!3551 = !DILocation(line: 229, column: 72, scope: !3542)
!3552 = !DILocation(line: 230, column: 15, scope: !3542)
!3553 = !DILocation(line: 230, column: 23, scope: !3542)
!3554 = distinct !DISubprogram(name: "constant_test_bit", scope: !3517, file: !3517, line: 204, type: !3555, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!720, !994, !3473}
!3557 = !{!3558, !3559}
!3558 = !DILocalVariable(name: "nr", arg: 1, scope: !3554, file: !3517, line: 204, type: !994)
!3559 = !DILocalVariable(name: "addr", arg: 2, scope: !3554, file: !3517, line: 204, type: !3473)
!3560 = !DILocation(line: 204, column: 52, scope: !3554)
!3561 = !DILocation(line: 204, column: 86, scope: !3554)
!3562 = !DILocation(line: 206, column: 19, scope: !3554)
!3563 = !DILocation(line: 206, column: 22, scope: !3554)
!3564 = !DILocation(line: 206, column: 15, scope: !3554)
!3565 = !DILocation(line: 207, column: 4, scope: !3554)
!3566 = !DILocation(line: 207, column: 9, scope: !3554)
!3567 = !DILocation(line: 207, column: 12, scope: !3554)
!3568 = !DILocation(line: 206, column: 44, scope: !3554)
!3569 = !DILocation(line: 207, column: 37, scope: !3554)
!3570 = !DILocation(line: 206, column: 2, scope: !3554)
!3571 = distinct !DISubprogram(name: "variable_test_bit", scope: !3517, file: !3517, line: 224, type: !3555, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3572)
!3572 = !{!3573, !3574, !3575}
!3573 = !DILocalVariable(name: "nr", arg: 1, scope: !3571, file: !3517, line: 224, type: !994)
!3574 = !DILocalVariable(name: "addr", arg: 2, scope: !3571, file: !3517, line: 224, type: !3473)
!3575 = !DILocalVariable(name: "oldbit", scope: !3571, file: !3517, line: 226, type: !720)
!3576 = !DILocation(line: 224, column: 52, scope: !3571)
!3577 = !DILocation(line: 224, column: 86, scope: !3571)
!3578 = !DILocation(line: 226, column: 2, scope: !3571)
!3579 = !DILocation(line: 226, column: 7, scope: !3571)
!3580 = !DILocation(line: 231, column: 33, scope: !3571)
!3581 = !DILocation(line: 231, column: 46, scope: !3571)
!3582 = !DILocation(line: 228, column: 2, scope: !3571)
!3583 = !{i64 2147840083, i64 2147840157}
!3584 = !DILocation(line: 233, column: 9, scope: !3571)
!3585 = !{i8 0, i8 2}
!3586 = !DILocation(line: 234, column: 1, scope: !3571)
!3587 = !DILocation(line: 233, column: 2, scope: !3571)
!3588 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !88, file: !88, line: 140, type: !3589, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !7, !7}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "cpu", arg: 1, scope: !3588, file: !88, line: 140, type: !7)
!3593 = !DILocalVariable(name: "bits", arg: 2, scope: !3588, file: !88, line: 140, type: !7)
!3594 = !DILocation(line: 140, column: 60, scope: !3588)
!3595 = !DILocation(line: 140, column: 78, scope: !3588)
!3596 = !DILocation(line: 145, column: 1, scope: !3588)
!3597 = !DISubprogram(name: "proc_create", scope: !3345, file: !3345, line: 110, type: !3598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!3600, !723, !883, !3600, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !70, line: 131, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3603 = distinct !DISubprogram(name: "stat_open", scope: !3, file: !3, line: 194, type: !2104, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3604)
!3604 = !{!3605, !3606, !3607}
!3605 = !DILocalVariable(name: "inode", arg: 1, scope: !3603, file: !3, line: 194, type: !879)
!3606 = !DILocalVariable(name: "file", arg: 2, scope: !3603, file: !3, line: 194, type: !491)
!3607 = !DILocalVariable(name: "size", scope: !3603, file: !3, line: 196, type: !7)
!3608 = !DILocation(line: 194, column: 36, scope: !3603)
!3609 = !DILocation(line: 194, column: 56, scope: !3603)
!3610 = !DILocation(line: 196, column: 2, scope: !3603)
!3611 = !DILocation(line: 196, column: 15, scope: !3603)
!3612 = !DILocation(line: 196, column: 35, scope: !3603)
!3613 = !DILocation(line: 196, column: 33, scope: !3603)
!3614 = !DILocation(line: 196, column: 27, scope: !3603)
!3615 = !DILocation(line: 199, column: 14, scope: !3603)
!3616 = !DILocation(line: 199, column: 12, scope: !3603)
!3617 = !DILocation(line: 199, column: 7, scope: !3603)
!3618 = !DILocation(line: 200, column: 26, scope: !3603)
!3619 = !DILocation(line: 200, column: 49, scope: !3603)
!3620 = !DILocation(line: 200, column: 9, scope: !3603)
!3621 = !DILocation(line: 201, column: 1, scope: !3603)
!3622 = !DILocation(line: 200, column: 2, scope: !3603)
!3623 = distinct !DISubprogram(name: "num_online_cpus", scope: !88, file: !88, line: 1072, type: !3624, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!7}
!3626 = !DILocation(line: 1074, column: 9, scope: !3623)
!3627 = !DILocation(line: 1074, column: 2, scope: !3623)
!3628 = !DISubprogram(name: "single_open_size", scope: !1203, file: !1203, line: 167, type: !3629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!99, !491, !1232, !84, !1036}
!3631 = distinct !DISubprogram(name: "show_stat", scope: !3, file: !3, line: 82, type: !1233, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3655, !3656, !3660, !3664}
!3633 = !DILocalVariable(name: "p", arg: 1, scope: !3631, file: !3, line: 82, type: !1201)
!3634 = !DILocalVariable(name: "v", arg: 2, scope: !3631, file: !3, line: 82, type: !84)
!3635 = !DILocalVariable(name: "i", scope: !3631, file: !3, line: 84, type: !99)
!3636 = !DILocalVariable(name: "j", scope: !3631, file: !3, line: 84, type: !99)
!3637 = !DILocalVariable(name: "user", scope: !3631, file: !3, line: 85, type: !181)
!3638 = !DILocalVariable(name: "nice", scope: !3631, file: !3, line: 85, type: !181)
!3639 = !DILocalVariable(name: "system", scope: !3631, file: !3, line: 85, type: !181)
!3640 = !DILocalVariable(name: "idle", scope: !3631, file: !3, line: 85, type: !181)
!3641 = !DILocalVariable(name: "iowait", scope: !3631, file: !3, line: 85, type: !181)
!3642 = !DILocalVariable(name: "irq", scope: !3631, file: !3, line: 85, type: !181)
!3643 = !DILocalVariable(name: "softirq", scope: !3631, file: !3, line: 85, type: !181)
!3644 = !DILocalVariable(name: "steal", scope: !3631, file: !3, line: 85, type: !181)
!3645 = !DILocalVariable(name: "guest", scope: !3631, file: !3, line: 86, type: !181)
!3646 = !DILocalVariable(name: "guest_nice", scope: !3631, file: !3, line: 86, type: !181)
!3647 = !DILocalVariable(name: "sum", scope: !3631, file: !3, line: 87, type: !181)
!3648 = !DILocalVariable(name: "sum_softirq", scope: !3631, file: !3, line: 88, type: !181)
!3649 = !DILocalVariable(name: "per_softirq_sums", scope: !3631, file: !3, line: 89, type: !3334)
!3650 = !DILocalVariable(name: "boottime", scope: !3631, file: !3, line: 90, type: !990)
!3651 = !DILocalVariable(name: "kcpustat", scope: !3652, file: !3, line: 100, type: !3323)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 99, column: 27)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 99, column: 2)
!3654 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 99, column: 2)
!3655 = !DILocalVariable(name: "cpustat", scope: !3652, file: !3, line: 101, type: !3451)
!3656 = !DILocalVariable(name: "softirq_stat", scope: !3657, file: !3, line: 119, type: !7)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 118, column: 37)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 118, column: 3)
!3659 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 118, column: 3)
!3660 = !DILocalVariable(name: "kcpustat", scope: !3661, file: !3, line: 140, type: !3323)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 139, column: 25)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 139, column: 2)
!3663 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 139, column: 2)
!3664 = !DILocalVariable(name: "cpustat", scope: !3661, file: !3, line: 141, type: !3451)
!3665 = !DILocation(line: 82, column: 39, scope: !3631)
!3666 = !DILocation(line: 82, column: 48, scope: !3631)
!3667 = !DILocation(line: 84, column: 2, scope: !3631)
!3668 = !DILocation(line: 84, column: 6, scope: !3631)
!3669 = !DILocation(line: 84, column: 9, scope: !3631)
!3670 = !DILocation(line: 85, column: 2, scope: !3631)
!3671 = !DILocation(line: 85, column: 6, scope: !3631)
!3672 = !DILocation(line: 85, column: 12, scope: !3631)
!3673 = !DILocation(line: 85, column: 18, scope: !3631)
!3674 = !DILocation(line: 85, column: 26, scope: !3631)
!3675 = !DILocation(line: 85, column: 32, scope: !3631)
!3676 = !DILocation(line: 85, column: 40, scope: !3631)
!3677 = !DILocation(line: 85, column: 45, scope: !3631)
!3678 = !DILocation(line: 85, column: 54, scope: !3631)
!3679 = !DILocation(line: 86, column: 2, scope: !3631)
!3680 = !DILocation(line: 86, column: 6, scope: !3631)
!3681 = !DILocation(line: 86, column: 13, scope: !3631)
!3682 = !DILocation(line: 87, column: 2, scope: !3631)
!3683 = !DILocation(line: 87, column: 6, scope: !3631)
!3684 = !DILocation(line: 88, column: 2, scope: !3631)
!3685 = !DILocation(line: 88, column: 6, scope: !3631)
!3686 = !DILocation(line: 89, column: 2, scope: !3631)
!3687 = !DILocation(line: 89, column: 15, scope: !3631)
!3688 = !DILocation(line: 90, column: 2, scope: !3631)
!3689 = !DILocation(line: 90, column: 20, scope: !3631)
!3690 = !DILocation(line: 93, column: 25, scope: !3631)
!3691 = !DILocation(line: 93, column: 17, scope: !3631)
!3692 = !DILocation(line: 93, column: 7, scope: !3631)
!3693 = !DILocation(line: 92, column: 39, scope: !3631)
!3694 = !DILocation(line: 92, column: 30, scope: !3631)
!3695 = !DILocation(line: 92, column: 23, scope: !3631)
!3696 = !DILocation(line: 92, column: 14, scope: !3631)
!3697 = !DILocation(line: 92, column: 7, scope: !3631)
!3698 = !DILocation(line: 94, column: 21, scope: !3631)
!3699 = !DILocation(line: 94, column: 8, scope: !3631)
!3700 = !DILocation(line: 95, column: 2, scope: !3631)
!3701 = !DILocation(line: 97, column: 2, scope: !3631)
!3702 = !DILocation(line: 99, column: 2, scope: !3654)
!3703 = !DILocation(line: 99, column: 2, scope: !3653)
!3704 = !DILocation(line: 100, column: 3, scope: !3652)
!3705 = !DILocation(line: 100, column: 25, scope: !3652)
!3706 = !DILocation(line: 101, column: 3, scope: !3652)
!3707 = !DILocation(line: 101, column: 8, scope: !3652)
!3708 = !DILocation(line: 101, column: 27, scope: !3652)
!3709 = !DILocation(line: 101, column: 18, scope: !3652)
!3710 = !DILocation(line: 103, column: 33, scope: !3652)
!3711 = !DILocation(line: 103, column: 3, scope: !3652)
!3712 = !DILocation(line: 105, column: 12, scope: !3652)
!3713 = !DILocation(line: 105, column: 9, scope: !3652)
!3714 = !DILocation(line: 106, column: 12, scope: !3652)
!3715 = !DILocation(line: 106, column: 9, scope: !3652)
!3716 = !DILocation(line: 107, column: 14, scope: !3652)
!3717 = !DILocation(line: 107, column: 11, scope: !3652)
!3718 = !DILocation(line: 108, column: 37, scope: !3652)
!3719 = !DILocation(line: 108, column: 12, scope: !3652)
!3720 = !DILocation(line: 108, column: 9, scope: !3652)
!3721 = !DILocation(line: 109, column: 41, scope: !3652)
!3722 = !DILocation(line: 109, column: 14, scope: !3652)
!3723 = !DILocation(line: 109, column: 11, scope: !3652)
!3724 = !DILocation(line: 110, column: 11, scope: !3652)
!3725 = !DILocation(line: 110, column: 8, scope: !3652)
!3726 = !DILocation(line: 111, column: 15, scope: !3652)
!3727 = !DILocation(line: 111, column: 12, scope: !3652)
!3728 = !DILocation(line: 112, column: 13, scope: !3652)
!3729 = !DILocation(line: 112, column: 10, scope: !3652)
!3730 = !DILocation(line: 113, column: 13, scope: !3652)
!3731 = !DILocation(line: 113, column: 10, scope: !3652)
!3732 = !DILocation(line: 114, column: 17, scope: !3652)
!3733 = !DILocation(line: 114, column: 14, scope: !3652)
!3734 = !DILocation(line: 115, column: 30, scope: !3652)
!3735 = !DILocation(line: 115, column: 11, scope: !3652)
!3736 = !DILocation(line: 115, column: 8, scope: !3652)
!3737 = !DILocation(line: 116, column: 29, scope: !3652)
!3738 = !DILocation(line: 116, column: 11, scope: !3652)
!3739 = !DILocation(line: 116, column: 8, scope: !3652)
!3740 = !DILocation(line: 118, column: 10, scope: !3659)
!3741 = !DILocation(line: 118, column: 8, scope: !3659)
!3742 = !DILocation(line: 118, column: 15, scope: !3658)
!3743 = !DILocation(line: 118, column: 17, scope: !3658)
!3744 = !DILocation(line: 118, column: 3, scope: !3659)
!3745 = !DILocation(line: 119, column: 4, scope: !3657)
!3746 = !DILocation(line: 119, column: 17, scope: !3657)
!3747 = !DILocation(line: 119, column: 51, scope: !3657)
!3748 = !DILocation(line: 119, column: 54, scope: !3657)
!3749 = !DILocation(line: 119, column: 32, scope: !3657)
!3750 = !DILocation(line: 121, column: 27, scope: !3657)
!3751 = !DILocation(line: 121, column: 21, scope: !3657)
!3752 = !DILocation(line: 121, column: 4, scope: !3657)
!3753 = !DILocation(line: 121, column: 24, scope: !3657)
!3754 = !DILocation(line: 122, column: 19, scope: !3657)
!3755 = !DILocation(line: 122, column: 16, scope: !3657)
!3756 = !DILocation(line: 123, column: 3, scope: !3658)
!3757 = !DILocation(line: 123, column: 3, scope: !3657)
!3758 = !DILocation(line: 118, column: 33, scope: !3658)
!3759 = !DILocation(line: 118, column: 3, scope: !3658)
!3760 = distinct !{!3760, !3744, !3761, !3762, !3763}
!3761 = !DILocation(line: 123, column: 3, scope: !3659)
!3762 = !{!"llvm.loop.mustprogress"}
!3763 = !{!"llvm.loop.unroll.disable"}
!3764 = !DILocation(line: 124, column: 2, scope: !3653)
!3765 = !DILocation(line: 124, column: 2, scope: !3652)
!3766 = distinct !{!3766, !3702, !3767, !3762, !3763}
!3767 = !DILocation(line: 124, column: 2, scope: !3654)
!3768 = !DILocation(line: 125, column: 9, scope: !3631)
!3769 = !DILocation(line: 125, column: 6, scope: !3631)
!3770 = !DILocation(line: 127, column: 22, scope: !3631)
!3771 = !DILocation(line: 127, column: 50, scope: !3631)
!3772 = !DILocation(line: 127, column: 34, scope: !3631)
!3773 = !DILocation(line: 127, column: 2, scope: !3631)
!3774 = !DILocation(line: 128, column: 22, scope: !3631)
!3775 = !DILocation(line: 128, column: 46, scope: !3631)
!3776 = !DILocation(line: 128, column: 30, scope: !3631)
!3777 = !DILocation(line: 128, column: 2, scope: !3631)
!3778 = !DILocation(line: 129, column: 22, scope: !3631)
!3779 = !DILocation(line: 129, column: 46, scope: !3631)
!3780 = !DILocation(line: 129, column: 30, scope: !3631)
!3781 = !DILocation(line: 129, column: 2, scope: !3631)
!3782 = !DILocation(line: 130, column: 22, scope: !3631)
!3783 = !DILocation(line: 130, column: 46, scope: !3631)
!3784 = !DILocation(line: 130, column: 30, scope: !3631)
!3785 = !DILocation(line: 130, column: 2, scope: !3631)
!3786 = !DILocation(line: 131, column: 22, scope: !3631)
!3787 = !DILocation(line: 131, column: 46, scope: !3631)
!3788 = !DILocation(line: 131, column: 30, scope: !3631)
!3789 = !DILocation(line: 131, column: 2, scope: !3631)
!3790 = !DILocation(line: 132, column: 22, scope: !3631)
!3791 = !DILocation(line: 132, column: 46, scope: !3631)
!3792 = !DILocation(line: 132, column: 30, scope: !3631)
!3793 = !DILocation(line: 132, column: 2, scope: !3631)
!3794 = !DILocation(line: 133, column: 22, scope: !3631)
!3795 = !DILocation(line: 133, column: 46, scope: !3631)
!3796 = !DILocation(line: 133, column: 30, scope: !3631)
!3797 = !DILocation(line: 133, column: 2, scope: !3631)
!3798 = !DILocation(line: 134, column: 22, scope: !3631)
!3799 = !DILocation(line: 134, column: 46, scope: !3631)
!3800 = !DILocation(line: 134, column: 30, scope: !3631)
!3801 = !DILocation(line: 134, column: 2, scope: !3631)
!3802 = !DILocation(line: 135, column: 22, scope: !3631)
!3803 = !DILocation(line: 135, column: 46, scope: !3631)
!3804 = !DILocation(line: 135, column: 30, scope: !3631)
!3805 = !DILocation(line: 135, column: 2, scope: !3631)
!3806 = !DILocation(line: 136, column: 22, scope: !3631)
!3807 = !DILocation(line: 136, column: 46, scope: !3631)
!3808 = !DILocation(line: 136, column: 30, scope: !3631)
!3809 = !DILocation(line: 136, column: 2, scope: !3631)
!3810 = !DILocation(line: 137, column: 11, scope: !3631)
!3811 = !DILocation(line: 137, column: 2, scope: !3631)
!3812 = !DILocation(line: 139, column: 2, scope: !3663)
!3813 = !DILocation(line: 139, column: 2, scope: !3662)
!3814 = !DILocation(line: 140, column: 3, scope: !3661)
!3815 = !DILocation(line: 140, column: 25, scope: !3661)
!3816 = !DILocation(line: 141, column: 3, scope: !3661)
!3817 = !DILocation(line: 141, column: 8, scope: !3661)
!3818 = !DILocation(line: 141, column: 27, scope: !3661)
!3819 = !DILocation(line: 141, column: 18, scope: !3661)
!3820 = !DILocation(line: 143, column: 33, scope: !3661)
!3821 = !DILocation(line: 143, column: 3, scope: !3661)
!3822 = !DILocation(line: 146, column: 11, scope: !3661)
!3823 = !DILocation(line: 146, column: 9, scope: !3661)
!3824 = !DILocation(line: 147, column: 11, scope: !3661)
!3825 = !DILocation(line: 147, column: 9, scope: !3661)
!3826 = !DILocation(line: 148, column: 13, scope: !3661)
!3827 = !DILocation(line: 148, column: 11, scope: !3661)
!3828 = !DILocation(line: 149, column: 36, scope: !3661)
!3829 = !DILocation(line: 149, column: 11, scope: !3661)
!3830 = !DILocation(line: 149, column: 9, scope: !3661)
!3831 = !DILocation(line: 150, column: 40, scope: !3661)
!3832 = !DILocation(line: 150, column: 13, scope: !3661)
!3833 = !DILocation(line: 150, column: 11, scope: !3661)
!3834 = !DILocation(line: 151, column: 10, scope: !3661)
!3835 = !DILocation(line: 151, column: 8, scope: !3661)
!3836 = !DILocation(line: 152, column: 14, scope: !3661)
!3837 = !DILocation(line: 152, column: 12, scope: !3661)
!3838 = !DILocation(line: 153, column: 12, scope: !3661)
!3839 = !DILocation(line: 153, column: 10, scope: !3661)
!3840 = !DILocation(line: 154, column: 12, scope: !3661)
!3841 = !DILocation(line: 154, column: 10, scope: !3661)
!3842 = !DILocation(line: 155, column: 16, scope: !3661)
!3843 = !DILocation(line: 155, column: 14, scope: !3661)
!3844 = !DILocation(line: 156, column: 14, scope: !3661)
!3845 = !DILocation(line: 156, column: 26, scope: !3661)
!3846 = !DILocation(line: 156, column: 3, scope: !3661)
!3847 = !DILocation(line: 157, column: 23, scope: !3661)
!3848 = !DILocation(line: 157, column: 47, scope: !3661)
!3849 = !DILocation(line: 157, column: 31, scope: !3661)
!3850 = !DILocation(line: 157, column: 3, scope: !3661)
!3851 = !DILocation(line: 158, column: 23, scope: !3661)
!3852 = !DILocation(line: 158, column: 47, scope: !3661)
!3853 = !DILocation(line: 158, column: 31, scope: !3661)
!3854 = !DILocation(line: 158, column: 3, scope: !3661)
!3855 = !DILocation(line: 159, column: 23, scope: !3661)
!3856 = !DILocation(line: 159, column: 47, scope: !3661)
!3857 = !DILocation(line: 159, column: 31, scope: !3661)
!3858 = !DILocation(line: 159, column: 3, scope: !3661)
!3859 = !DILocation(line: 160, column: 23, scope: !3661)
!3860 = !DILocation(line: 160, column: 47, scope: !3661)
!3861 = !DILocation(line: 160, column: 31, scope: !3661)
!3862 = !DILocation(line: 160, column: 3, scope: !3661)
!3863 = !DILocation(line: 161, column: 23, scope: !3661)
!3864 = !DILocation(line: 161, column: 47, scope: !3661)
!3865 = !DILocation(line: 161, column: 31, scope: !3661)
!3866 = !DILocation(line: 161, column: 3, scope: !3661)
!3867 = !DILocation(line: 162, column: 23, scope: !3661)
!3868 = !DILocation(line: 162, column: 47, scope: !3661)
!3869 = !DILocation(line: 162, column: 31, scope: !3661)
!3870 = !DILocation(line: 162, column: 3, scope: !3661)
!3871 = !DILocation(line: 163, column: 23, scope: !3661)
!3872 = !DILocation(line: 163, column: 47, scope: !3661)
!3873 = !DILocation(line: 163, column: 31, scope: !3661)
!3874 = !DILocation(line: 163, column: 3, scope: !3661)
!3875 = !DILocation(line: 164, column: 23, scope: !3661)
!3876 = !DILocation(line: 164, column: 47, scope: !3661)
!3877 = !DILocation(line: 164, column: 31, scope: !3661)
!3878 = !DILocation(line: 164, column: 3, scope: !3661)
!3879 = !DILocation(line: 165, column: 23, scope: !3661)
!3880 = !DILocation(line: 165, column: 47, scope: !3661)
!3881 = !DILocation(line: 165, column: 31, scope: !3661)
!3882 = !DILocation(line: 165, column: 3, scope: !3661)
!3883 = !DILocation(line: 166, column: 23, scope: !3661)
!3884 = !DILocation(line: 166, column: 47, scope: !3661)
!3885 = !DILocation(line: 166, column: 31, scope: !3661)
!3886 = !DILocation(line: 166, column: 3, scope: !3661)
!3887 = !DILocation(line: 167, column: 12, scope: !3661)
!3888 = !DILocation(line: 167, column: 3, scope: !3661)
!3889 = !DILocation(line: 168, column: 2, scope: !3662)
!3890 = !DILocation(line: 168, column: 2, scope: !3661)
!3891 = distinct !{!3891, !3812, !3892, !3762, !3763}
!3892 = !DILocation(line: 168, column: 2, scope: !3663)
!3893 = !DILocation(line: 169, column: 22, scope: !3631)
!3894 = !DILocation(line: 169, column: 54, scope: !3631)
!3895 = !DILocation(line: 169, column: 2, scope: !3631)
!3896 = !DILocation(line: 171, column: 16, scope: !3631)
!3897 = !DILocation(line: 171, column: 2, scope: !3631)
!3898 = !DILocation(line: 173, column: 13, scope: !3631)
!3899 = !DILocation(line: 179, column: 3, scope: !3631)
!3900 = !DILocation(line: 180, column: 32, scope: !3631)
!3901 = !DILocation(line: 181, column: 3, scope: !3631)
!3902 = !DILocation(line: 182, column: 3, scope: !3631)
!3903 = !DILocation(line: 183, column: 3, scope: !3631)
!3904 = !DILocation(line: 173, column: 2, scope: !3631)
!3905 = !DILocation(line: 185, column: 22, scope: !3631)
!3906 = !DILocation(line: 185, column: 57, scope: !3631)
!3907 = !DILocation(line: 185, column: 2, scope: !3631)
!3908 = !DILocation(line: 187, column: 9, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 187, column: 2)
!3910 = !DILocation(line: 187, column: 7, scope: !3909)
!3911 = !DILocation(line: 187, column: 14, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 187, column: 2)
!3913 = !DILocation(line: 187, column: 16, scope: !3912)
!3914 = !DILocation(line: 187, column: 2, scope: !3909)
!3915 = !DILocation(line: 188, column: 23, scope: !3912)
!3916 = !DILocation(line: 188, column: 48, scope: !3912)
!3917 = !DILocation(line: 188, column: 31, scope: !3912)
!3918 = !DILocation(line: 188, column: 3, scope: !3912)
!3919 = !DILocation(line: 187, column: 32, scope: !3912)
!3920 = !DILocation(line: 187, column: 2, scope: !3912)
!3921 = distinct !{!3921, !3914, !3922, !3762, !3763}
!3922 = !DILocation(line: 188, column: 50, scope: !3909)
!3923 = !DILocation(line: 189, column: 11, scope: !3631)
!3924 = !DILocation(line: 189, column: 2, scope: !3631)
!3925 = !DILocation(line: 192, column: 1, scope: !3631)
!3926 = !DILocation(line: 191, column: 2, scope: !3631)
!3927 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3928, file: !3928, line: 442, type: !3929, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3928 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!99, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "v", arg: 1, scope: !3927, file: !3928, line: 442, type: !3931)
!3935 = !DILocation(line: 442, column: 33, scope: !3927)
!3936 = !DILocation(line: 444, column: 26, scope: !3927)
!3937 = !DILocation(line: 444, column: 9, scope: !3927)
!3938 = !DILocation(line: 444, column: 2, scope: !3927)
!3939 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3940, file: !3940, line: 17, type: !3929, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3940 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "v", arg: 1, scope: !3939, file: !3940, line: 17, type: !3931)
!3943 = !DILocation(line: 17, column: 61, scope: !3939)
!3944 = !DILocation(line: 23, column: 9, scope: !3939)
!3945 = !DILocation(line: 23, column: 2, scope: !3939)
!3946 = !DISubprogram(name: "getboottime64", scope: !3947, file: !3947, line: 47, type: !3948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3947 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!3951 = distinct !DISubprogram(name: "timens_sub_boottime", scope: !2541, file: !2541, line: 86, type: !3948, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3952)
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "ts", arg: 1, scope: !3951, file: !2541, line: 86, type: !3950)
!3954 = !DILocalVariable(name: "ns_offsets", scope: !3951, file: !2541, line: 88, type: !3955)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!3956 = !DILocation(line: 86, column: 59, scope: !3951)
!3957 = !DILocation(line: 88, column: 2, scope: !3951)
!3958 = !DILocation(line: 88, column: 25, scope: !3951)
!3959 = !DILocation(line: 88, column: 39, scope: !3951)
!3960 = !DILocation(line: 88, column: 48, scope: !3951)
!3961 = !DILocation(line: 88, column: 57, scope: !3951)
!3962 = !DILocation(line: 88, column: 66, scope: !3951)
!3963 = !DILocation(line: 90, column: 3, scope: !3951)
!3964 = !DILocation(line: 90, column: 8, scope: !3951)
!3965 = !DILocation(line: 90, column: 24, scope: !3951)
!3966 = !DILocation(line: 90, column: 28, scope: !3951)
!3967 = !DILocation(line: 90, column: 40, scope: !3951)
!3968 = !DILocation(line: 91, column: 1, scope: !3951)
!3969 = distinct !DISubprogram(name: "find_next_bit", scope: !3970, file: !3970, line: 54, type: !3971, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3970 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!92, !3973, !92, !92}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DILocalVariable(name: "addr", arg: 1, scope: !3969, file: !3970, line: 54, type: !3973)
!3977 = !DILocalVariable(name: "size", arg: 2, scope: !3969, file: !3970, line: 54, type: !92)
!3978 = !DILocalVariable(name: "offset", arg: 3, scope: !3969, file: !3970, line: 55, type: !92)
!3979 = !DILocalVariable(name: "val", scope: !3980, file: !3970, line: 58, type: !92)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !3970, line: 57, column: 31)
!3981 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 57, column: 6)
!3982 = !DILocation(line: 54, column: 50, scope: !3969)
!3983 = !DILocation(line: 54, column: 70, scope: !3969)
!3984 = !DILocation(line: 55, column: 22, scope: !3969)
!3985 = !DILocation(line: 57, column: 6, scope: !3981)
!3986 = !DILocation(line: 57, column: 6, scope: !3969)
!3987 = !DILocation(line: 58, column: 3, scope: !3980)
!3988 = !DILocation(line: 58, column: 17, scope: !3980)
!3989 = !DILocation(line: 60, column: 7, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3980, file: !3970, line: 60, column: 7)
!3991 = !DILocation(line: 60, column: 7, scope: !3980)
!3992 = !DILocation(line: 61, column: 11, scope: !3990)
!3993 = !DILocation(line: 61, column: 4, scope: !3990)
!3994 = !DILocation(line: 63, column: 10, scope: !3980)
!3995 = !DILocation(line: 63, column: 9, scope: !3980)
!3996 = !DILocation(line: 63, column: 17, scope: !3980)
!3997 = !DILocation(line: 63, column: 15, scope: !3980)
!3998 = !DILocation(line: 63, column: 7, scope: !3980)
!3999 = !DILocation(line: 64, column: 10, scope: !3980)
!4000 = !DILocation(line: 64, column: 16, scope: !3980)
!4001 = !DILocation(line: 64, column: 29, scope: !3980)
!4002 = !DILocation(line: 64, column: 3, scope: !3980)
!4003 = !DILocation(line: 65, column: 2, scope: !3981)
!4004 = !DILocation(line: 67, column: 24, scope: !3969)
!4005 = !DILocation(line: 67, column: 30, scope: !3969)
!4006 = !DILocation(line: 67, column: 36, scope: !3969)
!4007 = !DILocation(line: 67, column: 9, scope: !3969)
!4008 = !DILocation(line: 67, column: 2, scope: !3969)
!4009 = !DILocation(line: 68, column: 1, scope: !3969)
!4010 = distinct !DISubprogram(name: "kcpustat_cpu_fetch", scope: !6, file: !6, line: 106, type: !4011, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3322, !99}
!4013 = !{!4014, !4015, !4016, !4019}
!4014 = !DILocalVariable(name: "dst", arg: 1, scope: !4010, file: !6, line: 106, type: !3322)
!4015 = !DILocalVariable(name: "cpu", arg: 2, scope: !4010, file: !6, line: 106, type: !99)
!4016 = !DILocalVariable(name: "__vpp_verify", scope: !4017, file: !6, line: 108, type: !3083)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !6, line: 108, column: 9)
!4018 = distinct !DILexicalBlock(scope: !4010, file: !6, line: 108, column: 9)
!4019 = !DILocalVariable(name: "__ptr", scope: !4020, file: !6, line: 108, type: !92)
!4020 = distinct !DILexicalBlock(scope: !4018, file: !6, line: 108, column: 9)
!4021 = !DILocation(line: 106, column: 62, scope: !4010)
!4022 = !DILocation(line: 106, column: 71, scope: !4010)
!4023 = !DILocation(line: 108, column: 3, scope: !4010)
!4024 = !DILocation(line: 108, column: 9, scope: !4018)
!4025 = !DILocation(line: 108, column: 9, scope: !4017)
!4026 = !DILocation(line: 108, column: 9, scope: !4020)
!4027 = !DILocation(line: 108, column: 9, scope: !4010)
!4028 = !DILocation(line: 109, column: 1, scope: !4010)
!4029 = distinct !DISubprogram(name: "get_iowait_time", scope: !3, file: !3, line: 41, type: !3404, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4030)
!4030 = !{!4031, !4032, !4033, !4034}
!4031 = !DILocalVariable(name: "kcs", arg: 1, scope: !4029, file: !3, line: 41, type: !3322)
!4032 = !DILocalVariable(name: "cpu", arg: 2, scope: !4029, file: !3, line: 41, type: !99)
!4033 = !DILocalVariable(name: "iowait", scope: !4029, file: !3, line: 43, type: !181)
!4034 = !DILocalVariable(name: "iowait_usecs", scope: !4029, file: !3, line: 43, type: !181)
!4035 = !DILocation(line: 41, column: 51, scope: !4029)
!4036 = !DILocation(line: 41, column: 60, scope: !4029)
!4037 = !DILocation(line: 43, column: 2, scope: !4029)
!4038 = !DILocation(line: 43, column: 6, scope: !4029)
!4039 = !DILocation(line: 43, column: 14, scope: !4029)
!4040 = !DILocation(line: 45, column: 17, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 45, column: 6)
!4042 = !DILocation(line: 45, column: 6, scope: !4041)
!4043 = !DILocation(line: 45, column: 6, scope: !4029)
!4044 = !DILocation(line: 46, column: 41, scope: !4041)
!4045 = !DILocation(line: 46, column: 18, scope: !4041)
!4046 = !DILocation(line: 46, column: 16, scope: !4041)
!4047 = !DILocation(line: 46, column: 3, scope: !4041)
!4048 = !DILocation(line: 48, column: 6, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 48, column: 6)
!4050 = !DILocation(line: 48, column: 19, scope: !4049)
!4051 = !DILocation(line: 48, column: 6, scope: !4029)
!4052 = !DILocation(line: 50, column: 12, scope: !4049)
!4053 = !DILocation(line: 50, column: 17, scope: !4049)
!4054 = !DILocation(line: 50, column: 10, scope: !4049)
!4055 = !DILocation(line: 50, column: 3, scope: !4049)
!4056 = !DILocation(line: 52, column: 12, scope: !4049)
!4057 = !DILocation(line: 52, column: 25, scope: !4049)
!4058 = !DILocation(line: 52, column: 10, scope: !4049)
!4059 = !DILocation(line: 54, column: 9, scope: !4029)
!4060 = !DILocation(line: 55, column: 1, scope: !4029)
!4061 = !DILocation(line: 54, column: 2, scope: !4029)
!4062 = distinct !DISubprogram(name: "kstat_cpu_irqs_sum", scope: !6, file: !6, line: 90, type: !4063, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!92, !7}
!4065 = !{!4066, !4067, !4070}
!4066 = !DILocalVariable(name: "cpu", arg: 1, scope: !4062, file: !6, line: 90, type: !7)
!4067 = !DILocalVariable(name: "__vpp_verify", scope: !4068, file: !6, line: 92, type: !3083)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !6, line: 92, column: 9)
!4069 = distinct !DILexicalBlock(scope: !4062, file: !6, line: 92, column: 9)
!4070 = !DILocalVariable(name: "__ptr", scope: !4071, file: !6, line: 92, type: !92)
!4071 = distinct !DILexicalBlock(scope: !4069, file: !6, line: 92, column: 9)
!4072 = !DILocation(line: 90, column: 61, scope: !4062)
!4073 = !DILocation(line: 92, column: 9, scope: !4069)
!4074 = !DILocation(line: 92, column: 9, scope: !4068)
!4075 = !DILocation(line: 92, column: 9, scope: !4071)
!4076 = !DILocation(line: 92, column: 24, scope: !4062)
!4077 = !DILocation(line: 92, column: 2, scope: !4062)
!4078 = !DISubprogram(name: "arch_irq_stat_cpu", scope: !4079, file: !4079, line: 57, type: !4080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4079 = !DIFile(filename: "./arch/x86/include/asm/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5f78851d05626cb30000e7593c12009")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!181, !7}
!4082 = distinct !DISubprogram(name: "kstat_softirqs_cpu", scope: !6, file: !6, line: 66, type: !4083, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!7, !7, !99}
!4085 = !{!4086, !4087, !4088, !4091}
!4086 = !DILocalVariable(name: "irq", arg: 1, scope: !4082, file: !6, line: 66, type: !7)
!4087 = !DILocalVariable(name: "cpu", arg: 2, scope: !4082, file: !6, line: 66, type: !99)
!4088 = !DILocalVariable(name: "__vpp_verify", scope: !4089, file: !6, line: 68, type: !3083)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !6, line: 68, column: 15)
!4090 = distinct !DILexicalBlock(scope: !4082, file: !6, line: 68, column: 15)
!4091 = !DILocalVariable(name: "__ptr", scope: !4092, file: !6, line: 68, type: !92)
!4092 = distinct !DILexicalBlock(scope: !4090, file: !6, line: 68, column: 15)
!4093 = !DILocation(line: 66, column: 60, scope: !4082)
!4094 = !DILocation(line: 66, column: 69, scope: !4082)
!4095 = !DILocation(line: 68, column: 15, scope: !4090)
!4096 = !DILocation(line: 68, column: 15, scope: !4089)
!4097 = !DILocation(line: 68, column: 15, scope: !4092)
!4098 = !DILocation(line: 68, column: 30, scope: !4082)
!4099 = !DILocation(line: 68, column: 39, scope: !4082)
!4100 = !DILocation(line: 68, column: 15, scope: !4082)
!4101 = !DILocation(line: 68, column: 8, scope: !4082)
!4102 = !DISubprogram(name: "arch_irq_stat", scope: !4079, file: !4079, line: 60, type: !4103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!181}
!4105 = !DISubprogram(name: "seq_put_decimal_ull", scope: !1203, file: !1203, line: 124, type: !4106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !1201, !723, !100}
!4108 = !DISubprogram(name: "nsec_to_clock_t", scope: !4109, file: !4109, line: 592, type: !4110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4109 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!181, !181}
!4112 = !DISubprogram(name: "seq_putc", scope: !1203, file: !1203, line: 120, type: !4113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !1201, !706}
!4115 = !DISubprogram(name: "seq_printf", scope: !1203, file: !1203, line: 119, type: !4116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !1201, !723, null}
!4118 = distinct !DISubprogram(name: "show_all_irqs", scope: !3, file: !3, line: 70, type: !4119, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !1201}
!4121 = !{!4122, !4123, !4124}
!4122 = !DILocalVariable(name: "p", arg: 1, scope: !4118, file: !3, line: 70, type: !1201)
!4123 = !DILocalVariable(name: "i", scope: !4118, file: !3, line: 72, type: !7)
!4124 = !DILocalVariable(name: "next", scope: !4118, file: !3, line: 72, type: !7)
!4125 = !DILocation(line: 70, column: 44, scope: !4118)
!4126 = !DILocation(line: 72, column: 2, scope: !4118)
!4127 = !DILocation(line: 72, column: 15, scope: !4118)
!4128 = !DILocation(line: 72, column: 18, scope: !4118)
!4129 = !DILocation(line: 74, column: 2, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 74, column: 2)
!4131 = !DILocation(line: 74, column: 2, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 74, column: 2)
!4133 = !DILocation(line: 75, column: 16, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 74, column: 25)
!4135 = !DILocation(line: 75, column: 19, scope: !4134)
!4136 = !DILocation(line: 75, column: 23, scope: !4134)
!4137 = !DILocation(line: 75, column: 21, scope: !4134)
!4138 = !DILocation(line: 75, column: 3, scope: !4134)
!4139 = !DILocation(line: 76, column: 23, scope: !4134)
!4140 = !DILocation(line: 76, column: 46, scope: !4134)
!4141 = !DILocation(line: 76, column: 31, scope: !4134)
!4142 = !DILocation(line: 76, column: 3, scope: !4134)
!4143 = !DILocation(line: 77, column: 10, scope: !4134)
!4144 = !DILocation(line: 77, column: 12, scope: !4134)
!4145 = !DILocation(line: 77, column: 8, scope: !4134)
!4146 = !DILocation(line: 78, column: 2, scope: !4134)
!4147 = distinct !{!4147, !4129, !4148, !3762, !3763}
!4148 = !DILocation(line: 78, column: 2, scope: !4130)
!4149 = !DILocation(line: 79, column: 15, scope: !4118)
!4150 = !DILocation(line: 79, column: 18, scope: !4118)
!4151 = !DILocation(line: 79, column: 28, scope: !4118)
!4152 = !DILocation(line: 79, column: 26, scope: !4118)
!4153 = !DILocation(line: 79, column: 2, scope: !4118)
!4154 = !DILocation(line: 80, column: 1, scope: !4118)
!4155 = !DISubprogram(name: "nr_context_switches", scope: !6, file: !6, line: 56, type: !4156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!100}
!4158 = !DISubprogram(name: "nr_running", scope: !4159, file: !4159, line: 20, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4159 = !DIFile(filename: "./include/linux/sched/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad03080d260767f7ddda1946e921a1ea")
!4160 = !DISubprogram(name: "nr_iowait", scope: !4159, file: !4159, line: 22, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4161 = distinct !DISubprogram(name: "get_current", scope: !4162, file: !4162, line: 39, type: !4163, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4162 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!102}
!4165 = !{!4166, !4168, !4170}
!4166 = !DILocalVariable(name: "pscr_ret__", scope: !4167, file: !4162, line: 41, type: !102)
!4167 = distinct !DILexicalBlock(scope: !4161, file: !4162, line: 41, column: 9)
!4168 = !DILocalVariable(name: "__vpp_verify", scope: !4169, file: !4162, line: 41, type: !3083)
!4169 = distinct !DILexicalBlock(scope: !4167, file: !4162, line: 41, column: 9)
!4170 = !DILocalVariable(name: "pfo_val__", scope: !4171, file: !4162, line: 41, type: !181)
!4171 = distinct !DILexicalBlock(scope: !4167, file: !4162, line: 41, column: 9)
!4172 = !DILocation(line: 41, column: 9, scope: !4167)
!4173 = !DILocation(line: 41, column: 9, scope: !4169)
!4174 = !DILocation(line: 41, column: 9, scope: !4171)
!4175 = !{i64 2149186230}
!4176 = !DILocation(line: 41, column: 9, scope: !4161)
!4177 = !DILocation(line: 41, column: 2, scope: !4161)
!4178 = distinct !DISubprogram(name: "timespec64_sub", scope: !677, file: !677, line: 80, type: !4179, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!990, !990, !990}
!4181 = !{!4182, !4183, !4184}
!4182 = !DILocalVariable(name: "lhs", arg: 1, scope: !4178, file: !677, line: 80, type: !990)
!4183 = !DILocalVariable(name: "rhs", arg: 2, scope: !4178, file: !677, line: 81, type: !990)
!4184 = !DILocalVariable(name: "ts_delta", scope: !4178, file: !677, line: 83, type: !990)
!4185 = !DILocation(line: 80, column: 66, scope: !4178)
!4186 = !DILocation(line: 81, column: 25, scope: !4178)
!4187 = !DILocation(line: 83, column: 20, scope: !4178)
!4188 = !DILocation(line: 84, column: 43, scope: !4178)
!4189 = !DILocation(line: 84, column: 56, scope: !4178)
!4190 = !DILocation(line: 84, column: 50, scope: !4178)
!4191 = !DILocation(line: 85, column: 9, scope: !4178)
!4192 = !DILocation(line: 85, column: 23, scope: !4178)
!4193 = !DILocation(line: 85, column: 17, scope: !4178)
!4194 = !DILocation(line: 84, column: 2, scope: !4178)
!4195 = !DILocation(line: 86, column: 2, scope: !4178)
!4196 = !DISubprogram(name: "set_normalized_timespec64", scope: !677, file: !677, line: 66, type: !4197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !3950, !676, !196}
!4199 = distinct !DISubprogram(name: "variable__ffs", scope: !3517, file: !3517, line: 250, type: !4200, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!92, !92}
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "word", arg: 1, scope: !4199, file: !3517, line: 250, type: !92)
!4204 = !DILocation(line: 250, column: 66, scope: !4199)
!4205 = !DILocation(line: 254, column: 11, scope: !4199)
!4206 = !DILocation(line: 252, column: 2, scope: !4199)
!4207 = !{i64 335158}
!4208 = !DILocation(line: 255, column: 9, scope: !4199)
!4209 = !DILocation(line: 255, column: 2, scope: !4199)
!4210 = !DISubprogram(name: "_find_next_bit", scope: !3970, file: !3970, line: 11, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4211 = !DISubprogram(name: "get_cpu_iowait_time_us", scope: !3448, file: !3448, line: 142, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4212 = !DISubprogram(name: "irq_get_next_irq", scope: !4213, file: !4213, line: 10, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4213 = !DIFile(filename: "./include/linux/irqnr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590ce9d10c77e92ba5c0ad662f4e1272")
!4214 = !DILocation(line: 57, column: 43, scope: !3380)
!4215 = !DILocation(line: 57, column: 59, scope: !3380)
!4216 = !DILocation(line: 61, column: 2, scope: !3380)
!4217 = !DILocation(line: 61, column: 9, scope: !3380)
!4218 = !DILocation(line: 61, column: 13, scope: !3380)
!4219 = !DILocation(line: 62, column: 3, scope: !3387)
!4220 = !DILocation(line: 62, column: 16, scope: !3387)
!4221 = !DILocation(line: 64, column: 9, scope: !3389)
!4222 = !DILocation(line: 64, column: 9, scope: !3387)
!4223 = !DILocation(line: 64, column: 7, scope: !3387)
!4224 = !DILocation(line: 65, column: 13, scope: !3387)
!4225 = !DILocation(line: 65, column: 27, scope: !3387)
!4226 = !DILocation(line: 65, column: 25, scope: !3387)
!4227 = !DILocation(line: 65, column: 23, scope: !3387)
!4228 = !DILocation(line: 65, column: 3, scope: !3387)
!4229 = !DILocation(line: 66, column: 10, scope: !3387)
!4230 = !DILocation(line: 66, column: 7, scope: !3387)
!4231 = !DILocation(line: 67, column: 2, scope: !3380)
!4232 = distinct !{!4232, !4216, !4231, !3762, !3763}
!4233 = !DILocation(line: 68, column: 1, scope: !3380)
!4234 = !DISubprogram(name: "kstat_irqs_usr", scope: !6, file: !6, line: 85, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4235 = !DISubprogram(name: "seq_write", scope: !1203, file: !1203, line: 114, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!99, !1201, !3083, !1036}
