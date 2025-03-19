; ModuleID = 'arch/x86/mm/pat/memtype_interval.c'
source_filename = "arch/x86/mm/pat/memtype_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rb_augment_callbacks = type { ptr, ptr, ptr }
%struct.memtype = type { i64, i64, i64, i32, %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
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

@memtype_rbroot = internal global %struct.rb_root_cached zeroinitializer, align 8, !dbg !0
@pat_debug_enable = external dso_local global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"\016x86/PAT: Overlap at 0x%Lx-0x%Lx\0A\00", align 1, !dbg !3254
@.str.1 = private unnamed_addr constant [59 x i8] c"\016x86/PAT: %s:%d conflicting memory types %Lx-%Lx %s<->%s\0A\00", align 1, !dbg !3259
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1, !dbg !3264
@.str.3 = private unnamed_addr constant [15 x i8] c"uncached-minus\00", align 1, !dbg !3269
@.str.4 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1, !dbg !3274
@.str.5 = private unnamed_addr constant [16 x i8] c"write-combining\00", align 1, !dbg !3279
@.str.6 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1, !dbg !3281
@.str.7 = private unnamed_addr constant [16 x i8] c"write-protected\00", align 1, !dbg !3286
@.str.8 = private unnamed_addr constant [7 x i8] c"broken\00", align 1, !dbg !3288
@interval_augment = internal constant %struct.rb_augment_callbacks { ptr @interval_augment_propagate, ptr @interval_augment_copy, ptr @interval_augment_rotate }, align 8, !dbg !3293

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_check_insert(ptr noundef %entry_new, ptr noundef %ret_type) #0 align 16 !dbg !3314 {
entry:
  %retval = alloca i32, align 4
  %entry_new.addr = alloca ptr, align 8
  %ret_type.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry_new, ptr %entry_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry_new.addr, metadata !3319, metadata !DIExpression()), !dbg !3322
  store ptr %ret_type, ptr %ret_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_type.addr, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !3324
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3321, metadata !DIExpression()), !dbg !3325
  store i32 0, ptr %err, align 4, !dbg !3325
  %0 = load ptr, ptr %entry_new.addr, align 8, !dbg !3326
  %start = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 0, !dbg !3327
  %1 = load i64, ptr %start, align 8, !dbg !3327
  %2 = load ptr, ptr %entry_new.addr, align 8, !dbg !3328
  %end = getelementptr inbounds %struct.memtype, ptr %2, i32 0, i32 1, !dbg !3329
  %3 = load i64, ptr %end, align 8, !dbg !3329
  %4 = load ptr, ptr %entry_new.addr, align 8, !dbg !3330
  %type = getelementptr inbounds %struct.memtype, ptr %4, i32 0, i32 3, !dbg !3331
  %5 = load i32, ptr %type, align 8, !dbg !3331
  %6 = load ptr, ptr %ret_type.addr, align 8, !dbg !3332
  %call = call i32 @memtype_check_conflict(i64 noundef %1, i64 noundef %3, i32 noundef %5, ptr noundef %6) #9, !dbg !3333
  store i32 %call, ptr %err, align 4, !dbg !3334
  %7 = load i32, ptr %err, align 4, !dbg !3335
  %tobool = icmp ne i32 %7, 0, !dbg !3335
  br i1 %tobool, label %if.then, label %if.end, !dbg !3337

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !3338
  store i32 %8, ptr %retval, align 4, !dbg !3339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3339

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %ret_type.addr, align 8, !dbg !3340
  %tobool1 = icmp ne ptr %9, null, !dbg !3340
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3342

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %ret_type.addr, align 8, !dbg !3343
  %11 = load i32, ptr %10, align 4, !dbg !3344
  %12 = load ptr, ptr %entry_new.addr, align 8, !dbg !3345
  %type3 = getelementptr inbounds %struct.memtype, ptr %12, i32 0, i32 3, !dbg !3346
  store i32 %11, ptr %type3, align 8, !dbg !3347
  br label %if.end4, !dbg !3345

if.end4:                                          ; preds = %if.then2, %if.end
  %13 = load ptr, ptr %entry_new.addr, align 8, !dbg !3348
  call void @interval_insert(ptr noundef %13, ptr noundef @memtype_rbroot) #9, !dbg !3349
  store i32 0, ptr %retval, align 4, !dbg !3350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3350

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !3351
  %14 = load i32, ptr %retval, align 4, !dbg !3351
  ret i32 %14, !dbg !3351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @memtype_check_conflict(i64 noundef %start, i64 noundef %end, i32 noundef %reqtype, ptr noundef %newtype) #0 align 16 !dbg !3352 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %reqtype.addr = alloca i32, align 4
  %newtype.addr = alloca ptr, align 8
  %entry_match = alloca ptr, align 8
  %found_type = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3356, metadata !DIExpression()), !dbg !3364
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3357, metadata !DIExpression()), !dbg !3365
  store i32 %reqtype, ptr %reqtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reqtype.addr, metadata !3358, metadata !DIExpression()), !dbg !3366
  store ptr %newtype, ptr %newtype.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newtype.addr, metadata !3359, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_match) #8, !dbg !3368
  call void @llvm.dbg.declare(metadata ptr %entry_match, metadata !3360, metadata !DIExpression()), !dbg !3369
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_type) #8, !dbg !3370
  call void @llvm.dbg.declare(metadata ptr %found_type, metadata !3361, metadata !DIExpression()), !dbg !3371
  %0 = load i32, ptr %reqtype.addr, align 4, !dbg !3372
  store i32 %0, ptr %found_type, align 4, !dbg !3371
  %1 = load i64, ptr %start.addr, align 8, !dbg !3373
  %2 = load i64, ptr %end.addr, align 8, !dbg !3374
  %sub = sub i64 %2, 1, !dbg !3375
  %call = call ptr @interval_iter_first(ptr noundef @memtype_rbroot, i64 noundef %1, i64 noundef %sub) #9, !dbg !3376
  store ptr %call, ptr %entry_match, align 8, !dbg !3377
  %3 = load ptr, ptr %entry_match, align 8, !dbg !3378
  %cmp = icmp eq ptr %3, null, !dbg !3380
  br i1 %cmp, label %if.then, label %if.end, !dbg !3381

if.then:                                          ; preds = %entry
  br label %success, !dbg !3382

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %entry_match, align 8, !dbg !3383
  %type = getelementptr inbounds %struct.memtype, ptr %4, i32 0, i32 3, !dbg !3385
  %5 = load i32, ptr %type, align 8, !dbg !3385
  %6 = load i32, ptr %found_type, align 4, !dbg !3386
  %cmp1 = icmp ne i32 %5, %6, !dbg !3387
  br i1 %cmp1, label %land.lhs.true, label %if.end4, !dbg !3388

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %newtype.addr, align 8, !dbg !3389
  %cmp2 = icmp eq ptr %7, null, !dbg !3390
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3391

if.then3:                                         ; preds = %land.lhs.true
  br label %failure, !dbg !3392

if.end4:                                          ; preds = %land.lhs.true, %if.end
  br label %do.body, !dbg !3393

do.body:                                          ; preds = %if.end4
  %8 = load i32, ptr @pat_debug_enable, align 4, !dbg !3394
  %tobool = icmp ne i32 %8, 0, !dbg !3394
  br i1 %tobool, label %if.then5, label %if.end10, !dbg !3397

if.then5:                                         ; preds = %do.body
  br label %do.body6, !dbg !3398

do.body6:                                         ; preds = %if.then5
  br label %do.cond, !dbg !3400

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3400

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %entry_match, align 8, !dbg !3398
  %start7 = getelementptr inbounds %struct.memtype, ptr %9, i32 0, i32 0, !dbg !3398
  %10 = load i64, ptr %start7, align 8, !dbg !3398
  %11 = load ptr, ptr %entry_match, align 8, !dbg !3398
  %end8 = getelementptr inbounds %struct.memtype, ptr %11, i32 0, i32 1, !dbg !3398
  %12 = load i64, ptr %end8, align 8, !dbg !3398
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %10, i64 noundef %12) #10, !dbg !3398
  store i32 %call9, ptr %tmp, align 4, !dbg !3400
  %13 = load i32, ptr %tmp, align 4, !dbg !3398
  br label %if.end10, !dbg !3394

if.end10:                                         ; preds = %do.end, %do.body
  br label %do.cond11, !dbg !3397

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !3397

do.end12:                                         ; preds = %do.cond11
  %14 = load ptr, ptr %entry_match, align 8, !dbg !3402
  %type13 = getelementptr inbounds %struct.memtype, ptr %14, i32 0, i32 3, !dbg !3403
  %15 = load i32, ptr %type13, align 8, !dbg !3403
  store i32 %15, ptr %found_type, align 4, !dbg !3404
  %16 = load ptr, ptr %entry_match, align 8, !dbg !3405
  %17 = load i64, ptr %start.addr, align 8, !dbg !3406
  %18 = load i64, ptr %end.addr, align 8, !dbg !3407
  %sub14 = sub i64 %18, 1, !dbg !3408
  %call15 = call ptr @interval_iter_next(ptr noundef %16, i64 noundef %17, i64 noundef %sub14) #9, !dbg !3409
  store ptr %call15, ptr %entry_match, align 8, !dbg !3410
  br label %while.cond, !dbg !3411

while.cond:                                       ; preds = %if.end20, %do.end12
  %19 = load ptr, ptr %entry_match, align 8, !dbg !3412
  %tobool16 = icmp ne ptr %19, null, !dbg !3411
  br i1 %tobool16, label %while.body, label %while.end, !dbg !3411

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %entry_match, align 8, !dbg !3413
  %type17 = getelementptr inbounds %struct.memtype, ptr %20, i32 0, i32 3, !dbg !3416
  %21 = load i32, ptr %type17, align 8, !dbg !3416
  %22 = load i32, ptr %found_type, align 4, !dbg !3417
  %cmp18 = icmp ne i32 %21, %22, !dbg !3418
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3419

if.then19:                                        ; preds = %while.body
  br label %failure, !dbg !3420

if.end20:                                         ; preds = %while.body
  %23 = load ptr, ptr %entry_match, align 8, !dbg !3421
  %24 = load i64, ptr %start.addr, align 8, !dbg !3422
  %25 = load i64, ptr %end.addr, align 8, !dbg !3423
  %sub21 = sub i64 %25, 1, !dbg !3424
  %call22 = call ptr @interval_iter_next(ptr noundef %23, i64 noundef %24, i64 noundef %sub21) #9, !dbg !3425
  store ptr %call22, ptr %entry_match, align 8, !dbg !3426
  br label %while.cond, !dbg !3411, !llvm.loop !3427

while.end:                                        ; preds = %while.cond
  br label %success, !dbg !3411

success:                                          ; preds = %while.end, %if.then
  call void @llvm.dbg.label(metadata !3362), !dbg !3431
  %26 = load ptr, ptr %newtype.addr, align 8, !dbg !3432
  %tobool23 = icmp ne ptr %26, null, !dbg !3432
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3434

if.then24:                                        ; preds = %success
  %27 = load i32, ptr %found_type, align 4, !dbg !3435
  %28 = load ptr, ptr %newtype.addr, align 8, !dbg !3436
  store i32 %27, ptr %28, align 4, !dbg !3437
  br label %if.end25, !dbg !3438

if.end25:                                         ; preds = %if.then24, %success
  store i32 0, ptr %retval, align 4, !dbg !3439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3439

failure:                                          ; preds = %if.then19, %if.then3
  call void @llvm.dbg.label(metadata !3363), !dbg !3440
  br label %do.body26, !dbg !3441

do.body26:                                        ; preds = %failure
  br label %do.cond27, !dbg !3443

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !3443

do.end28:                                         ; preds = %do.cond27
  %call30 = call ptr @get_current() #9, !dbg !3441
  %comm = getelementptr inbounds %struct.task_struct, ptr %call30, i32 0, i32 96, !dbg !3441
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !3441
  %call31 = call ptr @get_current() #9, !dbg !3441
  %pid = getelementptr inbounds %struct.task_struct, ptr %call31, i32 0, i32 62, !dbg !3441
  %29 = load i32, ptr %pid, align 8, !dbg !3441
  %30 = load i64, ptr %start.addr, align 8, !dbg !3441
  %31 = load i64, ptr %end.addr, align 8, !dbg !3441
  %32 = load i32, ptr %found_type, align 4, !dbg !3441
  %call32 = call ptr @cattr_name(i32 noundef %32) #9, !dbg !3441
  %33 = load ptr, ptr %entry_match, align 8, !dbg !3441
  %type33 = getelementptr inbounds %struct.memtype, ptr %33, i32 0, i32 3, !dbg !3441
  %34 = load i32, ptr %type33, align 8, !dbg !3441
  %call34 = call ptr @cattr_name(i32 noundef %34) #9, !dbg !3441
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %arraydecay, i32 noundef %29, i64 noundef %30, i64 noundef %31, ptr noundef %call32, ptr noundef %call34) #10, !dbg !3441
  store i32 %call35, ptr %tmp29, align 4, !dbg !3443
  %35 = load i32, ptr %tmp29, align 4, !dbg !3441
  store i32 -16, ptr %retval, align 4, !dbg !3445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3445

cleanup:                                          ; preds = %do.end28, %if.end25
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_type) #8, !dbg !3446
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_match) #8, !dbg !3446
  %36 = load i32, ptr %retval, align 4, !dbg !3446
  ret i32 %36, !dbg !3446
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_insert(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !3447 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %rb_parent = alloca ptr, align 8
  %start = alloca i64, align 8
  %last = alloca i64, align 8
  %parent = alloca ptr, align 8
  %leftmost = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3452, metadata !DIExpression()), !dbg !3464
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3453, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %link, metadata !3454, metadata !DIExpression()), !dbg !3464
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3464
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !3464
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !3464
  store ptr %rb_node, ptr %link, align 8, !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb_parent) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %rb_parent, metadata !3456, metadata !DIExpression()), !dbg !3464
  store ptr null, ptr %rb_parent, align 8, !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %start, metadata !3457, metadata !DIExpression()), !dbg !3464
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3464
  %call = call i64 @interval_start(ptr noundef %1) #9, !dbg !3464
  store i64 %call, ptr %start, align 8, !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %last, metadata !3458, metadata !DIExpression()), !dbg !3464
  %2 = load ptr, ptr %node.addr, align 8, !dbg !3464
  %call1 = call i64 @interval_end(ptr noundef %2) #9, !dbg !3464
  store i64 %call1, ptr %last, align 8, !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3459, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #8, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !3460, metadata !DIExpression()), !dbg !3464
  store i8 1, ptr %leftmost, align 1, !dbg !3464
  br label %while.cond, !dbg !3464

while.cond:                                       ; preds = %if.end7, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !3464
  %4 = load ptr, ptr %3, align 8, !dbg !3464
  %tobool = icmp ne ptr %4, null, !dbg !3464
  br i1 %tobool, label %while.body, label %while.end, !dbg !3464

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %link, align 8, !dbg !3465
  %6 = load ptr, ptr %5, align 8, !dbg !3465
  store ptr %6, ptr %rb_parent, align 8, !dbg !3465
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3466
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3461, metadata !DIExpression()), !dbg !3466
  %7 = load ptr, ptr %rb_parent, align 8, !dbg !3466
  store ptr %7, ptr %__mptr, align 8, !dbg !3466
  %8 = load ptr, ptr %__mptr, align 8, !dbg !3466
  %add.ptr = getelementptr i8, ptr %8, i64 -32, !dbg !3466
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3465
  %9 = load ptr, ptr %tmp, align 8, !dbg !3466
  store ptr %9, ptr %parent, align 8, !dbg !3465
  %10 = load ptr, ptr %parent, align 8, !dbg !3467
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %10, i32 0, i32 2, !dbg !3467
  %11 = load i64, ptr %subtree_max_end, align 8, !dbg !3467
  %12 = load i64, ptr %last, align 8, !dbg !3467
  %cmp = icmp ult i64 %11, %12, !dbg !3467
  br i1 %cmp, label %if.then, label %if.end, !dbg !3465

if.then:                                          ; preds = %while.body
  %13 = load i64, ptr %last, align 8, !dbg !3467
  %14 = load ptr, ptr %parent, align 8, !dbg !3467
  %subtree_max_end2 = getelementptr inbounds %struct.memtype, ptr %14, i32 0, i32 2, !dbg !3467
  store i64 %13, ptr %subtree_max_end2, align 8, !dbg !3467
  br label %if.end, !dbg !3467

if.end:                                           ; preds = %if.then, %while.body
  %15 = load i64, ptr %start, align 8, !dbg !3469
  %16 = load ptr, ptr %parent, align 8, !dbg !3469
  %call3 = call i64 @interval_start(ptr noundef %16) #9, !dbg !3469
  %cmp4 = icmp ult i64 %15, %call3, !dbg !3469
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3465

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %parent, align 8, !dbg !3469
  %rb = getelementptr inbounds %struct.memtype, ptr %17, i32 0, i32 4, !dbg !3469
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !3469
  store ptr %rb_left, ptr %link, align 8, !dbg !3469
  br label %if.end7, !dbg !3469

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %parent, align 8, !dbg !3471
  %rb6 = getelementptr inbounds %struct.memtype, ptr %18, i32 0, i32 4, !dbg !3471
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !3471
  store ptr %rb_right, ptr %link, align 8, !dbg !3471
  store i8 0, ptr %leftmost, align 1, !dbg !3471
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %while.cond, !dbg !3464, !llvm.loop !3473

while.end:                                        ; preds = %while.cond
  %19 = load i64, ptr %last, align 8, !dbg !3464
  %20 = load ptr, ptr %node.addr, align 8, !dbg !3464
  %subtree_max_end8 = getelementptr inbounds %struct.memtype, ptr %20, i32 0, i32 2, !dbg !3464
  store i64 %19, ptr %subtree_max_end8, align 8, !dbg !3464
  %21 = load ptr, ptr %node.addr, align 8, !dbg !3464
  %rb9 = getelementptr inbounds %struct.memtype, ptr %21, i32 0, i32 4, !dbg !3464
  %22 = load ptr, ptr %rb_parent, align 8, !dbg !3464
  %23 = load ptr, ptr %link, align 8, !dbg !3464
  call void @rb_link_node(ptr noundef %rb9, ptr noundef %22, ptr noundef %23) #9, !dbg !3464
  %24 = load ptr, ptr %node.addr, align 8, !dbg !3464
  %rb10 = getelementptr inbounds %struct.memtype, ptr %24, i32 0, i32 4, !dbg !3464
  %25 = load ptr, ptr %root.addr, align 8, !dbg !3464
  %26 = load i8, ptr %leftmost, align 1, !dbg !3464, !range !3474, !noundef !464
  %tobool11 = trunc i8 %26 to i1, !dbg !3464
  call void @rb_insert_augmented_cached(ptr noundef %rb10, ptr noundef %25, i1 noundef zeroext %tobool11, ptr noundef @interval_augment) #9, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb_parent) #8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #8, !dbg !3464
  ret void, !dbg !3464
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @memtype_erase(i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !3475 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %entry_old = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3479, metadata !DIExpression()), !dbg !3482
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_old) #8, !dbg !3484
  call void @llvm.dbg.declare(metadata ptr %entry_old, metadata !3481, metadata !DIExpression()), !dbg !3485
  %0 = load i64, ptr %start.addr, align 8, !dbg !3486
  %1 = load i64, ptr %end.addr, align 8, !dbg !3487
  %call = call ptr @memtype_match(i64 noundef %0, i64 noundef %1, i32 noundef 0) #9, !dbg !3488
  store ptr %call, ptr %entry_old, align 8, !dbg !3489
  %2 = load ptr, ptr %entry_old, align 8, !dbg !3490
  %tobool = icmp ne ptr %2, null, !dbg !3490
  br i1 %tobool, label %if.end5, label %if.then, !dbg !3492

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %start.addr, align 8, !dbg !3493
  %4 = load i64, ptr %end.addr, align 8, !dbg !3495
  %call1 = call ptr @memtype_match(i64 noundef %3, i64 noundef %4, i32 noundef 1) #9, !dbg !3496
  store ptr %call1, ptr %entry_old, align 8, !dbg !3497
  %5 = load ptr, ptr %entry_old, align 8, !dbg !3498
  %tobool2 = icmp ne ptr %5, null, !dbg !3498
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3500

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @ERR_PTR(i64 noundef -22) #9, !dbg !3501
  store ptr %call4, ptr %retval, align 8, !dbg !3502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3502

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !3503

if.end5:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %entry_old, align 8, !dbg !3504
  %start6 = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 0, !dbg !3506
  %7 = load i64, ptr %start6, align 8, !dbg !3506
  %8 = load i64, ptr %start.addr, align 8, !dbg !3507
  %cmp = icmp eq i64 %7, %8, !dbg !3508
  br i1 %cmp, label %if.then7, label %if.else, !dbg !3509

if.then7:                                         ; preds = %if.end5
  %9 = load ptr, ptr %entry_old, align 8, !dbg !3510
  call void @interval_remove(ptr noundef %9, ptr noundef @memtype_rbroot) #9, !dbg !3512
  br label %if.end9, !dbg !3513

if.else:                                          ; preds = %if.end5
  %10 = load ptr, ptr %entry_old, align 8, !dbg !3514
  call void @interval_remove(ptr noundef %10, ptr noundef @memtype_rbroot) #9, !dbg !3516
  %11 = load i64, ptr %start.addr, align 8, !dbg !3517
  %12 = load ptr, ptr %entry_old, align 8, !dbg !3518
  %end8 = getelementptr inbounds %struct.memtype, ptr %12, i32 0, i32 1, !dbg !3519
  store i64 %11, ptr %end8, align 8, !dbg !3520
  %13 = load ptr, ptr %entry_old, align 8, !dbg !3521
  call void @interval_insert(ptr noundef %13, ptr noundef @memtype_rbroot) #9, !dbg !3522
  store ptr null, ptr %retval, align 8, !dbg !3523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3523

if.end9:                                          ; preds = %if.then7
  %14 = load ptr, ptr %entry_old, align 8, !dbg !3524
  store ptr %14, ptr %retval, align 8, !dbg !3525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3525

cleanup:                                          ; preds = %if.end9, %if.else, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_old) #8, !dbg !3526
  %15 = load ptr, ptr %retval, align 8, !dbg !3526
  ret ptr %15, !dbg !3526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memtype_match(i64 noundef %start, i64 noundef %end, i32 noundef %match_type) #0 align 16 !dbg !3527 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %match_type.addr = alloca i32, align 4
  %entry_match = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3531, metadata !DIExpression()), !dbg !3535
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3532, metadata !DIExpression()), !dbg !3536
  store i32 %match_type, ptr %match_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match_type.addr, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_match) #8, !dbg !3538
  call void @llvm.dbg.declare(metadata ptr %entry_match, metadata !3534, metadata !DIExpression()), !dbg !3539
  %0 = load i64, ptr %start.addr, align 8, !dbg !3540
  %1 = load i64, ptr %end.addr, align 8, !dbg !3541
  %sub = sub i64 %1, 1, !dbg !3542
  %call = call ptr @interval_iter_first(ptr noundef @memtype_rbroot, i64 noundef %0, i64 noundef %sub) #9, !dbg !3543
  store ptr %call, ptr %entry_match, align 8, !dbg !3544
  br label %while.cond, !dbg !3545

while.cond:                                       ; preds = %if.end17, %entry
  %2 = load ptr, ptr %entry_match, align 8, !dbg !3546
  %cmp = icmp ne ptr %2, null, !dbg !3547
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3548

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %entry_match, align 8, !dbg !3549
  %start1 = getelementptr inbounds %struct.memtype, ptr %3, i32 0, i32 0, !dbg !3550
  %4 = load i64, ptr %start1, align 8, !dbg !3550
  %5 = load i64, ptr %end.addr, align 8, !dbg !3551
  %cmp2 = icmp ult i64 %4, %5, !dbg !3552
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !3553
  br i1 %6, label %while.body, label %while.end, !dbg !3545

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %match_type.addr, align 4, !dbg !3554
  %cmp3 = icmp eq i32 %7, 0, !dbg !3557
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !3558

land.lhs.true:                                    ; preds = %while.body
  %8 = load ptr, ptr %entry_match, align 8, !dbg !3559
  %start4 = getelementptr inbounds %struct.memtype, ptr %8, i32 0, i32 0, !dbg !3560
  %9 = load i64, ptr %start4, align 8, !dbg !3560
  %10 = load i64, ptr %start.addr, align 8, !dbg !3561
  %cmp5 = icmp eq i64 %9, %10, !dbg !3562
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !3563

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %entry_match, align 8, !dbg !3564
  %end7 = getelementptr inbounds %struct.memtype, ptr %11, i32 0, i32 1, !dbg !3565
  %12 = load i64, ptr %end7, align 8, !dbg !3565
  %13 = load i64, ptr %end.addr, align 8, !dbg !3566
  %cmp8 = icmp eq i64 %12, %13, !dbg !3567
  br i1 %cmp8, label %if.then, label %if.end, !dbg !3568

if.then:                                          ; preds = %land.lhs.true6
  %14 = load ptr, ptr %entry_match, align 8, !dbg !3569
  store ptr %14, ptr %retval, align 8, !dbg !3570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3570

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %while.body
  %15 = load i32, ptr %match_type.addr, align 4, !dbg !3571
  %cmp9 = icmp eq i32 %15, 1, !dbg !3573
  br i1 %cmp9, label %land.lhs.true10, label %if.end17, !dbg !3574

land.lhs.true10:                                  ; preds = %if.end
  %16 = load ptr, ptr %entry_match, align 8, !dbg !3575
  %start11 = getelementptr inbounds %struct.memtype, ptr %16, i32 0, i32 0, !dbg !3576
  %17 = load i64, ptr %start11, align 8, !dbg !3576
  %18 = load i64, ptr %start.addr, align 8, !dbg !3577
  %cmp12 = icmp ult i64 %17, %18, !dbg !3578
  br i1 %cmp12, label %land.lhs.true13, label %if.end17, !dbg !3579

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %19 = load ptr, ptr %entry_match, align 8, !dbg !3580
  %end14 = getelementptr inbounds %struct.memtype, ptr %19, i32 0, i32 1, !dbg !3581
  %20 = load i64, ptr %end14, align 8, !dbg !3581
  %21 = load i64, ptr %end.addr, align 8, !dbg !3582
  %cmp15 = icmp eq i64 %20, %21, !dbg !3583
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3584

if.then16:                                        ; preds = %land.lhs.true13
  %22 = load ptr, ptr %entry_match, align 8, !dbg !3585
  store ptr %22, ptr %retval, align 8, !dbg !3586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3586

if.end17:                                         ; preds = %land.lhs.true13, %land.lhs.true10, %if.end
  %23 = load ptr, ptr %entry_match, align 8, !dbg !3587
  %24 = load i64, ptr %start.addr, align 8, !dbg !3588
  %25 = load i64, ptr %end.addr, align 8, !dbg !3589
  %sub18 = sub i64 %25, 1, !dbg !3590
  %call19 = call ptr @interval_iter_next(ptr noundef %23, i64 noundef %24, i64 noundef %sub18) #9, !dbg !3591
  store ptr %call19, ptr %entry_match, align 8, !dbg !3592
  br label %while.cond, !dbg !3545, !llvm.loop !3593

while.end:                                        ; preds = %land.end
  store ptr null, ptr %retval, align 8, !dbg !3595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3595

cleanup:                                          ; preds = %while.end, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_match) #8, !dbg !3596
  %26 = load ptr, ptr %retval, align 8, !dbg !3596
  ret ptr %26, !dbg !3596
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !3597 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3602, metadata !DIExpression()), !dbg !3603
  %0 = load i64, ptr %error.addr, align 8, !dbg !3604
  %1 = inttoptr i64 %0 to ptr, !dbg !3605
  ret ptr %1, !dbg !3606
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_remove(ptr noundef %node, ptr noundef %root) #0 align 16 !dbg !3607 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3609, metadata !DIExpression()), !dbg !3611
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3610, metadata !DIExpression()), !dbg !3611
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3611
  %rb = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 4, !dbg !3611
  %1 = load ptr, ptr %root.addr, align 8, !dbg !3611
  call void @rb_erase_augmented_cached(ptr noundef %rb, ptr noundef %1, ptr noundef @interval_augment) #9, !dbg !3611
  ret void, !dbg !3611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @memtype_lookup(i64 noundef %addr) #0 align 16 !dbg !3612 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  %0 = load i64, ptr %addr.addr, align 8, !dbg !3618
  %1 = load i64, ptr %addr.addr, align 8, !dbg !3619
  %add = add i64 %1, 4096, !dbg !3620
  %sub = sub i64 %add, 1, !dbg !3621
  %call = call ptr @interval_iter_first(ptr noundef @memtype_rbroot, i64 noundef %0, i64 noundef %sub) #9, !dbg !3622
  ret ptr %call, !dbg !3623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @interval_iter_first(ptr noundef %root, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !3624 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3628, metadata !DIExpression()), !dbg !3637
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3629, metadata !DIExpression()), !dbg !3637
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3630, metadata !DIExpression()), !dbg !3637
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !3637
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3631, metadata !DIExpression()), !dbg !3637
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #8, !dbg !3637
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !3632, metadata !DIExpression()), !dbg !3637
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3638
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !3638
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !3638
  %1 = load ptr, ptr %rb_node, align 8, !dbg !3638
  %tobool = icmp ne ptr %1, null, !dbg !3638
  br i1 %tobool, label %if.end, label %if.then, !dbg !3637

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3638

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3633, metadata !DIExpression()), !dbg !3640
  %2 = load ptr, ptr %root.addr, align 8, !dbg !3640
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 0, !dbg !3640
  %rb_node2 = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !3640
  %3 = load ptr, ptr %rb_node2, align 8, !dbg !3640
  store ptr %3, ptr %__mptr, align 8, !dbg !3640
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3640
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !3640
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3637
  %5 = load ptr, ptr %tmp, align 8, !dbg !3640
  store ptr %5, ptr %node, align 8, !dbg !3637
  %6 = load ptr, ptr %node, align 8, !dbg !3641
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 2, !dbg !3641
  %7 = load i64, ptr %subtree_max_end, align 8, !dbg !3641
  %8 = load i64, ptr %start.addr, align 8, !dbg !3641
  %cmp = icmp ult i64 %7, %8, !dbg !3641
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !3637

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3641

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #8, !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !3635, metadata !DIExpression()), !dbg !3643
  %9 = load ptr, ptr %root.addr, align 8, !dbg !3643
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %9, i32 0, i32 1, !dbg !3643
  %10 = load ptr, ptr %rb_leftmost, align 8, !dbg !3643
  store ptr %10, ptr %__mptr5, align 8, !dbg !3643
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !3643
  %add.ptr7 = getelementptr i8, ptr %11, i64 -32, !dbg !3643
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !3643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #8, !dbg !3637
  %12 = load ptr, ptr %tmp6, align 8, !dbg !3643
  store ptr %12, ptr %leftmost, align 8, !dbg !3637
  %13 = load ptr, ptr %leftmost, align 8, !dbg !3644
  %call = call i64 @interval_start(ptr noundef %13) #9, !dbg !3644
  %14 = load i64, ptr %last.addr, align 8, !dbg !3644
  %cmp8 = icmp ugt i64 %call, %14, !dbg !3644
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3637

if.then9:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !3644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3644

if.end10:                                         ; preds = %if.end4
  %15 = load ptr, ptr %node, align 8, !dbg !3637
  %16 = load i64, ptr %start.addr, align 8, !dbg !3637
  %17 = load i64, ptr %last.addr, align 8, !dbg !3637
  %call11 = call ptr @interval_subtree_search(ptr noundef %15, i64 noundef %16, i64 noundef %17) #9, !dbg !3637
  store ptr %call11, ptr %retval, align 8, !dbg !3637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3637

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #8, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !3637
  %18 = load ptr, ptr %retval, align 8, !dbg !3637
  ret ptr %18, !dbg !3637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_copy_nth_element(ptr noundef %entry_out, i64 noundef %pos) #0 align 16 !dbg !3646 {
entry:
  %retval = alloca i32, align 4
  %entry_out.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %entry_match = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry_out, ptr %entry_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry_out.addr, metadata !3650, metadata !DIExpression()), !dbg !3654
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !3651, metadata !DIExpression()), !dbg !3655
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_match) #8, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %entry_match, metadata !3652, metadata !DIExpression()), !dbg !3657
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !3658
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3653, metadata !DIExpression()), !dbg !3659
  store i32 1, ptr %i, align 4, !dbg !3659
  %call = call ptr @interval_iter_first(ptr noundef @memtype_rbroot, i64 noundef 0, i64 noundef -1) #9, !dbg !3660
  store ptr %call, ptr %entry_match, align 8, !dbg !3661
  br label %while.cond, !dbg !3662

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %entry_match, align 8, !dbg !3663
  %tobool = icmp ne ptr %0, null, !dbg !3663
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3664

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, ptr %pos.addr, align 8, !dbg !3665
  %2 = load i32, ptr %i, align 4, !dbg !3666
  %conv = sext i32 %2 to i64, !dbg !3666
  %cmp = icmp ne i64 %1, %conv, !dbg !3667
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !3668
  br i1 %3, label %while.body, label %while.end, !dbg !3662

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %entry_match, align 8, !dbg !3669
  %call2 = call ptr @interval_iter_next(ptr noundef %4, i64 noundef 0, i64 noundef -1) #9, !dbg !3671
  store ptr %call2, ptr %entry_match, align 8, !dbg !3672
  %5 = load i32, ptr %i, align 4, !dbg !3673
  %inc = add i32 %5, 1, !dbg !3673
  store i32 %inc, ptr %i, align 4, !dbg !3673
  br label %while.cond, !dbg !3662, !llvm.loop !3674

while.end:                                        ; preds = %land.end
  %6 = load ptr, ptr %entry_match, align 8, !dbg !3676
  %tobool3 = icmp ne ptr %6, null, !dbg !3676
  br i1 %tobool3, label %if.then, label %if.else, !dbg !3678

if.then:                                          ; preds = %while.end
  %7 = load ptr, ptr %entry_out.addr, align 8, !dbg !3679
  %8 = load ptr, ptr %entry_match, align 8, !dbg !3681
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 56, i1 false), !dbg !3682
  store i32 0, ptr %retval, align 4, !dbg !3683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3683

if.else:                                          ; preds = %while.end
  store i32 1, ptr %retval, align 4, !dbg !3684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3684

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_match) #8, !dbg !3686
  %9 = load i32, ptr %retval, align 4, !dbg !3686
  ret i32 %9, !dbg !3686
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @interval_iter_next(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !3687 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %rb = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %right = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3691, metadata !DIExpression()), !dbg !3705
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3692, metadata !DIExpression()), !dbg !3705
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3693, metadata !DIExpression()), !dbg !3705
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #8, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !3694, metadata !DIExpression()), !dbg !3705
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3705
  %rb1 = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 4, !dbg !3705
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 1, !dbg !3705
  %1 = load ptr, ptr %rb_right, align 8, !dbg !3705
  store ptr %1, ptr %rb, align 8, !dbg !3705
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !3695, metadata !DIExpression()), !dbg !3705
  br label %while.cond, !dbg !3705

while.cond:                                       ; preds = %if.end22, %entry
  br label %while.body, !dbg !3705

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %rb, align 8, !dbg !3706
  %tobool = icmp ne ptr %2, null, !dbg !3706
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3707

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #8, !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %right, metadata !3696, metadata !DIExpression()), !dbg !3708
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3700, metadata !DIExpression()), !dbg !3709
  %3 = load ptr, ptr %rb, align 8, !dbg !3709
  store ptr %3, ptr %__mptr, align 8, !dbg !3709
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3709
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !3709
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3709
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3708
  %5 = load ptr, ptr %tmp, align 8, !dbg !3709
  store ptr %5, ptr %right, align 8, !dbg !3708
  %6 = load i64, ptr %start.addr, align 8, !dbg !3710
  %7 = load ptr, ptr %right, align 8, !dbg !3710
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %7, i32 0, i32 2, !dbg !3710
  %8 = load i64, ptr %subtree_max_end, align 8, !dbg !3710
  %cmp = icmp ule i64 %6, %8, !dbg !3710
  br i1 %cmp, label %if.then2, label %if.end, !dbg !3708

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %right, align 8, !dbg !3710
  %10 = load i64, ptr %start.addr, align 8, !dbg !3710
  %11 = load i64, ptr %last.addr, align 8, !dbg !3710
  %call = call ptr @interval_subtree_search(ptr noundef %9, i64 noundef %10, i64 noundef %11) #9, !dbg !3710
  store ptr %call, ptr %retval, align 8, !dbg !3710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3710

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3706
  br label %cleanup, !dbg !3706

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #8, !dbg !3706
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3, !dbg !3708

if.end3:                                          ; preds = %cleanup.cont, %while.body
  br label %do.body, !dbg !3707

do.body:                                          ; preds = %do.cond, %if.end3
  %12 = load ptr, ptr %node.addr, align 8, !dbg !3712
  %rb4 = getelementptr inbounds %struct.memtype, ptr %12, i32 0, i32 4, !dbg !3712
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb4, i32 0, i32 0, !dbg !3712
  %13 = load i64, ptr %__rb_parent_color, align 8, !dbg !3712
  %and = and i64 %13, -4, !dbg !3712
  %14 = inttoptr i64 %and to ptr, !dbg !3712
  store ptr %14, ptr %rb, align 8, !dbg !3712
  %15 = load ptr, ptr %rb, align 8, !dbg !3713
  %tobool5 = icmp ne ptr %15, null, !dbg !3713
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3712

if.then6:                                         ; preds = %do.body
  store ptr null, ptr %retval, align 8, !dbg !3713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !3713

if.end7:                                          ; preds = %do.body
  %16 = load ptr, ptr %node.addr, align 8, !dbg !3712
  %rb8 = getelementptr inbounds %struct.memtype, ptr %16, i32 0, i32 4, !dbg !3712
  store ptr %rb8, ptr %prev, align 8, !dbg !3712
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #8, !dbg !3715
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3702, metadata !DIExpression()), !dbg !3715
  %17 = load ptr, ptr %rb, align 8, !dbg !3715
  store ptr %17, ptr %__mptr9, align 8, !dbg !3715
  %18 = load ptr, ptr %__mptr9, align 8, !dbg !3715
  %add.ptr11 = getelementptr i8, ptr %18, i64 -32, !dbg !3715
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3715
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #8, !dbg !3712
  %19 = load ptr, ptr %tmp10, align 8, !dbg !3715
  store ptr %19, ptr %node.addr, align 8, !dbg !3712
  %20 = load ptr, ptr %node.addr, align 8, !dbg !3712
  %rb12 = getelementptr inbounds %struct.memtype, ptr %20, i32 0, i32 4, !dbg !3712
  %rb_right13 = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 1, !dbg !3712
  %21 = load ptr, ptr %rb_right13, align 8, !dbg !3712
  store ptr %21, ptr %rb, align 8, !dbg !3712
  br label %do.cond, !dbg !3712

do.cond:                                          ; preds = %if.end7
  %22 = load ptr, ptr %prev, align 8, !dbg !3707
  %23 = load ptr, ptr %rb, align 8, !dbg !3707
  %cmp14 = icmp eq ptr %22, %23, !dbg !3707
  br i1 %cmp14, label %do.body, label %do.end, !dbg !3712, !llvm.loop !3716

do.end:                                           ; preds = %do.cond
  %24 = load i64, ptr %last.addr, align 8, !dbg !3717
  %25 = load ptr, ptr %node.addr, align 8, !dbg !3717
  %call15 = call i64 @interval_start(ptr noundef %25) #9, !dbg !3717
  %cmp16 = icmp ult i64 %24, %call15, !dbg !3717
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !3707

if.then17:                                        ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !3717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !3717

if.else:                                          ; preds = %do.end
  %26 = load i64, ptr %start.addr, align 8, !dbg !3719
  %27 = load ptr, ptr %node.addr, align 8, !dbg !3719
  %call18 = call i64 @interval_end(ptr noundef %27) #9, !dbg !3719
  %cmp19 = icmp ule i64 %26, %call18, !dbg !3719
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3717

if.then20:                                        ; preds = %if.else
  %28 = load ptr, ptr %node.addr, align 8, !dbg !3719
  store ptr %28, ptr %retval, align 8, !dbg !3719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !3719

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %while.cond, !dbg !3705, !llvm.loop !3721

cleanup23:                                        ; preds = %if.then20, %if.then17, %if.then6, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #8, !dbg !3705
  %29 = load ptr, ptr %retval, align 8, !dbg !3705
  ret ptr %29, !dbg !3705
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3722 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !3726 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !3739
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3731, metadata !DIExpression()), !dbg !3739
  br label %do.body, !dbg !3739

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3733, metadata !DIExpression()), !dbg !3740
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3740
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !3739
  br label %do.cond, !dbg !3740

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3740

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3737, metadata !DIExpression()), !dbg !3741
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !3741, !srcloc !3742
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3741
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3741
  %3 = inttoptr i64 %2 to ptr, !dbg !3741
  store ptr %3, ptr %tmp, align 8, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !3739
  %4 = load ptr, ptr %tmp, align 8, !dbg !3741
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3739
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3739
  store ptr %5, ptr %tmp1, align 8, !dbg !3739
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !3743
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3739
  ret ptr %6, !dbg !3744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cattr_name(i32 noundef %pcm) #3 align 16 !dbg !3745 {
entry:
  %retval = alloca ptr, align 8
  %pcm.addr = alloca i32, align 4
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  %0 = load i32, ptr %pcm.addr, align 4, !dbg !3751
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !3752

sw.bb:                                            ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8, !dbg !3753
  br label %return, !dbg !3753

sw.bb1:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8, !dbg !3755
  br label %return, !dbg !3755

sw.bb2:                                           ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !3756
  br label %return, !dbg !3756

sw.bb3:                                           ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8, !dbg !3757
  br label %return, !dbg !3757

sw.bb4:                                           ; preds = %entry
  store ptr @.str.6, ptr %retval, align 8, !dbg !3758
  br label %return, !dbg !3758

sw.bb5:                                           ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8, !dbg !3759
  br label %return, !dbg !3759

sw.default:                                       ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !3760
  br label %return, !dbg !3760

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !3761
  ret ptr %1, !dbg !3761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @interval_start(ptr noundef %entry1) #3 align 16 !dbg !3762 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3766, metadata !DIExpression()), !dbg !3767
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3768
  %start = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 0, !dbg !3769
  %1 = load i64, ptr %start, align 8, !dbg !3769
  ret i64 %1, !dbg !3770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @interval_end(ptr noundef %entry1) #3 align 16 !dbg !3771 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3775
  %end = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 1, !dbg !3776
  %1 = load i64, ptr %end, align 8, !dbg !3776
  %sub = sub i64 %1, 1, !dbg !3777
  ret i64 %sub, !dbg !3778
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #3 align 16 !dbg !3779 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3784, metadata !DIExpression()), !dbg !3787
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3785, metadata !DIExpression()), !dbg !3788
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !3786, metadata !DIExpression()), !dbg !3789
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !3790
  %1 = ptrtoint ptr %0 to i64, !dbg !3791
  %2 = load ptr, ptr %node.addr, align 8, !dbg !3792
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !3793
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !3794
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3795
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !3796
  store ptr null, ptr %rb_right, align 8, !dbg !3797
  %4 = load ptr, ptr %node.addr, align 8, !dbg !3798
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !3799
  store ptr null, ptr %rb_left, align 8, !dbg !3800
  %5 = load ptr, ptr %node.addr, align 8, !dbg !3801
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !3802
  store ptr %5, ptr %6, align 8, !dbg !3803
  ret void, !dbg !3804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %newleft, ptr noundef %augment) #3 align 16 !dbg !3805 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %newleft.addr = alloca i8, align 1
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3810, metadata !DIExpression()), !dbg !3814
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3811, metadata !DIExpression()), !dbg !3815
  %frombool = zext i1 %newleft to i8
  store i8 %frombool, ptr %newleft.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %newleft.addr, metadata !3812, metadata !DIExpression()), !dbg !3816
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3813, metadata !DIExpression()), !dbg !3817
  %0 = load i8, ptr %newleft.addr, align 1, !dbg !3818, !range !3474, !noundef !464
  %tobool = trunc i8 %0 to i1, !dbg !3818
  br i1 %tobool, label %if.then, label %if.end, !dbg !3820

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3821
  %2 = load ptr, ptr %root.addr, align 8, !dbg !3822
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !3823
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !3824
  br label %if.end, !dbg !3822

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3825
  %4 = load ptr, ptr %root.addr, align 8, !dbg !3826
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !3827
  %5 = load ptr, ptr %augment.addr, align 8, !dbg !3828
  call void @rb_insert_augmented(ptr noundef %3, ptr noundef %rb_root, ptr noundef %5) #9, !dbg !3829
  ret void, !dbg !3830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #3 align 16 !dbg !3831 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3836, metadata !DIExpression()), !dbg !3839
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3837, metadata !DIExpression()), !dbg !3840
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3838, metadata !DIExpression()), !dbg !3841
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3842
  %1 = load ptr, ptr %root.addr, align 8, !dbg !3843
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !3844
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %2, i32 0, i32 2, !dbg !3845
  %3 = load ptr, ptr %rotate, align 8, !dbg !3845
  call void @__rb_insert_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !3846
  ret void, !dbg !3847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3848 dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_augment_propagate(ptr noundef %rb, ptr noundef %stop) #3 align 16 !dbg !3851 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !3853, metadata !DIExpression()), !dbg !3859
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !3854, metadata !DIExpression()), !dbg !3859
  br label %while.cond, !dbg !3859

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !3859
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !3859
  %cmp = icmp ne ptr %0, %1, !dbg !3859
  br i1 %cmp, label %while.body, label %while.end, !dbg !3859

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3855, metadata !DIExpression()), !dbg !3860
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3861
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3857, metadata !DIExpression()), !dbg !3861
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !3861
  store ptr %2, ptr %__mptr, align 8, !dbg !3861
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3861
  %add.ptr = getelementptr i8, ptr %3, i64 -32, !dbg !3861
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3860
  %4 = load ptr, ptr %tmp, align 8, !dbg !3861
  store ptr %4, ptr %node, align 8, !dbg !3860
  %5 = load ptr, ptr %node, align 8, !dbg !3862
  %call = call zeroext i1 @interval_augment_compute_max(ptr noundef %5, i1 noundef zeroext true) #9, !dbg !3862
  br i1 %call, label %if.then, label %if.end, !dbg !3860

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3862

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !3860
  %rb1 = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 4, !dbg !3860
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 0, !dbg !3860
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !3860
  %and = and i64 %7, -4, !dbg !3860
  %8 = inttoptr i64 %and to ptr, !dbg !3860
  store ptr %8, ptr %rb.addr, align 8, !dbg !3860
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3859
  br label %cleanup, !dbg !3859

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !3859
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3859, !llvm.loop !3864

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !3859

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_augment_copy(ptr noundef %rb_old, ptr noundef %rb_new) #3 align 16 !dbg !3865 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !3867, metadata !DIExpression()), !dbg !3875
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !3868, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #8, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3869, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3870, metadata !DIExpression()), !dbg !3876
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !3876
  store ptr %0, ptr %__mptr, align 8, !dbg !3876
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3876
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !3876
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3876
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3875
  %2 = load ptr, ptr %tmp, align 8, !dbg !3876
  store ptr %2, ptr %old, align 8, !dbg !3875
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #8, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3872, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #8, !dbg !3877
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3873, metadata !DIExpression()), !dbg !3877
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !3877
  store ptr %3, ptr %__mptr1, align 8, !dbg !3877
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !3877
  %add.ptr3 = getelementptr i8, ptr %4, i64 -32, !dbg !3877
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !3877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #8, !dbg !3875
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3877
  store ptr %5, ptr %new, align 8, !dbg !3875
  %6 = load ptr, ptr %old, align 8, !dbg !3875
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 2, !dbg !3875
  %7 = load i64, ptr %subtree_max_end, align 8, !dbg !3875
  %8 = load ptr, ptr %new, align 8, !dbg !3875
  %subtree_max_end4 = getelementptr inbounds %struct.memtype, ptr %8, i32 0, i32 2, !dbg !3875
  store i64 %7, ptr %subtree_max_end4, align 8, !dbg !3875
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #8, !dbg !3875
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #8, !dbg !3875
  ret void, !dbg !3875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @interval_augment_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !3878 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !3880, metadata !DIExpression()), !dbg !3888
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !3881, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #8, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3882, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3889
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3883, metadata !DIExpression()), !dbg !3889
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !3889
  store ptr %0, ptr %__mptr, align 8, !dbg !3889
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3889
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !3889
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3888
  %2 = load ptr, ptr %tmp, align 8, !dbg !3889
  store ptr %2, ptr %old, align 8, !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #8, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #8, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3886, metadata !DIExpression()), !dbg !3890
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !3890
  store ptr %3, ptr %__mptr1, align 8, !dbg !3890
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !3890
  %add.ptr3 = getelementptr i8, ptr %4, i64 -32, !dbg !3890
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !3890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #8, !dbg !3888
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3890
  store ptr %5, ptr %new, align 8, !dbg !3888
  %6 = load ptr, ptr %old, align 8, !dbg !3888
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 2, !dbg !3888
  %7 = load i64, ptr %subtree_max_end, align 8, !dbg !3888
  %8 = load ptr, ptr %new, align 8, !dbg !3888
  %subtree_max_end4 = getelementptr inbounds %struct.memtype, ptr %8, i32 0, i32 2, !dbg !3888
  store i64 %7, ptr %subtree_max_end4, align 8, !dbg !3888
  %9 = load ptr, ptr %old, align 8, !dbg !3888
  %call = call zeroext i1 @interval_augment_compute_max(ptr noundef %9, i1 noundef zeroext false) #9, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #8, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #8, !dbg !3888
  ret void, !dbg !3888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @interval_augment_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #3 align 16 !dbg !3891 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca ptr, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %max = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3895, metadata !DIExpression()), !dbg !3907
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !3896, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #8, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3897, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #8, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %max, metadata !3898, metadata !DIExpression()), !dbg !3907
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3907
  %call = call i64 @interval_end(ptr noundef %0) #9, !dbg !3907
  store i64 %call, ptr %max, align 8, !dbg !3907
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3908
  %rb = getelementptr inbounds %struct.memtype, ptr %1, i32 0, i32 4, !dbg !3908
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !3908
  %2 = load ptr, ptr %rb_left, align 8, !dbg !3908
  %tobool = icmp ne ptr %2, null, !dbg !3908
  br i1 %tobool, label %if.then, label %if.end5, !dbg !3907

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3899, metadata !DIExpression()), !dbg !3909
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3909
  %rb1 = getelementptr inbounds %struct.memtype, ptr %3, i32 0, i32 4, !dbg !3909
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !3909
  %4 = load ptr, ptr %rb_left2, align 8, !dbg !3909
  store ptr %4, ptr %__mptr, align 8, !dbg !3909
  %5 = load ptr, ptr %__mptr, align 8, !dbg !3909
  %add.ptr = getelementptr i8, ptr %5, i64 -32, !dbg !3909
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !3910
  %6 = load ptr, ptr %tmp, align 8, !dbg !3909
  store ptr %6, ptr %child, align 8, !dbg !3910
  %7 = load ptr, ptr %child, align 8, !dbg !3911
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %7, i32 0, i32 2, !dbg !3911
  %8 = load i64, ptr %subtree_max_end, align 8, !dbg !3911
  %9 = load i64, ptr %max, align 8, !dbg !3911
  %cmp = icmp ugt i64 %8, %9, !dbg !3911
  br i1 %cmp, label %if.then3, label %if.end, !dbg !3910

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %child, align 8, !dbg !3911
  %subtree_max_end4 = getelementptr inbounds %struct.memtype, ptr %10, i32 0, i32 2, !dbg !3911
  %11 = load i64, ptr %subtree_max_end4, align 8, !dbg !3911
  store i64 %11, ptr %max, align 8, !dbg !3911
  br label %if.end, !dbg !3911

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !3910

if.end5:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %node.addr, align 8, !dbg !3913
  %rb6 = getelementptr inbounds %struct.memtype, ptr %12, i32 0, i32 4, !dbg !3913
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !3913
  %13 = load ptr, ptr %rb_right, align 8, !dbg !3913
  %tobool7 = icmp ne ptr %13, null, !dbg !3913
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !3907

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #8, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3903, metadata !DIExpression()), !dbg !3914
  %14 = load ptr, ptr %node.addr, align 8, !dbg !3914
  %rb10 = getelementptr inbounds %struct.memtype, ptr %14, i32 0, i32 4, !dbg !3914
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %rb10, i32 0, i32 1, !dbg !3914
  %15 = load ptr, ptr %rb_right11, align 8, !dbg !3914
  store ptr %15, ptr %__mptr9, align 8, !dbg !3914
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !3914
  %add.ptr13 = getelementptr i8, ptr %16, i64 -32, !dbg !3914
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #8, !dbg !3915
  %17 = load ptr, ptr %tmp12, align 8, !dbg !3914
  store ptr %17, ptr %child, align 8, !dbg !3915
  %18 = load ptr, ptr %child, align 8, !dbg !3916
  %subtree_max_end14 = getelementptr inbounds %struct.memtype, ptr %18, i32 0, i32 2, !dbg !3916
  %19 = load i64, ptr %subtree_max_end14, align 8, !dbg !3916
  %20 = load i64, ptr %max, align 8, !dbg !3916
  %cmp15 = icmp ugt i64 %19, %20, !dbg !3916
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !3915

if.then16:                                        ; preds = %if.then8
  %21 = load ptr, ptr %child, align 8, !dbg !3916
  %subtree_max_end17 = getelementptr inbounds %struct.memtype, ptr %21, i32 0, i32 2, !dbg !3916
  %22 = load i64, ptr %subtree_max_end17, align 8, !dbg !3916
  store i64 %22, ptr %max, align 8, !dbg !3916
  br label %if.end18, !dbg !3916

if.end18:                                         ; preds = %if.then16, %if.then8
  br label %if.end19, !dbg !3915

if.end19:                                         ; preds = %if.end18, %if.end5
  %23 = load i8, ptr %exit.addr, align 1, !dbg !3918, !range !3474, !noundef !464
  %tobool20 = trunc i8 %23 to i1, !dbg !3918
  br i1 %tobool20, label %land.lhs.true, label %if.end24, !dbg !3918

land.lhs.true:                                    ; preds = %if.end19
  %24 = load ptr, ptr %node.addr, align 8, !dbg !3918
  %subtree_max_end21 = getelementptr inbounds %struct.memtype, ptr %24, i32 0, i32 2, !dbg !3918
  %25 = load i64, ptr %subtree_max_end21, align 8, !dbg !3918
  %26 = load i64, ptr %max, align 8, !dbg !3918
  %cmp22 = icmp eq i64 %25, %26, !dbg !3918
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3907

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !3918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3918

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  %27 = load i64, ptr %max, align 8, !dbg !3907
  %28 = load ptr, ptr %node.addr, align 8, !dbg !3907
  %subtree_max_end25 = getelementptr inbounds %struct.memtype, ptr %28, i32 0, i32 2, !dbg !3907
  store i64 %27, ptr %subtree_max_end25, align 8, !dbg !3907
  store i1 false, ptr %retval, align 1, !dbg !3907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3907

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #8, !dbg !3907
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #8, !dbg !3907
  %29 = load i1, ptr %retval, align 1, !dbg !3907
  ret i1 %29, !dbg !3907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented_cached(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !3920 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3924, metadata !DIExpression()), !dbg !3927
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3925, metadata !DIExpression()), !dbg !3928
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3926, metadata !DIExpression()), !dbg !3929
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3930
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !3932
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !3932
  %2 = load ptr, ptr %node.addr, align 8, !dbg !3933
  %cmp = icmp eq ptr %1, %2, !dbg !3934
  br i1 %cmp, label %if.then, label %if.end, !dbg !3935

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3936
  %call = call ptr @rb_next(ptr noundef %3) #9, !dbg !3937
  %4 = load ptr, ptr %root.addr, align 8, !dbg !3938
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !3939
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !3940
  br label %if.end, !dbg !3938

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !3941
  %6 = load ptr, ptr %root.addr, align 8, !dbg !3942
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !3943
  %7 = load ptr, ptr %augment.addr, align 8, !dbg !3944
  call void @rb_erase_augmented(ptr noundef %5, ptr noundef %rb_root, ptr noundef %7) #9, !dbg !3945
  ret void, !dbg !3946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3947 dso_local ptr @rb_next(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !3952 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3954, metadata !DIExpression()), !dbg !3958
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3955, metadata !DIExpression()), !dbg !3959
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3956, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #8, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !3957, metadata !DIExpression()), !dbg !3962
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3963
  %1 = load ptr, ptr %root.addr, align 8, !dbg !3964
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !3965
  %call = call ptr @__rb_erase_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !3966
  store ptr %call, ptr %rebalance, align 8, !dbg !3962
  %3 = load ptr, ptr %rebalance, align 8, !dbg !3967
  %tobool = icmp ne ptr %3, null, !dbg !3967
  br i1 %tobool, label %if.then, label %if.end, !dbg !3969

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rebalance, align 8, !dbg !3970
  %5 = load ptr, ptr %root.addr, align 8, !dbg !3971
  %6 = load ptr, ptr %augment.addr, align 8, !dbg !3972
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %6, i32 0, i32 2, !dbg !3973
  %7 = load ptr, ptr %rotate, align 8, !dbg !3973
  call void @__rb_erase_color(ptr noundef %4, ptr noundef %5, ptr noundef %7) #9, !dbg !3974
  br label %if.end, !dbg !3974

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #8, !dbg !3975
  ret void, !dbg !3975
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !3976 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  %pc = alloca i64, align 8
  %successor = alloca ptr, align 8
  %child2 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3980, metadata !DIExpression()), !dbg !3993
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3981, metadata !DIExpression()), !dbg !3994
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3982, metadata !DIExpression()), !dbg !3995
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #8, !dbg !3996
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3983, metadata !DIExpression()), !dbg !3997
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3998
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !3999
  %1 = load ptr, ptr %rb_right, align 8, !dbg !3999
  store ptr %1, ptr %child, align 8, !dbg !3997
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3984, metadata !DIExpression()), !dbg !4001
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4002
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !4003
  %3 = load ptr, ptr %rb_left, align 8, !dbg !4003
  store ptr %3, ptr %tmp, align 8, !dbg !4001
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #8, !dbg !4004
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3985, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #8, !dbg !4004
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !3986, metadata !DIExpression()), !dbg !4006
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #8, !dbg !4007
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !3987, metadata !DIExpression()), !dbg !4008
  %4 = load ptr, ptr %tmp, align 8, !dbg !4009
  %tobool = icmp ne ptr %4, null, !dbg !4009
  br i1 %tobool, label %if.else6, label %if.then, !dbg !4010

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !4011
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !4013
  %6 = load i64, ptr %__rb_parent_color, align 8, !dbg !4013
  store i64 %6, ptr %pc, align 8, !dbg !4014
  %7 = load i64, ptr %pc, align 8, !dbg !4015
  %and = and i64 %7, -4, !dbg !4015
  %8 = inttoptr i64 %and to ptr, !dbg !4015
  store ptr %8, ptr %parent, align 8, !dbg !4016
  %9 = load ptr, ptr %node.addr, align 8, !dbg !4017
  %10 = load ptr, ptr %child, align 8, !dbg !4018
  %11 = load ptr, ptr %parent, align 8, !dbg !4019
  %12 = load ptr, ptr %root.addr, align 8, !dbg !4020
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #9, !dbg !4021
  %13 = load ptr, ptr %child, align 8, !dbg !4022
  %tobool1 = icmp ne ptr %13, null, !dbg !4022
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4024

if.then2:                                         ; preds = %if.then
  %14 = load i64, ptr %pc, align 8, !dbg !4025
  %15 = load ptr, ptr %child, align 8, !dbg !4027
  %__rb_parent_color3 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 0, !dbg !4028
  store i64 %14, ptr %__rb_parent_color3, align 8, !dbg !4029
  store ptr null, ptr %rebalance, align 8, !dbg !4030
  br label %if.end, !dbg !4031

if.else:                                          ; preds = %if.then
  %16 = load i64, ptr %pc, align 8, !dbg !4032
  %and4 = and i64 %16, 1, !dbg !4032
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4032
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !4032

cond.true:                                        ; preds = %if.else
  %17 = load ptr, ptr %parent, align 8, !dbg !4033
  br label %cond.end, !dbg !4032

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !4032

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !4032
  store ptr %cond, ptr %rebalance, align 8, !dbg !4034
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  %18 = load ptr, ptr %parent, align 8, !dbg !4035
  store ptr %18, ptr %tmp, align 8, !dbg !4036
  br label %if.end69, !dbg !4037

if.else6:                                         ; preds = %entry
  %19 = load ptr, ptr %child, align 8, !dbg !4038
  %tobool7 = icmp ne ptr %19, null, !dbg !4038
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !4039

if.then8:                                         ; preds = %if.else6
  %20 = load ptr, ptr %node.addr, align 8, !dbg !4040
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !4042
  %21 = load i64, ptr %__rb_parent_color9, align 8, !dbg !4042
  store i64 %21, ptr %pc, align 8, !dbg !4043
  %22 = load ptr, ptr %tmp, align 8, !dbg !4044
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 0, !dbg !4045
  store i64 %21, ptr %__rb_parent_color10, align 8, !dbg !4046
  %23 = load i64, ptr %pc, align 8, !dbg !4047
  %and11 = and i64 %23, -4, !dbg !4047
  %24 = inttoptr i64 %and11 to ptr, !dbg !4047
  store ptr %24, ptr %parent, align 8, !dbg !4048
  %25 = load ptr, ptr %node.addr, align 8, !dbg !4049
  %26 = load ptr, ptr %tmp, align 8, !dbg !4050
  %27 = load ptr, ptr %parent, align 8, !dbg !4051
  %28 = load ptr, ptr %root.addr, align 8, !dbg !4052
  call void @__rb_change_child(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #9, !dbg !4053
  store ptr null, ptr %rebalance, align 8, !dbg !4054
  %29 = load ptr, ptr %parent, align 8, !dbg !4055
  store ptr %29, ptr %tmp, align 8, !dbg !4056
  br label %if.end68, !dbg !4057

if.else12:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr %successor) #8, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !3988, metadata !DIExpression()), !dbg !4059
  %30 = load ptr, ptr %child, align 8, !dbg !4060
  store ptr %30, ptr %successor, align 8, !dbg !4059
  call void @llvm.lifetime.start.p0(i64 8, ptr %child2) #8, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %child2, metadata !3992, metadata !DIExpression()), !dbg !4061
  %31 = load ptr, ptr %child, align 8, !dbg !4062
  %rb_left13 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2, !dbg !4063
  %32 = load ptr, ptr %rb_left13, align 8, !dbg !4063
  store ptr %32, ptr %tmp, align 8, !dbg !4064
  %33 = load ptr, ptr %tmp, align 8, !dbg !4065
  %tobool14 = icmp ne ptr %33, null, !dbg !4065
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !4067

if.then15:                                        ; preds = %if.else12
  %34 = load ptr, ptr %successor, align 8, !dbg !4068
  store ptr %34, ptr %parent, align 8, !dbg !4070
  %35 = load ptr, ptr %successor, align 8, !dbg !4071
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !4072
  %36 = load ptr, ptr %rb_right16, align 8, !dbg !4072
  store ptr %36, ptr %child2, align 8, !dbg !4073
  %37 = load ptr, ptr %augment.addr, align 8, !dbg !4074
  %copy = getelementptr inbounds %struct.rb_augment_callbacks, ptr %37, i32 0, i32 1, !dbg !4075
  %38 = load ptr, ptr %copy, align 8, !dbg !4075
  %39 = load ptr, ptr %node.addr, align 8, !dbg !4076
  %40 = load ptr, ptr %successor, align 8, !dbg !4077
  call void %38(ptr noundef %39, ptr noundef %40) #9, !dbg !4074
  br label %if.end42, !dbg !4078

if.else17:                                        ; preds = %if.else12
  br label %do.body, !dbg !4079

do.body:                                          ; preds = %do.cond, %if.else17
  %41 = load ptr, ptr %successor, align 8, !dbg !4081
  store ptr %41, ptr %parent, align 8, !dbg !4083
  %42 = load ptr, ptr %tmp, align 8, !dbg !4084
  store ptr %42, ptr %successor, align 8, !dbg !4085
  %43 = load ptr, ptr %tmp, align 8, !dbg !4086
  %rb_left18 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2, !dbg !4087
  %44 = load ptr, ptr %rb_left18, align 8, !dbg !4087
  store ptr %44, ptr %tmp, align 8, !dbg !4088
  br label %do.cond, !dbg !4089

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %tmp, align 8, !dbg !4090
  %tobool19 = icmp ne ptr %45, null, !dbg !4089
  br i1 %tobool19, label %do.body, label %do.end, !dbg !4089, !llvm.loop !4091

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %successor, align 8, !dbg !4093
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !4094
  %47 = load ptr, ptr %rb_right20, align 8, !dbg !4094
  store ptr %47, ptr %child2, align 8, !dbg !4095
  br label %do.body21, !dbg !4096

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !4097

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !4099

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4099

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !4097

do.body25:                                        ; preds = %do.end24
  %48 = load ptr, ptr %child2, align 8, !dbg !4101
  %49 = load ptr, ptr %parent, align 8, !dbg !4101
  %rb_left26 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2, !dbg !4101
  store volatile ptr %48, ptr %rb_left26, align 8, !dbg !4101
  br label %do.cond27, !dbg !4101

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !4101

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !4097

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !4097

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !4103

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !4104

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !4106

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4106

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !4104

do.body35:                                        ; preds = %do.end34
  %50 = load ptr, ptr %child, align 8, !dbg !4108
  %51 = load ptr, ptr %successor, align 8, !dbg !4108
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1, !dbg !4108
  store volatile ptr %50, ptr %rb_right36, align 8, !dbg !4108
  br label %do.cond37, !dbg !4108

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !4108

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !4104

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !4104

do.end40:                                         ; preds = %do.cond39
  %52 = load ptr, ptr %child, align 8, !dbg !4110
  %53 = load ptr, ptr %successor, align 8, !dbg !4111
  call void @rb_set_parent(ptr noundef %52, ptr noundef %53) #9, !dbg !4112
  %54 = load ptr, ptr %augment.addr, align 8, !dbg !4113
  %copy41 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %54, i32 0, i32 1, !dbg !4114
  %55 = load ptr, ptr %copy41, align 8, !dbg !4114
  %56 = load ptr, ptr %node.addr, align 8, !dbg !4115
  %57 = load ptr, ptr %successor, align 8, !dbg !4116
  call void %55(ptr noundef %56, ptr noundef %57) #9, !dbg !4113
  %58 = load ptr, ptr %augment.addr, align 8, !dbg !4117
  %propagate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %58, i32 0, i32 0, !dbg !4118
  %59 = load ptr, ptr %propagate, align 8, !dbg !4118
  %60 = load ptr, ptr %parent, align 8, !dbg !4119
  %61 = load ptr, ptr %successor, align 8, !dbg !4120
  call void %59(ptr noundef %60, ptr noundef %61) #9, !dbg !4117
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then15
  %62 = load ptr, ptr %node.addr, align 8, !dbg !4121
  %rb_left43 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !4122
  %63 = load ptr, ptr %rb_left43, align 8, !dbg !4122
  store ptr %63, ptr %tmp, align 8, !dbg !4123
  br label %do.body44, !dbg !4124

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !4125

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !4127

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !4127

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !4125

do.body48:                                        ; preds = %do.end47
  %64 = load ptr, ptr %tmp, align 8, !dbg !4129
  %65 = load ptr, ptr %successor, align 8, !dbg !4129
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2, !dbg !4129
  store volatile ptr %64, ptr %rb_left49, align 8, !dbg !4129
  br label %do.cond50, !dbg !4129

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !4129

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !4125

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !4125

do.end53:                                         ; preds = %do.cond52
  %66 = load ptr, ptr %tmp, align 8, !dbg !4131
  %67 = load ptr, ptr %successor, align 8, !dbg !4132
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #9, !dbg !4133
  %68 = load ptr, ptr %node.addr, align 8, !dbg !4134
  %__rb_parent_color54 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 0, !dbg !4135
  %69 = load i64, ptr %__rb_parent_color54, align 8, !dbg !4135
  store i64 %69, ptr %pc, align 8, !dbg !4136
  %70 = load i64, ptr %pc, align 8, !dbg !4137
  %and55 = and i64 %70, -4, !dbg !4137
  %71 = inttoptr i64 %and55 to ptr, !dbg !4137
  store ptr %71, ptr %tmp, align 8, !dbg !4138
  %72 = load ptr, ptr %node.addr, align 8, !dbg !4139
  %73 = load ptr, ptr %successor, align 8, !dbg !4140
  %74 = load ptr, ptr %tmp, align 8, !dbg !4141
  %75 = load ptr, ptr %root.addr, align 8, !dbg !4142
  call void @__rb_change_child(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75) #9, !dbg !4143
  %76 = load ptr, ptr %child2, align 8, !dbg !4144
  %tobool56 = icmp ne ptr %76, null, !dbg !4144
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !4146

if.then57:                                        ; preds = %do.end53
  %77 = load ptr, ptr %child2, align 8, !dbg !4147
  %78 = load ptr, ptr %parent, align 8, !dbg !4149
  call void @rb_set_parent_color(ptr noundef %77, ptr noundef %78, i32 noundef 1) #9, !dbg !4150
  store ptr null, ptr %rebalance, align 8, !dbg !4151
  br label %if.end66, !dbg !4152

if.else58:                                        ; preds = %do.end53
  %79 = load ptr, ptr %successor, align 8, !dbg !4153
  %__rb_parent_color59 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 0, !dbg !4153
  %80 = load i64, ptr %__rb_parent_color59, align 8, !dbg !4153
  %and60 = and i64 %80, 1, !dbg !4153
  %tobool61 = icmp ne i64 %and60, 0, !dbg !4153
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !4153

cond.true62:                                      ; preds = %if.else58
  %81 = load ptr, ptr %parent, align 8, !dbg !4155
  br label %cond.end64, !dbg !4153

cond.false63:                                     ; preds = %if.else58
  br label %cond.end64, !dbg !4153

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %81, %cond.true62 ], [ null, %cond.false63 ], !dbg !4153
  store ptr %cond65, ptr %rebalance, align 8, !dbg !4156
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.then57
  %82 = load i64, ptr %pc, align 8, !dbg !4157
  %83 = load ptr, ptr %successor, align 8, !dbg !4158
  %__rb_parent_color67 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 0, !dbg !4159
  store i64 %82, ptr %__rb_parent_color67, align 8, !dbg !4160
  %84 = load ptr, ptr %successor, align 8, !dbg !4161
  store ptr %84, ptr %tmp, align 8, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 8, ptr %child2) #8, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %successor) #8, !dbg !4163
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.then8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %85 = load ptr, ptr %augment.addr, align 8, !dbg !4164
  %propagate70 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %85, i32 0, i32 0, !dbg !4165
  %86 = load ptr, ptr %propagate70, align 8, !dbg !4165
  %87 = load ptr, ptr %tmp, align 8, !dbg !4166
  call void %86(ptr noundef %87, ptr noundef null) #9, !dbg !4164
  %88 = load ptr, ptr %rebalance, align 8, !dbg !4167
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #8, !dbg !4168
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #8, !dbg !4168
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #8, !dbg !4168
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !4168
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #8, !dbg !4168
  ret ptr %88, !dbg !4169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4170 dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #3 align 16 !dbg !4171 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4175, metadata !DIExpression()), !dbg !4179
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4176, metadata !DIExpression()), !dbg !4180
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4177, metadata !DIExpression()), !dbg !4181
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4178, metadata !DIExpression()), !dbg !4182
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4183
  %tobool = icmp ne ptr %0, null, !dbg !4183
  br i1 %tobool, label %if.then, label %if.else13, !dbg !4185

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4186
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !4189
  %2 = load ptr, ptr %rb_left, align 8, !dbg !4189
  %3 = load ptr, ptr %old.addr, align 8, !dbg !4190
  %cmp = icmp eq ptr %2, %3, !dbg !4191
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4192

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !4193

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4194

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4196

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4194

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %new.addr, align 8, !dbg !4198
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !4198
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !4198
  store volatile ptr %4, ptr %rb_left4, align 8, !dbg !4198
  br label %do.end5, !dbg !4198

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4194

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !4194

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !4200

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !4201

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4203

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !4201

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4205
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !4205
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1, !dbg !4205
  store volatile ptr %6, ptr %rb_right, align 8, !dbg !4205
  br label %do.end11, !dbg !4205

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !4201

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !4207

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !4208

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !4209

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4211

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !4209

do.body17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4213
  %9 = load ptr, ptr %root.addr, align 8, !dbg !4213
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %9, i32 0, i32 0, !dbg !4213
  store volatile ptr %8, ptr %rb_node, align 8, !dbg !4213
  br label %do.end18, !dbg !4213

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !4209

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !4215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent(ptr noundef %rb, ptr noundef %p) #3 align 16 !dbg !4216 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !4218, metadata !DIExpression()), !dbg !4220
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4219, metadata !DIExpression()), !dbg !4221
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !4222
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !4222
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !4222
  %and = and i64 %1, 1, !dbg !4222
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4223
  %3 = ptrtoint ptr %2 to i64, !dbg !4224
  %add = add i64 %and, %3, !dbg !4225
  %4 = load ptr, ptr %rb.addr, align 8, !dbg !4226
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !4227
  store i64 %add, ptr %__rb_parent_color1, align 8, !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent_color(ptr noundef %rb, ptr noundef %p, i32 noundef %color) #3 align 16 !dbg !4230 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !4234, metadata !DIExpression()), !dbg !4237
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4235, metadata !DIExpression()), !dbg !4238
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !4236, metadata !DIExpression()), !dbg !4239
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4240
  %1 = ptrtoint ptr %0 to i64, !dbg !4241
  %2 = load i32, ptr %color.addr, align 4, !dbg !4242
  %conv = sext i32 %2 to i64, !dbg !4242
  %add = add i64 %1, %conv, !dbg !4243
  %3 = load ptr, ptr %rb.addr, align 8, !dbg !4244
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !4245
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !4246
  ret void, !dbg !4247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @interval_subtree_search(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !4248 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4250, metadata !DIExpression()), !dbg !4265
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4251, metadata !DIExpression()), !dbg !4265
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !4252, metadata !DIExpression()), !dbg !4265
  br label %while.body, !dbg !4265

while.body:                                       ; preds = %entry, %cleanup, %if.then21
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4266
  %rb = getelementptr inbounds %struct.memtype, ptr %0, i32 0, i32 4, !dbg !4266
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !4266
  %1 = load ptr, ptr %rb_left, align 8, !dbg !4266
  %tobool = icmp ne ptr %1, null, !dbg !4266
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4267

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #8, !dbg !4268
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4253, metadata !DIExpression()), !dbg !4268
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !4269
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4257, metadata !DIExpression()), !dbg !4269
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4269
  %rb1 = getelementptr inbounds %struct.memtype, ptr %2, i32 0, i32 4, !dbg !4269
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !4269
  %3 = load ptr, ptr %rb_left2, align 8, !dbg !4269
  store ptr %3, ptr %__mptr, align 8, !dbg !4269
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4269
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !4269
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !4268
  %5 = load ptr, ptr %tmp, align 8, !dbg !4269
  store ptr %5, ptr %left, align 8, !dbg !4268
  %6 = load i64, ptr %start.addr, align 8, !dbg !4270
  %7 = load ptr, ptr %left, align 8, !dbg !4270
  %subtree_max_end = getelementptr inbounds %struct.memtype, ptr %7, i32 0, i32 2, !dbg !4270
  %8 = load i64, ptr %subtree_max_end, align 8, !dbg !4270
  %cmp = icmp ule i64 %6, %8, !dbg !4270
  br i1 %cmp, label %if.then3, label %if.end, !dbg !4268

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %left, align 8, !dbg !4272
  store ptr %9, ptr %node.addr, align 8, !dbg !4272
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4272, !llvm.loop !4274

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4266
  br label %cleanup, !dbg !4266

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #8, !dbg !4266
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.body
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !4268

if.end4:                                          ; preds = %cleanup.cont, %while.body
  %10 = load ptr, ptr %node.addr, align 8, !dbg !4275
  %call = call i64 @interval_start(ptr noundef %10) #9, !dbg !4275
  %11 = load i64, ptr %last.addr, align 8, !dbg !4275
  %cmp5 = icmp ule i64 %call, %11, !dbg !4275
  br i1 %cmp5, label %if.then6, label %if.end24, !dbg !4267

if.then6:                                         ; preds = %if.end4
  %12 = load i64, ptr %start.addr, align 8, !dbg !4276
  %13 = load ptr, ptr %node.addr, align 8, !dbg !4276
  %call7 = call i64 @interval_end(ptr noundef %13) #9, !dbg !4276
  %cmp8 = icmp ule i64 %12, %call7, !dbg !4276
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4278

if.then9:                                         ; preds = %if.then6
  %14 = load ptr, ptr %node.addr, align 8, !dbg !4276
  store ptr %14, ptr %retval, align 8, !dbg !4276
  br label %return, !dbg !4276

if.end10:                                         ; preds = %if.then6
  %15 = load ptr, ptr %node.addr, align 8, !dbg !4279
  %rb11 = getelementptr inbounds %struct.memtype, ptr %15, i32 0, i32 4, !dbg !4279
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb11, i32 0, i32 1, !dbg !4279
  %16 = load ptr, ptr %rb_right, align 8, !dbg !4279
  %tobool12 = icmp ne ptr %16, null, !dbg !4279
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !4278

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #8, !dbg !4280
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !4259, metadata !DIExpression()), !dbg !4280
  %17 = load ptr, ptr %node.addr, align 8, !dbg !4280
  %rb15 = getelementptr inbounds %struct.memtype, ptr %17, i32 0, i32 4, !dbg !4280
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %rb15, i32 0, i32 1, !dbg !4280
  %18 = load ptr, ptr %rb_right16, align 8, !dbg !4280
  store ptr %18, ptr %__mptr14, align 8, !dbg !4280
  %19 = load ptr, ptr %__mptr14, align 8, !dbg !4280
  %add.ptr18 = getelementptr i8, ptr %19, i64 -32, !dbg !4280
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !4280
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #8, !dbg !4281
  %20 = load ptr, ptr %tmp17, align 8, !dbg !4280
  store ptr %20, ptr %node.addr, align 8, !dbg !4281
  %21 = load i64, ptr %start.addr, align 8, !dbg !4282
  %22 = load ptr, ptr %node.addr, align 8, !dbg !4282
  %subtree_max_end19 = getelementptr inbounds %struct.memtype, ptr %22, i32 0, i32 2, !dbg !4282
  %23 = load i64, ptr %subtree_max_end19, align 8, !dbg !4282
  %cmp20 = icmp ule i64 %21, %23, !dbg !4282
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !4281

if.then21:                                        ; preds = %if.then13
  br label %while.body, !dbg !4282, !llvm.loop !4274

if.end22:                                         ; preds = %if.then13
  br label %if.end23, !dbg !4281

if.end23:                                         ; preds = %if.end22, %if.end10
  br label %if.end24, !dbg !4278

if.end24:                                         ; preds = %if.end23, %if.end4
  store ptr null, ptr %retval, align 8, !dbg !4267
  br label %return, !dbg !4267

return:                                           ; preds = %if.end24, %if.then9
  %24 = load ptr, ptr %retval, align 8, !dbg !4265
  ret ptr %24, !dbg !4265

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!llvm.ident = !{!3313}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memtype_rbroot", scope: !2, file: !3, line: 50, type: !317, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/pat/.memtype_interval.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/pat/memtype_interval\22 -D KBUILD_BASENAME=\22memtype_interval\22 -D KBUILD_MODNAME=\22memtype_interval\22 -D __KBUILD_MODNAME=kmod_memtype_interval -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/pat/memtype_interval.ll arch/x86/mm/pat/memtype_interval.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !69, globals: !3253, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/pat/memtype_interval.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2703f5f38978acb842dcc95795f87e11")
!4 = !{!5, !16, !20, !25, !33, !38, !44, !51, !57, !64}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !6, line: 168, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!10 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!11 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!12 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!13 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!14 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!15 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 52, baseType: !7, size: 32, elements: !17)
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "MEMTYPE_EXACT_MATCH", value: 0)
!19 = !DIEnumerator(name: "MEMTYPE_END_MATCH", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !21, line: 65, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!24 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !26, line: 9, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!29 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!30 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!31 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!32 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !34, line: 2052, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!37 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !39, line: 54, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "USRQUOTA", value: 0)
!42 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!43 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !45, line: 15, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!48 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!49 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!50 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !52, line: 16, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "TT_NONE", value: 0)
!55 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!56 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !58, line: 51, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!61 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!62 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!63 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0)
!68 = !DIEnumerator(name: "true", value: 1)
!69 = !{!70, !71, !72, !81, !3242, !150, !3251}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !74, line: 746, size: 58368, elements: !75)
!74 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!75 = !{!76, !89, !90, !91, !103, !104, !105, !106, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !198, !209, !336, !340, !343, !374, !375, !376, !377, !388, !390, !391, !392, !393, !394, !395, !406, !407, !410, !411, !412, !413, !414, !415, !416, !417, !424, !425, !432, !433, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2403, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2418, !2419, !2420, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2462, !2468, !2469, !2470, !2471, !2472, !2474, !2477, !2484, !2489, !2492, !2495, !2498, !2501, !2641, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2683, !2684, !2685, !2694, !2702, !2703, !2704, !2705, !2706, !2711, !2712, !2713, !2716, !2717, !2720, !2723, !2726, !2734, !2737, !2738, !2824, !2825, !2826, !2827, !2828, !2834, !2835, !2836, !2837, !2840, !2841, !2844, !2847, !2848, !2851, !2852, !2853, !2856, !2857, !2858, !2859, !2860, !2861, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2893, !2894, !2900, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2912, !2984, !2986, !2987, !2988, !2989, !2990, !3002, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3019, !3020, !3021}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !73, file: !74, line: 752, baseType: !77, size: 192)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !78, line: 56, size: 192, elements: !79)
!78 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!79 = !{!80, !82, !83, !88}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !78, line: 57, baseType: !81, size: 64)
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !77, file: !78, line: 58, baseType: !81, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !77, file: !78, line: 59, baseType: !84, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !7)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !77, file: !78, line: 61, baseType: !84, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !73, file: !74, line: 754, baseType: !7, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !73, file: !74, line: 767, baseType: !70, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !73, file: !74, line: 768, baseType: !92, size: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !93, line: 113, baseType: !94)
!93 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !93, line: 111, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !94, file: !93, line: 112, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !98, line: 174, baseType: !99)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 172, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !99, file: !98, line: 173, baseType: !102, size: 32)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 770, baseType: !7, size: 32, offset: 352)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !73, file: !74, line: 771, baseType: !7, size: 32, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !73, file: !74, line: 774, baseType: !102, size: 32, offset: 416)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !73, file: !74, line: 775, baseType: !107, size: 128, offset: 448)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !108, line: 58, size: 128, elements: !109)
!108 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!109 = !{!110, !116, !121, !125}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !107, file: !108, line: 59, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !112, line: 60, size: 64, elements: !113)
!112 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !112, line: 61, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !108, line: 60, baseType: !117, size: 32, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !108, line: 60, size: 32, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !117, file: !108, line: 61, baseType: !7, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !117, file: !108, line: 62, baseType: !97, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !107, file: !108, line: 65, baseType: !122, size: 16, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 19, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !87, line: 24, baseType: !124)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !107, file: !108, line: 65, baseType: !122, size: 16, offset: 112)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !73, file: !74, line: 776, baseType: !7, size: 32, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !73, file: !74, line: 777, baseType: !81, size: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !73, file: !74, line: 778, baseType: !72, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !73, file: !74, line: 787, baseType: !102, size: 32, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !73, file: !74, line: 788, baseType: !102, size: 32, offset: 800)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !73, file: !74, line: 790, baseType: !102, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !73, file: !74, line: 792, baseType: !102, size: 32, offset: 864)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !73, file: !74, line: 793, baseType: !102, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !73, file: !74, line: 794, baseType: !102, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !73, file: !74, line: 795, baseType: !7, size: 32, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !73, file: !74, line: 797, baseType: !137, size: 2048, offset: 1024)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !74, line: 551, size: 2048, elements: !138)
!138 = !{!139, !144, !152, !156, !157, !163, !164, !165, !166, !167, !168, !172, !173, !174, !175, !177, !180, !181, !182}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !137, file: !74, line: 553, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !74, line: 411, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !140, file: !74, line: 412, baseType: !81, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !140, file: !74, line: 413, baseType: !84, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !137, file: !74, line: 554, baseType: !145, size: 192, align: 64, offset: 128)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !146, line: 5, size: 192, align: 64, elements: !147)
!146 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!147 = !{!148, !149, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !145, file: !146, line: 6, baseType: !81, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !145, file: !146, line: 7, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !145, file: !146, line: 8, baseType: !150, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !137, file: !74, line: 555, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !85, line: 23, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !87, line: 31, baseType: !155)
!155 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !137, file: !74, line: 556, baseType: !153, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !137, file: !74, line: 558, baseType: !158, size: 128, offset: 448)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !98, line: 190, size: 128, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !98, line: 191, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !98, line: 191, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !137, file: !74, line: 559, baseType: !7, size: 32, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !137, file: !74, line: 561, baseType: !153, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !137, file: !74, line: 562, baseType: !153, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !137, file: !74, line: 563, baseType: !153, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !137, file: !74, line: 564, baseType: !153, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !137, file: !74, line: 565, baseType: !169, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !85, line: 22, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !87, line: 30, baseType: !171)
!171 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !137, file: !74, line: 566, baseType: !153, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !137, file: !74, line: 568, baseType: !153, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !137, file: !74, line: 571, baseType: !102, size: 32, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !137, file: !74, line: 572, baseType: !176, size: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !137, file: !74, line: 574, baseType: !178, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !74, line: 49, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !137, file: !74, line: 576, baseType: !178, size: 64, offset: 1280)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !137, file: !74, line: 578, baseType: !81, size: 64, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !137, file: !74, line: 588, baseType: !183, size: 512, align: 512, offset: 1536)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !74, line: 497, size: 512, align: 512, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !183, file: !74, line: 498, baseType: !153, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !183, file: !74, line: 499, baseType: !153, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !183, file: !74, line: 500, baseType: !153, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !183, file: !74, line: 501, baseType: !84, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !183, file: !74, line: 502, baseType: !84, size: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !183, file: !74, line: 503, baseType: !81, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !183, file: !74, line: 504, baseType: !81, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !183, file: !74, line: 505, baseType: !81, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !183, file: !74, line: 506, baseType: !194, size: 64, align: 64, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !74, line: 445, size: 64, align: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !194, file: !74, line: 446, baseType: !7, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !194, file: !74, line: 447, baseType: !7, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !73, file: !74, line: 798, baseType: !199, size: 384, offset: 3072)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !74, line: 592, size: 384, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !199, file: !74, line: 593, baseType: !158, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !199, file: !74, line: 594, baseType: !81, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !199, file: !74, line: 595, baseType: !81, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !199, file: !74, line: 596, baseType: !7, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !199, file: !74, line: 597, baseType: !124, size: 16, offset: 288)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !199, file: !74, line: 598, baseType: !124, size: 16, offset: 304)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !199, file: !74, line: 600, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !73, file: !74, line: 799, baseType: !210, size: 1792, offset: 3456)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !74, line: 610, size: 1792, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !333, !334}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !210, file: !74, line: 611, baseType: !145, size: 192, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !210, file: !74, line: 618, baseType: !153, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !210, file: !74, line: 619, baseType: !153, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !210, file: !74, line: 620, baseType: !153, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !210, file: !74, line: 621, baseType: !153, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !210, file: !74, line: 622, baseType: !153, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !210, file: !74, line: 629, baseType: !169, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !210, file: !74, line: 630, baseType: !153, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !74, line: 631, baseType: !7, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !210, file: !74, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !210, file: !74, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !210, file: !74, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !210, file: !74, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !210, file: !74, line: 662, baseType: !226, size: 512, offset: 704)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !227)
!227 = !{!228, !236, !237, !242, !329, !330, !331, !332}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !21, line: 119, baseType: !229, size: 256)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !230, line: 9, size: 256, elements: !231)
!230 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !230, line: 10, baseType: !145, size: 192, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !229, file: !230, line: 11, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !235, line: 29, baseType: !169)
!235 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !226, file: !21, line: 120, baseType: !234, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !226, file: !21, line: 121, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!20, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !226, file: !21, line: 122, baseType: !243, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !245)
!245 = !{!246, !297, !298, !302, !312, !313, !324, !328}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !244, file: !21, line: 160, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 215, size: 4608, align: 512, elements: !249)
!249 = !{!250, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !248, file: !21, line: 216, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !252, line: 23, baseType: !253)
!252 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !252, line: 14, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !253, file: !252, line: 15, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !257, line: 44, baseType: !258)
!257 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !257, line: 14, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !257, line: 15, baseType: !261, size: 32)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !257, line: 15, size: 32, elements: !262)
!262 = !{!263, !264, !272}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !261, file: !257, line: 16, baseType: !97, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !257, line: 24, baseType: !265, size: 16)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !257, line: 24, size: 16, elements: !266)
!266 = !{!267, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !265, file: !257, line: 25, baseType: !268, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !270)
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !265, file: !257, line: 26, baseType: !268, size: 8, offset: 8)
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !257, line: 28, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !257, line: 28, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !273, file: !257, line: 29, baseType: !122, size: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !273, file: !257, line: 30, baseType: !122, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !248, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !248, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !248, file: !21, line: 219, baseType: !7, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !248, file: !21, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !248, file: !21, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !248, file: !21, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !248, file: !21, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !248, file: !21, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !248, file: !21, line: 226, baseType: !7, size: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !248, file: !21, line: 227, baseType: !124, size: 16, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !248, file: !21, line: 228, baseType: !124, size: 16, offset: 208)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !248, file: !21, line: 229, baseType: !7, size: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !248, file: !21, line: 235, baseType: !234, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !248, file: !21, line: 236, baseType: !241, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !248, file: !21, line: 237, baseType: !234, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !248, file: !21, line: 238, baseType: !241, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !248, file: !21, line: 239, baseType: !294, size: 4096, align: 512, offset: 512)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4096, align: 512, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !244, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !244, file: !21, line: 162, baseType: !299, size: 32, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !98, line: 32, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !301, line: 96, baseType: !102)
!301 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !244, file: !21, line: 163, baseType: !303, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !304, line: 274, baseType: !305)
!304 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !304, line: 274, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !305, file: !304, line: 274, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !304, line: 69, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !304, line: 64, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !309, file: !304, line: 65, baseType: !7, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !244, file: !21, line: 164, baseType: !241, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !244, file: !21, line: 165, baseType: !314, size: 128, offset: 256)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !230, line: 14, size: 128, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !314, file: !230, line: 15, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !146, line: 26, size: 128, elements: !318)
!318 = !{!319, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !317, file: !146, line: 27, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !146, line: 12, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !320, file: !146, line: 13, baseType: !150, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !317, file: !146, line: 28, baseType: !150, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !244, file: !21, line: 166, baseType: !325, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!234}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !244, file: !21, line: 167, baseType: !234, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !226, file: !21, line: 123, baseType: !268, size: 8, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !226, file: !21, line: 124, baseType: !268, size: 8, offset: 456)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !226, file: !21, line: 125, baseType: !268, size: 8, offset: 464)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !226, file: !21, line: 126, baseType: !268, size: 8, offset: 472)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !210, file: !74, line: 671, baseType: !226, size: 512, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !210, file: !74, line: 679, baseType: !335, size: 64, offset: 1728)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !73, file: !74, line: 800, baseType: !337, size: 64, offset: 5248)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !74, line: 800, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !73, file: !74, line: 809, baseType: !341, size: 64, offset: 5312)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !74, line: 70, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !73, file: !74, line: 825, baseType: !344, size: 2048, align: 512, offset: 5632)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !74, line: 509, size: 2048, align: 512, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !344, file: !74, line: 511, baseType: !153, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !344, file: !74, line: 512, baseType: !153, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !344, file: !74, line: 513, baseType: !153, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !344, file: !74, line: 514, baseType: !153, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !344, file: !74, line: 515, baseType: !153, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !344, file: !74, line: 516, baseType: !153, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !344, file: !74, line: 518, baseType: !153, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !344, file: !74, line: 519, baseType: !153, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !344, file: !74, line: 520, baseType: !169, size: 64, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !344, file: !74, line: 522, baseType: !153, size: 64, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !344, file: !74, line: 523, baseType: !153, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !344, file: !74, line: 524, baseType: !169, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !344, file: !74, line: 526, baseType: !169, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !344, file: !74, line: 527, baseType: !153, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !344, file: !74, line: 529, baseType: !153, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !344, file: !74, line: 530, baseType: !153, size: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !344, file: !74, line: 531, baseType: !153, size: 64, offset: 1024)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !344, file: !74, line: 532, baseType: !153, size: 64, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !344, file: !74, line: 533, baseType: !153, size: 64, offset: 1152)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !344, file: !74, line: 535, baseType: !153, size: 64, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !344, file: !74, line: 536, baseType: !153, size: 64, offset: 1280)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !344, file: !74, line: 537, baseType: !153, size: 64, offset: 1344)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !344, file: !74, line: 538, baseType: !153, size: 64, offset: 1408)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !344, file: !74, line: 539, baseType: !153, size: 64, offset: 1472)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !344, file: !74, line: 540, baseType: !153, size: 64, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !344, file: !74, line: 541, baseType: !153, size: 64, offset: 1600)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !344, file: !74, line: 542, baseType: !153, size: 64, offset: 1664)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !344, file: !74, line: 543, baseType: !153, size: 64, offset: 1728)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !73, file: !74, line: 833, baseType: !7, size: 32, offset: 7680)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !73, file: !74, line: 836, baseType: !7, size: 32, offset: 7712)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !73, file: !74, line: 837, baseType: !102, size: 32, offset: 7744)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !73, file: !74, line: 838, baseType: !378, size: 64, offset: 7808)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !381, line: 19, baseType: !382)
!381 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !381, line: 19, size: 64, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !382, file: !381, line: 19, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 1)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !73, file: !74, line: 839, baseType: !389, size: 64, offset: 7872)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !73, file: !74, line: 840, baseType: !380, size: 64, offset: 7936)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !73, file: !74, line: 841, baseType: !70, size: 64, offset: 8000)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !73, file: !74, line: 843, baseType: !124, size: 16, offset: 8064)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !73, file: !74, line: 845, baseType: !124, size: 16, offset: 8080)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !73, file: !74, line: 848, baseType: !102, size: 32, offset: 8096)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !73, file: !74, line: 849, baseType: !396, size: 32, offset: 8128)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !74, line: 718, size: 32, elements: !397)
!397 = !{!398, !405}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !396, file: !74, line: 724, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !74, line: 719, size: 32, elements: !400)
!400 = !{!401, !402, !403, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !399, file: !74, line: 720, baseType: !268, size: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !399, file: !74, line: 721, baseType: !268, size: 8, offset: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !399, file: !74, line: 722, baseType: !268, size: 8, offset: 16)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !399, file: !74, line: 723, baseType: !268, size: 8, offset: 24)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !396, file: !74, line: 725, baseType: !84, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !73, file: !74, line: 850, baseType: !158, size: 128, offset: 8192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !73, file: !74, line: 851, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !74, line: 60, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !73, file: !74, line: 855, baseType: !81, size: 64, offset: 8384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !73, file: !74, line: 856, baseType: !268, size: 8, offset: 8448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !73, file: !74, line: 857, baseType: !268, size: 8, offset: 8456)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !73, file: !74, line: 858, baseType: !102, size: 32, offset: 8480)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !73, file: !74, line: 859, baseType: !158, size: 128, offset: 8512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !73, file: !74, line: 860, baseType: !102, size: 32, offset: 8640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !73, file: !74, line: 861, baseType: !158, size: 128, offset: 8704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !73, file: !74, line: 873, baseType: !418, size: 256, offset: 8832)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !74, line: 376, size: 256, elements: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !418, file: !74, line: 381, baseType: !81, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !418, file: !74, line: 384, baseType: !155, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !418, file: !74, line: 389, baseType: !155, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !418, file: !74, line: 392, baseType: !155, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !73, file: !74, line: 875, baseType: !158, size: 128, offset: 9088)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !73, file: !74, line: 877, baseType: !426, size: 320, offset: 9216)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !427, line: 86, size: 320, elements: !428)
!427 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!428 = !{!429, !430, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !426, file: !427, line: 87, baseType: !102, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !426, file: !427, line: 88, baseType: !158, size: 128, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !426, file: !427, line: 89, baseType: !158, size: 128, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !73, file: !74, line: 878, baseType: !145, size: 192, align: 64, offset: 9536)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !73, file: !74, line: 881, baseType: !434, size: 64, offset: 9728)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !436, line: 733, size: 10240, elements: !437)
!436 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!437 = !{!438, !2322}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !436, line: 734, baseType: !439, size: 10240)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !436, line: 734, size: 10240, elements: !440)
!440 = !{!441, !445, !467, !2220, !2221, !2222, !2223, !2224, !2225, !2232, !2233, !2234, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2273, !2275, !2278, !2302, !2303, !2304, !2307, !2308, !2309, !2312, !2313, !2314, !2320, !2321}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !436, line: 739, baseType: !442, size: 512, align: 512)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !436, line: 739, size: 512, align: 512, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !442, file: !436, line: 747, baseType: !97, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !439, file: !436, line: 750, baseType: !446, size: 128, offset: 512)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !447, line: 218, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!448 = !{!449, !465, !466}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !447, line: 219, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !447, line: 219, size: 32, elements: !451)
!451 = !{!452, !461}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !450, file: !447, line: 220, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !454, line: 29, baseType: !455)
!454 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !454, line: 17, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !454, line: 18, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !454, line: 18, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !458, file: !454, line: 19, baseType: !253, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !450, file: !447, line: 221, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !447, line: 197, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 197, elements: !464)
!464 = !{}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !446, file: !447, line: 223, baseType: !7, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !446, file: !447, line: 224, baseType: !70, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !439, file: !436, line: 752, baseType: !468, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!81, !471, !81, !81, !81, !81}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !34, line: 994, size: 1856, align: 64, elements: !473)
!473 = !{!474, !488, !489, !491, !498, !510, !513, !514, !590, !805, !814, !2210, !2211, !2212, !2213, !2214, !2215, !2217, !2218, !2219}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !34, line: 995, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !34, line: 995, size: 128, elements: !476)
!476 = !{!477, !478, !487}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !475, file: !34, line: 996, baseType: !111, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !475, file: !34, line: 997, baseType: !479, size: 128, align: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !98, line: 232, size: 128, align: 64, elements: !480)
!480 = !{!481, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !98, line: 233, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !479, file: !98, line: 234, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !482}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !475, file: !34, line: 998, baseType: !7, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !472, file: !34, line: 1005, baseType: !453, size: 32, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !472, file: !34, line: 1006, baseType: !490, size: 32, offset: 160)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !98, line: 156, baseType: !7)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !472, file: !34, line: 1007, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !493, line: 13, baseType: !494)
!493 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !98, line: 181, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 179, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !495, file: !98, line: 180, baseType: !169, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !472, file: !34, line: 1008, baseType: !499, size: 256, offset: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !500, line: 66, size: 256, elements: !501)
!500 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!501 = !{!502, !503, !504, !509}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !499, file: !500, line: 67, baseType: !492, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !499, file: !500, line: 68, baseType: !251, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !499, file: !500, line: 70, baseType: !505, size: 32, offset: 96)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !506, line: 15, size: 32, elements: !507)
!506 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !505, file: !506, line: 20, baseType: !97, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !499, file: !500, line: 72, baseType: !158, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !472, file: !34, line: 1009, baseType: !511, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !98, line: 52, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !301, line: 88, baseType: !171)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !472, file: !34, line: 1010, baseType: !7, size: 32, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !472, file: !34, line: 1011, baseType: !515, size: 256, offset: 640)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !34, line: 948, size: 256, elements: !516)
!516 = !{!517, !540, !579, !580, !588, !589}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !34, line: 949, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !519, line: 34, baseType: !520)
!519 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 25, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !520, file: !519, line: 26, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !524, line: 27, baseType: !525)
!524 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !524, line: 13, size: 64, elements: !526)
!526 = !{!527, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !524, line: 14, baseType: !528, size: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !524, line: 14, size: 32, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !528, file: !524, line: 15, baseType: !97, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !524, line: 16, baseType: !532, size: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !524, line: 16, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !532, file: !524, line: 18, baseType: !268, size: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !532, file: !524, line: 19, baseType: !536, size: 24, offset: 8)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 24, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 3)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !525, file: !524, line: 26, baseType: !256, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !515, file: !34, line: 950, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !26, line: 59, size: 768, elements: !543)
!543 = !{!544, !545, !546, !547, !560, !561, !568, !569}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !542, file: !26, line: 61, baseType: !92, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !542, file: !26, line: 62, baseType: !7, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !26, line: 63, baseType: !453, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !542, file: !26, line: 65, baseType: !548, size: 256, offset: 128)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 256, elements: !558)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !98, line: 194, size: 64, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !549, file: !98, line: 195, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !98, line: 198, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !98, line: 199, baseType: !552, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !553, file: !98, line: 199, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!558 = !{!559}
!559 = !DISubrange(count: 4)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !542, file: !26, line: 66, baseType: !549, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !542, file: !26, line: 68, baseType: !562, size: 192, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !563, line: 41, baseType: !564)
!563 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !563, line: 37, size: 192, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !563, line: 38, baseType: !453, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !564, file: !563, line: 39, baseType: !158, size: 128, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !542, file: !26, line: 69, baseType: !479, size: 128, align: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !542, file: !26, line: 70, baseType: !570, offset: 768)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, elements: !577)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !26, line: 54, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !571, file: !26, line: 55, baseType: !102, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !571, file: !26, line: 56, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !26, line: 56, flags: DIFlagFwdDecl)
!577 = !{!578}
!578 = !DISubrange(count: -1)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !515, file: !34, line: 951, baseType: !25, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !515, file: !34, line: 952, baseType: !581, size: 32, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !582, line: 23, baseType: !583)
!582 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 21, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !583, file: !582, line: 22, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !98, line: 37, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !301, line: 49, baseType: !7)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !515, file: !34, line: 952, baseType: !581, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !515, file: !34, line: 953, baseType: !102, size: 32, offset: 224)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !472, file: !34, line: 1012, baseType: !591, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !594, line: 110, size: 1472, elements: !595)
!594 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!595 = !{!596, !597, !598, !605, !606, !607, !608, !609, !610, !611, !612, !618, !619, !620, !621, !622, !623, !750, !751, !752, !753, !754, !785, !788, !792, !800}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !593, file: !594, line: 111, baseType: !492, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !593, file: !594, line: 112, baseType: !581, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !593, file: !594, line: 113, baseType: !599, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !582, line: 28, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 26, size: 32, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !600, file: !582, line: 27, baseType: !603, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !98, line: 38, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !301, line: 50, baseType: !7)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !593, file: !594, line: 114, baseType: !581, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !593, file: !594, line: 115, baseType: !599, size: 32, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !593, file: !594, line: 116, baseType: !581, size: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !593, file: !594, line: 117, baseType: !599, size: 32, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !593, file: !594, line: 118, baseType: !581, size: 32, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !593, file: !594, line: 119, baseType: !599, size: 32, offset: 288)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !593, file: !594, line: 120, baseType: !7, size: 32, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !593, file: !594, line: 121, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !614, line: 24, baseType: !615)
!614 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 24, size: 64, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !614, line: 24, baseType: !153, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !593, file: !594, line: 122, baseType: !613, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !593, file: !594, line: 123, baseType: !613, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !593, file: !594, line: 124, baseType: !613, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !593, file: !594, line: 125, baseType: !613, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !593, file: !594, line: 127, baseType: !270, size: 8, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !593, file: !594, line: 129, baseType: !624, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !626, line: 195, size: 1728, elements: !627)
!626 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!627 = !{!628, !629, !634, !639, !648, !651, !652, !659, !660, !661, !662, !665, !666, !667, !669, !670, !714, !735}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !626, line: 196, baseType: !92, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !625, file: !626, line: 197, baseType: !630, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !626, line: 28, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !98, line: 104, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !85, line: 20, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !87, line: 26, baseType: !102)
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 198, baseType: !635, size: 192, offset: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 198, size: 192, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !635, file: !626, line: 199, baseType: !158, size: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !635, file: !626, line: 200, baseType: !145, size: 192, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !625, file: !626, line: 205, baseType: !640, size: 320, offset: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !641, line: 48, size: 320, elements: !642)
!641 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!642 = !{!643, !644, !645, !646, !647}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !640, file: !641, line: 49, baseType: !492, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !641, line: 55, baseType: !492, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !640, file: !641, line: 57, baseType: !505, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !640, file: !641, line: 59, baseType: !251, size: 32, offset: 160)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !640, file: !641, line: 60, baseType: !158, size: 128, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !625, file: !626, line: 206, baseType: !649, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !626, line: 206, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !625, file: !626, line: 207, baseType: !70, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 208, baseType: !653, size: 64, offset: 704)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 208, size: 64, elements: !654)
!654 = !{!655, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !653, file: !626, line: 209, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !657, line: 8, baseType: !170)
!657 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !653, file: !626, line: 210, baseType: !656, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !625, file: !626, line: 212, baseType: !656, size: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !625, file: !626, line: 213, baseType: !581, size: 32, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !625, file: !626, line: 214, baseType: !599, size: 32, offset: 864)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !625, file: !626, line: 215, baseType: !663, size: 32, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !626, line: 31, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 110, baseType: !84)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !625, file: !626, line: 216, baseType: !124, size: 16, offset: 928)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !625, file: !626, line: 217, baseType: !124, size: 16, offset: 944)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !625, file: !626, line: 221, baseType: !668, size: 16, offset: 960)
!668 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !626, line: 228, baseType: !81, size: 64, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 245, baseType: !671, size: 320, offset: 1088)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 245, size: 320, elements: !672)
!672 = !{!673, !705}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !671, file: !626, line: 246, baseType: !674, size: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !626, line: 114, size: 320, elements: !675)
!675 = !{!676, !677, !690, !693, !702}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !674, file: !626, line: 116, baseType: !81, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !626, line: 117, baseType: !678, size: 64, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !626, line: 117, size: 64, elements: !679)
!679 = !{!680, !689}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !626, line: 118, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !626, line: 118, size: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !681, file: !626, line: 120, baseType: !122, size: 16)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !681, file: !626, line: 121, baseType: !685, size: 48, offset: 16)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 48, elements: !687)
!686 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!687 = !{!688}
!688 = !DISubrange(count: 6)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !678, file: !626, line: 127, baseType: !81, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !626, line: 129, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !626, line: 102, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !674, file: !626, line: 130, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !626, line: 108, size: 192, elements: !696)
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !626, line: 109, baseType: !479, size: 128, align: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !695, file: !626, line: 110, baseType: !92, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !695, file: !626, line: 111, baseType: !700, size: 8, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 35, baseType: !701)
!701 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !674, file: !626, line: 131, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !626, line: 247, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !626, line: 247, size: 320, elements: !707)
!707 = !{!708, !709, !710, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !706, file: !626, line: 248, baseType: !81, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !706, file: !626, line: 249, baseType: !81, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !626, line: 250, baseType: !691, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !706, file: !626, line: 251, baseType: !694, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !706, file: !626, line: 252, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 260, baseType: !715, size: 256, offset: 1408)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 260, size: 256, elements: !716)
!716 = !{!717, !723}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !715, file: !626, line: 261, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !626, line: 134, size: 256, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !718, file: !626, line: 135, baseType: !70, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !718, file: !626, line: 136, baseType: !722, size: 256)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !558)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !626, line: 262, baseType: !724, size: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !626, line: 262, size: 256, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !724, file: !626, line: 264, baseType: !158, size: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !724, file: !626, line: 265, baseType: !728, size: 128, offset: 128)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !729, line: 22, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!730 = !{!731, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !728, file: !729, line: 23, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !729, line: 23, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !728, file: !729, line: 24, baseType: !81, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !625, file: !626, line: 280, baseType: !736, size: 64, offset: 1664)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !626, line: 176, size: 192, elements: !738)
!738 = !{!739, !748, !749}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !737, file: !626, line: 177, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !626, line: 171, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!102, !624, !744, !746, !624}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !737, file: !626, line: 178, baseType: !624, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !737, file: !626, line: 179, baseType: !691, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !593, file: !594, line: 130, baseType: !624, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !593, file: !594, line: 131, baseType: !624, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !593, file: !594, line: 132, baseType: !624, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !593, file: !594, line: 135, baseType: !70, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !593, file: !594, line: 137, baseType: !755, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !757, line: 14, size: 1088, elements: !758)
!757 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!758 = !{!759, !760, !769, !770, !771, !772, !773, !774}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !757, line: 15, baseType: !92, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !756, file: !757, line: 17, baseType: !761, size: 320, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !762, line: 22, size: 320, elements: !763)
!762 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!763 = !{!764, !765, !766, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !761, file: !762, line: 23, baseType: !251, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !761, file: !762, line: 24, baseType: !169, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !761, file: !762, line: 26, baseType: !158, size: 128, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !761, file: !762, line: 28, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !756, file: !757, line: 19, baseType: !81, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !756, file: !757, line: 20, baseType: !492, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !756, file: !757, line: 23, baseType: !553, size: 128, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 24, baseType: !581, size: 32, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !756, file: !757, line: 29, baseType: !492, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !756, file: !757, line: 36, baseType: !775, size: 320, offset: 768)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !776, line: 15, size: 320, elements: !777)
!776 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!777 = !{!778, !779, !780, !781, !782, !783, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 16, baseType: !251, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !775, file: !776, line: 18, baseType: !102, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !775, file: !776, line: 19, baseType: !102, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !775, file: !776, line: 20, baseType: !102, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !775, file: !776, line: 21, baseType: !102, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !775, file: !776, line: 22, baseType: !81, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 23, baseType: !81, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !593, file: !594, line: 138, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !582, line: 18, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !593, file: !594, line: 139, baseType: !789, size: 64, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !791, line: 16, flags: DIFlagFwdDecl)
!791 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !593, file: !594, line: 140, baseType: !793, size: 64, offset: 1280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !594, line: 25, size: 64, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !794, file: !594, line: 26, baseType: !97, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !794, file: !594, line: 27, baseType: !102, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !794, file: !594, line: 28, baseType: !799, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, elements: !577)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !594, line: 142, baseType: !801, size: 128, offset: 1344)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !594, line: 142, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !801, file: !594, line: 143, baseType: !102, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !801, file: !594, line: 144, baseType: !479, size: 128, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !472, file: !34, line: 1013, baseType: !806, size: 256, offset: 960)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !34, line: 970, size: 256, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !806, file: !34, line: 971, baseType: !81, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !806, file: !34, line: 972, baseType: !7, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !806, file: !34, line: 973, baseType: !7, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !806, file: !34, line: 974, baseType: !7, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !806, file: !34, line: 975, baseType: !7, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !806, file: !34, line: 976, baseType: !511, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !472, file: !34, line: 1014, baseType: !815, size: 128, offset: 1216)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !816, line: 8, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!817 = !{!818, !2209}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !815, file: !816, line: 9, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !821, line: 70, size: 256, elements: !822)
!821 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!822 = !{!823, !2206, !2207, !2208}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !820, file: !821, line: 71, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !826, line: 82, size: 1536, elements: !827)
!826 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!827 = !{!828, !829, !834, !842, !843, !858, !2173, !2175, !2188, !2189, !2190, !2191, !2192, !2198, !2199, !2200}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !825, file: !826, line: 84, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !825, file: !826, line: 85, baseType: !830, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !304, line: 275, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !304, line: 275, size: 32, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !831, file: !304, line: 275, baseType: !308, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !825, file: !826, line: 86, baseType: !835, size: 128, offset: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !836, line: 38, size: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!837 = !{!838, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !835, file: !836, line: 39, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !835, file: !836, line: 39, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !825, file: !826, line: 87, baseType: !824, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !825, file: !826, line: 88, baseType: !844, size: 128, offset: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !826, line: 49, size: 128, elements: !845)
!845 = !{!846, !855}
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !826, line: 50, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !826, line: 50, size: 64, elements: !848)
!848 = !{!849, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !826, line: 51, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !847, file: !826, line: 51, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !850, file: !826, line: 52, baseType: !84, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !850, file: !826, line: 52, baseType: !84, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !847, file: !826, line: 54, baseType: !153, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !844, file: !826, line: 56, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !825, file: !826, line: 89, baseType: !859, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !34, line: 641, size: 4800, elements: !861)
!861 = !{!862, !864, !865, !866, !867, !868, !869, !872, !873, !1071, !1666, !1928, !1929, !1930, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !2155, !2158, !2159, !2160, !2169, !2170, !2171, !2172}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !860, file: !34, line: 642, baseType: !863, size: 16)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !98, line: 24, baseType: !124)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !860, file: !34, line: 643, baseType: !124, size: 16, offset: 16)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !860, file: !34, line: 644, baseType: !581, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !860, file: !34, line: 645, baseType: !158, size: 128, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !860, file: !34, line: 646, baseType: !599, size: 32, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !860, file: !34, line: 647, baseType: !7, size: 32, offset: 224)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !860, file: !34, line: 650, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !34, line: 607, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !860, file: !34, line: 651, baseType: !870, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !860, file: !34, line: 654, baseType: !874, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !34, line: 1966, size: 2048, align: 512, elements: !877)
!877 = !{!878, !882, !895, !901, !905, !909, !913, !917, !921, !925, !929, !930, !936, !940, !978, !1009, !1019, !1025, !1029, !1033, !1037, !1041, !1045, !1051, !1055}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !876, file: !34, line: 1967, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!824, !859, !824, !7}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !876, file: !34, line: 1968, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!703, !824, !859, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !888, line: 10, size: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!889 = !{!890, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !887, file: !888, line: 11, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !70}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !887, file: !888, line: 12, baseType: !70, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !876, file: !34, line: 1969, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!102, !899, !859, !102}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !614, line: 42, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !876, file: !34, line: 1970, baseType: !902, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!870, !859, !102, !700}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !876, file: !34, line: 1972, baseType: !906, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!102, !824, !713, !102}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !876, file: !34, line: 1974, baseType: !910, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!102, !899, !859, !824, !863, !700}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !876, file: !34, line: 1976, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!102, !824, !859, !824}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !876, file: !34, line: 1977, baseType: !918, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!102, !859, !824}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !876, file: !34, line: 1978, baseType: !922, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!102, !899, !859, !824, !703}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !876, file: !34, line: 1980, baseType: !926, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!102, !899, !859, !824, !863}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !876, file: !34, line: 1982, baseType: !918, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !876, file: !34, line: 1983, baseType: !931, size: 64, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!102, !899, !859, !824, !863, !934}
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 21, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !98, line: 18, baseType: !84)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !876, file: !34, line: 1985, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!102, !899, !859, !824, !859, !824, !7}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !876, file: !34, line: 1987, baseType: !941, size: 64, offset: 832)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!102, !899, !824, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !34, line: 226, size: 640, elements: !946)
!946 = !{!947, !948, !949, !959, !968, !969, !975, !976, !977}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !945, file: !34, line: 227, baseType: !7, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !945, file: !34, line: 228, baseType: !863, size: 16, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !34, line: 241, baseType: !950, size: 32, offset: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !34, line: 241, size: 32, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !950, file: !34, line: 242, baseType: !581, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !950, file: !34, line: 243, baseType: !954, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !955, line: 16, baseType: !956)
!955 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 14, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !956, file: !955, line: 15, baseType: !586, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !34, line: 245, baseType: !960, size: 32, offset: 96)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !34, line: 245, size: 32, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !960, file: !34, line: 246, baseType: !599, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !960, file: !34, line: 247, baseType: !964, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !955, line: 20, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 18, size: 32, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !965, file: !955, line: 19, baseType: !603, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !945, file: !34, line: 249, baseType: !511, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !945, file: !34, line: 250, baseType: !970, size: 128, offset: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !657, line: 13, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !970, file: !657, line: 14, baseType: !656, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !970, file: !657, line: 15, baseType: !974, size: 64, offset: 64)
!974 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !945, file: !34, line: 251, baseType: !970, size: 128, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !945, file: !34, line: 252, baseType: !970, size: 128, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !945, file: !34, line: 259, baseType: !471, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !876, file: !34, line: 1988, baseType: !979, size: 64, offset: 896)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!102, !899, !982, !984, !84, !7}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !986, line: 22, size: 1280, elements: !987)
!986 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !985, file: !986, line: 23, baseType: !84, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !985, file: !986, line: 24, baseType: !863, size: 16, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !985, file: !986, line: 25, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !985, file: !986, line: 26, baseType: !664, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !985, file: !986, line: 27, baseType: !153, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !985, file: !986, line: 28, baseType: !153, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !985, file: !986, line: 41, baseType: !153, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !985, file: !986, line: 42, baseType: !934, size: 32, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !985, file: !986, line: 43, baseType: !934, size: 32, offset: 352)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !985, file: !986, line: 44, baseType: !581, size: 32, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !985, file: !986, line: 45, baseType: !599, size: 32, offset: 416)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !985, file: !986, line: 46, baseType: !511, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !985, file: !986, line: 47, baseType: !970, size: 128, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !985, file: !986, line: 48, baseType: !970, size: 128, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !985, file: !986, line: 49, baseType: !970, size: 128, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !985, file: !986, line: 50, baseType: !970, size: 128, offset: 896)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !985, file: !986, line: 51, baseType: !153, size: 64, offset: 1024)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !985, file: !986, line: 52, baseType: !153, size: 64, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !985, file: !986, line: 53, baseType: !84, size: 32, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !985, file: !986, line: 54, baseType: !84, size: 32, offset: 1184)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !985, file: !986, line: 55, baseType: !153, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !876, file: !34, line: 1990, baseType: !1010, size: 64, offset: 960)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!1013, !824, !713, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 66, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !301, line: 73, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !301, line: 15, baseType: !974)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 61, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !301, line: 72, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !301, line: 16, baseType: !81)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !876, file: !34, line: 1991, baseType: !1020, size: 64, offset: 1024)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!102, !859, !1023, !153, !153}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !34, line: 55, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !876, file: !34, line: 1993, baseType: !1026, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!102, !859, !102}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !876, file: !34, line: 1994, baseType: !1030, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!102, !859, !824, !471, !7, !863}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !876, file: !34, line: 1997, baseType: !1034, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!102, !899, !859, !471, !863}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !876, file: !34, line: 1999, baseType: !1038, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!870, !899, !824, !102}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !876, file: !34, line: 2001, baseType: !1042, size: 64, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!102, !899, !824, !870, !102}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !876, file: !34, line: 2003, baseType: !1046, size: 64, offset: 1408)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!102, !899, !824, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !34, line: 76, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !876, file: !34, line: 2005, baseType: !1052, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!102, !824, !1049}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !876, file: !34, line: 2006, baseType: !1056, size: 64, offset: 1536)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !859}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !34, line: 3192, size: 192, elements: !1061)
!1061 = !{!1062, !1070}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1060, file: !34, line: 3193, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1064, line: 296, size: 128, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1065 = !{!1066, !1067, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1063, file: !1064, line: 297, baseType: !453, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1063, file: !1064, line: 299, baseType: !1068, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 154, baseType: !7)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1063, file: !1064, line: 300, baseType: !70, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1060, file: !34, line: 3194, baseType: !84, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !860, file: !34, line: 655, baseType: !1072, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !34, line: 1190, size: 10752, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1121, !1295, !1335, !1418, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1435, !1439, !1440, !1443, !1446, !1449, !1452, !1453, !1454, !1495, !1522, !1523, !1524, !1525, !1526, !1527, !1530, !1534, !1543, !1544, !1545, !1546, !1605, !1620, !1621, !1622, !1623, !1626, !1630, !1631, !1632, !1647, !1648, !1649, !1660, !1661, !1662, !1663, !1664, !1665}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1073, file: !34, line: 1191, baseType: !158, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1073, file: !34, line: 1192, baseType: !934, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1073, file: !34, line: 1193, baseType: !270, size: 8, offset: 160)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1073, file: !34, line: 1194, baseType: !81, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1073, file: !34, line: 1195, baseType: !511, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1073, file: !34, line: 1196, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !34, line: 2366, size: 576, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1092, !1096, !1100, !1104, !1108, !1109, !1110, !1113, !1114, !1115, !1117, !1118, !1119, !1120}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1082, file: !34, line: 2367, baseType: !703, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1082, file: !34, line: 2368, baseType: !102, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1082, file: !34, line: 2376, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!102, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !821, line: 21, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1082, file: !34, line: 2377, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !34, line: 75, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1082, file: !34, line: 2378, baseType: !1097, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!824, !1081, !102, !703, !70}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1082, file: !34, line: 2380, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1072}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1082, file: !34, line: 2381, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1107, line: 196, flags: DIFlagFwdDecl)
!1107 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !34, line: 2382, baseType: !1081, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1082, file: !34, line: 2383, baseType: !549, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1082, file: !34, line: 2385, baseType: !1111, offset: 576)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1112, line: 206, elements: !464)
!1112 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1082, file: !34, line: 2386, baseType: !1111, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1082, file: !34, line: 2387, baseType: !1111, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1082, file: !34, line: 2388, baseType: !1116, offset: 576)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, elements: !537)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1082, file: !34, line: 2390, baseType: !1111, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1082, file: !34, line: 2391, baseType: !1111, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1082, file: !34, line: 2392, baseType: !1111, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1082, file: !34, line: 2393, baseType: !1111, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1073, file: !34, line: 1197, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !34, line: 2057, size: 1664, elements: !1125)
!1125 = !{!1126, !1130, !1134, !1135, !1139, !1145, !1149, !1150, !1151, !1155, !1159, !1163, !1164, !1165, !1171, !1176, !1177, !1220, !1221, !1222, !1223, !1227, !1231, !1278, !1293, !1294}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1124, file: !34, line: 2058, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!859, !1072}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1124, file: !34, line: 2059, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !859}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1124, file: !34, line: 2060, baseType: !1131, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1124, file: !34, line: 2062, baseType: !1136, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !859, !102}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1124, file: !34, line: 2063, baseType: !1140, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!102, !859, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !34, line: 309, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1124, file: !34, line: 2064, baseType: !1146, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!102, !859}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1124, file: !34, line: 2065, baseType: !1131, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1124, file: !34, line: 2066, baseType: !1101, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1124, file: !34, line: 2067, baseType: !1152, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!102, !1072, !102}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1124, file: !34, line: 2068, baseType: !1156, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!102, !1072, !33}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1124, file: !34, line: 2069, baseType: !1160, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!102, !1072}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1124, file: !34, line: 2070, baseType: !1156, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1124, file: !34, line: 2071, baseType: !1160, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1124, file: !34, line: 2072, baseType: !1166, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!102, !824, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !34, line: 62, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1124, file: !34, line: 2073, baseType: !1172, size: 64, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!102, !1072, !1175, !713}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1124, file: !34, line: 2074, baseType: !1101, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1124, file: !34, line: 2076, baseType: !1178, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!102, !1181, !824}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1183, line: 17, size: 960, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1215, !1216, !1219}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1182, file: !1183, line: 18, baseType: !713, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1182, file: !1183, line: 19, baseType: !1016, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1182, file: !1183, line: 20, baseType: !1016, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1182, file: !1183, line: 21, baseType: !1016, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1182, file: !1183, line: 22, baseType: !1016, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1182, file: !1183, line: 23, baseType: !511, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1182, file: !1183, line: 24, baseType: !511, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !1183, line: 25, baseType: !499, size: 256, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1182, file: !1183, line: 26, baseType: !1194, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1183, line: 32, size: 256, elements: !1197)
!1197 = !{!1198, !1203, !1207, !1211}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1196, file: !1183, line: 33, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!70, !1181, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1196, file: !1183, line: 34, baseType: !1204, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1181, !70}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1196, file: !1183, line: 35, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!70, !1181, !70, !1202}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1196, file: !1183, line: 36, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!102, !1181, !70}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1182, file: !1183, line: 27, baseType: !102, size: 32, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1182, file: !1183, line: 28, baseType: !1217, size: 64, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1182, file: !1183, line: 29, baseType: !70, size: 64, offset: 896)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1124, file: !34, line: 2077, baseType: !1178, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1124, file: !34, line: 2078, baseType: !1178, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1124, file: !34, line: 2079, baseType: !1178, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1124, file: !34, line: 2081, baseType: !1224, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1013, !1072, !102, !713, !1016, !511}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1124, file: !34, line: 2082, baseType: !1228, size: 64, offset: 1344)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1013, !1072, !102, !703, !1016, !511}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1124, file: !34, line: 2083, baseType: !1232, size: 64, offset: 1408)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1235, !859}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !39, line: 296, size: 1664, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1263, !1264, !1265}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1237, file: !39, line: 297, baseType: !553, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1237, file: !39, line: 298, baseType: !158, size: 128, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1237, file: !39, line: 299, baseType: !158, size: 128, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1237, file: !39, line: 300, baseType: !158, size: 128, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1237, file: !39, line: 301, baseType: !499, size: 256, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1237, file: !39, line: 302, baseType: !453, size: 32, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1237, file: !39, line: 303, baseType: !97, size: 32, offset: 800)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1237, file: !39, line: 304, baseType: !1072, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1237, file: !39, line: 305, baseType: !1248, size: 64, offset: 896)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !39, line: 68, size: 64, elements: !1249)
!1249 = !{!1250, !1262}
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !39, line: 69, baseType: !1251, size: 32)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !39, line: 69, size: 32, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1251, file: !39, line: 70, baseType: !581, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1251, file: !39, line: 71, baseType: !599, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1251, file: !39, line: 72, baseType: !1256, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1257, line: 24, baseType: !1258)
!1257 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1257, line: 22, size: 32, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1258, file: !1257, line: 23, baseType: !1261, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1257, line: 20, baseType: !587)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1248, file: !39, line: 74, baseType: !38, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1237, file: !39, line: 306, baseType: !511, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1237, file: !39, line: 307, baseType: !81, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1237, file: !39, line: 308, baseType: !1266, size: 576, offset: 1088)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !39, line: 205, size: 576, elements: !1267)
!1267 = !{!1268, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1266, file: !39, line: 206, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !39, line: 66, baseType: !171)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1266, file: !39, line: 207, baseType: !1269, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1266, file: !39, line: 208, baseType: !1269, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1266, file: !39, line: 209, baseType: !1269, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1266, file: !39, line: 210, baseType: !1269, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1266, file: !39, line: 211, baseType: !1269, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1266, file: !39, line: 212, baseType: !1269, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1266, file: !39, line: 213, baseType: !656, size: 64, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1266, file: !39, line: 214, baseType: !656, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1124, file: !34, line: 2085, baseType: !1279, size: 64, offset: 1472)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!974, !1072, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1284, line: 15, size: 256, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1283, file: !1284, line: 16, baseType: !1068, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1283, file: !1284, line: 19, baseType: !102, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1283, file: !1284, line: 26, baseType: !81, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1283, file: !1284, line: 33, baseType: !81, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1283, file: !1284, line: 36, baseType: !1291, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1284, line: 36, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1124, file: !34, line: 2087, baseType: !1279, size: 64, offset: 1536)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1124, file: !34, line: 2089, baseType: !1101, size: 64, offset: 1600)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1073, file: !34, line: 1198, baseType: !1296, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !39, line: 324, size: 704, elements: !1299)
!1299 = !{!1300, !1304, !1308, !1312, !1313, !1314, !1315, !1316, !1321, !1326, !1330}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1298, file: !39, line: 325, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!102, !1236}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1298, file: !39, line: 326, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1236, !1072, !102}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1298, file: !39, line: 327, baseType: !1309, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1236}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1298, file: !39, line: 328, baseType: !1301, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1298, file: !39, line: 329, baseType: !1301, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1298, file: !39, line: 330, baseType: !1301, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1298, file: !39, line: 331, baseType: !1152, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1298, file: !39, line: 334, baseType: !1317, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1320, !859}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1298, file: !39, line: 335, baseType: !1322, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!102, !859, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1298, file: !39, line: 337, baseType: !1327, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!102, !859, !1320}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1298, file: !39, line: 339, baseType: !1331, size: 64, offset: 640)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!102, !1072, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1073, file: !34, line: 1199, baseType: !1336, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !39, line: 430, size: 704, elements: !1339)
!1339 = !{!1340, !1344, !1345, !1349, !1350, !1351, !1366, !1389, !1393, !1394, !1417}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1338, file: !39, line: 431, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!102, !1072, !102, !102, !982}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1338, file: !39, line: 432, baseType: !1152, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1338, file: !39, line: 433, baseType: !1346, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!102, !1072, !7}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1338, file: !39, line: 434, baseType: !1346, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1338, file: !39, line: 435, baseType: !1152, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1338, file: !39, line: 436, baseType: !1352, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!102, !1072, !102, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !39, line: 417, size: 256, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1356, file: !39, line: 418, baseType: !102, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1356, file: !39, line: 419, baseType: !7, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1356, file: !39, line: 420, baseType: !7, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1356, file: !39, line: 422, baseType: !7, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1356, file: !39, line: 423, baseType: !7, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1356, file: !39, line: 424, baseType: !7, size: 32, offset: 160)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1356, file: !39, line: 425, baseType: !7, size: 32, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1356, file: !39, line: 426, baseType: !7, size: 32, offset: 224)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1338, file: !39, line: 437, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!102, !1072, !1248, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !39, line: 345, size: 960, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1371, file: !39, line: 346, baseType: !102, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1371, file: !39, line: 347, baseType: !153, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1371, file: !39, line: 348, baseType: !153, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1371, file: !39, line: 349, baseType: !153, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1371, file: !39, line: 350, baseType: !153, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1371, file: !39, line: 351, baseType: !153, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1371, file: !39, line: 352, baseType: !153, size: 64, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1371, file: !39, line: 353, baseType: !169, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1371, file: !39, line: 355, baseType: !169, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1371, file: !39, line: 356, baseType: !102, size: 32, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1371, file: !39, line: 357, baseType: !102, size: 32, offset: 608)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1371, file: !39, line: 358, baseType: !153, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1371, file: !39, line: 359, baseType: !153, size: 64, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1371, file: !39, line: 360, baseType: !153, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1371, file: !39, line: 361, baseType: !169, size: 64, offset: 832)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1371, file: !39, line: 362, baseType: !102, size: 32, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1338, file: !39, line: 438, baseType: !1390, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!102, !1072, !1334, !1370}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1338, file: !39, line: 440, baseType: !1367, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1338, file: !39, line: 441, baseType: !1395, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!102, !1072, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !39, line: 411, size: 1408, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1399, file: !39, line: 412, baseType: !7, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1399, file: !39, line: 413, baseType: !1403, size: 1344, offset: 64)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 1344, elements: !537)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !39, line: 397, size: 448, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1416}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !39, line: 398, baseType: !7, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1404, file: !39, line: 399, baseType: !7, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1404, file: !39, line: 401, baseType: !7, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1404, file: !39, line: 402, baseType: !7, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1404, file: !39, line: 403, baseType: !7, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1404, file: !39, line: 404, baseType: !7, size: 32, offset: 160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1404, file: !39, line: 405, baseType: !7, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1404, file: !39, line: 406, baseType: !155, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1404, file: !39, line: 407, baseType: !1415, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !98, line: 132, baseType: !153)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1404, file: !39, line: 408, baseType: !1415, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1338, file: !39, line: 442, baseType: !1346, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1073, file: !34, line: 1200, baseType: !1419, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !34, line: 54, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1073, file: !34, line: 1201, baseType: !81, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1073, file: !34, line: 1202, baseType: !81, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1073, file: !34, line: 1203, baseType: !81, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1073, file: !34, line: 1204, baseType: !824, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1073, file: !34, line: 1205, baseType: !640, size: 320, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1073, file: !34, line: 1206, baseType: !102, size: 32, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1073, file: !34, line: 1207, baseType: !97, size: 32, offset: 1248)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1073, file: !34, line: 1209, baseType: !70, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1073, file: !34, line: 1211, baseType: !1431, size: 64, offset: 1344)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !34, line: 1211, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1073, file: !34, line: 1223, baseType: !1436, size: 64, offset: 1408)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !836, line: 34, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1436, file: !836, line: 35, baseType: !839, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1073, file: !34, line: 1224, baseType: !158, size: 128, offset: 1472)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1073, file: !34, line: 1225, baseType: !1441, size: 64, offset: 1600)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !34, line: 1225, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1073, file: !34, line: 1226, baseType: !1444, size: 64, offset: 1664)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !34, line: 1226, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1073, file: !34, line: 1227, baseType: !1447, size: 64, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !34, line: 50, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1073, file: !34, line: 1228, baseType: !1450, size: 64, offset: 1792)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !34, line: 1228, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1073, file: !34, line: 1229, baseType: !553, size: 128, offset: 1856)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1073, file: !34, line: 1230, baseType: !7, size: 32, offset: 1984)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1073, file: !34, line: 1231, baseType: !1455, size: 2496, offset: 2048)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !39, line: 521, size: 2496, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1461, !1493}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !39, line: 522, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1455, file: !39, line: 523, baseType: !640, size: 320, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1455, file: !39, line: 524, baseType: !1460, size: 192, offset: 384)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 192, elements: !537)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1455, file: !39, line: 525, baseType: !1462, size: 1728, offset: 576)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 1728, elements: !537)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !39, line: 222, size: 576, elements: !1464)
!1464 = !{!1465, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1463, file: !39, line: 223, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !39, line: 445, size: 256, elements: !1468)
!1468 = !{!1469, !1470, !1483, !1484}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1467, file: !39, line: 446, baseType: !102, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1467, file: !39, line: 447, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !39, line: 312, size: 512, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1473, file: !39, line: 313, baseType: !1152, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1473, file: !39, line: 314, baseType: !1152, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1473, file: !39, line: 315, baseType: !1152, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1473, file: !39, line: 316, baseType: !1152, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1473, file: !39, line: 317, baseType: !1301, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1473, file: !39, line: 318, baseType: !1301, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1473, file: !39, line: 319, baseType: !1301, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1473, file: !39, line: 320, baseType: !1331, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1467, file: !39, line: 448, baseType: !1105, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1467, file: !39, line: 449, baseType: !1466, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1463, file: !39, line: 224, baseType: !102, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1463, file: !39, line: 226, baseType: !158, size: 128, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1463, file: !39, line: 227, baseType: !81, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1463, file: !39, line: 228, baseType: !7, size: 32, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1463, file: !39, line: 229, baseType: !7, size: 32, offset: 352)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1463, file: !39, line: 230, baseType: !1269, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1463, file: !39, line: 231, baseType: !1269, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1463, file: !39, line: 232, baseType: !70, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1455, file: !39, line: 526, baseType: !1494, size: 192, offset: 2304)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 192, elements: !537)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1073, file: !34, line: 1233, baseType: !1496, size: 2368, offset: 4544)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !34, line: 1184, size: 2368, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1496, file: !34, line: 1185, baseType: !124, size: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1496, file: !34, line: 1186, baseType: !124, size: 16, offset: 16)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1496, file: !34, line: 1187, baseType: !1501, size: 2304, offset: 64)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 2304, elements: !537)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1503, line: 12, size: 768, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1504 = !{!1505, !1513, !1515, !1520, !1521}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1502, file: !1503, line: 13, baseType: !1506, size: 384)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1507, line: 17, size: 384, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1506, file: !1507, line: 18, baseType: !102, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1506, file: !1507, line: 19, baseType: !102, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1506, file: !1507, line: 20, baseType: !562, size: 192, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1506, file: !1507, line: 22, baseType: !479, size: 128, align: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1502, file: !1503, line: 14, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1502, file: !1503, line: 15, baseType: !1516, size: 64, offset: 448)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1517, line: 16, size: 64, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1516, file: !1517, line: 17, baseType: !72, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1502, file: !1503, line: 16, baseType: !562, size: 192, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1502, file: !1503, line: 17, baseType: !97, size: 32, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1073, file: !34, line: 1240, baseType: !70, size: 64, offset: 6912)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1073, file: !34, line: 1243, baseType: !84, size: 32, offset: 6976)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1073, file: !34, line: 1245, baseType: !656, size: 64, offset: 7040)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1073, file: !34, line: 1246, baseType: !656, size: 64, offset: 7104)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1073, file: !34, line: 1248, baseType: !86, size: 32, offset: 7168)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1073, file: !34, line: 1249, baseType: !1528, size: 64, offset: 7232)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !34, line: 634, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1073, file: !34, line: 1252, baseType: !1531, size: 256, offset: 7296)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1073, file: !34, line: 1253, baseType: !1535, size: 128, offset: 7552)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1536, line: 21, baseType: !1537)
!1536 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1536, line: 19, size: 128, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1537, file: !1536, line: 20, baseType: !1540, size: 128)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 128, elements: !1541)
!1541 = !{!1542}
!1542 = !DISubrange(count: 16)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1073, file: !34, line: 1255, baseType: !7, size: 32, offset: 7680)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1073, file: !34, line: 1261, baseType: !499, size: 256, offset: 7744)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1073, file: !34, line: 1267, baseType: !703, size: 64, offset: 8000)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1073, file: !34, line: 1269, baseType: !1547, size: 64, offset: 8064)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !826, line: 128, size: 1024, align: 512, elements: !1550)
!1550 = !{!1551, !1555, !1556, !1563, !1569, !1573, !1577, !1581, !1582, !1586, !1590, !1595, !1599}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1549, file: !826, line: 129, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!102, !824, !7}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1549, file: !826, line: 130, baseType: !1552, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1549, file: !826, line: 131, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!102, !1560, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1549, file: !826, line: 132, baseType: !1564, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!102, !1560, !7, !703, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1549, file: !826, line: 134, baseType: !1570, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!102, !1560}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1549, file: !826, line: 135, baseType: !1574, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!102, !824}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1549, file: !826, line: 136, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !824}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1549, file: !826, line: 137, baseType: !1578, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1549, file: !826, line: 138, baseType: !1583, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !824, !859}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1549, file: !826, line: 139, baseType: !1587, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!713, !824, !713, !102}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1549, file: !826, line: 140, baseType: !1591, size: 64, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!819, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1549, file: !826, line: 141, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!102, !982, !700}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1549, file: !826, line: 142, baseType: !1600, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!824, !824, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1073, file: !34, line: 1271, baseType: !1606, size: 448, offset: 8128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1284, line: 63, size: 448, elements: !1607)
!1607 = !{!1608, !1613, !1614, !1615, !1616, !1617, !1618}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1606, file: !1284, line: 64, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!81, !1612, !1282}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1606, file: !1284, line: 66, baseType: !1609, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1606, file: !1284, line: 69, baseType: !974, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1606, file: !1284, line: 70, baseType: !102, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1284, line: 71, baseType: !7, size: 32, offset: 224)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1606, file: !1284, line: 74, baseType: !158, size: 128, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1606, file: !1284, line: 85, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1073, file: !34, line: 1274, baseType: !492, size: 64, offset: 8576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1073, file: !34, line: 1280, baseType: !492, size: 64, offset: 8640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1073, file: !34, line: 1283, baseType: !102, size: 32, offset: 8704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1073, file: !34, line: 1286, baseType: !1624, size: 32, offset: 8736)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1625, line: 8, baseType: !84)
!1625 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1073, file: !34, line: 1289, baseType: !1627, size: 64, offset: 8768)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1629, line: 18, flags: DIFlagFwdDecl)
!1629 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1073, file: !34, line: 1290, baseType: !549, size: 64, offset: 8832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1073, file: !34, line: 1297, baseType: !786, size: 64, offset: 8896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1073, file: !34, line: 1304, baseType: !1633, size: 64, offset: 8960)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1634, line: 49, size: 64, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1633, file: !1634, line: 50, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1634, line: 41, size: 512, align: 512, elements: !1639)
!1639 = !{!1640, !1641, !1646}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !1634, line: 43, baseType: !453, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1638, file: !1634, line: 45, baseType: !1642, size: 192, offset: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1634, line: 29, size: 192, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1642, file: !1634, line: 30, baseType: !158, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1642, file: !1634, line: 32, baseType: !974, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1638, file: !1634, line: 46, baseType: !974, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1073, file: !34, line: 1305, baseType: !1633, size: 64, offset: 9024)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1073, file: !34, line: 1306, baseType: !479, size: 128, align: 64, offset: 9088)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1073, file: !34, line: 1307, baseType: !1650, size: 256, offset: 9216)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1629, line: 98, size: 256, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1629, line: 99, baseType: !492, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1650, file: !1629, line: 100, baseType: !158, size: 128, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1650, file: !1629, line: 101, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1629, line: 21, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1073, file: !34, line: 1309, baseType: !499, size: 256, offset: 9472)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1073, file: !34, line: 1314, baseType: !102, size: 32, offset: 9728)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1073, file: !34, line: 1317, baseType: !453, size: 32, align: 512, offset: 10240)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1073, file: !34, line: 1318, baseType: !158, size: 128, offset: 10304)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1073, file: !34, line: 1320, baseType: !453, size: 32, offset: 10432)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1073, file: !34, line: 1321, baseType: !158, size: 128, offset: 10496)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !860, file: !34, line: 656, baseType: !1667, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !34, line: 472, size: 1536, align: 64, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1922, !1923, !1924, !1925, !1926, !1927}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1668, file: !34, line: 473, baseType: !859, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1668, file: !34, line: 474, baseType: !1063, size: 128, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1668, file: !34, line: 475, baseType: !640, size: 320, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1668, file: !34, line: 476, baseType: !1068, size: 32, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1668, file: !34, line: 477, baseType: !97, size: 32, offset: 544)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1668, file: !34, line: 482, baseType: !317, size: 128, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1668, file: !34, line: 483, baseType: !81, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1668, file: !34, line: 484, baseType: !81, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1668, file: !34, line: 485, baseType: !1679, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !34, line: 404, size: 1280, elements: !1682)
!1682 = !{!1683, !1747, !1817, !1821, !1825, !1831, !1837, !1841, !1846, !1850, !1854, !1858, !1886, !1890, !1894, !1898, !1903, !1907, !1914, !1918}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1681, file: !34, line: 405, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!102, !1687, !1143}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !436, line: 74, size: 512, align: 128, elements: !1689)
!1689 = !{!1690, !1691, !1741, !1746}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !436, line: 75, baseType: !81, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !436, line: 83, baseType: !1692, size: 320, offset: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !436, line: 83, size: 320, elements: !1693)
!1693 = !{!1694, !1715, !1729, !1733, !1740}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !436, line: 84, baseType: !1695, size: 320)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !436, line: 84, size: 320, elements: !1696)
!1696 = !{!1697, !1708, !1709, !1714}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !436, line: 90, baseType: !1698, size: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !436, line: 90, size: 128, elements: !1699)
!1699 = !{!1700, !1701, !1706, !1707}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1698, file: !436, line: 91, baseType: !158, size: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !436, line: 94, baseType: !1702, size: 128)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !436, line: 94, size: 128, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1702, file: !436, line: 96, baseType: !70, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1702, file: !436, line: 98, baseType: !7, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1698, file: !436, line: 102, baseType: !158, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1698, file: !436, line: 103, baseType: !158, size: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1695, file: !436, line: 106, baseType: !1667, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !436, line: 107, baseType: !1710, size: 64, offset: 192)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !436, line: 107, size: 64, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1710, file: !436, line: 108, baseType: !81, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1710, file: !436, line: 109, baseType: !81, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1695, file: !436, line: 117, baseType: !81, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !436, line: 119, baseType: !1716, size: 320)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !436, line: 119, size: 320, elements: !1717)
!1717 = !{!1718, !1719, !1722, !1723, !1724}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1716, file: !436, line: 124, baseType: !81, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1716, file: !436, line: 125, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !436, line: 125, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1716, file: !436, line: 126, baseType: !81, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1716, file: !436, line: 127, baseType: !81, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !436, line: 128, baseType: !1725, size: 64, offset: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !436, line: 128, size: 64, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1725, file: !436, line: 133, baseType: !81, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1725, file: !436, line: 138, baseType: !492, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !436, line: 141, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !436, line: 141, size: 64, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1730, file: !436, line: 142, baseType: !81, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !436, line: 144, baseType: !1734, size: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !436, line: 144, size: 128, elements: !1735)
!1735 = !{!1736, !1739}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1734, file: !436, line: 146, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !436, line: 146, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1734, file: !436, line: 147, baseType: !70, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1692, file: !436, line: 161, baseType: !479, size: 128, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !436, line: 164, baseType: !1742, size: 32, offset: 384)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !436, line: 164, size: 32, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1742, file: !436, line: 169, baseType: !97, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1742, file: !436, line: 177, baseType: !7, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1688, file: !436, line: 181, baseType: !97, size: 32, offset: 416)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1681, file: !34, line: 406, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!102, !471, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !436, line: 293, size: 1536, elements: !1753)
!1753 = !{!1754, !1784, !1798}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !436, line: 295, baseType: !1755, size: 512)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !436, line: 295, size: 512, elements: !1756)
!1756 = !{!1757, !1783}
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !436, line: 296, baseType: !1758, size: 448)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !436, line: 296, size: 448, elements: !1759)
!1759 = !{!1760, !1761, !1770, !1771, !1772, !1781, !1782}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1758, file: !436, line: 298, baseType: !81, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !436, line: 299, baseType: !1762, size: 128, offset: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !436, line: 299, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1762, file: !436, line: 300, baseType: !158, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !436, line: 302, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !436, line: 302, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1766, file: !436, line: 303, baseType: !70, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1766, file: !436, line: 305, baseType: !7, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1758, file: !436, line: 310, baseType: !1667, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1758, file: !436, line: 311, baseType: !81, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !436, line: 312, baseType: !1773, size: 64, offset: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !436, line: 312, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1773, file: !436, line: 313, baseType: !70, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1773, file: !436, line: 314, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !436, line: 257, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 255, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1778, file: !436, line: 256, baseType: !81, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1758, file: !436, line: 316, baseType: !97, size: 32, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1758, file: !436, line: 317, baseType: !97, size: 32, offset: 416)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1755, file: !436, line: 323, baseType: !1688, size: 512, align: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !436, line: 325, baseType: !1785, size: 512, offset: 512)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !436, line: 325, size: 512, elements: !1786)
!1786 = !{!1787, !1797}
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !436, line: 326, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !436, line: 326, size: 320, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1788, file: !436, line: 327, baseType: !81, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1788, file: !436, line: 328, baseType: !81, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1788, file: !436, line: 329, baseType: !81, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1788, file: !436, line: 331, baseType: !97, size: 32, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1788, file: !436, line: 332, baseType: !97, size: 32, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1788, file: !436, line: 333, baseType: !97, size: 32, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1788, file: !436, line: 335, baseType: !7, size: 32, offset: 288)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1785, file: !436, line: 339, baseType: !1688, size: 512, align: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !436, line: 341, baseType: !1799, size: 512, offset: 1024)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !436, line: 341, size: 512, elements: !1800)
!1800 = !{!1801, !1810, !1816}
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !436, line: 342, baseType: !1802, size: 384)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !436, line: 342, size: 384, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1802, file: !436, line: 343, baseType: !81, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1802, file: !436, line: 344, baseType: !81, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1802, file: !436, line: 346, baseType: !70, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1802, file: !436, line: 347, baseType: !70, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1802, file: !436, line: 348, baseType: !70, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1802, file: !436, line: 349, baseType: !70, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !436, line: 352, baseType: !1811, size: 256)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !436, line: 352, size: 256, elements: !1812)
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1811, file: !436, line: 353, baseType: !81, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1811, file: !436, line: 354, baseType: !81, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1811, file: !436, line: 356, baseType: !158, size: 128, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1799, file: !436, line: 359, baseType: !1688, size: 512, align: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1681, file: !34, line: 409, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!102, !1667, !1143}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1681, file: !34, line: 412, baseType: !1822, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!700, !1667, !1751}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1681, file: !34, line: 414, baseType: !1826, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !34, line: 310, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1681, file: !34, line: 416, baseType: !1832, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!102, !471, !1667, !511, !7, !1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1681, file: !34, line: 419, baseType: !1838, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!102, !471, !1667, !511, !7, !7, !1687, !70}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1681, file: !34, line: 424, baseType: !1842, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1845, !1667, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !98, line: 131, baseType: !153)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1681, file: !34, line: 425, baseType: !1847, size: 64, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1751, !1016, !1016}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1681, file: !34, line: 426, baseType: !1851, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!700, !1751, !1068}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1681, file: !34, line: 427, baseType: !1855, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1751}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1681, file: !34, line: 428, baseType: !1859, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1013, !1862, !1884}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !34, line: 373, size: 384, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1871, !1872, !1873, !1874}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1863, file: !34, line: 374, baseType: !471, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1863, file: !34, line: 375, baseType: !511, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1863, file: !34, line: 376, baseType: !1868, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1862, !974}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1863, file: !34, line: 377, baseType: !70, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1863, file: !34, line: 378, baseType: !102, size: 32, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1863, file: !34, line: 379, baseType: !122, size: 16, offset: 288)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !34, line: 380, baseType: !1875, size: 64, offset: 320)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1863, file: !34, line: 380, size: 64, elements: !1876)
!1876 = !{!1877, !1880}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1875, file: !34, line: 386, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !34, line: 386, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1875, file: !34, line: 395, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1013, !70}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !34, line: 69, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1681, file: !34, line: 433, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!102, !1667, !1751, !1751, !44}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1681, file: !34, line: 435, baseType: !1891, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!102, !1751}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1681, file: !34, line: 436, baseType: !1895, size: 64, offset: 896)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!700, !1751, !1016, !1016}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1681, file: !34, line: 438, baseType: !1899, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1751, !1902, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1681, file: !34, line: 439, baseType: !1904, size: 64, offset: 1024)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!102, !1667, !1687}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1681, file: !34, line: 442, baseType: !1908, size: 64, offset: 1088)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!102, !1911, !471, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !34, line: 66, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1681, file: !34, line: 444, baseType: !1915, size: 64, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !471}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1681, file: !34, line: 445, baseType: !1919, size: 64, offset: 1216)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!102, !1862, !1884}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1668, file: !34, line: 486, baseType: !81, size: 64, offset: 896)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1668, file: !34, line: 487, baseType: !640, size: 320, offset: 960)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1668, file: !34, line: 488, baseType: !1624, size: 32, offset: 1280)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1668, file: !34, line: 489, baseType: !453, size: 32, offset: 1312)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1668, file: !34, line: 490, baseType: !158, size: 128, offset: 1344)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1668, file: !34, line: 491, baseType: !70, size: 64, offset: 1472)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !860, file: !34, line: 659, baseType: !70, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !860, file: !34, line: 663, baseType: !81, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !34, line: 671, baseType: !1931, size: 32, offset: 704)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !34, line: 671, size: 32, elements: !1932)
!1932 = !{!1933, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1931, file: !34, line: 672, baseType: !1934, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1931, file: !34, line: 673, baseType: !7, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !860, file: !34, line: 675, baseType: !934, size: 32, offset: 736)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !860, file: !34, line: 676, baseType: !511, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !860, file: !34, line: 677, baseType: !970, size: 128, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !860, file: !34, line: 678, baseType: !970, size: 128, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !860, file: !34, line: 679, baseType: !970, size: 128, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !860, file: !34, line: 680, baseType: !453, size: 32, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !860, file: !34, line: 681, baseType: !124, size: 16, offset: 1248)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !860, file: !34, line: 682, baseType: !268, size: 8, offset: 1264)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !860, file: !34, line: 683, baseType: !268, size: 8, offset: 1272)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !860, file: !34, line: 684, baseType: !1415, size: 64, offset: 1280)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !860, file: !34, line: 691, baseType: !81, size: 64, offset: 1344)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !860, file: !34, line: 692, baseType: !640, size: 320, offset: 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !860, file: !34, line: 694, baseType: !81, size: 64, offset: 1728)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !860, file: !34, line: 695, baseType: !81, size: 64, offset: 1792)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !860, file: !34, line: 697, baseType: !553, size: 128, offset: 1856)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !860, file: !34, line: 698, baseType: !158, size: 128, offset: 1984)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !860, file: !34, line: 707, baseType: !158, size: 128, offset: 2112)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !860, file: !34, line: 708, baseType: !158, size: 128, offset: 2240)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !34, line: 709, baseType: !1955, size: 128, offset: 2368)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !34, line: 709, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1955, file: !34, line: 710, baseType: !549, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1955, file: !34, line: 711, baseType: !479, size: 128, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !860, file: !34, line: 713, baseType: !494, size: 64, offset: 2496)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !860, file: !34, line: 714, baseType: !494, size: 64, offset: 2560)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !860, file: !34, line: 715, baseType: !97, size: 32, offset: 2624)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !860, file: !34, line: 716, baseType: !97, size: 32, offset: 2656)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !860, file: !34, line: 717, baseType: !97, size: 32, offset: 2688)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !860, file: !34, line: 719, baseType: !97, size: 32, offset: 2720)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !34, line: 721, baseType: !1966, size: 64, offset: 2752)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !34, line: 721, size: 64, elements: !1967)
!1967 = !{!1968, !2154}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1966, file: !34, line: 722, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !34, line: 1914, size: 2112, elements: !1972)
!1972 = !{!1973, !1974, !1978, !1982, !1986, !1987, !1988, !1994, !2007, !2015, !2019, !2020, !2080, !2081, !2085, !2090, !2091, !2095, !2099, !2105, !2106, !2110, !2111, !2117, !2121, !2122, !2127, !2131, !2135, !2139, !2143, !2144, !2150}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1971, file: !34, line: 1915, baseType: !1105, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1971, file: !34, line: 1916, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!511, !471, !511, !102}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1971, file: !34, line: 1917, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1013, !471, !713, !1016, !1202}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1971, file: !34, line: 1918, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1013, !471, !703, !1016, !1202}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1971, file: !34, line: 1919, baseType: !1859, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1971, file: !34, line: 1920, baseType: !1859, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1971, file: !34, line: 1921, baseType: !1989, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!102, !1862, !1992, !7}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !34, line: 53, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1971, file: !34, line: 1923, baseType: !1995, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!102, !471, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !34, line: 1858, size: 128, elements: !2000)
!2000 = !{!2001, !2006}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1999, file: !34, line: 1859, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !34, line: 1855, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!700, !1998, !703, !102, !511, !153, !7}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1999, file: !34, line: 1860, baseType: !511, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1971, file: !34, line: 1924, baseType: !2008, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !471, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2012, line: 59, baseType: !7)
!2012 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !34, line: 61, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1971, file: !34, line: 1925, baseType: !2016, size: 64, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!974, !471, !7, !81}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1971, file: !34, line: 1926, baseType: !2016, size: 64, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1971, file: !34, line: 1927, baseType: !2021, size: 64, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!102, !471, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !436, line: 625, size: 1344, elements: !2026)
!2026 = !{!2027, !2036, !2037, !2044, !2051, !2052, !2057, !2058, !2063, !2064, !2067, !2071, !2072, !2073, !2074, !2075, !2078}
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !436, line: 628, baseType: !2028, size: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !436, line: 628, size: 128, elements: !2029)
!2029 = !{!2030, !2035}
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !436, line: 629, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !436, line: 629, size: 128, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2031, file: !436, line: 631, baseType: !81, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2031, file: !436, line: 632, baseType: !81, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2028, file: !436, line: 635, baseType: !479, size: 128, align: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2025, file: !436, line: 639, baseType: !434, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2025, file: !436, line: 640, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !6, line: 297, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !6, line: 297, size: 64, elements: !2040)
!2040 = !{!2041}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2039, file: !6, line: 297, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2043, line: 19, baseType: !81)
!2043 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !436, line: 646, baseType: !2045, size: 64, offset: 256)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !436, line: 646, size: 64, elements: !2046)
!2046 = !{!2047, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2045, file: !436, line: 647, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !436, line: 542, baseType: !81)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2045, file: !436, line: 648, baseType: !2049, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2025, file: !436, line: 666, baseType: !102, size: 32, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2025, file: !436, line: 667, baseType: !2053, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !436, line: 579, size: 320, elements: !2055)
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2054, file: !436, line: 580, baseType: !640, size: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2025, file: !436, line: 670, baseType: !700, size: 8, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2025, file: !436, line: 681, baseType: !2059, size: 256, offset: 512)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !436, line: 678, size: 256, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2059, file: !436, line: 679, baseType: !145, size: 192, align: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2059, file: !436, line: 680, baseType: !81, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2025, file: !436, line: 689, baseType: !158, size: 128, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2025, file: !436, line: 691, baseType: !2065, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !436, line: 691, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2025, file: !436, line: 694, baseType: !2068, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !436, line: 694, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2025, file: !436, line: 697, baseType: !81, size: 64, offset: 1024)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2025, file: !436, line: 699, baseType: !471, size: 64, offset: 1088)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2025, file: !436, line: 700, baseType: !70, size: 64, offset: 1152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2025, file: !436, line: 711, baseType: !492, size: 64, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2025, file: !436, line: 717, baseType: !2076, size: 64, offset: 1280)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !436, line: 717, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2025, file: !436, line: 722, baseType: !2079, offset: 1344)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !436, line: 570, elements: !464)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1971, file: !34, line: 1928, baseType: !81, size: 64, offset: 768)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1971, file: !34, line: 1929, baseType: !2082, size: 64, offset: 832)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!102, !859, !471}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1971, file: !34, line: 1930, baseType: !2086, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!102, !471, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !34, line: 1061, baseType: !70)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1971, file: !34, line: 1931, baseType: !2082, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1971, file: !34, line: 1932, baseType: !2092, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!102, !471, !511, !511, !102}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1971, file: !34, line: 1933, baseType: !2096, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!102, !102, !471, !102}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1971, file: !34, line: 1934, baseType: !2100, size: 64, offset: 1152)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!102, !471, !102, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !34, line: 1063, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1971, file: !34, line: 1935, baseType: !468, size: 64, offset: 1216)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1971, file: !34, line: 1936, baseType: !2107, size: 64, offset: 1280)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!102, !102}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1971, file: !34, line: 1937, baseType: !2100, size: 64, offset: 1344)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1971, file: !34, line: 1938, baseType: !2112, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!1013, !2115, !471, !1202, !1016, !7}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !74, line: 59, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1971, file: !34, line: 1939, baseType: !2118, size: 64, offset: 1472)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!1013, !471, !1202, !2115, !1016, !7}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1971, file: !34, line: 1940, baseType: !1915, size: 64, offset: 1536)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1971, file: !34, line: 1941, baseType: !2123, size: 64, offset: 1600)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!102, !471, !102, !2126, !1836}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1971, file: !34, line: 1942, baseType: !2128, size: 64, offset: 1664)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!974, !471, !102, !511, !511}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1971, file: !34, line: 1944, baseType: !2132, size: 64, offset: 1728)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !1181, !471}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1971, file: !34, line: 1948, baseType: !2136, size: 64, offset: 1792)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!1013, !471, !511, !471, !511, !1016, !7}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1971, file: !34, line: 1950, baseType: !2140, size: 64, offset: 1856)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!511, !471, !511, !471, !511, !511, !7}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1971, file: !34, line: 1953, baseType: !2092, size: 64, offset: 1920)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1971, file: !34, line: 1954, baseType: !2145, size: 64, offset: 1984)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!102, !2148, !7}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !34, line: 1911, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1971, file: !34, line: 1955, baseType: !2151, size: 64, offset: 2048)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!102, !2148, !1992, !7}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1966, file: !34, line: 723, baseType: !1131, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !860, file: !34, line: 725, baseType: !2156, size: 64, offset: 2816)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !34, line: 725, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !860, file: !34, line: 726, baseType: !1668, size: 1536, align: 64, offset: 2880)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !860, file: !34, line: 727, baseType: !158, size: 128, offset: 4416)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !34, line: 728, baseType: !2161, size: 64, offset: 4544)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !34, line: 728, size: 64, elements: !2162)
!2162 = !{!2163, !2164, !2167, !2168}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2161, file: !34, line: 729, baseType: !2115, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2161, file: !34, line: 730, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !34, line: 730, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2161, file: !34, line: 731, baseType: !713, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2161, file: !34, line: 732, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !860, file: !34, line: 735, baseType: !86, size: 32, offset: 4608)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !860, file: !34, line: 738, baseType: !86, size: 32, offset: 4640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !860, file: !34, line: 739, baseType: !1528, size: 64, offset: 4672)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !860, file: !34, line: 750, baseType: !70, size: 64, offset: 4736)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !825, file: !826, line: 91, baseType: !2174, size: 256, offset: 448)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !1532)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !825, file: !826, line: 94, baseType: !2176, size: 64, offset: 704)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2177, line: 25, size: 64, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !2177, line: 26, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2176, file: !2177, line: 26, size: 64, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2180, file: !2177, line: 28, baseType: !154, size: 64, align: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2177, line: 30, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2177, line: 30, size: 64, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2184, file: !2177, line: 31, baseType: !453, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2184, file: !2177, line: 32, baseType: !102, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !825, file: !826, line: 95, baseType: !1547, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !825, file: !826, line: 96, baseType: !1072, size: 64, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !825, file: !826, line: 97, baseType: !81, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !825, file: !826, line: 98, baseType: !70, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 100, baseType: !2193, size: 128, offset: 1024)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 100, size: 128, elements: !2194)
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2193, file: !826, line: 101, baseType: !158, size: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2193, file: !826, line: 102, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !825, file: !826, line: 104, baseType: !158, size: 128, offset: 1152)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !825, file: !826, line: 105, baseType: !158, size: 128, offset: 1280)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !825, file: !826, line: 113, baseType: !2201, size: 128, offset: 1408)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 109, size: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2201, file: !826, line: 110, baseType: !553, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2201, file: !826, line: 111, baseType: !835, size: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2201, file: !826, line: 112, baseType: !479, size: 128, align: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !820, file: !821, line: 72, baseType: !1072, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !820, file: !821, line: 73, baseType: !102, size: 32, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !820, file: !821, line: 74, baseType: !899, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !815, file: !816, line: 10, baseType: !824, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !472, file: !34, line: 1015, baseType: !859, size: 64, offset: 1344)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !472, file: !34, line: 1016, baseType: !1969, size: 64, offset: 1408)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !472, file: !34, line: 1018, baseType: !153, size: 64, offset: 1472)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !472, file: !34, line: 1020, baseType: !70, size: 64, offset: 1536)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !472, file: !34, line: 1023, baseType: !70, size: 64, offset: 1600)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !472, file: !34, line: 1027, baseType: !2216, size: 64, offset: 1664)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !472, file: !34, line: 1029, baseType: !1667, size: 64, offset: 1728)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !472, file: !34, line: 1030, baseType: !1624, size: 32, offset: 1792)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !472, file: !34, line: 1031, baseType: !1624, size: 32, offset: 1824)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !439, file: !436, line: 756, baseType: !81, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !439, file: !436, line: 757, baseType: !81, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !439, file: !436, line: 760, baseType: !81, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !439, file: !436, line: 761, baseType: !81, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !439, file: !436, line: 763, baseType: !81, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !439, file: !436, line: 764, baseType: !2226, size: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !6, line: 299, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 299, size: 64, elements: !2229)
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2228, file: !6, line: 299, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2043, line: 18, baseType: !81)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !439, file: !436, line: 773, baseType: !97, size: 32, offset: 1088)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !439, file: !436, line: 785, baseType: !97, size: 32, offset: 1120)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !439, file: !436, line: 795, baseType: !2235, size: 64, offset: 1152)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !436, line: 726, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2236, file: !436, line: 727, baseType: !153, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2236, file: !436, line: 728, baseType: !102, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !439, file: !436, line: 801, baseType: !81, size: 64, offset: 1216)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !439, file: !436, line: 804, baseType: !492, size: 64, offset: 1280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !439, file: !436, line: 806, baseType: !102, size: 32, offset: 1344)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !439, file: !436, line: 808, baseType: !453, size: 32, offset: 1376)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !439, file: !436, line: 823, baseType: !640, size: 320, offset: 1408)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !439, file: !436, line: 825, baseType: !158, size: 128, offset: 1728)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !439, file: !436, line: 845, baseType: !102, size: 32, offset: 1856)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !439, file: !436, line: 849, baseType: !81, size: 64, offset: 1920)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !439, file: !436, line: 850, baseType: !81, size: 64, offset: 1984)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !439, file: !436, line: 852, baseType: !81, size: 64, offset: 2048)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !439, file: !436, line: 853, baseType: !81, size: 64, offset: 2112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !439, file: !436, line: 854, baseType: !494, size: 64, offset: 2176)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !439, file: !436, line: 855, baseType: !81, size: 64, offset: 2240)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !439, file: !436, line: 856, baseType: !81, size: 64, offset: 2304)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !439, file: !436, line: 857, baseType: !81, size: 64, offset: 2368)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !439, file: !436, line: 858, baseType: !81, size: 64, offset: 2432)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !439, file: !436, line: 865, baseType: !308, size: 32, offset: 2496)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !439, file: !436, line: 867, baseType: !453, size: 32, offset: 2528)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !439, file: !436, line: 869, baseType: !81, size: 64, offset: 2560)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !439, file: !436, line: 869, baseType: !81, size: 64, offset: 2624)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !439, file: !436, line: 869, baseType: !81, size: 64, offset: 2688)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !439, file: !436, line: 869, baseType: !81, size: 64, offset: 2752)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !439, file: !436, line: 870, baseType: !81, size: 64, offset: 2816)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !439, file: !436, line: 870, baseType: !81, size: 64, offset: 2880)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !439, file: !436, line: 870, baseType: !81, size: 64, offset: 2944)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !439, file: !436, line: 871, baseType: !81, size: 64, offset: 3008)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !439, file: !436, line: 871, baseType: !81, size: 64, offset: 3072)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !439, file: !436, line: 871, baseType: !81, size: 64, offset: 3136)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !439, file: !436, line: 871, baseType: !81, size: 64, offset: 3200)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !439, file: !436, line: 873, baseType: !2270, size: 3328, offset: 3264)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3328, elements: !2271)
!2271 = !{!2272}
!2272 = !DISubrange(count: 52)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !439, file: !436, line: 875, baseType: !2274, size: 1280, offset: 6592)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 1280, elements: !558)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !439, file: !436, line: 877, baseType: !2276, size: 64, offset: 7872)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !436, line: 877, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !439, file: !436, line: 880, baseType: !2279, size: 1088, offset: 7936)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2280, line: 72, baseType: !2281)
!2280 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2280, line: 23, size: 1088, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2290, !2291, !2292, !2293, !2297, !2298, !2299}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2281, file: !2280, line: 28, baseType: !153, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2281, file: !2280, line: 38, baseType: !494, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2281, file: !2280, line: 40, baseType: !81, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2281, file: !2280, line: 43, baseType: !640, size: 320, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2281, file: !2280, line: 44, baseType: !2288, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2280, line: 44, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2280, line: 48, baseType: !81, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2281, file: !2280, line: 59, baseType: !499, size: 256, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2281, file: !2280, line: 60, baseType: !70, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2281, file: !2280, line: 61, baseType: !2294, size: 64, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2280, line: 61, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2281, file: !2280, line: 63, baseType: !97, size: 32, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2281, file: !2280, line: 69, baseType: !122, size: 16, offset: 1056)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2281, file: !2280, line: 70, baseType: !2300, size: 16, offset: 1072)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !85, line: 18, baseType: !2301)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !87, line: 23, baseType: !668)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !436, line: 882, baseType: !81, size: 64, offset: 9024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !439, file: !436, line: 885, baseType: !453, size: 32, offset: 9088)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !439, file: !436, line: 886, baseType: !2305, size: 64, offset: 9152)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !436, line: 732, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !439, file: !436, line: 901, baseType: !786, size: 64, offset: 9216)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !439, file: !436, line: 904, baseType: !471, size: 64, offset: 9280)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !439, file: !436, line: 906, baseType: !2310, size: 64, offset: 9344)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !436, line: 906, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !439, file: !436, line: 930, baseType: !97, size: 32, offset: 9408)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !439, file: !436, line: 933, baseType: !97, size: 32, offset: 9440)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !439, file: !436, line: 935, baseType: !2315, size: 64, offset: 9472)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !58, line: 103, size: 64, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2315, file: !58, line: 104, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !58, line: 101, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !439, file: !436, line: 940, baseType: !492, size: 64, offset: 9536)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !439, file: !436, line: 942, baseType: !1650, size: 256, offset: 9600)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !435, file: !436, line: 986, baseType: !2323, offset: 10240)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !577)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !73, file: !74, line: 882, baseType: !434, size: 64, offset: 9792)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !73, file: !74, line: 884, baseType: !102, size: 32, offset: 9856)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !73, file: !74, line: 885, baseType: !102, size: 32, offset: 9888)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !73, file: !74, line: 886, baseType: !102, size: 32, offset: 9920)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !73, file: !74, line: 888, baseType: !102, size: 32, offset: 9952)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !73, file: !74, line: 890, baseType: !81, size: 64, offset: 9984)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !73, file: !74, line: 893, baseType: !7, size: 32, offset: 10048)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !73, file: !74, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !73, file: !74, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !73, file: !74, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !73, file: !74, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !73, file: !74, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !73, file: !74, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !73, file: !74, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !73, file: !74, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !73, file: !74, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !73, file: !74, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !73, file: !74, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !73, file: !74, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !73, file: !74, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !73, file: !74, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !73, file: !74, line: 969, baseType: !81, size: 64, offset: 10176)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !73, file: !74, line: 971, baseType: !2347, size: 448, offset: 10240)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !52, line: 25, size: 448, elements: !2348)
!2348 = !{!2349, !2350, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2347, file: !52, line: 26, baseType: !81, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2347, file: !52, line: 27, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!974, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !52, line: 28, baseType: !2356, size: 320, offset: 128)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !52, line: 28, size: 320, elements: !2357)
!2357 = !{!2358, !2368, !2393}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2356, file: !52, line: 37, baseType: !2359, size: 320)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2356, file: !52, line: 30, size: 320, elements: !2360)
!2360 = !{!2361, !2363, !2364, !2365, !2366, !2367}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2359, file: !52, line: 31, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2359, file: !52, line: 32, baseType: !84, size: 32, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2359, file: !52, line: 33, baseType: !84, size: 32, offset: 96)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2359, file: !52, line: 34, baseType: !84, size: 32, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2359, file: !52, line: 35, baseType: !153, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2359, file: !52, line: 36, baseType: !2362, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2356, file: !52, line: 47, baseType: !2369, size: 192)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2356, file: !52, line: 39, size: 192, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2392}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2369, file: !52, line: 40, baseType: !299, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2369, file: !52, line: 41, baseType: !51, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !52, line: 42, baseType: !2374, size: 64, offset: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !52, line: 42, size: 64, elements: !2375)
!2375 = !{!2376, !2384}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2374, file: !52, line: 43, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2379, line: 7, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2380 = !{!2381, !2383}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2378, file: !2379, line: 8, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !301, line: 93, baseType: !171)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2378, file: !2379, line: 9, baseType: !171, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2374, file: !52, line: 44, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2387, line: 7, size: 64, elements: !2388)
!2387 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2388 = !{!2389, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2386, file: !2387, line: 8, baseType: !2390, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2387, line: 5, baseType: !632)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2386, file: !2387, line: 9, baseType: !632, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2369, file: !52, line: 46, baseType: !153, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2356, file: !52, line: 55, baseType: !2394, size: 256)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2356, file: !52, line: 49, size: 256, elements: !2395)
!2395 = !{!2396, !2399, !2400, !2401, !2402}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2394, file: !52, line: 50, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !52, line: 14, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2394, file: !52, line: 51, baseType: !102, size: 32, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2394, file: !52, line: 52, baseType: !102, size: 32, offset: 96)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2394, file: !52, line: 53, baseType: !81, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2394, file: !52, line: 54, baseType: !81, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !73, file: !74, line: 973, baseType: !2404, size: 32, offset: 10688)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !98, line: 27, baseType: !2405)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !301, line: 28, baseType: !102)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !73, file: !74, line: 974, baseType: !2404, size: 32, offset: 10720)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !73, file: !74, line: 978, baseType: !81, size: 64, offset: 10752)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !73, file: !74, line: 987, baseType: !72, size: 64, offset: 10816)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !74, line: 990, baseType: !72, size: 64, offset: 10880)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !73, file: !74, line: 995, baseType: !158, size: 128, offset: 10944)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !73, file: !74, line: 996, baseType: !158, size: 128, offset: 11072)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !73, file: !74, line: 997, baseType: !72, size: 64, offset: 11200)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !73, file: !74, line: 1005, baseType: !158, size: 128, offset: 11264)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !73, file: !74, line: 1006, baseType: !158, size: 128, offset: 11392)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !73, file: !74, line: 1009, baseType: !541, size: 64, offset: 11520)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !73, file: !74, line: 1010, baseType: !2417, size: 512, offset: 11584)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !558)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !73, file: !74, line: 1011, baseType: !158, size: 128, offset: 12096)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !73, file: !74, line: 1012, baseType: !158, size: 128, offset: 12224)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !73, file: !74, line: 1014, baseType: !2421, size: 64, offset: 12352)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2423, line: 26, size: 256, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2422, file: !2423, line: 27, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2422, file: !2423, line: 28, baseType: !2427, size: 192, offset: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2428, line: 43, size: 192, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2427, file: !2428, line: 44, baseType: !251, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2427, file: !2428, line: 45, baseType: !158, size: 128, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !73, file: !74, line: 1017, baseType: !1175, size: 64, offset: 12416)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !73, file: !74, line: 1020, baseType: !1175, size: 64, offset: 12480)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !73, file: !74, line: 1023, baseType: !70, size: 64, offset: 12544)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !73, file: !74, line: 1025, baseType: !153, size: 64, offset: 12608)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !73, file: !74, line: 1026, baseType: !153, size: 64, offset: 12672)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !73, file: !74, line: 1031, baseType: !153, size: 64, offset: 12736)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !73, file: !74, line: 1032, baseType: !2439, size: 192, offset: 12800)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !74, line: 324, size: 192, elements: !2440)
!2440 = !{!2441, !2442, !2443}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2439, file: !74, line: 326, baseType: !153, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2439, file: !74, line: 327, baseType: !153, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !74, line: 328, baseType: !251, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !73, file: !74, line: 1041, baseType: !81, size: 64, offset: 12992)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !73, file: !74, line: 1042, baseType: !81, size: 64, offset: 13056)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !73, file: !74, line: 1045, baseType: !153, size: 64, offset: 13120)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !73, file: !74, line: 1048, baseType: !153, size: 64, offset: 13184)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !73, file: !74, line: 1051, baseType: !81, size: 64, offset: 13248)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !73, file: !74, line: 1052, baseType: !81, size: 64, offset: 13312)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !73, file: !74, line: 1055, baseType: !2451, size: 640, offset: 13376)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2452, line: 132, size: 640, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2453 = !{!2454, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2451, file: !2452, line: 133, baseType: !2455, size: 576)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 576, elements: !537)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2452, line: 117, size: 192, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2456, file: !2452, line: 118, baseType: !153, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2456, file: !2452, line: 119, baseType: !314, size: 128, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2451, file: !2452, line: 134, baseType: !7, size: 32, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2451, file: !2452, line: 135, baseType: !7, size: 32, offset: 608)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !73, file: !74, line: 1058, baseType: !2463, size: 448, offset: 14016)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2452, line: 144, size: 448, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2463, file: !2452, line: 145, baseType: !479, size: 128, align: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2463, file: !2452, line: 146, baseType: !499, size: 256, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2463, file: !2452, line: 147, baseType: !7, size: 32, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !73, file: !74, line: 1064, baseType: !591, size: 64, offset: 14464)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !73, file: !74, line: 1067, baseType: !591, size: 64, offset: 14528)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !73, file: !74, line: 1070, baseType: !591, size: 64, offset: 14592)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !73, file: !74, line: 1074, baseType: !624, size: 64, offset: 14656)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !73, file: !74, line: 1084, baseType: !2473, size: 128, offset: 14720)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 128, elements: !1541)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !73, file: !74, line: 1086, baseType: !2475, size: 64, offset: 14848)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !74, line: 55, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !73, file: !74, line: 1089, baseType: !2478, size: 64, offset: 14912)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2479, line: 12, size: 64, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2478, file: !2479, line: 13, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2479, line: 8, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !73, file: !74, line: 1090, baseType: !2485, size: 128, offset: 14976)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2486, line: 13, size: 128, elements: !2487)
!2486 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2485, file: !2486, line: 14, baseType: !158, size: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !73, file: !74, line: 1097, baseType: !2490, size: 64, offset: 15104)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !74, line: 50, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !73, file: !74, line: 1100, baseType: !2493, size: 64, offset: 15168)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !74, line: 1100, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !73, file: !74, line: 1103, baseType: !2496, size: 64, offset: 15232)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !74, line: 53, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !73, file: !74, line: 1107, baseType: !2499, size: 64, offset: 15296)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !74, line: 56, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !73, file: !74, line: 1110, baseType: !2502, size: 64, offset: 15360)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2504, line: 93, size: 8768, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2555, !2564, !2565, !2567, !2568, !2569, !2572, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2610, !2611, !2618, !2628, !2631, !2632, !2635, !2636, !2637, !2638, !2639, !2640}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2503, file: !2504, line: 94, baseType: !92, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2503, file: !2504, line: 95, baseType: !97, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2503, file: !2504, line: 96, baseType: !102, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2503, file: !2504, line: 97, baseType: !102, size: 32, offset: 96)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2503, file: !2504, line: 98, baseType: !158, size: 128, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2503, file: !2504, line: 100, baseType: !562, size: 192, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2503, file: !2504, line: 103, baseType: !72, size: 64, offset: 448)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2503, file: !2504, line: 106, baseType: !2514, size: 192, offset: 512)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !791, line: 32, size: 192, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2514, file: !791, line: 33, baseType: !158, size: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2514, file: !791, line: 34, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2519, line: 25, baseType: !2520)
!2519 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2519, line: 23, size: 64, elements: !2521)
!2521 = !{!2522}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2520, file: !2519, line: 24, baseType: !385, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2503, file: !2504, line: 109, baseType: !549, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2503, file: !2504, line: 112, baseType: !102, size: 32, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2503, file: !2504, line: 114, baseType: !102, size: 32, offset: 800)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2503, file: !2504, line: 115, baseType: !72, size: 64, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2503, file: !2504, line: 118, baseType: !102, size: 32, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !2504, line: 119, baseType: !7, size: 32, offset: 928)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2503, file: !2504, line: 121, baseType: !2530, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2504, line: 80, size: 448, elements: !2532)
!2532 = !{!2533, !2534, !2540}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2531, file: !2504, line: 81, baseType: !97, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2531, file: !2504, line: 82, baseType: !2535, size: 128, offset: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2504, line: 75, size: 128, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2535, file: !2504, line: 76, baseType: !72, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2535, file: !2504, line: 77, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2531, file: !2504, line: 83, baseType: !2422, size: 256, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2503, file: !2504, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2503, file: !2504, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2503, file: !2504, line: 138, baseType: !7, size: 32, offset: 1056)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2503, file: !2504, line: 139, baseType: !158, size: 128, offset: 1088)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2503, file: !2504, line: 142, baseType: !226, size: 512, offset: 1216)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2503, file: !2504, line: 143, baseType: !234, size: 64, offset: 1728)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2503, file: !2504, line: 150, baseType: !2548, size: 256, offset: 1792)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 256, elements: !2553)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2504, line: 38, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2549, file: !2504, line: 39, baseType: !153, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2549, file: !2504, line: 40, baseType: !153, size: 64, offset: 64)
!2553 = !{!2554}
!2554 = !DISubrange(count: 2)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2503, file: !2504, line: 156, baseType: !2556, size: 192, offset: 2048)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2504, line: 66, size: 192, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2556, file: !2504, line: 67, baseType: !2559, size: 192)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2504, line: 47, size: 192, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2559, file: !2504, line: 48, baseType: !494, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2559, file: !2504, line: 49, baseType: !494, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2559, file: !2504, line: 50, baseType: !494, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2503, file: !2504, line: 160, baseType: !2451, size: 640, offset: 2240)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2503, file: !2504, line: 163, baseType: !2566, size: 256, offset: 2880)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 256, elements: !558)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2503, file: !2504, line: 169, baseType: !541, size: 64, offset: 3136)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2503, file: !2504, line: 172, baseType: !102, size: 32, offset: 3200)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2503, file: !2504, line: 174, baseType: !2570, size: 64, offset: 3264)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2504, line: 174, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2503, file: !2504, line: 185, baseType: !2573, size: 64, offset: 3328)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !304, line: 860, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 853, size: 64, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2574, file: !304, line: 858, baseType: !830, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2574, file: !304, line: 859, baseType: !453, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2503, file: !2504, line: 186, baseType: !153, size: 64, offset: 3392)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2503, file: !2504, line: 186, baseType: !153, size: 64, offset: 3456)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2503, file: !2504, line: 186, baseType: !153, size: 64, offset: 3520)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2503, file: !2504, line: 186, baseType: !153, size: 64, offset: 3584)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2503, file: !2504, line: 187, baseType: !153, size: 64, offset: 3648)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2503, file: !2504, line: 188, baseType: !153, size: 64, offset: 3712)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2503, file: !2504, line: 189, baseType: !2439, size: 192, offset: 3776)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2503, file: !2504, line: 190, baseType: !81, size: 64, offset: 3968)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2503, file: !2504, line: 190, baseType: !81, size: 64, offset: 4032)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2503, file: !2504, line: 190, baseType: !81, size: 64, offset: 4096)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2503, file: !2504, line: 190, baseType: !81, size: 64, offset: 4160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2503, file: !2504, line: 191, baseType: !81, size: 64, offset: 4224)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2503, file: !2504, line: 191, baseType: !81, size: 64, offset: 4288)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2503, file: !2504, line: 191, baseType: !81, size: 64, offset: 4352)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2503, file: !2504, line: 191, baseType: !81, size: 64, offset: 4416)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2503, file: !2504, line: 192, baseType: !81, size: 64, offset: 4480)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2503, file: !2504, line: 192, baseType: !81, size: 64, offset: 4544)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2503, file: !2504, line: 192, baseType: !81, size: 64, offset: 4608)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2503, file: !2504, line: 192, baseType: !81, size: 64, offset: 4672)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2503, file: !2504, line: 193, baseType: !81, size: 64, offset: 4736)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2503, file: !2504, line: 193, baseType: !81, size: 64, offset: 4800)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2503, file: !2504, line: 194, baseType: !2600, size: 448, offset: 4864)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2601, line: 12, size: 448, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2600, file: !2601, line: 15, baseType: !153, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2600, file: !2601, line: 17, baseType: !153, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2600, file: !2601, line: 19, baseType: !153, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2600, file: !2601, line: 21, baseType: !153, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2600, file: !2601, line: 29, baseType: !153, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2600, file: !2601, line: 35, baseType: !153, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2600, file: !2601, line: 44, baseType: !153, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2503, file: !2504, line: 202, baseType: !155, size: 64, offset: 5312)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2503, file: !2504, line: 213, baseType: !2612, size: 2048, offset: 5376)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2613, size: 2048, elements: !1541)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2614, line: 43, size: 128, elements: !2615)
!2614 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2613, file: !2614, line: 44, baseType: !1018, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2613, file: !2614, line: 45, baseType: !1018, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2503, file: !2504, line: 216, baseType: !2619, size: 448, offset: 7424)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2504, line: 30, size: 448, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2619, file: !2504, line: 31, baseType: !102, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2619, file: !2504, line: 32, baseType: !974, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2619, file: !2504, line: 33, baseType: !81, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2619, file: !2504, line: 34, baseType: !153, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2619, file: !2504, line: 34, baseType: !153, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2619, file: !2504, line: 35, baseType: !81, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2619, file: !2504, line: 35, baseType: !81, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2503, file: !2504, line: 219, baseType: !2629, size: 64, offset: 7872)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2504, line: 219, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2503, file: !2504, line: 222, baseType: !7, size: 32, offset: 7936)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2503, file: !2504, line: 223, baseType: !2633, size: 64, offset: 8000)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2504, line: 223, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2503, file: !2504, line: 230, baseType: !700, size: 8, offset: 8064)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2503, file: !2504, line: 231, baseType: !668, size: 16, offset: 8080)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2503, file: !2504, line: 232, baseType: !668, size: 16, offset: 8096)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2503, file: !2504, line: 234, baseType: !434, size: 64, offset: 8128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2503, file: !2504, line: 237, baseType: !499, size: 256, offset: 8192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2503, file: !2504, line: 243, baseType: !640, size: 320, offset: 8448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !73, file: !74, line: 1111, baseType: !2642, size: 64, offset: 15424)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2504, line: 20, size: 16640, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2643, file: !2504, line: 21, baseType: !453, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2643, file: !2504, line: 22, baseType: !92, size: 32, offset: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2643, file: !2504, line: 23, baseType: !562, size: 192, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2643, file: !2504, line: 24, baseType: !2649, size: 16384, offset: 256)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 16384, elements: !2670)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !791, line: 51, size: 256, elements: !2651)
!2651 = !{!2652}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2650, file: !791, line: 52, baseType: !2653, size: 256)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !791, line: 37, size: 256, elements: !2654)
!2654 = !{!2655, !2662, !2663, !2669}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2653, file: !791, line: 39, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2657, line: 83, baseType: !2658)
!2657 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2657, line: 82, baseType: !2660)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !102}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2653, file: !791, line: 40, baseType: !81, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2653, file: !791, line: 46, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2657, line: 86, baseType: !2665)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2657, line: 85, baseType: !2667)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2653, file: !791, line: 48, baseType: !2518, size: 64, offset: 192)
!2670 = !{!2671}
!2671 = !DISubrange(count: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !73, file: !74, line: 1112, baseType: !2518, size: 64, offset: 15488)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !73, file: !74, line: 1113, baseType: !2518, size: 64, offset: 15552)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !73, file: !74, line: 1115, baseType: !2518, size: 64, offset: 15616)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !73, file: !74, line: 1116, baseType: !2514, size: 192, offset: 15680)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !73, file: !74, line: 1117, baseType: !81, size: 64, offset: 15872)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !73, file: !74, line: 1118, baseType: !1016, size: 64, offset: 15936)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !73, file: !74, line: 1119, baseType: !7, size: 32, offset: 16000)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !73, file: !74, line: 1121, baseType: !482, size: 64, offset: 16064)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !73, file: !74, line: 1125, baseType: !2681, size: 64, offset: 16128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !74, line: 43, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !73, file: !74, line: 1127, baseType: !581, size: 32, offset: 16192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !73, file: !74, line: 1128, baseType: !7, size: 32, offset: 16224)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !73, file: !74, line: 1130, baseType: !2686, size: 128, offset: 16256)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2687, line: 37, size: 128, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2686, file: !2687, line: 38, baseType: !102, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2686, file: !2687, line: 39, baseType: !97, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2686, file: !2687, line: 40, baseType: !2692, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2687, line: 24, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !73, file: !74, line: 1131, baseType: !2695, size: 256, offset: 16384)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2696, line: 12, size: 256, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2695, file: !2696, line: 13, baseType: !713, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2695, file: !2696, line: 14, baseType: !81, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2695, file: !2696, line: 15, baseType: !81, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2695, file: !2696, line: 16, baseType: !700, size: 8, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !73, file: !74, line: 1134, baseType: !153, size: 64, offset: 16640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !73, file: !74, line: 1135, baseType: !153, size: 64, offset: 16704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !73, file: !74, line: 1138, baseType: !453, size: 32, offset: 16768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !73, file: !74, line: 1141, baseType: !251, size: 32, offset: 16800)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !73, file: !74, line: 1143, baseType: !2707, size: 64, offset: 16832)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !74, line: 735, size: 64, elements: !2708)
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2707, file: !74, line: 736, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !73, file: !74, line: 1147, baseType: !317, size: 128, offset: 16896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !73, file: !74, line: 1149, baseType: !72, size: 64, offset: 17024)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !73, file: !74, line: 1151, baseType: !2714, size: 64, offset: 17088)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !74, line: 1151, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !73, file: !74, line: 1188, baseType: !70, size: 64, offset: 17152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !73, file: !74, line: 1191, baseType: !2718, size: 64, offset: 17216)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !74, line: 44, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !73, file: !74, line: 1194, baseType: !2721, size: 64, offset: 17280)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !74, line: 45, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !73, file: !74, line: 1197, baseType: !2724, size: 64, offset: 17344)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !74, line: 61, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !73, file: !74, line: 1199, baseType: !2727, size: 64, offset: 17408)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2729, line: 99, size: 128, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2730 = !{!2731, !2732, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2728, file: !2729, line: 100, baseType: !492, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2728, file: !2729, line: 101, baseType: !97, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2728, file: !2729, line: 103, baseType: !124, size: 16, offset: 96)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !73, file: !74, line: 1202, baseType: !2735, size: 64, offset: 17472)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !74, line: 48, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !73, file: !74, line: 1205, baseType: !81, size: 64, offset: 17536)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !73, file: !74, line: 1206, baseType: !2739, size: 64, offset: 17600)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !791, line: 14, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !791, line: 12, size: 384, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, scope: !2741, file: !791, line: 13, baseType: !2744, size: 384)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !791, line: 13, size: 384, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2744, file: !791, line: 13, baseType: !102, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2744, file: !791, line: 13, baseType: !102, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2744, file: !791, line: 13, baseType: !102, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2744, file: !791, line: 13, baseType: !2750, size: 256, offset: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2751, line: 37, size: 256, elements: !2752)
!2751 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2752 = !{!2753, !2758, !2771, !2777, !2786, !2813, !2818}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2750, file: !2751, line: 42, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 39, size: 64, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2754, file: !2751, line: 40, baseType: !2405, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2754, file: !2751, line: 41, baseType: !587, size: 32, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2750, file: !2751, line: 50, baseType: !2759, size: 192)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 45, size: 192, elements: !2760)
!2760 = !{!2761, !2763, !2764, !2770}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2759, file: !2751, line: 46, baseType: !2762, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !301, line: 95, baseType: !102)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2759, file: !2751, line: 47, baseType: !102, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2759, file: !2751, line: 48, baseType: !2765, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2751, line: 11, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2751, line: 8, size: 64, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2766, file: !2751, line: 9, baseType: !102, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2766, file: !2751, line: 10, baseType: !70, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2759, file: !2751, line: 49, baseType: !102, size: 32, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2750, file: !2751, line: 57, baseType: !2772, size: 128)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 53, size: 128, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2772, file: !2751, line: 54, baseType: !2405, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2772, file: !2751, line: 55, baseType: !587, size: 32, offset: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2772, file: !2751, line: 56, baseType: !2765, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2750, file: !2751, line: 66, baseType: !2778, size: 256)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 60, size: 256, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2785}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2778, file: !2751, line: 61, baseType: !2405, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2778, file: !2751, line: 62, baseType: !587, size: 32, offset: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2778, file: !2751, line: 63, baseType: !102, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2778, file: !2751, line: 64, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !301, line: 94, baseType: !1015)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2778, file: !2751, line: 65, baseType: !2784, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2750, file: !2751, line: 105, baseType: !2787, size: 256)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 69, size: 256, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2787, file: !2751, line: 70, baseType: !70, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, scope: !2787, file: !2751, line: 79, baseType: !2791, size: 192, offset: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2787, file: !2751, line: 79, size: 192, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2802, !2807}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2791, file: !2751, line: 81, baseType: !102, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2791, file: !2751, line: 86, baseType: !668, size: 16)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2791, file: !2751, line: 92, baseType: !2796, size: 192)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2791, file: !2751, line: 88, size: 192, elements: !2797)
!2797 = !{!2798, !2800, !2801}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2796, file: !2751, line: 89, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 64, elements: !295)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2796, file: !2751, line: 90, baseType: !70, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2796, file: !2751, line: 91, baseType: !70, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2791, file: !2751, line: 97, baseType: !2803, size: 96)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2791, file: !2751, line: 94, size: 96, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2803, file: !2751, line: 95, baseType: !2799, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2803, file: !2751, line: 96, baseType: !86, size: 32, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2791, file: !2751, line: 103, baseType: !2808, size: 128)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2791, file: !2751, line: 99, size: 128, elements: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2808, file: !2751, line: 100, baseType: !81, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2808, file: !2751, line: 101, baseType: !86, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2808, file: !2751, line: 102, baseType: !86, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2750, file: !2751, line: 111, baseType: !2814, size: 128)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 108, size: 128, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2814, file: !2751, line: 109, baseType: !974, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2814, file: !2751, line: 110, baseType: !102, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2750, file: !2751, line: 118, baseType: !2819, size: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !2751, line: 114, size: 128, elements: !2820)
!2820 = !{!2821, !2822, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2819, file: !2751, line: 115, baseType: !70, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2819, file: !2751, line: 116, baseType: !102, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2819, file: !2751, line: 117, baseType: !7, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !73, file: !74, line: 1208, baseType: !2600, size: 448, offset: 17664)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !73, file: !74, line: 1215, baseType: !153, size: 64, offset: 18112)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !73, file: !74, line: 1217, baseType: !153, size: 64, offset: 18176)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !73, file: !74, line: 1219, baseType: !153, size: 64, offset: 18240)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !73, file: !74, line: 1223, baseType: !2829, size: 64, offset: 18304)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2830, line: 99, baseType: !2831)
!2830 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2830, line: 99, size: 64, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2831, file: !2830, line: 99, baseType: !385, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !73, file: !74, line: 1225, baseType: !830, size: 32, offset: 18368)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !73, file: !74, line: 1226, baseType: !102, size: 32, offset: 18400)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !73, file: !74, line: 1227, baseType: !102, size: 32, offset: 18432)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !73, file: !74, line: 1231, baseType: !2838, size: 64, offset: 18496)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !74, line: 1231, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !73, file: !74, line: 1233, baseType: !158, size: 128, offset: 18560)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !73, file: !74, line: 1240, baseType: !2842, size: 64, offset: 18688)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !74, line: 62, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !73, file: !74, line: 1242, baseType: !2845, size: 64, offset: 18752)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !74, line: 1242, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !73, file: !74, line: 1244, baseType: !158, size: 128, offset: 18816)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !73, file: !74, line: 1245, baseType: !2849, size: 64, offset: 18944)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !74, line: 51, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !73, file: !74, line: 1246, baseType: !499, size: 256, offset: 19008)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !73, file: !74, line: 1247, baseType: !7, size: 32, offset: 19264)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !73, file: !74, line: 1250, baseType: !2854, size: 64, offset: 19328)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !74, line: 57, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !73, file: !74, line: 1251, baseType: !499, size: 256, offset: 19392)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !73, file: !74, line: 1252, baseType: !158, size: 128, offset: 19648)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !73, file: !74, line: 1259, baseType: !2076, size: 64, offset: 19776)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !73, file: !74, line: 1260, baseType: !668, size: 16, offset: 19840)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !73, file: !74, line: 1261, baseType: !668, size: 16, offset: 19856)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !73, file: !74, line: 1314, baseType: !2862, size: 64, offset: 19904)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2864, line: 62, size: 256, align: 256, elements: !2865)
!2864 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2863, file: !2864, line: 75, baseType: !86, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2863, file: !2864, line: 90, baseType: !86, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2863, file: !2864, line: 112, baseType: !154, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2863, file: !2864, line: 132, baseType: !86, size: 32, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2863, file: !2864, line: 140, baseType: !86, size: 32, offset: 160)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2863, file: !2864, line: 149, baseType: !86, size: 32, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2863, file: !2864, line: 154, baseType: !2873, offset: 224)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, elements: !577)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !73, file: !74, line: 1315, baseType: !84, size: 32, offset: 19968)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !73, file: !74, line: 1316, baseType: !84, size: 32, offset: 20000)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !73, file: !74, line: 1321, baseType: !81, size: 64, offset: 20032)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !73, file: !74, line: 1325, baseType: !102, size: 32, offset: 20096)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !73, file: !74, line: 1326, baseType: !102, size: 32, offset: 20128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !73, file: !74, line: 1327, baseType: !102, size: 32, offset: 20160)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !73, file: !74, line: 1328, baseType: !102, size: 32, offset: 20192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !73, file: !74, line: 1329, baseType: !479, size: 128, align: 64, offset: 20224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !73, file: !74, line: 1332, baseType: !2883, size: 128, offset: 20352)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2884, line: 51, size: 128, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2885 = !{!2886, !2891, !2892}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2883, file: !2884, line: 60, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2888, line: 7, size: 64, elements: !2889)
!2888 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2887, file: !2888, line: 12, baseType: !382, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2883, file: !2884, line: 63, baseType: !700, size: 8, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2883, file: !2884, line: 70, baseType: !700, size: 8, offset: 72)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !73, file: !74, line: 1335, baseType: !2115, size: 64, offset: 20480)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !73, file: !74, line: 1337, baseType: !2895, size: 128, offset: 20544)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2884, line: 39, size: 128, elements: !2896)
!2896 = !{!2897, !2898, !2899}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2895, file: !2884, line: 40, baseType: !1687, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2895, file: !2884, line: 42, baseType: !86, size: 32, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2895, file: !2884, line: 43, baseType: !86, size: 32, offset: 96)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !73, file: !74, line: 1340, baseType: !2901, size: 64, offset: 20672)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !74, line: 69, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !73, file: !74, line: 1351, baseType: !102, size: 32, offset: 20736)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !73, file: !74, line: 1352, baseType: !102, size: 32, offset: 20768)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !73, file: !74, line: 1354, baseType: !81, size: 64, offset: 20800)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !73, file: !74, line: 1364, baseType: !153, size: 64, offset: 20864)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !73, file: !74, line: 1365, baseType: !153, size: 64, offset: 20928)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !73, file: !74, line: 1412, baseType: !81, size: 64, offset: 20992)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !73, file: !74, line: 1453, baseType: !2910, size: 64, offset: 21056)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !74, line: 1453, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !73, file: !74, line: 1457, baseType: !2913, size: 64, offset: 21120)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !58, line: 61, size: 576, elements: !2915)
!2915 = !{!2916, !2917, !2936, !2939, !2940, !2973, !2983}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2914, file: !58, line: 62, baseType: !57, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !58, line: 64, baseType: !2918, size: 192, offset: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !58, line: 64, size: 192, elements: !2919)
!2919 = !{!2920, !2931}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !58, line: 65, baseType: !2921, size: 192)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2918, file: !58, line: 65, size: 192, elements: !2922)
!2922 = !{!2923, !2930}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2921, file: !58, line: 66, baseType: !2924, size: 128)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2925, line: 50, size: 128, elements: !2926)
!2925 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2924, file: !2925, line: 52, baseType: !81, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2924, file: !2925, line: 54, baseType: !7, size: 32, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2924, file: !2925, line: 55, baseType: !7, size: 32, offset: 96)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2921, file: !58, line: 67, baseType: !81, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !58, line: 70, baseType: !2932, size: 192)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2918, file: !58, line: 70, size: 192, elements: !2933)
!2933 = !{!2934, !2935}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2932, file: !58, line: 71, baseType: !479, size: 128, align: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2932, file: !58, line: 72, baseType: !81, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2914, file: !58, line: 76, baseType: !2937, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !58, line: 76, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2914, file: !58, line: 77, baseType: !81, size: 64, offset: 320)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2914, file: !58, line: 79, baseType: !2941, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2925, line: 25, size: 256, elements: !2943)
!2943 = !{!2944, !2950, !2954}
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !2925, line: 26, baseType: !2945, size: 128)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !2925, line: 26, size: 128, elements: !2946)
!2946 = !{!2947, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2945, file: !2925, line: 27, baseType: !2948, size: 128)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !1541)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2945, file: !2925, line: 28, baseType: !2948, size: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2942, file: !2925, line: 31, baseType: !2951, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2953)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2925, line: 23, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !2925, line: 33, baseType: !2955, size: 64, offset: 192)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !2925, line: 33, size: 64, elements: !2956)
!2956 = !{!2957, !2963, !2968}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2955, file: !2925, line: 38, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2925, line: 34, size: 64, elements: !2959)
!2959 = !{!2960, !2961, !2962}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2958, file: !2925, line: 35, baseType: !632, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2958, file: !2925, line: 36, baseType: !268, size: 8, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2958, file: !2925, line: 37, baseType: !268, size: 8, offset: 40)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2955, file: !2925, line: 42, baseType: !2964, size: 16)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2925, line: 39, size: 16, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2964, file: !2925, line: 40, baseType: !268, size: 8)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2964, file: !2925, line: 41, baseType: !268, size: 8, offset: 8)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2955, file: !2925, line: 46, baseType: !2969, size: 16)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2925, line: 43, size: 16, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2969, file: !2925, line: 44, baseType: !268, size: 8)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2969, file: !2925, line: 45, baseType: !268, size: 8, offset: 8)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2914, file: !58, line: 81, baseType: !2974, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !58, line: 85, size: 384, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2975, file: !58, line: 86, baseType: !2937, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2975, file: !58, line: 87, baseType: !81, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2975, file: !58, line: 88, baseType: !81, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2975, file: !58, line: 89, baseType: !81, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2975, file: !58, line: 90, baseType: !700, size: 8, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2975, file: !58, line: 92, baseType: !2974, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2914, file: !58, line: 82, baseType: !7, size: 32, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !73, file: !74, line: 1463, baseType: !2985, offset: 21184)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !74, line: 739, elements: !464)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !73, file: !74, line: 1470, baseType: !479, size: 128, align: 64, offset: 21184)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !73, file: !74, line: 1471, baseType: !92, size: 32, offset: 21312)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !73, file: !74, line: 1472, baseType: !102, size: 32, offset: 21344)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !73, file: !74, line: 1474, baseType: !72, size: 64, offset: 21376)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !73, file: !74, line: 1475, baseType: !2991, size: 320, offset: 21440)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2992, line: 11, size: 320, elements: !2993)
!2992 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2993 = !{!2994, !2995, !2996, !3001}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2991, file: !2992, line: 16, baseType: !553, size: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2991, file: !2992, line: 17, baseType: !81, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2991, file: !2992, line: 18, baseType: !2997, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2991, file: !2992, line: 19, baseType: !84, size: 32, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !73, file: !74, line: 1478, baseType: !3003, size: 64, offset: 21760)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !74, line: 1478, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !73, file: !74, line: 1482, baseType: !92, size: 32, offset: 21824)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !73, file: !74, line: 1489, baseType: !70, size: 64, offset: 21888)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !73, file: !74, line: 1504, baseType: !70, size: 64, offset: 21952)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !73, file: !74, line: 1505, baseType: !154, size: 64, offset: 22016)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !73, file: !74, line: 1506, baseType: !153, size: 64, offset: 22080)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !73, file: !74, line: 1507, baseType: !154, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !73, file: !74, line: 1508, baseType: !154, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !73, file: !74, line: 1509, baseType: !154, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !73, file: !74, line: 1510, baseType: !479, size: 128, align: 64, offset: 22208)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !73, file: !74, line: 1511, baseType: !102, size: 32, offset: 22336)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !73, file: !74, line: 1515, baseType: !3016, size: 64, offset: 22400)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !112, line: 56, size: 64, elements: !3017)
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3016, file: !112, line: 57, baseType: !115, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !73, file: !74, line: 1518, baseType: !3016, size: 64, offset: 22464)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !73, file: !74, line: 1528, baseType: !479, size: 128, align: 64, offset: 22528)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !73, file: !74, line: 1552, baseType: !3022, size: 35328, offset: 23040)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3023, line: 430, size: 35328, elements: !3024)
!3023 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3024 = !{!3025, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3054, !3055, !3056, !3057, !3058, !3059, !3062, !3063, !3064, !3065}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3022, file: !3023, line: 432, baseType: !3026, size: 192)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3027, size: 192, elements: !537)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3028, line: 16, size: 64, elements: !3029)
!3028 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3027, file: !3028, line: 17, baseType: !122, size: 16)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3027, file: !3028, line: 18, baseType: !122, size: 16, offset: 16)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3027, file: !3028, line: 19, baseType: !122, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3027, file: !3028, line: 19, baseType: !122, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3027, file: !3028, line: 19, baseType: !122, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3027, file: !3028, line: 19, baseType: !122, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3027, file: !3028, line: 19, baseType: !122, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3027, file: !3028, line: 20, baseType: !122, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3027, file: !3028, line: 20, baseType: !122, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3027, file: !3028, line: 20, baseType: !122, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3027, file: !3028, line: 20, baseType: !122, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3027, file: !3028, line: 20, baseType: !122, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3027, file: !3028, line: 20, baseType: !122, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3022, file: !3023, line: 436, baseType: !81, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3022, file: !3023, line: 440, baseType: !124, size: 16, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3022, file: !3023, line: 441, baseType: !124, size: 16, offset: 272)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3022, file: !3023, line: 442, baseType: !124, size: 16, offset: 288)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3022, file: !3023, line: 443, baseType: !124, size: 16, offset: 304)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3022, file: !3023, line: 447, baseType: !81, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3022, file: !3023, line: 448, baseType: !81, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3022, file: !3023, line: 459, baseType: !3051, size: 256, offset: 448)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3052, size: 256, elements: !558)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3023, line: 428, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3022, file: !3023, line: 461, baseType: !81, size: 64, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3022, file: !3023, line: 463, baseType: !81, size: 64, offset: 768)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3022, file: !3023, line: 465, baseType: !81, size: 64, offset: 832)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3022, file: !3023, line: 466, baseType: !81, size: 64, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3022, file: !3023, line: 467, baseType: !81, size: 64, offset: 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3022, file: !3023, line: 473, baseType: !3060, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3023, line: 10, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3022, file: !3023, line: 480, baseType: !81, size: 64, offset: 1088)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3022, file: !3023, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3022, file: !3023, line: 491, baseType: !84, size: 32, offset: 1184)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3022, file: !3023, line: 501, baseType: !3066, size: 33792, offset: 1536)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3067, line: 448, size: 33792, elements: !3068)
!3067 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3068 = !{!3069, !3070, !3071, !3233, !3234, !3240, !3241}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3066, file: !3067, line: 461, baseType: !7, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3066, file: !3067, line: 468, baseType: !81, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3066, file: !3067, line: 476, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3067, line: 356, size: 33280, align: 512, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3073, file: !3067, line: 358, baseType: !7, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3073, file: !3067, line: 361, baseType: !7, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3073, file: !3067, line: 364, baseType: !153, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3073, file: !3067, line: 367, baseType: !153, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3073, file: !3067, line: 370, baseType: !153, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3073, file: !3067, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3073, file: !3067, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3073, file: !3067, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3073, file: !3067, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3073, file: !3067, line: 397, baseType: !3085, size: 32768, offset: 512)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3067, line: 348, size: 32768, elements: !3086)
!3086 = !{!3087, !3102, !3139, !3216, !3229}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3085, file: !3067, line: 349, baseType: !3088, size: 896)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3067, line: 12, size: 896, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3101}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3088, file: !3067, line: 13, baseType: !84, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3088, file: !3067, line: 14, baseType: !84, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3088, file: !3067, line: 15, baseType: !84, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3088, file: !3067, line: 16, baseType: !84, size: 32, offset: 96)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3088, file: !3067, line: 17, baseType: !84, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3088, file: !3067, line: 18, baseType: !84, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3088, file: !3067, line: 19, baseType: !84, size: 32, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3088, file: !3067, line: 22, baseType: !3098, size: 640, offset: 224)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 640, elements: !3099)
!3099 = !{!3100}
!3100 = !DISubrange(count: 20)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3088, file: !3067, line: 25, baseType: !84, size: 32, offset: 864)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3085, file: !3067, line: 350, baseType: !3103, size: 4096, align: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3067, line: 34, size: 4096, align: 128, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3124, !3125, !3126, !3128, !3130, !3134}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3103, file: !3067, line: 35, baseType: !122, size: 16)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3103, file: !3067, line: 36, baseType: !122, size: 16, offset: 16)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3103, file: !3067, line: 37, baseType: !122, size: 16, offset: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3103, file: !3067, line: 38, baseType: !122, size: 16, offset: 48)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !3067, line: 39, baseType: !3110, size: 128, offset: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !3067, line: 39, size: 128, elements: !3111)
!3111 = !{!3112, !3117}
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !3067, line: 40, baseType: !3113, size: 128)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3067, line: 40, size: 128, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3113, file: !3067, line: 41, baseType: !153, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3113, file: !3067, line: 42, baseType: !153, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !3067, line: 44, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3067, line: 44, size: 128, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3118, file: !3067, line: 45, baseType: !84, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3118, file: !3067, line: 46, baseType: !84, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3118, file: !3067, line: 47, baseType: !84, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3118, file: !3067, line: 48, baseType: !84, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3103, file: !3067, line: 51, baseType: !84, size: 32, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3103, file: !3067, line: 52, baseType: !84, size: 32, offset: 224)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3103, file: !3067, line: 55, baseType: !3127, size: 1024, offset: 256)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1024, elements: !1532)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3103, file: !3067, line: 58, baseType: !3129, size: 2048, offset: 1280)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2048, elements: !2670)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3103, file: !3067, line: 60, baseType: !3131, size: 384, offset: 3328)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 384, elements: !3132)
!3132 = !{!3133}
!3133 = !DISubrange(count: 12)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !3067, line: 62, baseType: !3135, size: 384, offset: 3712)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !3067, line: 62, size: 384, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3135, file: !3067, line: 63, baseType: !3131, size: 384)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3135, file: !3067, line: 64, baseType: !3131, size: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3085, file: !3067, line: 351, baseType: !3140, size: 1088)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3067, line: 79, size: 1088, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3215}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3140, file: !3067, line: 80, baseType: !84, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3140, file: !3067, line: 81, baseType: !84, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3140, file: !3067, line: 82, baseType: !84, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3140, file: !3067, line: 83, baseType: !84, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3140, file: !3067, line: 84, baseType: !84, size: 32, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3140, file: !3067, line: 85, baseType: !84, size: 32, offset: 160)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3140, file: !3067, line: 86, baseType: !84, size: 32, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3140, file: !3067, line: 88, baseType: !3098, size: 640, offset: 224)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3140, file: !3067, line: 89, baseType: !268, size: 8, offset: 864)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3140, file: !3067, line: 90, baseType: !268, size: 8, offset: 872)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3140, file: !3067, line: 91, baseType: !268, size: 8, offset: 880)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3140, file: !3067, line: 92, baseType: !268, size: 8, offset: 888)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3140, file: !3067, line: 93, baseType: !268, size: 8, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3140, file: !3067, line: 94, baseType: !268, size: 8, offset: 904)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3140, file: !3067, line: 95, baseType: !3157, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3159, line: 11, size: 128, elements: !3160)
!3159 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3158, file: !3159, line: 12, baseType: !974, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3158, file: !3159, line: 13, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3165, line: 103, size: 1344, elements: !3166)
!3165 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3195, !3196, !3197}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3164, file: !3165, line: 109, baseType: !81, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3164, file: !3165, line: 110, baseType: !81, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3164, file: !3165, line: 111, baseType: !81, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3164, file: !3165, line: 112, baseType: !81, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3164, file: !3165, line: 113, baseType: !81, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3164, file: !3165, line: 114, baseType: !81, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3164, file: !3165, line: 117, baseType: !81, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3164, file: !3165, line: 118, baseType: !81, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3164, file: !3165, line: 119, baseType: !81, size: 64, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3164, file: !3165, line: 120, baseType: !81, size: 64, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3164, file: !3165, line: 121, baseType: !81, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3164, file: !3165, line: 122, baseType: !81, size: 64, offset: 704)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3164, file: !3165, line: 123, baseType: !81, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3164, file: !3165, line: 124, baseType: !81, size: 64, offset: 832)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3164, file: !3165, line: 125, baseType: !81, size: 64, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3164, file: !3165, line: 139, baseType: !81, size: 64, offset: 960)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3164, file: !3165, line: 142, baseType: !81, size: 64, offset: 1024)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3165, line: 144, baseType: !3185, size: 64, offset: 1088)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3164, file: !3165, line: 144, size: 64, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3185, file: !3165, line: 146, baseType: !122, size: 16)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3185, file: !3165, line: 148, baseType: !153, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3185, file: !3165, line: 150, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3165, line: 59, size: 64, elements: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3190, file: !3165, line: 61, baseType: !153, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3190, file: !3165, line: 63, baseType: !153, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3190, file: !3165, line: 65, baseType: !153, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3164, file: !3165, line: 153, baseType: !81, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3164, file: !3165, line: 154, baseType: !81, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3165, line: 156, baseType: !3198, size: 64, offset: 1280)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3164, file: !3165, line: 156, size: 64, elements: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3198, file: !3165, line: 158, baseType: !122, size: 16)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3198, file: !3165, line: 160, baseType: !153, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3198, file: !3165, line: 162, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3165, line: 69, size: 64, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3203, file: !3165, line: 71, baseType: !153, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3203, file: !3165, line: 73, baseType: !153, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3203, file: !3165, line: 75, baseType: !153, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3203, file: !3165, line: 77, baseType: !153, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3203, file: !3165, line: 80, baseType: !153, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3203, file: !3165, line: 83, baseType: !153, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3203, file: !3165, line: 86, baseType: !153, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3203, file: !3165, line: 88, baseType: !153, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3203, file: !3165, line: 93, baseType: !153, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3203, file: !3165, line: 100, baseType: !153, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3140, file: !3067, line: 96, baseType: !84, size: 32, offset: 1024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3085, file: !3067, line: 352, baseType: !3217, size: 4608, align: 512)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3067, line: 333, size: 4608, align: 512, elements: !3218)
!3218 = !{!3219, !3220, !3227}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3217, file: !3067, line: 334, baseType: !3103, size: 4096, align: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3217, file: !3067, line: 335, baseType: !3221, size: 512, offset: 4096)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3067, line: 312, size: 512, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3221, file: !3067, line: 313, baseType: !153, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3221, file: !3067, line: 314, baseType: !153, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3221, file: !3067, line: 315, baseType: !3226, size: 384, offset: 128)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 384, elements: !687)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3217, file: !3067, line: 336, baseType: !3228, offset: 4608)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, elements: !577)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3085, file: !3067, line: 353, baseType: !3230, size: 32768)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 32768, elements: !3231)
!3231 = !{!3232}
!3232 = !DISubrange(count: 4096)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3066, file: !3067, line: 484, baseType: !3072, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3066, file: !3067, line: 491, baseType: !3235, size: 128, offset: 256)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3067, line: 404, size: 128, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3235, file: !3067, line: 424, baseType: !153, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3235, file: !3067, line: 432, baseType: !7, size: 32, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3235, file: !3067, line: 440, baseType: !7, size: 32, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3066, file: !3067, line: 498, baseType: !3235, size: 128, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3066, file: !3067, line: 508, baseType: !3073, size: 33280, align: 512, offset: 512)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memtype", file: !3244, line: 10, size: 448, elements: !3245)
!3244 = !DIFile(filename: "arch/x86/mm/pat/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc405af90f683cdb3b3d3fb0d708f2")
!3245 = !{!3246, !3247, !3248, !3249, !3250}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3243, file: !3244, line: 11, baseType: !153, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3243, file: !3244, line: 12, baseType: !153, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_end", scope: !3243, file: !3244, line: 13, baseType: !153, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3243, file: !3244, line: 14, baseType: !5, size: 32, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3243, file: !3244, line: 15, baseType: !145, size: 192, align: 64, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!3253 = !{!3254, !3259, !3264, !3269, !3274, !3279, !3281, !3286, !3288, !3293, !0}
!3254 = !DIGlobalVariableExpression(var: !3255, expr: !DIExpression())
!3255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !3256, isLocal: true, isDefinition: true)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 280, elements: !3257)
!3257 = !{!3258}
!3258 = !DISubrange(count: 35)
!3259 = !DIGlobalVariableExpression(var: !3260, expr: !DIExpression())
!3260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !3261, isLocal: true, isDefinition: true)
!3261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 472, elements: !3262)
!3262 = !{!3263}
!3263 = !DISubrange(count: 59)
!3264 = !DIGlobalVariableExpression(var: !3265, expr: !DIExpression())
!3265 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 21, type: !3266, isLocal: true, isDefinition: true)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 72, elements: !3267)
!3267 = !{!3268}
!3268 = !DISubrange(count: 9)
!3269 = !DIGlobalVariableExpression(var: !3270, expr: !DIExpression())
!3270 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 22, type: !3271, isLocal: true, isDefinition: true)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 120, elements: !3272)
!3272 = !{!3273}
!3273 = !DISubrange(count: 15)
!3274 = !DIGlobalVariableExpression(var: !3275, expr: !DIExpression())
!3275 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 23, type: !3276, isLocal: true, isDefinition: true)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 88, elements: !3277)
!3277 = !{!3278}
!3278 = !DISubrange(count: 11)
!3279 = !DIGlobalVariableExpression(var: !3280, expr: !DIExpression())
!3280 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 24, type: !2473, isLocal: true, isDefinition: true)
!3281 = !DIGlobalVariableExpression(var: !3282, expr: !DIExpression())
!3282 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 25, type: !3283, isLocal: true, isDefinition: true)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 112, elements: !3284)
!3284 = !{!3285}
!3285 = !DISubrange(count: 14)
!3286 = !DIGlobalVariableExpression(var: !3287, expr: !DIExpression())
!3287 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 26, type: !2473, isLocal: true, isDefinition: true)
!3288 = !DIGlobalVariableExpression(var: !3289, expr: !DIExpression())
!3289 = distinct !DIGlobalVariable(scope: null, file: !3244, line: 27, type: !3290, isLocal: true, isDefinition: true)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 56, elements: !3291)
!3291 = !{!3292}
!3292 = !DISubrange(count: 7)
!3293 = !DIGlobalVariableExpression(var: !3294, expr: !DIExpression())
!3294 = distinct !DIGlobalVariable(name: "interval_augment", scope: !2, file: !3, line: 46, type: !3295, isLocal: true, isDefinition: true)
!3295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !3297, line: 27, size: 192, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ddc521985c4f988291280d937ba9ac7")
!3298 = !{!3299, !3303, !3304}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !3296, file: !3297, line: 28, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !150, !150}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3296, file: !3297, line: 29, baseType: !3300, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !3296, file: !3297, line: 30, baseType: !3300, size: 64, offset: 128)
!3305 = !{i32 7, !"Dwarf Version", i32 5}
!3306 = !{i32 2, !"Debug Info Version", i32 3}
!3307 = !{i32 1, !"wchar_size", i32 2}
!3308 = !{i32 8, !"cf-protection-branch", i32 1}
!3309 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3310 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3311 = !{i32 1, !"Code Model", i32 2}
!3312 = !{i32 1, !"override-stack-alignment", i32 8}
!3313 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3314 = distinct !DISubprogram(name: "memtype_check_insert", scope: !3, file: !3, line: 116, type: !3315, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3318)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!102, !3242, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!3318 = !{!3319, !3320, !3321}
!3319 = !DILocalVariable(name: "entry_new", arg: 1, scope: !3314, file: !3, line: 116, type: !3242)
!3320 = !DILocalVariable(name: "ret_type", arg: 2, scope: !3314, file: !3, line: 116, type: !3317)
!3321 = !DILocalVariable(name: "err", scope: !3314, file: !3, line: 118, type: !102)
!3322 = !DILocation(line: 116, column: 42, scope: !3314)
!3323 = !DILocation(line: 116, column: 75, scope: !3314)
!3324 = !DILocation(line: 118, column: 2, scope: !3314)
!3325 = !DILocation(line: 118, column: 6, scope: !3314)
!3326 = !DILocation(line: 120, column: 31, scope: !3314)
!3327 = !DILocation(line: 120, column: 42, scope: !3314)
!3328 = !DILocation(line: 120, column: 49, scope: !3314)
!3329 = !DILocation(line: 120, column: 60, scope: !3314)
!3330 = !DILocation(line: 120, column: 65, scope: !3314)
!3331 = !DILocation(line: 120, column: 76, scope: !3314)
!3332 = !DILocation(line: 120, column: 82, scope: !3314)
!3333 = !DILocation(line: 120, column: 8, scope: !3314)
!3334 = !DILocation(line: 120, column: 6, scope: !3314)
!3335 = !DILocation(line: 121, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 121, column: 6)
!3337 = !DILocation(line: 121, column: 6, scope: !3314)
!3338 = !DILocation(line: 122, column: 10, scope: !3336)
!3339 = !DILocation(line: 122, column: 3, scope: !3336)
!3340 = !DILocation(line: 124, column: 6, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 124, column: 6)
!3342 = !DILocation(line: 124, column: 6, scope: !3314)
!3343 = !DILocation(line: 125, column: 22, scope: !3341)
!3344 = !DILocation(line: 125, column: 21, scope: !3341)
!3345 = !DILocation(line: 125, column: 3, scope: !3341)
!3346 = !DILocation(line: 125, column: 14, scope: !3341)
!3347 = !DILocation(line: 125, column: 19, scope: !3341)
!3348 = !DILocation(line: 127, column: 18, scope: !3314)
!3349 = !DILocation(line: 127, column: 2, scope: !3314)
!3350 = !DILocation(line: 128, column: 2, scope: !3314)
!3351 = !DILocation(line: 129, column: 1, scope: !3314)
!3352 = distinct !DISubprogram(name: "memtype_check_conflict", scope: !3, file: !3, line: 78, type: !3353, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!102, !153, !153, !5, !3317}
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363}
!3356 = !DILocalVariable(name: "start", arg: 1, scope: !3352, file: !3, line: 78, type: !153)
!3357 = !DILocalVariable(name: "end", arg: 2, scope: !3352, file: !3, line: 78, type: !153)
!3358 = !DILocalVariable(name: "reqtype", arg: 3, scope: !3352, file: !3, line: 79, type: !5)
!3359 = !DILocalVariable(name: "newtype", arg: 4, scope: !3352, file: !3, line: 80, type: !3317)
!3360 = !DILocalVariable(name: "entry_match", scope: !3352, file: !3, line: 82, type: !3242)
!3361 = !DILocalVariable(name: "found_type", scope: !3352, file: !3, line: 83, type: !5)
!3362 = !DILabel(scope: !3352, name: "success", file: !3, line: 102)
!3363 = !DILabel(scope: !3352, name: "failure", file: !3, line: 108)
!3364 = !DILocation(line: 78, column: 39, scope: !3352)
!3365 = !DILocation(line: 78, column: 50, scope: !3352)
!3366 = !DILocation(line: 79, column: 28, scope: !3352)
!3367 = !DILocation(line: 80, column: 29, scope: !3352)
!3368 = !DILocation(line: 82, column: 2, scope: !3352)
!3369 = !DILocation(line: 82, column: 18, scope: !3352)
!3370 = !DILocation(line: 83, column: 2, scope: !3352)
!3371 = !DILocation(line: 83, column: 23, scope: !3352)
!3372 = !DILocation(line: 83, column: 36, scope: !3352)
!3373 = !DILocation(line: 85, column: 53, scope: !3352)
!3374 = !DILocation(line: 85, column: 60, scope: !3352)
!3375 = !DILocation(line: 85, column: 63, scope: !3352)
!3376 = !DILocation(line: 85, column: 16, scope: !3352)
!3377 = !DILocation(line: 85, column: 14, scope: !3352)
!3378 = !DILocation(line: 86, column: 6, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 86, column: 6)
!3380 = !DILocation(line: 86, column: 18, scope: !3379)
!3381 = !DILocation(line: 86, column: 6, scope: !3352)
!3382 = !DILocation(line: 87, column: 3, scope: !3379)
!3383 = !DILocation(line: 89, column: 6, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 89, column: 6)
!3385 = !DILocation(line: 89, column: 19, scope: !3384)
!3386 = !DILocation(line: 89, column: 27, scope: !3384)
!3387 = !DILocation(line: 89, column: 24, scope: !3384)
!3388 = !DILocation(line: 89, column: 38, scope: !3384)
!3389 = !DILocation(line: 89, column: 41, scope: !3384)
!3390 = !DILocation(line: 89, column: 49, scope: !3384)
!3391 = !DILocation(line: 89, column: 6, scope: !3352)
!3392 = !DILocation(line: 90, column: 3, scope: !3384)
!3393 = !DILocation(line: 92, column: 2, scope: !3352)
!3394 = !DILocation(line: 92, column: 2, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 92, column: 2)
!3396 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 92, column: 2)
!3397 = !DILocation(line: 92, column: 2, scope: !3396)
!3398 = !DILocation(line: 92, column: 2, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 92, column: 2)
!3400 = !DILocation(line: 92, column: 2, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 92, column: 2)
!3402 = !DILocation(line: 93, column: 15, scope: !3352)
!3403 = !DILocation(line: 93, column: 28, scope: !3352)
!3404 = !DILocation(line: 93, column: 13, scope: !3352)
!3405 = !DILocation(line: 95, column: 35, scope: !3352)
!3406 = !DILocation(line: 95, column: 48, scope: !3352)
!3407 = !DILocation(line: 95, column: 55, scope: !3352)
!3408 = !DILocation(line: 95, column: 58, scope: !3352)
!3409 = !DILocation(line: 95, column: 16, scope: !3352)
!3410 = !DILocation(line: 95, column: 14, scope: !3352)
!3411 = !DILocation(line: 96, column: 2, scope: !3352)
!3412 = !DILocation(line: 96, column: 9, scope: !3352)
!3413 = !DILocation(line: 97, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 97, column: 7)
!3415 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 96, column: 22)
!3416 = !DILocation(line: 97, column: 20, scope: !3414)
!3417 = !DILocation(line: 97, column: 28, scope: !3414)
!3418 = !DILocation(line: 97, column: 25, scope: !3414)
!3419 = !DILocation(line: 97, column: 7, scope: !3415)
!3420 = !DILocation(line: 98, column: 4, scope: !3414)
!3421 = !DILocation(line: 100, column: 36, scope: !3415)
!3422 = !DILocation(line: 100, column: 49, scope: !3415)
!3423 = !DILocation(line: 100, column: 56, scope: !3415)
!3424 = !DILocation(line: 100, column: 59, scope: !3415)
!3425 = !DILocation(line: 100, column: 17, scope: !3415)
!3426 = !DILocation(line: 100, column: 15, scope: !3415)
!3427 = distinct !{!3427, !3411, !3428, !3429, !3430}
!3428 = !DILocation(line: 101, column: 2, scope: !3352)
!3429 = !{!"llvm.loop.mustprogress"}
!3430 = !{!"llvm.loop.unroll.disable"}
!3431 = !DILocation(line: 102, column: 1, scope: !3352)
!3432 = !DILocation(line: 103, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 103, column: 6)
!3434 = !DILocation(line: 103, column: 6, scope: !3352)
!3435 = !DILocation(line: 104, column: 14, scope: !3433)
!3436 = !DILocation(line: 104, column: 4, scope: !3433)
!3437 = !DILocation(line: 104, column: 12, scope: !3433)
!3438 = !DILocation(line: 104, column: 3, scope: !3433)
!3439 = !DILocation(line: 106, column: 2, scope: !3352)
!3440 = !DILocation(line: 108, column: 1, scope: !3352)
!3441 = !DILocation(line: 109, column: 2, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 109, column: 2)
!3443 = !DILocation(line: 109, column: 2, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 109, column: 2)
!3445 = !DILocation(line: 113, column: 2, scope: !3352)
!3446 = !DILocation(line: 114, column: 1, scope: !3352)
!3447 = distinct !DISubprogram(name: "interval_insert", scope: !3, file: !3, line: 46, type: !3448, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3451)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !3242, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3451 = !{!3452, !3453, !3454, !3456, !3457, !3458, !3459, !3460, !3461}
!3452 = !DILocalVariable(name: "node", arg: 1, scope: !3447, file: !3, line: 46, type: !3242)
!3453 = !DILocalVariable(name: "root", arg: 2, scope: !3447, file: !3, line: 46, type: !3450)
!3454 = !DILocalVariable(name: "link", scope: !3447, file: !3, line: 46, type: !3455)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!3456 = !DILocalVariable(name: "rb_parent", scope: !3447, file: !3, line: 46, type: !150)
!3457 = !DILocalVariable(name: "start", scope: !3447, file: !3, line: 46, type: !153)
!3458 = !DILocalVariable(name: "last", scope: !3447, file: !3, line: 46, type: !153)
!3459 = !DILocalVariable(name: "parent", scope: !3447, file: !3, line: 46, type: !3242)
!3460 = !DILocalVariable(name: "leftmost", scope: !3447, file: !3, line: 46, type: !700)
!3461 = !DILocalVariable(name: "__mptr", scope: !3462, file: !3, line: 46, type: !70)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 46, column: 1)
!3463 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 46, column: 1)
!3464 = !DILocation(line: 46, column: 1, scope: !3447)
!3465 = !DILocation(line: 46, column: 1, scope: !3463)
!3466 = !DILocation(line: 46, column: 1, scope: !3462)
!3467 = !DILocation(line: 46, column: 1, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 46, column: 1)
!3469 = !DILocation(line: 46, column: 1, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 46, column: 1)
!3471 = !DILocation(line: 46, column: 1, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 46, column: 1)
!3473 = distinct !{!3473, !3464, !3464, !3429, !3430}
!3474 = !{i8 0, i8 2}
!3475 = distinct !DISubprogram(name: "memtype_erase", scope: !3, file: !3, line: 131, type: !3476, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!3242, !153, !153}
!3478 = !{!3479, !3480, !3481}
!3479 = !DILocalVariable(name: "start", arg: 1, scope: !3475, file: !3, line: 131, type: !153)
!3480 = !DILocalVariable(name: "end", arg: 2, scope: !3475, file: !3, line: 131, type: !153)
!3481 = !DILocalVariable(name: "entry_old", scope: !3475, file: !3, line: 133, type: !3242)
!3482 = !DILocation(line: 131, column: 35, scope: !3475)
!3483 = !DILocation(line: 131, column: 46, scope: !3475)
!3484 = !DILocation(line: 133, column: 2, scope: !3475)
!3485 = !DILocation(line: 133, column: 18, scope: !3475)
!3486 = !DILocation(line: 142, column: 28, scope: !3475)
!3487 = !DILocation(line: 142, column: 35, scope: !3475)
!3488 = !DILocation(line: 142, column: 14, scope: !3475)
!3489 = !DILocation(line: 142, column: 12, scope: !3475)
!3490 = !DILocation(line: 143, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 143, column: 6)
!3492 = !DILocation(line: 143, column: 6, scope: !3475)
!3493 = !DILocation(line: 144, column: 29, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 143, column: 18)
!3495 = !DILocation(line: 144, column: 36, scope: !3494)
!3496 = !DILocation(line: 144, column: 15, scope: !3494)
!3497 = !DILocation(line: 144, column: 13, scope: !3494)
!3498 = !DILocation(line: 145, column: 8, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 145, column: 7)
!3500 = !DILocation(line: 145, column: 7, scope: !3494)
!3501 = !DILocation(line: 146, column: 11, scope: !3499)
!3502 = !DILocation(line: 146, column: 4, scope: !3499)
!3503 = !DILocation(line: 147, column: 2, scope: !3494)
!3504 = !DILocation(line: 149, column: 6, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 149, column: 6)
!3506 = !DILocation(line: 149, column: 17, scope: !3505)
!3507 = !DILocation(line: 149, column: 26, scope: !3505)
!3508 = !DILocation(line: 149, column: 23, scope: !3505)
!3509 = !DILocation(line: 149, column: 6, scope: !3475)
!3510 = !DILocation(line: 151, column: 19, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 149, column: 33)
!3512 = !DILocation(line: 151, column: 3, scope: !3511)
!3513 = !DILocation(line: 152, column: 2, scope: !3511)
!3514 = !DILocation(line: 154, column: 19, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 152, column: 9)
!3516 = !DILocation(line: 154, column: 3, scope: !3515)
!3517 = !DILocation(line: 155, column: 20, scope: !3515)
!3518 = !DILocation(line: 155, column: 3, scope: !3515)
!3519 = !DILocation(line: 155, column: 14, scope: !3515)
!3520 = !DILocation(line: 155, column: 18, scope: !3515)
!3521 = !DILocation(line: 156, column: 19, scope: !3515)
!3522 = !DILocation(line: 156, column: 3, scope: !3515)
!3523 = !DILocation(line: 158, column: 3, scope: !3515)
!3524 = !DILocation(line: 161, column: 9, scope: !3475)
!3525 = !DILocation(line: 161, column: 2, scope: !3475)
!3526 = !DILocation(line: 162, column: 1, scope: !3475)
!3527 = distinct !DISubprogram(name: "memtype_match", scope: !3, file: !3, line: 57, type: !3528, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3242, !153, !153, !102}
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DILocalVariable(name: "start", arg: 1, scope: !3527, file: !3, line: 57, type: !153)
!3532 = !DILocalVariable(name: "end", arg: 2, scope: !3527, file: !3, line: 57, type: !153)
!3533 = !DILocalVariable(name: "match_type", arg: 3, scope: !3527, file: !3, line: 57, type: !102)
!3534 = !DILocalVariable(name: "entry_match", scope: !3527, file: !3, line: 59, type: !3242)
!3535 = !DILocation(line: 57, column: 42, scope: !3527)
!3536 = !DILocation(line: 57, column: 53, scope: !3527)
!3537 = !DILocation(line: 57, column: 62, scope: !3527)
!3538 = !DILocation(line: 59, column: 2, scope: !3527)
!3539 = !DILocation(line: 59, column: 18, scope: !3527)
!3540 = !DILocation(line: 61, column: 53, scope: !3527)
!3541 = !DILocation(line: 61, column: 60, scope: !3527)
!3542 = !DILocation(line: 61, column: 63, scope: !3527)
!3543 = !DILocation(line: 61, column: 16, scope: !3527)
!3544 = !DILocation(line: 61, column: 14, scope: !3527)
!3545 = !DILocation(line: 63, column: 2, scope: !3527)
!3546 = !DILocation(line: 63, column: 9, scope: !3527)
!3547 = !DILocation(line: 63, column: 21, scope: !3527)
!3548 = !DILocation(line: 63, column: 29, scope: !3527)
!3549 = !DILocation(line: 63, column: 32, scope: !3527)
!3550 = !DILocation(line: 63, column: 45, scope: !3527)
!3551 = !DILocation(line: 63, column: 53, scope: !3527)
!3552 = !DILocation(line: 63, column: 51, scope: !3527)
!3553 = !DILocation(line: 0, scope: !3527)
!3554 = !DILocation(line: 64, column: 8, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 64, column: 7)
!3556 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 63, column: 58)
!3557 = !DILocation(line: 64, column: 19, scope: !3555)
!3558 = !DILocation(line: 64, column: 43, scope: !3555)
!3559 = !DILocation(line: 65, column: 8, scope: !3555)
!3560 = !DILocation(line: 65, column: 21, scope: !3555)
!3561 = !DILocation(line: 65, column: 30, scope: !3555)
!3562 = !DILocation(line: 65, column: 27, scope: !3555)
!3563 = !DILocation(line: 65, column: 37, scope: !3555)
!3564 = !DILocation(line: 65, column: 41, scope: !3555)
!3565 = !DILocation(line: 65, column: 54, scope: !3555)
!3566 = !DILocation(line: 65, column: 61, scope: !3555)
!3567 = !DILocation(line: 65, column: 58, scope: !3555)
!3568 = !DILocation(line: 64, column: 7, scope: !3556)
!3569 = !DILocation(line: 66, column: 11, scope: !3555)
!3570 = !DILocation(line: 66, column: 4, scope: !3555)
!3571 = !DILocation(line: 68, column: 8, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 68, column: 7)
!3573 = !DILocation(line: 68, column: 19, scope: !3572)
!3574 = !DILocation(line: 68, column: 41, scope: !3572)
!3575 = !DILocation(line: 69, column: 8, scope: !3572)
!3576 = !DILocation(line: 69, column: 21, scope: !3572)
!3577 = !DILocation(line: 69, column: 29, scope: !3572)
!3578 = !DILocation(line: 69, column: 27, scope: !3572)
!3579 = !DILocation(line: 69, column: 36, scope: !3572)
!3580 = !DILocation(line: 69, column: 40, scope: !3572)
!3581 = !DILocation(line: 69, column: 53, scope: !3572)
!3582 = !DILocation(line: 69, column: 60, scope: !3572)
!3583 = !DILocation(line: 69, column: 57, scope: !3572)
!3584 = !DILocation(line: 68, column: 7, scope: !3556)
!3585 = !DILocation(line: 70, column: 11, scope: !3572)
!3586 = !DILocation(line: 70, column: 4, scope: !3572)
!3587 = !DILocation(line: 72, column: 36, scope: !3556)
!3588 = !DILocation(line: 72, column: 49, scope: !3556)
!3589 = !DILocation(line: 72, column: 56, scope: !3556)
!3590 = !DILocation(line: 72, column: 59, scope: !3556)
!3591 = !DILocation(line: 72, column: 17, scope: !3556)
!3592 = !DILocation(line: 72, column: 15, scope: !3556)
!3593 = distinct !{!3593, !3545, !3594, !3429, !3430}
!3594 = !DILocation(line: 73, column: 2, scope: !3527)
!3595 = !DILocation(line: 75, column: 2, scope: !3527)
!3596 = !DILocation(line: 76, column: 1, scope: !3527)
!3597 = distinct !DISubprogram(name: "ERR_PTR", scope: !3598, file: !3598, line: 39, type: !3599, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3598 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!70, !974}
!3601 = !{!3602}
!3602 = !DILocalVariable(name: "error", arg: 1, scope: !3597, file: !3598, line: 39, type: !974)
!3603 = !DILocation(line: 39, column: 48, scope: !3597)
!3604 = !DILocation(line: 41, column: 18, scope: !3597)
!3605 = !DILocation(line: 41, column: 9, scope: !3597)
!3606 = !DILocation(line: 41, column: 2, scope: !3597)
!3607 = distinct !DISubprogram(name: "interval_remove", scope: !3, file: !3, line: 46, type: !3448, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3608)
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "node", arg: 1, scope: !3607, file: !3, line: 46, type: !3242)
!3610 = !DILocalVariable(name: "root", arg: 2, scope: !3607, file: !3, line: 46, type: !3450)
!3611 = !DILocation(line: 46, column: 1, scope: !3607)
!3612 = distinct !DISubprogram(name: "memtype_lookup", scope: !3, file: !3, line: 164, type: !3613, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!3242, !153}
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "addr", arg: 1, scope: !3612, file: !3, line: 164, type: !153)
!3617 = !DILocation(line: 164, column: 36, scope: !3612)
!3618 = !DILocation(line: 166, column: 46, scope: !3612)
!3619 = !DILocation(line: 166, column: 52, scope: !3612)
!3620 = !DILocation(line: 166, column: 57, scope: !3612)
!3621 = !DILocation(line: 166, column: 68, scope: !3612)
!3622 = !DILocation(line: 166, column: 9, scope: !3612)
!3623 = !DILocation(line: 166, column: 2, scope: !3612)
!3624 = distinct !DISubprogram(name: "interval_iter_first", scope: !3, file: !3, line: 46, type: !3625, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!3242, !3450, !153, !153}
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3635}
!3628 = !DILocalVariable(name: "root", arg: 1, scope: !3624, file: !3, line: 46, type: !3450)
!3629 = !DILocalVariable(name: "start", arg: 2, scope: !3624, file: !3, line: 46, type: !153)
!3630 = !DILocalVariable(name: "last", arg: 3, scope: !3624, file: !3, line: 46, type: !153)
!3631 = !DILocalVariable(name: "node", scope: !3624, file: !3, line: 46, type: !3242)
!3632 = !DILocalVariable(name: "leftmost", scope: !3624, file: !3, line: 46, type: !3242)
!3633 = !DILocalVariable(name: "__mptr", scope: !3634, file: !3, line: 46, type: !70)
!3634 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 46, column: 1)
!3635 = !DILocalVariable(name: "__mptr", scope: !3636, file: !3, line: 46, type: !70)
!3636 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 46, column: 1)
!3637 = !DILocation(line: 46, column: 1, scope: !3624)
!3638 = !DILocation(line: 46, column: 1, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 46, column: 1)
!3640 = !DILocation(line: 46, column: 1, scope: !3634)
!3641 = !DILocation(line: 46, column: 1, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 46, column: 1)
!3643 = !DILocation(line: 46, column: 1, scope: !3636)
!3644 = !DILocation(line: 46, column: 1, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 46, column: 1)
!3646 = distinct !DISubprogram(name: "memtype_copy_nth_element", scope: !3, file: !3, line: 175, type: !3647, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!102, !3242, !511}
!3649 = !{!3650, !3651, !3652, !3653}
!3650 = !DILocalVariable(name: "entry_out", arg: 1, scope: !3646, file: !3, line: 175, type: !3242)
!3651 = !DILocalVariable(name: "pos", arg: 2, scope: !3646, file: !3, line: 175, type: !511)
!3652 = !DILocalVariable(name: "entry_match", scope: !3646, file: !3, line: 177, type: !3242)
!3653 = !DILocalVariable(name: "i", scope: !3646, file: !3, line: 178, type: !102)
!3654 = !DILocation(line: 175, column: 46, scope: !3646)
!3655 = !DILocation(line: 175, column: 64, scope: !3646)
!3656 = !DILocation(line: 177, column: 2, scope: !3646)
!3657 = !DILocation(line: 177, column: 18, scope: !3646)
!3658 = !DILocation(line: 178, column: 2, scope: !3646)
!3659 = !DILocation(line: 178, column: 6, scope: !3646)
!3660 = !DILocation(line: 180, column: 16, scope: !3646)
!3661 = !DILocation(line: 180, column: 14, scope: !3646)
!3662 = !DILocation(line: 182, column: 2, scope: !3646)
!3663 = !DILocation(line: 182, column: 9, scope: !3646)
!3664 = !DILocation(line: 182, column: 21, scope: !3646)
!3665 = !DILocation(line: 182, column: 24, scope: !3646)
!3666 = !DILocation(line: 182, column: 31, scope: !3646)
!3667 = !DILocation(line: 182, column: 28, scope: !3646)
!3668 = !DILocation(line: 0, scope: !3646)
!3669 = !DILocation(line: 183, column: 36, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 182, column: 34)
!3671 = !DILocation(line: 183, column: 17, scope: !3670)
!3672 = !DILocation(line: 183, column: 15, scope: !3670)
!3673 = !DILocation(line: 184, column: 4, scope: !3670)
!3674 = distinct !{!3674, !3662, !3675, !3429, !3430}
!3675 = !DILocation(line: 185, column: 2, scope: !3646)
!3676 = !DILocation(line: 187, column: 6, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 187, column: 6)
!3678 = !DILocation(line: 187, column: 6, scope: !3646)
!3679 = !DILocation(line: 188, column: 4, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 187, column: 19)
!3681 = !DILocation(line: 188, column: 17, scope: !3680)
!3682 = !DILocation(line: 188, column: 16, scope: !3680)
!3683 = !DILocation(line: 189, column: 3, scope: !3680)
!3684 = !DILocation(line: 191, column: 3, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 190, column: 9)
!3686 = !DILocation(line: 193, column: 1, scope: !3646)
!3687 = distinct !DISubprogram(name: "interval_iter_next", scope: !3, file: !3, line: 46, type: !3688, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!3242, !3242, !153, !153}
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3700, !3702}
!3691 = !DILocalVariable(name: "node", arg: 1, scope: !3687, file: !3, line: 46, type: !3242)
!3692 = !DILocalVariable(name: "start", arg: 2, scope: !3687, file: !3, line: 46, type: !153)
!3693 = !DILocalVariable(name: "last", arg: 3, scope: !3687, file: !3, line: 46, type: !153)
!3694 = !DILocalVariable(name: "rb", scope: !3687, file: !3, line: 46, type: !150)
!3695 = !DILocalVariable(name: "prev", scope: !3687, file: !3, line: 46, type: !150)
!3696 = !DILocalVariable(name: "right", scope: !3697, file: !3, line: 46, type: !3242)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 46, column: 1)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 46, column: 1)
!3699 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 46, column: 1)
!3700 = !DILocalVariable(name: "__mptr", scope: !3701, file: !3, line: 46, type: !70)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 46, column: 1)
!3702 = !DILocalVariable(name: "__mptr", scope: !3703, file: !3, line: 46, type: !70)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 46, column: 1)
!3704 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 46, column: 1)
!3705 = !DILocation(line: 46, column: 1, scope: !3687)
!3706 = !DILocation(line: 46, column: 1, scope: !3698)
!3707 = !DILocation(line: 46, column: 1, scope: !3699)
!3708 = !DILocation(line: 46, column: 1, scope: !3697)
!3709 = !DILocation(line: 46, column: 1, scope: !3701)
!3710 = !DILocation(line: 46, column: 1, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 46, column: 1)
!3712 = !DILocation(line: 46, column: 1, scope: !3704)
!3713 = !DILocation(line: 46, column: 1, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 46, column: 1)
!3715 = !DILocation(line: 46, column: 1, scope: !3703)
!3716 = distinct !{!3716, !3707, !3707, !3429, !3430}
!3717 = !DILocation(line: 46, column: 1, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 46, column: 1)
!3719 = !DILocation(line: 46, column: 1, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 46, column: 1)
!3721 = distinct !{!3721, !3705, !3705, !3430}
!3722 = !DISubprogram(name: "_printk", scope: !3723, file: !3723, line: 153, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3723 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!102, !703, null}
!3726 = distinct !DISubprogram(name: "get_current", scope: !3727, file: !3727, line: 39, type: !3728, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3730)
!3727 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!72}
!3730 = !{!3731, !3733, !3737}
!3731 = !DILocalVariable(name: "pscr_ret__", scope: !3732, file: !3727, line: 41, type: !72)
!3732 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 41, column: 9)
!3733 = !DILocalVariable(name: "__vpp_verify", scope: !3734, file: !3727, line: 41, type: !3735)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !3727, line: 41, column: 9)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3737 = !DILocalVariable(name: "pfo_val__", scope: !3738, file: !3727, line: 41, type: !153)
!3738 = distinct !DILexicalBlock(scope: !3732, file: !3727, line: 41, column: 9)
!3739 = !DILocation(line: 41, column: 9, scope: !3732)
!3740 = !DILocation(line: 41, column: 9, scope: !3734)
!3741 = !DILocation(line: 41, column: 9, scope: !3738)
!3742 = !{i64 2148231002}
!3743 = !DILocation(line: 41, column: 9, scope: !3726)
!3744 = !DILocation(line: 41, column: 2, scope: !3726)
!3745 = distinct !DISubprogram(name: "cattr_name", scope: !3244, file: !3244, line: 18, type: !3746, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!713, !5}
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "pcm", arg: 1, scope: !3745, file: !3244, line: 18, type: !5)
!3750 = !DILocation(line: 18, column: 53, scope: !3745)
!3751 = !DILocation(line: 20, column: 10, scope: !3745)
!3752 = !DILocation(line: 20, column: 2, scope: !3745)
!3753 = !DILocation(line: 21, column: 29, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3745, file: !3244, line: 20, column: 15)
!3755 = !DILocation(line: 22, column: 35, scope: !3754)
!3756 = !DILocation(line: 23, column: 29, scope: !3754)
!3757 = !DILocation(line: 24, column: 29, scope: !3754)
!3758 = !DILocation(line: 25, column: 29, scope: !3754)
!3759 = !DILocation(line: 26, column: 29, scope: !3754)
!3760 = !DILocation(line: 27, column: 14, scope: !3754)
!3761 = !DILocation(line: 29, column: 1, scope: !3745)
!3762 = distinct !DISubprogram(name: "interval_start", scope: !3, file: !3, line: 36, type: !3763, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!153, !3242}
!3765 = !{!3766}
!3766 = !DILocalVariable(name: "entry", arg: 1, scope: !3762, file: !3, line: 36, type: !3242)
!3767 = !DILocation(line: 36, column: 50, scope: !3762)
!3768 = !DILocation(line: 38, column: 9, scope: !3762)
!3769 = !DILocation(line: 38, column: 16, scope: !3762)
!3770 = !DILocation(line: 38, column: 2, scope: !3762)
!3771 = distinct !DISubprogram(name: "interval_end", scope: !3, file: !3, line: 41, type: !3763, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "entry", arg: 1, scope: !3771, file: !3, line: 41, type: !3242)
!3774 = !DILocation(line: 41, column: 48, scope: !3771)
!3775 = !DILocation(line: 43, column: 9, scope: !3771)
!3776 = !DILocation(line: 43, column: 16, scope: !3771)
!3777 = !DILocation(line: 43, column: 20, scope: !3771)
!3778 = !DILocation(line: 43, column: 2, scope: !3771)
!3779 = distinct !DISubprogram(name: "rb_link_node", scope: !3780, file: !3780, line: 59, type: !3781, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3780 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !150, !150, !3455}
!3783 = !{!3784, !3785, !3786}
!3784 = !DILocalVariable(name: "node", arg: 1, scope: !3779, file: !3780, line: 59, type: !150)
!3785 = !DILocalVariable(name: "parent", arg: 2, scope: !3779, file: !3780, line: 59, type: !150)
!3786 = !DILocalVariable(name: "rb_link", arg: 3, scope: !3779, file: !3780, line: 60, type: !3455)
!3787 = !DILocation(line: 59, column: 49, scope: !3779)
!3788 = !DILocation(line: 59, column: 71, scope: !3779)
!3789 = !DILocation(line: 60, column: 22, scope: !3779)
!3790 = !DILocation(line: 62, column: 43, scope: !3779)
!3791 = !DILocation(line: 62, column: 28, scope: !3779)
!3792 = !DILocation(line: 62, column: 2, scope: !3779)
!3793 = !DILocation(line: 62, column: 8, scope: !3779)
!3794 = !DILocation(line: 62, column: 26, scope: !3779)
!3795 = !DILocation(line: 63, column: 18, scope: !3779)
!3796 = !DILocation(line: 63, column: 24, scope: !3779)
!3797 = !DILocation(line: 63, column: 33, scope: !3779)
!3798 = !DILocation(line: 63, column: 2, scope: !3779)
!3799 = !DILocation(line: 63, column: 8, scope: !3779)
!3800 = !DILocation(line: 63, column: 16, scope: !3779)
!3801 = !DILocation(line: 65, column: 13, scope: !3779)
!3802 = !DILocation(line: 65, column: 3, scope: !3779)
!3803 = !DILocation(line: 65, column: 11, scope: !3779)
!3804 = !DILocation(line: 66, column: 1, scope: !3779)
!3805 = distinct !DISubprogram(name: "rb_insert_augmented_cached", scope: !3297, file: !3297, line: 54, type: !3806, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !150, !3450, !700, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DILocalVariable(name: "node", arg: 1, scope: !3805, file: !3297, line: 54, type: !150)
!3811 = !DILocalVariable(name: "root", arg: 2, scope: !3805, file: !3297, line: 55, type: !3450)
!3812 = !DILocalVariable(name: "newleft", arg: 3, scope: !3805, file: !3297, line: 55, type: !700)
!3813 = !DILocalVariable(name: "augment", arg: 4, scope: !3805, file: !3297, line: 56, type: !3808)
!3814 = !DILocation(line: 54, column: 44, scope: !3805)
!3815 = !DILocation(line: 55, column: 30, scope: !3805)
!3816 = !DILocation(line: 55, column: 41, scope: !3805)
!3817 = !DILocation(line: 56, column: 42, scope: !3805)
!3818 = !DILocation(line: 58, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3805, file: !3297, line: 58, column: 6)
!3820 = !DILocation(line: 58, column: 6, scope: !3805)
!3821 = !DILocation(line: 59, column: 23, scope: !3819)
!3822 = !DILocation(line: 59, column: 3, scope: !3819)
!3823 = !DILocation(line: 59, column: 9, scope: !3819)
!3824 = !DILocation(line: 59, column: 21, scope: !3819)
!3825 = !DILocation(line: 60, column: 22, scope: !3805)
!3826 = !DILocation(line: 60, column: 29, scope: !3805)
!3827 = !DILocation(line: 60, column: 35, scope: !3805)
!3828 = !DILocation(line: 60, column: 44, scope: !3805)
!3829 = !DILocation(line: 60, column: 2, scope: !3805)
!3830 = !DILocation(line: 61, column: 1, scope: !3805)
!3831 = distinct !DISubprogram(name: "rb_insert_augmented", scope: !3297, file: !3297, line: 47, type: !3832, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3835)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{null, !150, !3834, !3808}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3835 = !{!3836, !3837, !3838}
!3836 = !DILocalVariable(name: "node", arg: 1, scope: !3831, file: !3297, line: 47, type: !150)
!3837 = !DILocalVariable(name: "root", arg: 2, scope: !3831, file: !3297, line: 47, type: !3834)
!3838 = !DILocalVariable(name: "augment", arg: 3, scope: !3831, file: !3297, line: 48, type: !3808)
!3839 = !DILocation(line: 47, column: 37, scope: !3831)
!3840 = !DILocation(line: 47, column: 59, scope: !3831)
!3841 = !DILocation(line: 48, column: 42, scope: !3831)
!3842 = !DILocation(line: 50, column: 24, scope: !3831)
!3843 = !DILocation(line: 50, column: 30, scope: !3831)
!3844 = !DILocation(line: 50, column: 36, scope: !3831)
!3845 = !DILocation(line: 50, column: 45, scope: !3831)
!3846 = !DILocation(line: 50, column: 2, scope: !3831)
!3847 = !DILocation(line: 51, column: 1, scope: !3831)
!3848 = !DISubprogram(name: "__rb_insert_augmented", scope: !3297, file: !3297, line: 33, type: !3849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !150, !3834, !3300}
!3851 = distinct !DISubprogram(name: "interval_augment_propagate", scope: !3, file: !3, line: 46, type: !3301, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3852)
!3852 = !{!3853, !3854, !3855, !3857}
!3853 = !DILocalVariable(name: "rb", arg: 1, scope: !3851, file: !3, line: 46, type: !150)
!3854 = !DILocalVariable(name: "stop", arg: 2, scope: !3851, file: !3, line: 46, type: !150)
!3855 = !DILocalVariable(name: "node", scope: !3856, file: !3, line: 46, type: !3242)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 46, column: 1)
!3857 = !DILocalVariable(name: "__mptr", scope: !3858, file: !3, line: 46, type: !70)
!3858 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 46, column: 1)
!3859 = !DILocation(line: 46, column: 1, scope: !3851)
!3860 = !DILocation(line: 46, column: 1, scope: !3856)
!3861 = !DILocation(line: 46, column: 1, scope: !3858)
!3862 = !DILocation(line: 46, column: 1, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 46, column: 1)
!3864 = distinct !{!3864, !3859, !3859, !3429, !3430}
!3865 = distinct !DISubprogram(name: "interval_augment_copy", scope: !3, file: !3, line: 46, type: !3301, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3872, !3873}
!3867 = !DILocalVariable(name: "rb_old", arg: 1, scope: !3865, file: !3, line: 46, type: !150)
!3868 = !DILocalVariable(name: "rb_new", arg: 2, scope: !3865, file: !3, line: 46, type: !150)
!3869 = !DILocalVariable(name: "old", scope: !3865, file: !3, line: 46, type: !3242)
!3870 = !DILocalVariable(name: "__mptr", scope: !3871, file: !3, line: 46, type: !70)
!3871 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 46, column: 1)
!3872 = !DILocalVariable(name: "new", scope: !3865, file: !3, line: 46, type: !3242)
!3873 = !DILocalVariable(name: "__mptr", scope: !3874, file: !3, line: 46, type: !70)
!3874 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 46, column: 1)
!3875 = !DILocation(line: 46, column: 1, scope: !3865)
!3876 = !DILocation(line: 46, column: 1, scope: !3871)
!3877 = !DILocation(line: 46, column: 1, scope: !3874)
!3878 = distinct !DISubprogram(name: "interval_augment_rotate", scope: !3, file: !3, line: 46, type: !3301, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3885, !3886}
!3880 = !DILocalVariable(name: "rb_old", arg: 1, scope: !3878, file: !3, line: 46, type: !150)
!3881 = !DILocalVariable(name: "rb_new", arg: 2, scope: !3878, file: !3, line: 46, type: !150)
!3882 = !DILocalVariable(name: "old", scope: !3878, file: !3, line: 46, type: !3242)
!3883 = !DILocalVariable(name: "__mptr", scope: !3884, file: !3, line: 46, type: !70)
!3884 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 46, column: 1)
!3885 = !DILocalVariable(name: "new", scope: !3878, file: !3, line: 46, type: !3242)
!3886 = !DILocalVariable(name: "__mptr", scope: !3887, file: !3, line: 46, type: !70)
!3887 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 46, column: 1)
!3888 = !DILocation(line: 46, column: 1, scope: !3878)
!3889 = !DILocation(line: 46, column: 1, scope: !3884)
!3890 = !DILocation(line: 46, column: 1, scope: !3887)
!3891 = distinct !DISubprogram(name: "interval_augment_compute_max", scope: !3, file: !3, line: 46, type: !3892, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!700, !3242, !700}
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3903}
!3895 = !DILocalVariable(name: "node", arg: 1, scope: !3891, file: !3, line: 46, type: !3242)
!3896 = !DILocalVariable(name: "exit", arg: 2, scope: !3891, file: !3, line: 46, type: !700)
!3897 = !DILocalVariable(name: "child", scope: !3891, file: !3, line: 46, type: !3242)
!3898 = !DILocalVariable(name: "max", scope: !3891, file: !3, line: 46, type: !153)
!3899 = !DILocalVariable(name: "__mptr", scope: !3900, file: !3, line: 46, type: !70)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 46, column: 1)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 46, column: 1)
!3902 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 46, column: 1)
!3903 = !DILocalVariable(name: "__mptr", scope: !3904, file: !3, line: 46, type: !70)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 46, column: 1)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 46, column: 1)
!3906 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 46, column: 1)
!3907 = !DILocation(line: 46, column: 1, scope: !3891)
!3908 = !DILocation(line: 46, column: 1, scope: !3902)
!3909 = !DILocation(line: 46, column: 1, scope: !3900)
!3910 = !DILocation(line: 46, column: 1, scope: !3901)
!3911 = !DILocation(line: 46, column: 1, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 46, column: 1)
!3913 = !DILocation(line: 46, column: 1, scope: !3906)
!3914 = !DILocation(line: 46, column: 1, scope: !3904)
!3915 = !DILocation(line: 46, column: 1, scope: !3905)
!3916 = !DILocation(line: 46, column: 1, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 46, column: 1)
!3918 = !DILocation(line: 46, column: 1, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 46, column: 1)
!3920 = distinct !DISubprogram(name: "rb_erase_augmented_cached", scope: !3297, file: !3297, line: 335, type: !3921, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !150, !3450, !3808}
!3923 = !{!3924, !3925, !3926}
!3924 = !DILocalVariable(name: "node", arg: 1, scope: !3920, file: !3297, line: 335, type: !150)
!3925 = !DILocalVariable(name: "root", arg: 2, scope: !3920, file: !3297, line: 335, type: !3450)
!3926 = !DILocalVariable(name: "augment", arg: 3, scope: !3920, file: !3297, line: 336, type: !3808)
!3927 = !DILocation(line: 335, column: 43, scope: !3920)
!3928 = !DILocation(line: 335, column: 72, scope: !3920)
!3929 = !DILocation(line: 336, column: 41, scope: !3920)
!3930 = !DILocation(line: 338, column: 6, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3920, file: !3297, line: 338, column: 6)
!3932 = !DILocation(line: 338, column: 12, scope: !3931)
!3933 = !DILocation(line: 338, column: 27, scope: !3931)
!3934 = !DILocation(line: 338, column: 24, scope: !3931)
!3935 = !DILocation(line: 338, column: 6, scope: !3920)
!3936 = !DILocation(line: 339, column: 31, scope: !3931)
!3937 = !DILocation(line: 339, column: 23, scope: !3931)
!3938 = !DILocation(line: 339, column: 3, scope: !3931)
!3939 = !DILocation(line: 339, column: 9, scope: !3931)
!3940 = !DILocation(line: 339, column: 21, scope: !3931)
!3941 = !DILocation(line: 340, column: 21, scope: !3920)
!3942 = !DILocation(line: 340, column: 28, scope: !3920)
!3943 = !DILocation(line: 340, column: 34, scope: !3920)
!3944 = !DILocation(line: 340, column: 43, scope: !3920)
!3945 = !DILocation(line: 340, column: 2, scope: !3920)
!3946 = !DILocation(line: 341, column: 1, scope: !3920)
!3947 = !DISubprogram(name: "rb_next", scope: !3780, file: !3780, line: 44, type: !3948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!150, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!3952 = distinct !DISubprogram(name: "rb_erase_augmented", scope: !3297, file: !3297, line: 326, type: !3832, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3953)
!3953 = !{!3954, !3955, !3956, !3957}
!3954 = !DILocalVariable(name: "node", arg: 1, scope: !3952, file: !3297, line: 326, type: !150)
!3955 = !DILocalVariable(name: "root", arg: 2, scope: !3952, file: !3297, line: 326, type: !3834)
!3956 = !DILocalVariable(name: "augment", arg: 3, scope: !3952, file: !3297, line: 327, type: !3808)
!3957 = !DILocalVariable(name: "rebalance", scope: !3952, file: !3297, line: 329, type: !150)
!3958 = !DILocation(line: 326, column: 36, scope: !3952)
!3959 = !DILocation(line: 326, column: 58, scope: !3952)
!3960 = !DILocation(line: 327, column: 41, scope: !3952)
!3961 = !DILocation(line: 329, column: 2, scope: !3952)
!3962 = !DILocation(line: 329, column: 18, scope: !3952)
!3963 = !DILocation(line: 329, column: 51, scope: !3952)
!3964 = !DILocation(line: 329, column: 57, scope: !3952)
!3965 = !DILocation(line: 329, column: 63, scope: !3952)
!3966 = !DILocation(line: 329, column: 30, scope: !3952)
!3967 = !DILocation(line: 330, column: 6, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3952, file: !3297, line: 330, column: 6)
!3969 = !DILocation(line: 330, column: 6, scope: !3952)
!3970 = !DILocation(line: 331, column: 20, scope: !3968)
!3971 = !DILocation(line: 331, column: 31, scope: !3968)
!3972 = !DILocation(line: 331, column: 37, scope: !3968)
!3973 = !DILocation(line: 331, column: 46, scope: !3968)
!3974 = !DILocation(line: 331, column: 3, scope: !3968)
!3975 = !DILocation(line: 332, column: 1, scope: !3952)
!3976 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !3297, file: !3297, line: 224, type: !3977, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!150, !150, !3834, !3808}
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3992}
!3980 = !DILocalVariable(name: "node", arg: 1, scope: !3976, file: !3297, line: 224, type: !150)
!3981 = !DILocalVariable(name: "root", arg: 2, scope: !3976, file: !3297, line: 224, type: !3834)
!3982 = !DILocalVariable(name: "augment", arg: 3, scope: !3976, file: !3297, line: 225, type: !3808)
!3983 = !DILocalVariable(name: "child", scope: !3976, file: !3297, line: 227, type: !150)
!3984 = !DILocalVariable(name: "tmp", scope: !3976, file: !3297, line: 228, type: !150)
!3985 = !DILocalVariable(name: "parent", scope: !3976, file: !3297, line: 229, type: !150)
!3986 = !DILocalVariable(name: "rebalance", scope: !3976, file: !3297, line: 229, type: !150)
!3987 = !DILocalVariable(name: "pc", scope: !3976, file: !3297, line: 230, type: !81)
!3988 = !DILocalVariable(name: "successor", scope: !3989, file: !3297, line: 257, type: !150)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !3297, line: 256, column: 9)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3297, line: 249, column: 13)
!3991 = distinct !DILexicalBlock(scope: !3976, file: !3297, line: 232, column: 6)
!3992 = !DILocalVariable(name: "child2", scope: !3989, file: !3297, line: 257, type: !150)
!3993 = !DILocation(line: 224, column: 38, scope: !3976)
!3994 = !DILocation(line: 224, column: 60, scope: !3976)
!3995 = !DILocation(line: 225, column: 43, scope: !3976)
!3996 = !DILocation(line: 227, column: 2, scope: !3976)
!3997 = !DILocation(line: 227, column: 18, scope: !3976)
!3998 = !DILocation(line: 227, column: 26, scope: !3976)
!3999 = !DILocation(line: 227, column: 32, scope: !3976)
!4000 = !DILocation(line: 228, column: 2, scope: !3976)
!4001 = !DILocation(line: 228, column: 18, scope: !3976)
!4002 = !DILocation(line: 228, column: 24, scope: !3976)
!4003 = !DILocation(line: 228, column: 30, scope: !3976)
!4004 = !DILocation(line: 229, column: 2, scope: !3976)
!4005 = !DILocation(line: 229, column: 18, scope: !3976)
!4006 = !DILocation(line: 229, column: 27, scope: !3976)
!4007 = !DILocation(line: 230, column: 2, scope: !3976)
!4008 = !DILocation(line: 230, column: 16, scope: !3976)
!4009 = !DILocation(line: 232, column: 7, scope: !3991)
!4010 = !DILocation(line: 232, column: 6, scope: !3976)
!4011 = !DILocation(line: 240, column: 8, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3991, file: !3297, line: 232, column: 12)
!4013 = !DILocation(line: 240, column: 14, scope: !4012)
!4014 = !DILocation(line: 240, column: 6, scope: !4012)
!4015 = !DILocation(line: 241, column: 12, scope: !4012)
!4016 = !DILocation(line: 241, column: 10, scope: !4012)
!4017 = !DILocation(line: 242, column: 21, scope: !4012)
!4018 = !DILocation(line: 242, column: 27, scope: !4012)
!4019 = !DILocation(line: 242, column: 34, scope: !4012)
!4020 = !DILocation(line: 242, column: 42, scope: !4012)
!4021 = !DILocation(line: 242, column: 3, scope: !4012)
!4022 = !DILocation(line: 243, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4012, file: !3297, line: 243, column: 7)
!4024 = !DILocation(line: 243, column: 7, scope: !4012)
!4025 = !DILocation(line: 244, column: 31, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !3297, line: 243, column: 14)
!4027 = !DILocation(line: 244, column: 4, scope: !4026)
!4028 = !DILocation(line: 244, column: 11, scope: !4026)
!4029 = !DILocation(line: 244, column: 29, scope: !4026)
!4030 = !DILocation(line: 245, column: 14, scope: !4026)
!4031 = !DILocation(line: 246, column: 3, scope: !4026)
!4032 = !DILocation(line: 247, column: 16, scope: !4023)
!4033 = !DILocation(line: 247, column: 36, scope: !4023)
!4034 = !DILocation(line: 247, column: 14, scope: !4023)
!4035 = !DILocation(line: 248, column: 9, scope: !4012)
!4036 = !DILocation(line: 248, column: 7, scope: !4012)
!4037 = !DILocation(line: 249, column: 2, scope: !4012)
!4038 = !DILocation(line: 249, column: 14, scope: !3990)
!4039 = !DILocation(line: 249, column: 13, scope: !3991)
!4040 = !DILocation(line: 251, column: 33, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3990, file: !3297, line: 249, column: 21)
!4042 = !DILocation(line: 251, column: 39, scope: !4041)
!4043 = !DILocation(line: 251, column: 31, scope: !4041)
!4044 = !DILocation(line: 251, column: 3, scope: !4041)
!4045 = !DILocation(line: 251, column: 8, scope: !4041)
!4046 = !DILocation(line: 251, column: 26, scope: !4041)
!4047 = !DILocation(line: 252, column: 12, scope: !4041)
!4048 = !DILocation(line: 252, column: 10, scope: !4041)
!4049 = !DILocation(line: 253, column: 21, scope: !4041)
!4050 = !DILocation(line: 253, column: 27, scope: !4041)
!4051 = !DILocation(line: 253, column: 32, scope: !4041)
!4052 = !DILocation(line: 253, column: 40, scope: !4041)
!4053 = !DILocation(line: 253, column: 3, scope: !4041)
!4054 = !DILocation(line: 254, column: 13, scope: !4041)
!4055 = !DILocation(line: 255, column: 9, scope: !4041)
!4056 = !DILocation(line: 255, column: 7, scope: !4041)
!4057 = !DILocation(line: 256, column: 2, scope: !4041)
!4058 = !DILocation(line: 257, column: 3, scope: !3989)
!4059 = !DILocation(line: 257, column: 19, scope: !3989)
!4060 = !DILocation(line: 257, column: 31, scope: !3989)
!4061 = !DILocation(line: 257, column: 39, scope: !3989)
!4062 = !DILocation(line: 259, column: 9, scope: !3989)
!4063 = !DILocation(line: 259, column: 16, scope: !3989)
!4064 = !DILocation(line: 259, column: 7, scope: !3989)
!4065 = !DILocation(line: 260, column: 8, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3989, file: !3297, line: 260, column: 7)
!4067 = !DILocation(line: 260, column: 7, scope: !3989)
!4068 = !DILocation(line: 270, column: 13, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !3297, line: 260, column: 13)
!4070 = !DILocation(line: 270, column: 11, scope: !4069)
!4071 = !DILocation(line: 271, column: 13, scope: !4069)
!4072 = !DILocation(line: 271, column: 24, scope: !4069)
!4073 = !DILocation(line: 271, column: 11, scope: !4069)
!4074 = !DILocation(line: 273, column: 4, scope: !4069)
!4075 = !DILocation(line: 273, column: 13, scope: !4069)
!4076 = !DILocation(line: 273, column: 18, scope: !4069)
!4077 = !DILocation(line: 273, column: 24, scope: !4069)
!4078 = !DILocation(line: 274, column: 3, scope: !4069)
!4079 = !DILocation(line: 289, column: 4, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4066, file: !3297, line: 274, column: 10)
!4081 = !DILocation(line: 290, column: 14, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4080, file: !3297, line: 289, column: 7)
!4083 = !DILocation(line: 290, column: 12, scope: !4082)
!4084 = !DILocation(line: 291, column: 17, scope: !4082)
!4085 = !DILocation(line: 291, column: 15, scope: !4082)
!4086 = !DILocation(line: 292, column: 11, scope: !4082)
!4087 = !DILocation(line: 292, column: 16, scope: !4082)
!4088 = !DILocation(line: 292, column: 9, scope: !4082)
!4089 = !DILocation(line: 293, column: 4, scope: !4082)
!4090 = !DILocation(line: 293, column: 13, scope: !4080)
!4091 = distinct !{!4091, !4079, !4092, !3429, !3430}
!4092 = !DILocation(line: 293, column: 16, scope: !4080)
!4093 = !DILocation(line: 294, column: 13, scope: !4080)
!4094 = !DILocation(line: 294, column: 24, scope: !4080)
!4095 = !DILocation(line: 294, column: 11, scope: !4080)
!4096 = !DILocation(line: 295, column: 4, scope: !4080)
!4097 = !DILocation(line: 295, column: 4, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4080, file: !3297, line: 295, column: 4)
!4099 = !DILocation(line: 295, column: 4, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4098, file: !3297, line: 295, column: 4)
!4101 = !DILocation(line: 295, column: 4, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !3297, line: 295, column: 4)
!4103 = !DILocation(line: 296, column: 4, scope: !4080)
!4104 = !DILocation(line: 296, column: 4, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4080, file: !3297, line: 296, column: 4)
!4106 = !DILocation(line: 296, column: 4, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4105, file: !3297, line: 296, column: 4)
!4108 = !DILocation(line: 296, column: 4, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !3297, line: 296, column: 4)
!4110 = !DILocation(line: 297, column: 18, scope: !4080)
!4111 = !DILocation(line: 297, column: 25, scope: !4080)
!4112 = !DILocation(line: 297, column: 4, scope: !4080)
!4113 = !DILocation(line: 299, column: 4, scope: !4080)
!4114 = !DILocation(line: 299, column: 13, scope: !4080)
!4115 = !DILocation(line: 299, column: 18, scope: !4080)
!4116 = !DILocation(line: 299, column: 24, scope: !4080)
!4117 = !DILocation(line: 300, column: 4, scope: !4080)
!4118 = !DILocation(line: 300, column: 13, scope: !4080)
!4119 = !DILocation(line: 300, column: 23, scope: !4080)
!4120 = !DILocation(line: 300, column: 31, scope: !4080)
!4121 = !DILocation(line: 303, column: 9, scope: !3989)
!4122 = !DILocation(line: 303, column: 15, scope: !3989)
!4123 = !DILocation(line: 303, column: 7, scope: !3989)
!4124 = !DILocation(line: 304, column: 3, scope: !3989)
!4125 = !DILocation(line: 304, column: 3, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !3989, file: !3297, line: 304, column: 3)
!4127 = !DILocation(line: 304, column: 3, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4126, file: !3297, line: 304, column: 3)
!4129 = !DILocation(line: 304, column: 3, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !3297, line: 304, column: 3)
!4131 = !DILocation(line: 305, column: 17, scope: !3989)
!4132 = !DILocation(line: 305, column: 22, scope: !3989)
!4133 = !DILocation(line: 305, column: 3, scope: !3989)
!4134 = !DILocation(line: 307, column: 8, scope: !3989)
!4135 = !DILocation(line: 307, column: 14, scope: !3989)
!4136 = !DILocation(line: 307, column: 6, scope: !3989)
!4137 = !DILocation(line: 308, column: 9, scope: !3989)
!4138 = !DILocation(line: 308, column: 7, scope: !3989)
!4139 = !DILocation(line: 309, column: 21, scope: !3989)
!4140 = !DILocation(line: 309, column: 27, scope: !3989)
!4141 = !DILocation(line: 309, column: 38, scope: !3989)
!4142 = !DILocation(line: 309, column: 43, scope: !3989)
!4143 = !DILocation(line: 309, column: 3, scope: !3989)
!4144 = !DILocation(line: 311, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !3989, file: !3297, line: 311, column: 7)
!4146 = !DILocation(line: 311, column: 7, scope: !3989)
!4147 = !DILocation(line: 312, column: 24, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !3297, line: 311, column: 15)
!4149 = !DILocation(line: 312, column: 32, scope: !4148)
!4150 = !DILocation(line: 312, column: 4, scope: !4148)
!4151 = !DILocation(line: 313, column: 14, scope: !4148)
!4152 = !DILocation(line: 314, column: 3, scope: !4148)
!4153 = !DILocation(line: 315, column: 16, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4145, file: !3297, line: 314, column: 10)
!4155 = !DILocation(line: 315, column: 41, scope: !4154)
!4156 = !DILocation(line: 315, column: 14, scope: !4154)
!4157 = !DILocation(line: 317, column: 34, scope: !3989)
!4158 = !DILocation(line: 317, column: 3, scope: !3989)
!4159 = !DILocation(line: 317, column: 14, scope: !3989)
!4160 = !DILocation(line: 317, column: 32, scope: !3989)
!4161 = !DILocation(line: 318, column: 9, scope: !3989)
!4162 = !DILocation(line: 318, column: 7, scope: !3989)
!4163 = !DILocation(line: 319, column: 2, scope: !3990)
!4164 = !DILocation(line: 321, column: 2, scope: !3976)
!4165 = !DILocation(line: 321, column: 11, scope: !3976)
!4166 = !DILocation(line: 321, column: 21, scope: !3976)
!4167 = !DILocation(line: 322, column: 9, scope: !3976)
!4168 = !DILocation(line: 323, column: 1, scope: !3976)
!4169 = !DILocation(line: 322, column: 2, scope: !3976)
!4170 = !DISubprogram(name: "__rb_erase_color", scope: !3297, file: !3297, line: 220, type: !3849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4171 = distinct !DISubprogram(name: "__rb_change_child", scope: !3297, file: !3297, line: 195, type: !4172, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !150, !150, !150, !3834}
!4174 = !{!4175, !4176, !4177, !4178}
!4175 = !DILocalVariable(name: "old", arg: 1, scope: !4171, file: !3297, line: 195, type: !150)
!4176 = !DILocalVariable(name: "new", arg: 2, scope: !4171, file: !3297, line: 195, type: !150)
!4177 = !DILocalVariable(name: "parent", arg: 3, scope: !4171, file: !3297, line: 196, type: !150)
!4178 = !DILocalVariable(name: "root", arg: 4, scope: !4171, file: !3297, line: 196, type: !3834)
!4179 = !DILocation(line: 195, column: 35, scope: !4171)
!4180 = !DILocation(line: 195, column: 56, scope: !4171)
!4181 = !DILocation(line: 196, column: 21, scope: !4171)
!4182 = !DILocation(line: 196, column: 45, scope: !4171)
!4183 = !DILocation(line: 198, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4171, file: !3297, line: 198, column: 6)
!4185 = !DILocation(line: 198, column: 6, scope: !4171)
!4186 = !DILocation(line: 199, column: 7, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !3297, line: 199, column: 7)
!4188 = distinct !DILexicalBlock(scope: !4184, file: !3297, line: 198, column: 14)
!4189 = !DILocation(line: 199, column: 15, scope: !4187)
!4190 = !DILocation(line: 199, column: 26, scope: !4187)
!4191 = !DILocation(line: 199, column: 23, scope: !4187)
!4192 = !DILocation(line: 199, column: 7, scope: !4188)
!4193 = !DILocation(line: 200, column: 4, scope: !4187)
!4194 = !DILocation(line: 200, column: 4, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4187, file: !3297, line: 200, column: 4)
!4196 = !DILocation(line: 200, column: 4, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4195, file: !3297, line: 200, column: 4)
!4198 = !DILocation(line: 200, column: 4, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !3297, line: 200, column: 4)
!4200 = !DILocation(line: 202, column: 4, scope: !4187)
!4201 = !DILocation(line: 202, column: 4, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4187, file: !3297, line: 202, column: 4)
!4203 = !DILocation(line: 202, column: 4, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4202, file: !3297, line: 202, column: 4)
!4205 = !DILocation(line: 202, column: 4, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4202, file: !3297, line: 202, column: 4)
!4207 = !DILocation(line: 203, column: 2, scope: !4188)
!4208 = !DILocation(line: 204, column: 3, scope: !4184)
!4209 = !DILocation(line: 204, column: 3, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4184, file: !3297, line: 204, column: 3)
!4211 = !DILocation(line: 204, column: 3, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4210, file: !3297, line: 204, column: 3)
!4213 = !DILocation(line: 204, column: 3, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4210, file: !3297, line: 204, column: 3)
!4215 = !DILocation(line: 205, column: 1, scope: !4171)
!4216 = distinct !DISubprogram(name: "rb_set_parent", scope: !3297, file: !3297, line: 183, type: !3301, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "rb", arg: 1, scope: !4216, file: !3297, line: 183, type: !150)
!4219 = !DILocalVariable(name: "p", arg: 2, scope: !4216, file: !3297, line: 183, type: !150)
!4220 = !DILocation(line: 183, column: 50, scope: !4216)
!4221 = !DILocation(line: 183, column: 70, scope: !4216)
!4222 = !DILocation(line: 185, column: 26, scope: !4216)
!4223 = !DILocation(line: 185, column: 56, scope: !4216)
!4224 = !DILocation(line: 185, column: 41, scope: !4216)
!4225 = !DILocation(line: 185, column: 39, scope: !4216)
!4226 = !DILocation(line: 185, column: 2, scope: !4216)
!4227 = !DILocation(line: 185, column: 6, scope: !4216)
!4228 = !DILocation(line: 185, column: 24, scope: !4216)
!4229 = !DILocation(line: 186, column: 1, scope: !4216)
!4230 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !3297, file: !3297, line: 188, type: !4231, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !150, !150, !102}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "rb", arg: 1, scope: !4230, file: !3297, line: 188, type: !150)
!4235 = !DILocalVariable(name: "p", arg: 2, scope: !4230, file: !3297, line: 189, type: !150)
!4236 = !DILocalVariable(name: "color", arg: 3, scope: !4230, file: !3297, line: 189, type: !102)
!4237 = !DILocation(line: 188, column: 56, scope: !4230)
!4238 = !DILocation(line: 189, column: 28, scope: !4230)
!4239 = !DILocation(line: 189, column: 35, scope: !4230)
!4240 = !DILocation(line: 191, column: 41, scope: !4230)
!4241 = !DILocation(line: 191, column: 26, scope: !4230)
!4242 = !DILocation(line: 191, column: 45, scope: !4230)
!4243 = !DILocation(line: 191, column: 43, scope: !4230)
!4244 = !DILocation(line: 191, column: 2, scope: !4230)
!4245 = !DILocation(line: 191, column: 6, scope: !4230)
!4246 = !DILocation(line: 191, column: 24, scope: !4230)
!4247 = !DILocation(line: 192, column: 1, scope: !4230)
!4248 = distinct !DISubprogram(name: "interval_subtree_search", scope: !3, file: !3, line: 46, type: !3688, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4257, !4259}
!4250 = !DILocalVariable(name: "node", arg: 1, scope: !4248, file: !3, line: 46, type: !3242)
!4251 = !DILocalVariable(name: "start", arg: 2, scope: !4248, file: !3, line: 46, type: !153)
!4252 = !DILocalVariable(name: "last", arg: 3, scope: !4248, file: !3, line: 46, type: !153)
!4253 = !DILocalVariable(name: "left", scope: !4254, file: !3, line: 46, type: !3242)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 46, column: 1)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 46, column: 1)
!4256 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 46, column: 1)
!4257 = !DILocalVariable(name: "__mptr", scope: !4258, file: !3, line: 46, type: !70)
!4258 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 46, column: 1)
!4259 = !DILocalVariable(name: "__mptr", scope: !4260, file: !3, line: 46, type: !70)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 46, column: 1)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 46, column: 1)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 46, column: 1)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 46, column: 1)
!4264 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 46, column: 1)
!4265 = !DILocation(line: 46, column: 1, scope: !4248)
!4266 = !DILocation(line: 46, column: 1, scope: !4255)
!4267 = !DILocation(line: 46, column: 1, scope: !4256)
!4268 = !DILocation(line: 46, column: 1, scope: !4254)
!4269 = !DILocation(line: 46, column: 1, scope: !4258)
!4270 = !DILocation(line: 46, column: 1, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 46, column: 1)
!4272 = !DILocation(line: 46, column: 1, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 46, column: 1)
!4274 = distinct !{!4274, !4265, !4265, !3430}
!4275 = !DILocation(line: 46, column: 1, scope: !4264)
!4276 = !DILocation(line: 46, column: 1, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 46, column: 1)
!4278 = !DILocation(line: 46, column: 1, scope: !4263)
!4279 = !DILocation(line: 46, column: 1, scope: !4262)
!4280 = !DILocation(line: 46, column: 1, scope: !4260)
!4281 = !DILocation(line: 46, column: 1, scope: !4261)
!4282 = !DILocation(line: 46, column: 1, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 46, column: 1)
