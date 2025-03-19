; ModuleID = 'drivers/pps/kapi.c'
source_filename = "drivers/pps/kapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pps_register_source: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pps_register_source ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pps_unregister_source: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pps_unregister_source ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pps_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pps_event ; .previous"

%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.device, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"\013pps_core: %s: unsupported default parameters\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [41 x i8] c"\013pps_core: %s: unspecified time format\0A\00", align 1, !dbg !7
@pps_register_source.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !12
@.str.2 = private unnamed_addr constant [12 x i8] c"&pps->queue\00", align 1, !dbg !4321
@.str.3 = private unnamed_addr constant [46 x i8] c"\013pps_core: %s: unable to create char device\0A\00", align 1, !dbg !4324
@.str.4 = private unnamed_addr constant [43 x i8] c"\013pps_core: %s: unable to register source\0A\00", align 1, !dbg !4329
@__UNIQUE_ID___addressable_pps_register_source267 = internal global ptr @pps_register_source, section ".discard.addressable", align 8, !dbg !4334
@__UNIQUE_ID___addressable_pps_unregister_source268 = internal global ptr @pps_unregister_source, section ".discard.addressable", align 8, !dbg !4336
@.str.5 = private unnamed_addr constant [19 x i8] c"drivers/pps/kapi.c\00", align 1, !dbg !4338
@__UNIQUE_ID___addressable_pps_event269 = internal global ptr @pps_event, section ".discard.addressable", align 8, !dbg !4343
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4345
@.str.7 = private unnamed_addr constant [12 x i8] c"echo %s %s\0A\00", align 1, !dbg !4350
@.str.8 = private unnamed_addr constant [7 x i8] c"assert\00", align 1, !dbg !4352
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4355
@.str.10 = private unnamed_addr constant [6 x i8] c"clear\00", align 1, !dbg !4358
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pps_register_source267, ptr @__UNIQUE_ID___addressable_pps_unregister_source268, ptr @__UNIQUE_ID___addressable_pps_event269], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pps_register_source(ptr noundef %info, i32 noundef %default_params) #0 align 16 !dbg !14 {
entry:
  %retval = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %default_params.addr = alloca i32, align 4
  %pps = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %tmp43 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4361, metadata !DIExpression()), !dbg !4376
  store i32 %default_params, ptr %default_params.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %default_params.addr, metadata !4362, metadata !DIExpression()), !dbg !4377
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #16, !dbg !4378
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !4363, metadata !DIExpression()), !dbg !4379
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4364, metadata !DIExpression()), !dbg !4381
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4382
  %mode = getelementptr inbounds %struct.pps_source_info, ptr %0, i32 0, i32 2, !dbg !4384
  %1 = load i32, ptr %mode, align 8, !dbg !4384
  %2 = load i32, ptr %default_params.addr, align 4, !dbg !4385
  %and = and i32 %1, %2, !dbg !4386
  %3 = load i32, ptr %default_params.addr, align 4, !dbg !4387
  %cmp = icmp ne i32 %and, %3, !dbg !4388
  br i1 %cmp, label %if.then, label %if.end, !dbg !4389

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4390

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4393

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4390
  %name = getelementptr inbounds %struct.pps_source_info, ptr %4, i32 0, i32 0, !dbg !4390
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !4390
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %arraydecay) #17, !dbg !4390
  store i32 %call, ptr %tmp, align 4, !dbg !4393
  %5 = load i32, ptr %tmp, align 4, !dbg !4390
  store i32 -22, ptr %err, align 4, !dbg !4395
  br label %pps_register_source_exit, !dbg !4396

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %info.addr, align 8, !dbg !4397
  %mode1 = getelementptr inbounds %struct.pps_source_info, ptr %6, i32 0, i32 2, !dbg !4399
  %7 = load i32, ptr %mode1, align 8, !dbg !4399
  %and2 = and i32 %7, 12288, !dbg !4400
  %cmp3 = icmp eq i32 %and2, 0, !dbg !4401
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !4402

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !4403

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !4406

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4406

do.end7:                                          ; preds = %do.cond6
  %8 = load ptr, ptr %info.addr, align 8, !dbg !4403
  %name9 = getelementptr inbounds %struct.pps_source_info, ptr %8, i32 0, i32 0, !dbg !4403
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %name9, i64 0, i64 0, !dbg !4403
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %arraydecay10) #17, !dbg !4403
  store i32 %call11, ptr %tmp8, align 4, !dbg !4406
  %9 = load i32, ptr %tmp8, align 4, !dbg !4403
  store i32 -22, ptr %err, align 4, !dbg !4408
  br label %pps_register_source_exit, !dbg !4409

if.end12:                                         ; preds = %if.end
  %call13 = call noalias ptr @kzalloc(i64 noundef 968, i32 noundef 3264) #18, !dbg !4410
  store ptr %call13, ptr %pps, align 8, !dbg !4411
  %10 = load ptr, ptr %pps, align 8, !dbg !4412
  %cmp14 = icmp eq ptr %10, null, !dbg !4414
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4415

if.then15:                                        ; preds = %if.end12
  store i32 -12, ptr %err, align 4, !dbg !4416
  br label %pps_register_source_exit, !dbg !4418

if.end16:                                         ; preds = %if.end12
  %11 = load ptr, ptr %pps, align 8, !dbg !4419
  %params = getelementptr inbounds %struct.pps_device, ptr %11, i32 0, i32 1, !dbg !4420
  %api_version = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 0, !dbg !4421
  store i32 1, ptr %api_version, align 8, !dbg !4422
  %12 = load i32, ptr %default_params.addr, align 4, !dbg !4423
  %13 = load ptr, ptr %pps, align 8, !dbg !4424
  %params17 = getelementptr inbounds %struct.pps_device, ptr %13, i32 0, i32 1, !dbg !4425
  %mode18 = getelementptr inbounds %struct.pps_kparams, ptr %params17, i32 0, i32 1, !dbg !4426
  store i32 %12, ptr %mode18, align 4, !dbg !4427
  %14 = load ptr, ptr %pps, align 8, !dbg !4428
  %info19 = getelementptr inbounds %struct.pps_device, ptr %14, i32 0, i32 0, !dbg !4429
  %15 = load ptr, ptr %info.addr, align 8, !dbg !4430
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %info19, ptr align 8 %15, i64 96, i1 false), !dbg !4431
  %16 = load ptr, ptr %pps, align 8, !dbg !4432
  %info20 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 0, !dbg !4434
  %mode21 = getelementptr inbounds %struct.pps_source_info, ptr %info20, i32 0, i32 2, !dbg !4435
  %17 = load i32, ptr %mode21, align 8, !dbg !4435
  %and22 = and i32 %17, 192, !dbg !4436
  %tobool = icmp ne i32 %and22, 0, !dbg !4436
  br i1 %tobool, label %land.lhs.true, label %if.end28, !dbg !4437

land.lhs.true:                                    ; preds = %if.end16
  %18 = load ptr, ptr %pps, align 8, !dbg !4438
  %info23 = getelementptr inbounds %struct.pps_device, ptr %18, i32 0, i32 0, !dbg !4439
  %echo = getelementptr inbounds %struct.pps_source_info, ptr %info23, i32 0, i32 3, !dbg !4440
  %19 = load ptr, ptr %echo, align 8, !dbg !4440
  %cmp24 = icmp eq ptr %19, null, !dbg !4441
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !4442

if.then25:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %pps, align 8, !dbg !4443
  %info26 = getelementptr inbounds %struct.pps_device, ptr %20, i32 0, i32 0, !dbg !4444
  %echo27 = getelementptr inbounds %struct.pps_source_info, ptr %info26, i32 0, i32 3, !dbg !4445
  store ptr @pps_echo_client_default, ptr %echo27, align 8, !dbg !4446
  br label %if.end28, !dbg !4443

if.end28:                                         ; preds = %if.then25, %land.lhs.true, %if.end16
  br label %do.body29, !dbg !4447

do.body29:                                        ; preds = %if.end28
  %21 = load ptr, ptr %pps, align 8, !dbg !4448
  %queue = getelementptr inbounds %struct.pps_device, ptr %21, i32 0, i32 8, !dbg !4448
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef @.str.2, ptr noundef @pps_register_source.__key) #19, !dbg !4448
  br label %do.cond30, !dbg !4448

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4448

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4450

do.body32:                                        ; preds = %do.end31
  %22 = load ptr, ptr %pps, align 8, !dbg !4451
  %lock = getelementptr inbounds %struct.pps_device, ptr %22, i32 0, i32 13, !dbg !4451
  %call33 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !4451
  %23 = load ptr, ptr %pps, align 8, !dbg !4451
  %lock34 = getelementptr inbounds %struct.pps_device, ptr %23, i32 0, i32 13, !dbg !4451
  %24 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4451
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %24, i32 0, i32 0, !dbg !4451
  %25 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4451
  %counter = getelementptr inbounds %struct.atomic_t, ptr %25, i32 0, i32 0, !dbg !4451
  store i32 0, ptr %counter, align 4, !dbg !4451
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock34, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4451
  br label %do.cond35, !dbg !4451

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !4451

do.end36:                                         ; preds = %do.cond35
  %26 = load ptr, ptr %pps, align 8, !dbg !4453
  %call37 = call i32 @pps_register_cdev(ptr noundef %26) #19, !dbg !4454
  store i32 %call37, ptr %err, align 4, !dbg !4455
  %27 = load i32, ptr %err, align 4, !dbg !4456
  %cmp38 = icmp slt i32 %27, 0, !dbg !4458
  br i1 %cmp38, label %if.then39, label %if.end47, !dbg !4459

if.then39:                                        ; preds = %do.end36
  br label %do.body40, !dbg !4460

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !4463

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4463

do.end42:                                         ; preds = %do.cond41
  %28 = load ptr, ptr %info.addr, align 8, !dbg !4460
  %name44 = getelementptr inbounds %struct.pps_source_info, ptr %28, i32 0, i32 0, !dbg !4460
  %arraydecay45 = getelementptr inbounds [32 x i8], ptr %name44, i64 0, i64 0, !dbg !4460
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %arraydecay45) #17, !dbg !4460
  store i32 %call46, ptr %tmp43, align 4, !dbg !4463
  %29 = load i32, ptr %tmp43, align 4, !dbg !4460
  br label %kfree_pps, !dbg !4465

if.end47:                                         ; preds = %do.end36
  %30 = load ptr, ptr %pps, align 8, !dbg !4466
  store ptr %30, ptr %retval, align 8, !dbg !4467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4467

kfree_pps:                                        ; preds = %do.end42
  call void @llvm.dbg.label(metadata !4365), !dbg !4468
  %31 = load ptr, ptr %pps, align 8, !dbg !4469
  call void @kfree(ptr noundef %31) #19, !dbg !4470
  br label %pps_register_source_exit, !dbg !4470

pps_register_source_exit:                         ; preds = %kfree_pps, %if.then15, %do.end7, %do.end
  call void @llvm.dbg.label(metadata !4366), !dbg !4471
  br label %do.body48, !dbg !4472

do.body48:                                        ; preds = %pps_register_source_exit
  br label %do.cond49, !dbg !4474

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !4474

do.end50:                                         ; preds = %do.cond49
  %32 = load ptr, ptr %info.addr, align 8, !dbg !4472
  %name52 = getelementptr inbounds %struct.pps_source_info, ptr %32, i32 0, i32 0, !dbg !4472
  %arraydecay53 = getelementptr inbounds [32 x i8], ptr %name52, i64 0, i64 0, !dbg !4472
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %arraydecay53) #17, !dbg !4472
  store i32 %call54, ptr %tmp51, align 4, !dbg !4474
  %33 = load i32, ptr %tmp51, align 4, !dbg !4472
  %34 = load i32, ptr %err, align 4, !dbg !4476
  %conv = sext i32 %34 to i64, !dbg !4476
  %call55 = call ptr @ERR_PTR(i64 noundef %conv) #19, !dbg !4477
  store ptr %call55, ptr %retval, align 8, !dbg !4478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4478

cleanup:                                          ; preds = %do.end50, %if.end47
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4479
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #16, !dbg !4479
  %35 = load ptr, ptr %retval, align 8, !dbg !4479
  ret ptr %35, !dbg !4479
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4480 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4484 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4488, metadata !DIExpression()), !dbg !4490
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4489, metadata !DIExpression()), !dbg !4491
  %0 = load i64, ptr %size.addr, align 8, !dbg !4492
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4493
  %or = or i32 %1, 256, !dbg !4494
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !4495
  ret ptr %call, !dbg !4496
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_echo_client_default(ptr noundef %pps, i32 noundef %event, ptr noundef %data) #0 align 16 !dbg !4497 {
entry:
  %pps.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4499, metadata !DIExpression()), !dbg !4502
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4500, metadata !DIExpression()), !dbg !4503
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4501, metadata !DIExpression()), !dbg !4504
  br label %do.body, !dbg !4505

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4507

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pps.addr, align 8, !dbg !4505
  %dev = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 11, !dbg !4505
  %1 = load i32, ptr %event.addr, align 4, !dbg !4505
  %and = and i32 %1, 1, !dbg !4505
  %tobool = icmp ne i32 %and, 0, !dbg !4505
  %2 = zext i1 %tobool to i64, !dbg !4505
  %cond = select i1 %tobool, ptr @.str.8, ptr @.str.9, !dbg !4505
  %3 = load i32, ptr %event.addr, align 4, !dbg !4505
  %and1 = and i32 %3, 2, !dbg !4505
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4505
  %4 = zext i1 %tobool2 to i64, !dbg !4505
  %cond3 = select i1 %tobool2, ptr @.str.10, ptr @.str.9, !dbg !4505
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.7, ptr noundef %cond, ptr noundef %cond3) #17, !dbg !4505
  ret void, !dbg !4509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4510 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !4515 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4524
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4525
  ret ptr %1, !dbg !4526
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4527 dso_local i32 @pps_register_cdev(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4530 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #8 align 16 !dbg !4533 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  %0 = load i64, ptr %error.addr, align 8, !dbg !4540
  %1 = inttoptr i64 %0 to ptr, !dbg !4541
  ret ptr %1, !dbg !4542
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pps_unregister_source(ptr noundef %pps) #0 align 16 !dbg !4543 {
entry:
  %pps.addr = alloca ptr, align 8
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %pps.addr, align 8, !dbg !4549
  call void @pps_kc_remove(ptr noundef %0) #19, !dbg !4550
  %1 = load ptr, ptr %pps.addr, align 8, !dbg !4551
  call void @pps_unregister_cdev(ptr noundef %1) #19, !dbg !4552
  ret void, !dbg !4553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_kc_remove(ptr noundef %pps) #8 align 16 !dbg !4554 {
entry:
  %pps.addr = alloca ptr, align 8
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  ret void, !dbg !4559
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4560 dso_local void @pps_unregister_cdev(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pps_event(ptr noundef %pps, ptr noundef %ts, i32 noundef %event, ptr noundef %data) #0 align 16 !dbg !4561 {
entry:
  %pps.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %captured = alloca i32, align 4
  %ts_real = alloca %struct.pps_ktime, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4569, metadata !DIExpression()), !dbg !4581
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4570, metadata !DIExpression()), !dbg !4582
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4571, metadata !DIExpression()), !dbg !4583
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4572, metadata !DIExpression()), !dbg !4584
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4585
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4573, metadata !DIExpression()), !dbg !4586
  call void @llvm.lifetime.start.p0(i64 4, ptr %captured) #16, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %captured, metadata !4574, metadata !DIExpression()), !dbg !4588
  store i32 0, ptr %captured, align 4, !dbg !4588
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts_real) #16, !dbg !4589
  call void @llvm.dbg.declare(metadata ptr %ts_real, metadata !4575, metadata !DIExpression()), !dbg !4590
  call void @llvm.memset.p0.i64(ptr align 8 %ts_real, i8 0, i64 16, i1 false), !dbg !4590
  br label %do.body, !dbg !4591

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %event.addr, align 4, !dbg !4592
  %and = and i32 %0, 3, !dbg !4592
  %cmp = icmp eq i32 %and, 0, !dbg !4592
  %lnot = xor i1 %cmp, true, !dbg !4592
  %lnot1 = xor i1 %lnot, true, !dbg !4592
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4592
  %conv = sext i32 %lnot.ext to i64, !dbg !4592
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4592
  %tobool = icmp ne i64 %expval, 0, !dbg !4592
  br i1 %tobool, label %if.then, label %if.end, !dbg !4595

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4592

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4596

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !4598

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4598

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4596

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 167, i32 0, i64 12) #16, !dbg !4600, !srcloc !4602
  br label %do.cond5, !dbg !4600

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4600

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !4596

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !4596

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !4596

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !4595

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4595

do.end10:                                         ; preds = %do.cond9
  %1 = load ptr, ptr %ts.addr, align 8, !dbg !4603
  %ts_real11 = getelementptr inbounds %struct.pps_event_time, ptr %1, i32 0, i32 0, !dbg !4604
  %2 = getelementptr inbounds { i64, i64 }, ptr %ts_real11, i32 0, i32 0, !dbg !4605
  %3 = load i64, ptr %2, align 8, !dbg !4605
  %4 = getelementptr inbounds { i64, i64 }, ptr %ts_real11, i32 0, i32 1, !dbg !4605
  %5 = load i64, ptr %4, align 8, !dbg !4605
  call void @timespec_to_pps_ktime(ptr noundef %ts_real, i64 %3, i64 %5) #19, !dbg !4605
  br label %do.body12, !dbg !4606

do.body12:                                        ; preds = %do.end10
  br label %do.body13, !dbg !4607

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4576, metadata !DIExpression()), !dbg !4608
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4608
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4580, metadata !DIExpression()), !dbg !4608
  %cmp14 = icmp eq ptr %__dummy, %__dummy2, !dbg !4608
  %conv15 = zext i1 %cmp14 to i32, !dbg !4608
  store i32 1, ptr %tmp, align 4, !dbg !4608
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4609
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4609
  %6 = load i32, ptr %tmp, align 4, !dbg !4608
  %7 = load ptr, ptr %pps.addr, align 8, !dbg !4609
  %lock = getelementptr inbounds %struct.pps_device, ptr %7, i32 0, i32 13, !dbg !4609
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !4609
  %call16 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !4609
  store i64 %call16, ptr %flags, align 8, !dbg !4609
  br label %do.cond17, !dbg !4609

do.cond17:                                        ; preds = %do.body13
  br label %do.end18, !dbg !4609

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !4607

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4607

do.end20:                                         ; preds = %do.cond19
  %8 = load ptr, ptr %pps.addr, align 8, !dbg !4610
  %params = getelementptr inbounds %struct.pps_device, ptr %8, i32 0, i32 1, !dbg !4612
  %mode = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 1, !dbg !4613
  %9 = load i32, ptr %mode, align 4, !dbg !4613
  %and21 = and i32 %9, 192, !dbg !4614
  %tobool22 = icmp ne i32 %and21, 0, !dbg !4614
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4615

if.then23:                                        ; preds = %do.end20
  %10 = load ptr, ptr %pps.addr, align 8, !dbg !4616
  %info = getelementptr inbounds %struct.pps_device, ptr %10, i32 0, i32 0, !dbg !4617
  %echo = getelementptr inbounds %struct.pps_source_info, ptr %info, i32 0, i32 3, !dbg !4618
  %11 = load ptr, ptr %echo, align 8, !dbg !4618
  %12 = load ptr, ptr %pps.addr, align 8, !dbg !4619
  %13 = load i32, ptr %event.addr, align 4, !dbg !4620
  %14 = load ptr, ptr %data.addr, align 8, !dbg !4621
  call void %11(ptr noundef %12, i32 noundef %13, ptr noundef %14) #19, !dbg !4616
  br label %if.end24, !dbg !4616

if.end24:                                         ; preds = %if.then23, %do.end20
  %15 = load ptr, ptr %pps.addr, align 8, !dbg !4622
  %params25 = getelementptr inbounds %struct.pps_device, ptr %15, i32 0, i32 1, !dbg !4623
  %mode26 = getelementptr inbounds %struct.pps_kparams, ptr %params25, i32 0, i32 1, !dbg !4624
  %16 = load i32, ptr %mode26, align 4, !dbg !4624
  %17 = load ptr, ptr %pps.addr, align 8, !dbg !4625
  %current_mode = getelementptr inbounds %struct.pps_device, ptr %17, i32 0, i32 6, !dbg !4626
  store i32 %16, ptr %current_mode, align 8, !dbg !4627
  %18 = load i32, ptr %event.addr, align 4, !dbg !4628
  %19 = load ptr, ptr %pps.addr, align 8, !dbg !4630
  %params27 = getelementptr inbounds %struct.pps_device, ptr %19, i32 0, i32 1, !dbg !4631
  %mode28 = getelementptr inbounds %struct.pps_kparams, ptr %params27, i32 0, i32 1, !dbg !4632
  %20 = load i32, ptr %mode28, align 4, !dbg !4632
  %and29 = and i32 %18, %20, !dbg !4633
  %and30 = and i32 %and29, 1, !dbg !4634
  %tobool31 = icmp ne i32 %and30, 0, !dbg !4634
  br i1 %tobool31, label %if.then32, label %if.end40, !dbg !4635

if.then32:                                        ; preds = %if.end24
  %21 = load ptr, ptr %pps.addr, align 8, !dbg !4636
  %params33 = getelementptr inbounds %struct.pps_device, ptr %21, i32 0, i32 1, !dbg !4639
  %mode34 = getelementptr inbounds %struct.pps_kparams, ptr %params33, i32 0, i32 1, !dbg !4640
  %22 = load i32, ptr %mode34, align 4, !dbg !4640
  %and35 = and i32 %22, 16, !dbg !4641
  %tobool36 = icmp ne i32 %and35, 0, !dbg !4641
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !4642

if.then37:                                        ; preds = %if.then32
  %23 = load ptr, ptr %pps.addr, align 8, !dbg !4643
  %params38 = getelementptr inbounds %struct.pps_device, ptr %23, i32 0, i32 1, !dbg !4644
  %assert_off_tu = getelementptr inbounds %struct.pps_kparams, ptr %params38, i32 0, i32 2, !dbg !4645
  call void @pps_add_offset(ptr noundef %ts_real, ptr noundef %assert_off_tu) #19, !dbg !4646
  br label %if.end39, !dbg !4646

if.end39:                                         ; preds = %if.then37, %if.then32
  %24 = load ptr, ptr %pps.addr, align 8, !dbg !4647
  %assert_tu = getelementptr inbounds %struct.pps_device, ptr %24, i32 0, i32 4, !dbg !4648
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %assert_tu, ptr align 8 %ts_real, i64 16, i1 false), !dbg !4649
  %25 = load ptr, ptr %pps.addr, align 8, !dbg !4650
  %assert_sequence = getelementptr inbounds %struct.pps_device, ptr %25, i32 0, i32 2, !dbg !4651
  %26 = load i32, ptr %assert_sequence, align 8, !dbg !4652
  %inc = add i32 %26, 1, !dbg !4652
  store i32 %inc, ptr %assert_sequence, align 8, !dbg !4652
  store i32 -1, ptr %captured, align 4, !dbg !4653
  br label %if.end40, !dbg !4654

if.end40:                                         ; preds = %if.end39, %if.end24
  %27 = load i32, ptr %event.addr, align 4, !dbg !4655
  %28 = load ptr, ptr %pps.addr, align 8, !dbg !4657
  %params41 = getelementptr inbounds %struct.pps_device, ptr %28, i32 0, i32 1, !dbg !4658
  %mode42 = getelementptr inbounds %struct.pps_kparams, ptr %params41, i32 0, i32 1, !dbg !4659
  %29 = load i32, ptr %mode42, align 4, !dbg !4659
  %and43 = and i32 %27, %29, !dbg !4660
  %and44 = and i32 %and43, 2, !dbg !4661
  %tobool45 = icmp ne i32 %and44, 0, !dbg !4661
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !4662

if.then46:                                        ; preds = %if.end40
  %30 = load ptr, ptr %pps.addr, align 8, !dbg !4663
  %params47 = getelementptr inbounds %struct.pps_device, ptr %30, i32 0, i32 1, !dbg !4666
  %mode48 = getelementptr inbounds %struct.pps_kparams, ptr %params47, i32 0, i32 1, !dbg !4667
  %31 = load i32, ptr %mode48, align 4, !dbg !4667
  %and49 = and i32 %31, 32, !dbg !4668
  %tobool50 = icmp ne i32 %and49, 0, !dbg !4668
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !4669

if.then51:                                        ; preds = %if.then46
  %32 = load ptr, ptr %pps.addr, align 8, !dbg !4670
  %params52 = getelementptr inbounds %struct.pps_device, ptr %32, i32 0, i32 1, !dbg !4671
  %clear_off_tu = getelementptr inbounds %struct.pps_kparams, ptr %params52, i32 0, i32 3, !dbg !4672
  call void @pps_add_offset(ptr noundef %ts_real, ptr noundef %clear_off_tu) #19, !dbg !4673
  br label %if.end53, !dbg !4673

if.end53:                                         ; preds = %if.then51, %if.then46
  %33 = load ptr, ptr %pps.addr, align 8, !dbg !4674
  %clear_tu = getelementptr inbounds %struct.pps_device, ptr %33, i32 0, i32 5, !dbg !4675
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %clear_tu, ptr align 8 %ts_real, i64 16, i1 false), !dbg !4676
  %34 = load ptr, ptr %pps.addr, align 8, !dbg !4677
  %clear_sequence = getelementptr inbounds %struct.pps_device, ptr %34, i32 0, i32 3, !dbg !4678
  %35 = load i32, ptr %clear_sequence, align 4, !dbg !4679
  %inc54 = add i32 %35, 1, !dbg !4679
  store i32 %inc54, ptr %clear_sequence, align 4, !dbg !4679
  store i32 -1, ptr %captured, align 4, !dbg !4680
  br label %if.end55, !dbg !4681

if.end55:                                         ; preds = %if.end53, %if.end40
  %36 = load ptr, ptr %pps.addr, align 8, !dbg !4682
  %37 = load ptr, ptr %ts.addr, align 8, !dbg !4683
  %38 = load i32, ptr %event.addr, align 4, !dbg !4684
  call void @pps_kc_event(ptr noundef %36, ptr noundef %37, i32 noundef %38) #19, !dbg !4685
  %39 = load i32, ptr %captured, align 4, !dbg !4686
  %tobool56 = icmp ne i32 %39, 0, !dbg !4686
  br i1 %tobool56, label %if.then57, label %if.end60, !dbg !4688

if.then57:                                        ; preds = %if.end55
  %40 = load ptr, ptr %pps.addr, align 8, !dbg !4689
  %last_ev = getelementptr inbounds %struct.pps_device, ptr %40, i32 0, i32 7, !dbg !4691
  %41 = load i32, ptr %last_ev, align 4, !dbg !4692
  %inc58 = add i32 %41, 1, !dbg !4692
  store i32 %inc58, ptr %last_ev, align 4, !dbg !4692
  %42 = load ptr, ptr %pps.addr, align 8, !dbg !4693
  %queue = getelementptr inbounds %struct.pps_device, ptr %42, i32 0, i32 8, !dbg !4693
  %call59 = call i32 @__wake_up(ptr noundef %queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #19, !dbg !4693
  %43 = load ptr, ptr %pps.addr, align 8, !dbg !4694
  %async_queue = getelementptr inbounds %struct.pps_device, ptr %43, i32 0, i32 12, !dbg !4695
  call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #19, !dbg !4696
  br label %if.end60, !dbg !4697

if.end60:                                         ; preds = %if.then57, %if.end55
  %44 = load ptr, ptr %pps.addr, align 8, !dbg !4698
  %lock61 = getelementptr inbounds %struct.pps_device, ptr %44, i32 0, i32 13, !dbg !4699
  %45 = load i64, ptr %flags, align 8, !dbg !4700
  call void @spin_unlock_irqrestore(ptr noundef %lock61, i64 noundef %45) #19, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts_real) #16, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 4, ptr %captured) #16, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4702
  ret void, !dbg !4702
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timespec_to_pps_ktime(ptr noundef %kt, i64 %ts.coerce0, i64 %ts.coerce1) #8 align 16 !dbg !4703 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %kt.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  store ptr %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !4708, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !4709, metadata !DIExpression()), !dbg !4711
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !4712
  %2 = load i64, ptr %tv_sec, align 8, !dbg !4712
  %3 = load ptr, ptr %kt.addr, align 8, !dbg !4713
  %sec = getelementptr inbounds %struct.pps_ktime, ptr %3, i32 0, i32 0, !dbg !4714
  store i64 %2, ptr %sec, align 8, !dbg !4715
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !4716
  %4 = load i64, ptr %tv_nsec, align 8, !dbg !4716
  %conv = trunc i64 %4 to i32, !dbg !4717
  %5 = load ptr, ptr %kt.addr, align 8, !dbg !4718
  %nsec = getelementptr inbounds %struct.pps_ktime, ptr %5, i32 0, i32 1, !dbg !4719
  store i32 %conv, ptr %nsec, align 8, !dbg !4720
  ret void, !dbg !4721
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4722 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_add_offset(ptr noundef %ts, ptr noundef %offset) #0 align 16 !dbg !4726 {
entry:
  %ts.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4730, metadata !DIExpression()), !dbg !4732
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4731, metadata !DIExpression()), !dbg !4733
  %0 = load ptr, ptr %offset.addr, align 8, !dbg !4734
  %nsec = getelementptr inbounds %struct.pps_ktime, ptr %0, i32 0, i32 1, !dbg !4735
  %1 = load i32, ptr %nsec, align 8, !dbg !4735
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !4736
  %nsec1 = getelementptr inbounds %struct.pps_ktime, ptr %2, i32 0, i32 1, !dbg !4737
  %3 = load i32, ptr %nsec1, align 8, !dbg !4738
  %add = add i32 %3, %1, !dbg !4738
  store i32 %add, ptr %nsec1, align 8, !dbg !4738
  br label %while.cond, !dbg !4739

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %ts.addr, align 8, !dbg !4740
  %nsec2 = getelementptr inbounds %struct.pps_ktime, ptr %4, i32 0, i32 1, !dbg !4741
  %5 = load i32, ptr %nsec2, align 8, !dbg !4741
  %conv = sext i32 %5 to i64, !dbg !4740
  %cmp = icmp sge i64 %conv, 1000000000, !dbg !4742
  br i1 %cmp, label %while.body, label %while.end, !dbg !4739

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %ts.addr, align 8, !dbg !4743
  %nsec4 = getelementptr inbounds %struct.pps_ktime, ptr %6, i32 0, i32 1, !dbg !4745
  %7 = load i32, ptr %nsec4, align 8, !dbg !4746
  %conv5 = sext i32 %7 to i64, !dbg !4746
  %sub = sub i64 %conv5, 1000000000, !dbg !4746
  %conv6 = trunc i64 %sub to i32, !dbg !4746
  store i32 %conv6, ptr %nsec4, align 8, !dbg !4746
  %8 = load ptr, ptr %ts.addr, align 8, !dbg !4747
  %sec = getelementptr inbounds %struct.pps_ktime, ptr %8, i32 0, i32 0, !dbg !4748
  %9 = load i64, ptr %sec, align 8, !dbg !4749
  %inc = add i64 %9, 1, !dbg !4749
  store i64 %inc, ptr %sec, align 8, !dbg !4749
  br label %while.cond, !dbg !4739, !llvm.loop !4750

while.end:                                        ; preds = %while.cond
  br label %while.cond7, !dbg !4754

while.cond7:                                      ; preds = %while.body11, %while.end
  %10 = load ptr, ptr %ts.addr, align 8, !dbg !4755
  %nsec8 = getelementptr inbounds %struct.pps_ktime, ptr %10, i32 0, i32 1, !dbg !4756
  %11 = load i32, ptr %nsec8, align 8, !dbg !4756
  %cmp9 = icmp slt i32 %11, 0, !dbg !4757
  br i1 %cmp9, label %while.body11, label %while.end17, !dbg !4754

while.body11:                                     ; preds = %while.cond7
  %12 = load ptr, ptr %ts.addr, align 8, !dbg !4758
  %nsec12 = getelementptr inbounds %struct.pps_ktime, ptr %12, i32 0, i32 1, !dbg !4760
  %13 = load i32, ptr %nsec12, align 8, !dbg !4761
  %conv13 = sext i32 %13 to i64, !dbg !4761
  %add14 = add i64 %conv13, 1000000000, !dbg !4761
  %conv15 = trunc i64 %add14 to i32, !dbg !4761
  store i32 %conv15, ptr %nsec12, align 8, !dbg !4761
  %14 = load ptr, ptr %ts.addr, align 8, !dbg !4762
  %sec16 = getelementptr inbounds %struct.pps_ktime, ptr %14, i32 0, i32 0, !dbg !4763
  %15 = load i64, ptr %sec16, align 8, !dbg !4764
  %dec = add i64 %15, -1, !dbg !4764
  store i64 %dec, ptr %sec16, align 8, !dbg !4764
  br label %while.cond7, !dbg !4754, !llvm.loop !4765

while.end17:                                      ; preds = %while.cond7
  %16 = load ptr, ptr %offset.addr, align 8, !dbg !4767
  %sec18 = getelementptr inbounds %struct.pps_ktime, ptr %16, i32 0, i32 0, !dbg !4768
  %17 = load i64, ptr %sec18, align 8, !dbg !4768
  %18 = load ptr, ptr %ts.addr, align 8, !dbg !4769
  %sec19 = getelementptr inbounds %struct.pps_ktime, ptr %18, i32 0, i32 0, !dbg !4770
  %19 = load i64, ptr %sec19, align 8, !dbg !4771
  %add20 = add i64 %19, %17, !dbg !4771
  store i64 %add20, ptr %sec19, align 8, !dbg !4771
  ret void, !dbg !4772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_kc_event(ptr noundef %pps, ptr noundef %ts, i32 noundef %event) #8 align 16 !dbg !4773 {
entry:
  %pps.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4777, metadata !DIExpression()), !dbg !4780
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4778, metadata !DIExpression()), !dbg !4781
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4779, metadata !DIExpression()), !dbg !4782
  ret void, !dbg !4783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4784 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4787 dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #7 align 16 !dbg !4791 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4795, metadata !DIExpression()), !dbg !4801
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4796, metadata !DIExpression()), !dbg !4802
  br label %do.body, !dbg !4803

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4797, metadata !DIExpression()), !dbg !4804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4800, metadata !DIExpression()), !dbg !4804
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4804
  %conv = zext i1 %cmp to i32, !dbg !4804
  store i32 1, ptr %tmp, align 4, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4805
  %0 = load i32, ptr %tmp, align 4, !dbg !4804
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4805
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4805
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4805
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #19, !dbg !4805
  br label %do.end, !dbg !4805

do.end:                                           ; preds = %do.body
  ret void, !dbg !4806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4807 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4809, metadata !DIExpression()), !dbg !4814
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4810, metadata !DIExpression()), !dbg !4815
  %0 = load i64, ptr %size.addr, align 8, !dbg !4816
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4817
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4818

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4819
  %tobool = icmp ne i64 %2, 0, !dbg !4819
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4820

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4811, metadata !DIExpression()), !dbg !4822
  %3 = load i64, ptr %size.addr, align 8, !dbg !4823
  %cmp = icmp ugt i64 %3, 8192, !dbg !4825
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4826

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4827
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4828
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !4829
  store ptr %call, ptr %retval, align 8, !dbg !4830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4830

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4831
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !4831
  store i32 %call2, ptr %index, align 4, !dbg !4832
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4833
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4834
  %9 = ptrtoint ptr %8 to i64, !dbg !4834
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !4835
  %idxprom = zext i32 %call3 to i64, !dbg !4836
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4836
  %10 = load i32, ptr %index, align 4, !dbg !4837
  %idxprom4 = zext i32 %10 to i64, !dbg !4836
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4836
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4836
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4838
  %13 = load i64, ptr %size.addr, align 8, !dbg !4839
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4840
  store ptr %call6, ptr %retval, align 8, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !4842
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4843
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4844
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !4845
  store ptr %call8, ptr %retval, align 8, !dbg !4846
  br label %return, !dbg !4846

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4847
  ret ptr %16, !dbg !4847
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4848 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !4849 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4853, metadata !DIExpression()), !dbg !4855
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4854, metadata !DIExpression()), !dbg !4856
  %0 = load i64, ptr %size.addr, align 8, !dbg !4857
  %tobool = icmp ne i64 %0, 0, !dbg !4857
  br i1 %tobool, label %if.end, label %if.then, !dbg !4859

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4860
  br label %return, !dbg !4860

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4861
  %cmp = icmp ule i64 %1, 8, !dbg !4863
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4864

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4865
  br label %return, !dbg !4865

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4866
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4868
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4869

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4870
  %cmp4 = icmp ule i64 %3, 96, !dbg !4871
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4872

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4874
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4876
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4877

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4878
  %cmp9 = icmp ule i64 %5, 192, !dbg !4879
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4880

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4882
  %cmp12 = icmp ule i64 %6, 8, !dbg !4884
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4885

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4886
  br label %return, !dbg !4886

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4887
  %cmp15 = icmp ule i64 %7, 16, !dbg !4889
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4890

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4891
  br label %return, !dbg !4891

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4892
  %cmp18 = icmp ule i64 %8, 32, !dbg !4894
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4895

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4897
  %cmp21 = icmp ule i64 %9, 64, !dbg !4899
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4900

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4901
  br label %return, !dbg !4901

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4902
  %cmp24 = icmp ule i64 %10, 128, !dbg !4904
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4905

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4906
  br label %return, !dbg !4906

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4907
  %cmp27 = icmp ule i64 %11, 256, !dbg !4909
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4910

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4912
  %cmp30 = icmp ule i64 %12, 512, !dbg !4914
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4915

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4917
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4919
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4920

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4921
  br label %return, !dbg !4921

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4922
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4924
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4925

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4927
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4929
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4930

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4932
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4934
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4935

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4937
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4939
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4940

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4941
  br label %return, !dbg !4941

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4942
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4944
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4945

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4947
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4949
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4950

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4951
  br label %return, !dbg !4951

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4952
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4954
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4955

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4956
  br label %return, !dbg !4956

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4957
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4959
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4960

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4961
  br label %return, !dbg !4961

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4962
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4964
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4965

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4967
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4969
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4970

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4972
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4974
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4975

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4976
  br label %return, !dbg !4976

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4977, !range !4979, !noundef !432
  %tobool69 = trunc i8 %25 to i1, !dbg !4977
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4980

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4981

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #21, !dbg !4982, !srcloc !4985
  unreachable, !dbg !4982

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4986

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4987

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4988

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4990

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4988

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #16, !dbg !4992, !srcloc !4994
  br label %do.end75, !dbg !4992

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4988

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4996
  ret i32 %26, !dbg !4996
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4997 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5007, metadata !DIExpression()), !dbg !5009
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5008, metadata !DIExpression()), !dbg !5010
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5011
  %and = and i32 %0, 17, !dbg !5011
  %cmp = icmp eq i32 %and, 0, !dbg !5011
  %lnot = xor i1 %cmp, true, !dbg !5011
  %lnot1 = xor i1 %lnot, true, !dbg !5011
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5011
  %conv = sext i32 %lnot.ext to i64, !dbg !5011
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5011
  %tobool = icmp ne i64 %expval, 0, !dbg !5011
  br i1 %tobool, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5014
  br label %return, !dbg !5014

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5015
  %and2 = and i32 %1, 1, !dbg !5017
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5017
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5018

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5020
  br label %return, !dbg !5020

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5022
  ret i32 %2, !dbg !5022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5023 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5024 dso_local void @__compiletime_assert_255() #15

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5029 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!4302}
!llvm.module.flags = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!llvm.ident = !{!4375}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pps/kapi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9eeef67463fe5ce699431ff582be1b44")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 48)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 41)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__key", scope: !14, file: !2, line: 104, type: !430, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "pps_register_source", scope: !2, file: !2, line: 65, type: !15, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4360)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !4301, !30}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !19, line: 43, size: 7744, elements: !20)
!19 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84efb6f82a468768bae0d7aa032cd392")
!20 = !{!21, !4267, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4300}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !18, file: !19, line: 44, baseType: !22, size: 768)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !19, line: 23, size: 768, elements: !23)
!23 = !{!24, !28, !29, !31, !36, !3864}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !19, line: 24, baseType: !25, size: 256)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !22, file: !19, line: 25, baseType: !25, size: 256, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !22, file: !19, line: 26, baseType: !30, size: 32, offset: 512)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !22, file: !19, line: 28, baseType: !32, size: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !17, !30, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !22, file: !19, line: 31, baseType: !37, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !39, line: 402, size: 9216, align: 512, elements: !40)
!39 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!40 = !{!41, !49, !56, !60, !3540, !3566, !3567, !3568, !3569, !3573, !3576, !3577, !3578, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3645, !3649, !3667, !3684, !3685, !3686, !3687, !3696, !3719, !3720, !3723, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3737, !3738, !3824, !3832, !3833, !3834, !3836, !3840, !3841, !3845, !3846, !3847, !3848, !3850, !3851, !3852, !3859, !3860, !3861, !3863}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !38, file: !39, line: 403, baseType: !42, size: 32)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !39, line: 312, baseType: !43, size: 32, elements: !44)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!46 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!47 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!48 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !38, file: !39, line: 406, baseType: !50, size: 128, offset: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 190, size: 128, elements: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !51, line: 191, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !50, file: !51, line: 191, baseType: !54, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !39, line: 409, baseType: !57, size: 448, offset: 192)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 56)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !38, file: !39, line: 417, baseType: !61, size: 768, offset: 640)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !39, line: 45, size: 768, elements: !62)
!62 = !{!63, !3534, !3535, !3536, !3539}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !61, file: !39, line: 46, baseType: !64, size: 512)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !65, line: 64, size: 512, elements: !66)
!65 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!66 = !{!67, !70, !71, !73, !162, !3421, !3524, !3529, !3530, !3531, !3532, !3533}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 65, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !64, file: !65, line: 66, baseType: !50, size: 128, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !65, line: 67, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !64, file: !65, line: 68, baseType: !74, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !65, line: 168, size: 768, elements: !76)
!76 = !{!77, !78, !121, !122}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !75, file: !65, line: 169, baseType: !50, size: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !75, file: !65, line: 170, baseType: !79, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !103, !113}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !51, line: 174, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 172, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !100, file: !51, line: 173, baseType: !30, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !104, size: 16)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !105)
!105 = !{!106, !112}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !104, file: !92, line: 25, baseType: !107, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !110, line: 21, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!111 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !104, file: !92, line: 26, baseType: !107, size: 8, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !114, file: !92, line: 29, baseType: !117, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !110, line: 24, baseType: !119)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !114, file: !92, line: 30, baseType: !117, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !75, file: !65, line: 171, baseType: !64, size: 512, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !75, file: !65, line: 172, baseType: !123, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !65, line: 133, size: 192, elements: !126)
!126 = !{!127, !134, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !125, file: !65, line: 134, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!30, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !65, line: 135, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!68, !132}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !125, file: !65, line: 136, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!30, !132, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !65, line: 125, size: 20736, elements: !146)
!146 = !{!147, !152, !156, !157, !161}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !145, file: !65, line: 126, baseType: !148, size: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 192, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!150 = !{!151}
!151 = !DISubrange(count: 3)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !145, file: !65, line: 127, baseType: !153, size: 4096, offset: 192)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 4096, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !145, file: !65, line: 128, baseType: !30, size: 32, offset: 4288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !145, file: !65, line: 129, baseType: !158, size: 16384, offset: 4320)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 2048)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !145, file: !65, line: 130, baseType: !30, size: 32, offset: 20704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !64, file: !65, line: 69, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !65, line: 116, size: 384, elements: !166)
!166 = !{!167, !171, !200, !3377, !3411, !3415}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !165, file: !65, line: 117, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !72}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !165, file: !65, line: 118, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !175, line: 254, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!176 = !{!177, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !174, file: !175, line: 255, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !72, !186, !149}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !51, line: 66, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !183, line: 73, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !183, line: 15, baseType: !185)
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !175, line: 30, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !175, line: 31, baseType: !68, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !187, file: !175, line: 32, baseType: !191, size: 16, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !51, line: 24, baseType: !119)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !174, file: !175, line: 256, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!181, !72, !186, !68, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 61, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !183, line: 72, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !183, line: 16, baseType: !199)
!199 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !165, file: !65, line: 119, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !175, line: 84, size: 320, elements: !205)
!205 = !{!206, !207, !211, !3373, !3375}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !175, line: 85, baseType: !68, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !204, file: !175, line: 86, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!191, !72, !186, !30}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !204, file: !175, line: 88, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!191, !72, !215, !30}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !175, line: 175, size: 512, elements: !217)
!217 = !{!218, !219, !220, !221, !3364, !3368, !3369}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !216, file: !175, line: 176, baseType: !187, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !175, line: 177, baseType: !196, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !216, file: !175, line: 178, baseType: !35, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !216, file: !175, line: 179, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !227, line: 472, size: 1536, align: 64, elements: !228)
!227 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!228 = !{!229, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3358, !3359, !3360, !3361, !3362, !3363}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !226, file: !227, line: 473, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !227, line: 641, size: 4800, elements: !232)
!232 = !{!233, !234, !235, !243, !244, !251, !252, !255, !256, !3121, !3122, !3123, !3124, !3125, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3165, !3168, !3169, !3170, !3187, !3188, !3189, !3190}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !231, file: !227, line: 642, baseType: !191, size: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !231, file: !227, line: 643, baseType: !119, size: 16, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !231, file: !227, line: 644, baseType: !236, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !237, line: 23, baseType: !238)
!237 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 21, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !237, line: 22, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !51, line: 37, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !183, line: 49, baseType: !43)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !231, file: !227, line: 645, baseType: !50, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !231, file: !227, line: 646, baseType: !245, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !237, line: 28, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 26, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !246, file: !237, line: 27, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !51, line: 38, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !183, line: 50, baseType: !43)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !231, file: !227, line: 647, baseType: !43, size: 32, offset: 224)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !231, file: !227, line: 650, baseType: !253, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !227, line: 607, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !231, file: !227, line: 651, baseType: !253, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !231, file: !227, line: 654, baseType: !257, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !227, line: 1966, size: 2048, align: 512, elements: !260)
!260 = !{!261, !2946, !2959, !2963, !2967, !2971, !2975, !2979, !2983, !2987, !2991, !2992, !2996, !3000, !3037, !3066, !3070, !3076, !3080, !3084, !3088, !3092, !3096, !3102, !3106}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !259, file: !227, line: 1967, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !230, !265, !43}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !267, line: 82, size: 1536, elements: !268)
!267 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!268 = !{!269, !270, !280, !288, !289, !309, !310, !312, !325, !2929, !2930, !2931, !2932, !2938, !2939, !2940}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !266, file: !267, line: 84, baseType: !43, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !266, file: !267, line: 85, baseType: !271, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !272, line: 275, baseType: !273)
!272 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !272, line: 275, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !273, file: !272, line: 275, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !272, line: 69, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !272, line: 64, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !277, file: !272, line: 65, baseType: !43, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !266, file: !267, line: 86, baseType: !281, size: 128, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !282, line: 38, size: 128, elements: !283)
!282 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!283 = !{!284, !286}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !282, line: 39, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !281, file: !282, line: 39, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !266, file: !267, line: 87, baseType: !265, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !266, file: !267, line: 88, baseType: !290, size: 128, offset: 256)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !267, line: 49, size: 128, elements: !291)
!291 = !{!292, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !267, line: 50, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !267, line: 50, size: 64, elements: !294)
!294 = !{!295, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !267, line: 51, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !267, line: 51, size: 64, elements: !297)
!297 = !{!298, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !296, file: !267, line: 52, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 27, baseType: !43)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !296, file: !267, line: 52, baseType: !299, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !293, file: !267, line: 54, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !110, line: 31, baseType: !305)
!305 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !267, line: 56, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !266, file: !267, line: 89, baseType: !230, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !266, file: !267, line: 91, baseType: !311, size: 256, offset: 448)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !26)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !266, file: !267, line: 94, baseType: !313, size: 64, offset: 704)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !314, line: 25, size: 64, elements: !315)
!314 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !314, line: 26, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !314, line: 26, size: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !317, file: !314, line: 28, baseType: !304, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !314, line: 30, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !314, line: 30, size: 64, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !321, file: !314, line: 31, baseType: !79, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !321, file: !314, line: 32, baseType: !30, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !266, file: !267, line: 95, baseType: !326, size: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !267, line: 128, size: 1024, align: 512, elements: !329)
!329 = !{!330, !334, !335, !342, !348, !352, !356, !360, !361, !365, !369, !2919, !2923}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !328, file: !267, line: 129, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!30, !265, !43}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !328, file: !267, line: 130, baseType: !331, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !328, file: !267, line: 131, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!30, !339, !341}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !328, file: !267, line: 132, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!30, !339, !43, !68, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !328, file: !267, line: 134, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!30, !339}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !328, file: !267, line: 135, baseType: !353, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!30, !265}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !328, file: !267, line: 136, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !265}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !328, file: !267, line: 137, baseType: !357, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !328, file: !267, line: 138, baseType: !362, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !265, !230}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !328, file: !267, line: 139, baseType: !366, size: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!149, !265, !149, !30}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !328, file: !267, line: 140, baseType: !370, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !2918}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !375, line: 70, size: 256, elements: !376)
!375 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!376 = !{!377, !378, !2914, !2915}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !374, file: !375, line: 71, baseType: !265, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !374, file: !375, line: 72, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !227, line: 1190, size: 10752, elements: !381)
!381 = !{!382, !383, !386, !387, !388, !392, !441, !613, !653, !743, !747, !748, !749, !750, !751, !760, !761, !762, !763, !768, !772, !773, !776, !779, !782, !785, !786, !787, !828, !2846, !2847, !2848, !2849, !2850, !2851, !2854, !2855, !2862, !2863, !2864, !2865, !2866, !2881, !2882, !2883, !2884, !2885, !2888, !2889, !2890, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !380, file: !227, line: 1191, baseType: !50, size: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !380, file: !227, line: 1192, baseType: !384, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !51, line: 21, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !51, line: 18, baseType: !299)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !380, file: !227, line: 1193, baseType: !111, size: 8, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !380, file: !227, line: 1194, baseType: !199, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !380, file: !227, line: 1195, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !51, line: 52, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !183, line: 88, baseType: !391)
!391 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !380, file: !227, line: 1196, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !227, line: 2366, size: 576, elements: !395)
!395 = !{!396, !397, !398, !405, !409, !413, !417, !418, !419, !429, !433, !434, !435, !437, !438, !439, !440}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !227, line: 2367, baseType: !68, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !394, file: !227, line: 2368, baseType: !30, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !394, file: !227, line: 2376, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!30, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !404, line: 32, flags: DIFlagFwdDecl)
!404 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !394, file: !227, line: 2377, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !227, line: 75, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !394, file: !227, line: 2378, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!265, !393, !30, !68, !35}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !394, file: !227, line: 2380, baseType: !414, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !379}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !394, file: !227, line: 2381, baseType: !37, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !227, line: 2382, baseType: !393, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !394, file: !227, line: 2383, baseType: !420, size: 64, offset: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !51, line: 194, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !420, file: !51, line: 195, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !51, line: 198, size: 128, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !51, line: 199, baseType: !423, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !51, line: 199, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !394, file: !227, line: 2385, baseType: !430, offset: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !431, line: 206, elements: !432)
!431 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!432 = !{}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !394, file: !227, line: 2386, baseType: !430, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !394, file: !227, line: 2387, baseType: !430, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !394, file: !227, line: 2388, baseType: !436, offset: 576)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, elements: !150)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !394, file: !227, line: 2390, baseType: !430, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !394, file: !227, line: 2391, baseType: !430, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !394, file: !227, line: 2392, baseType: !430, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !394, file: !227, line: 2393, baseType: !430, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !380, file: !227, line: 1197, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !227, line: 2057, size: 1664, elements: !445)
!445 = !{!446, !450, !454, !455, !459, !465, !469, !470, !471, !475, !483, !487, !488, !489, !495, !500, !501, !508, !509, !510, !511, !515, !519, !594, !611, !612}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !444, file: !227, line: 2058, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!230, !379}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !444, file: !227, line: 2059, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !230}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !444, file: !227, line: 2060, baseType: !451, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !444, file: !227, line: 2062, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !230, !30}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !444, file: !227, line: 2063, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!30, !230, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !227, line: 309, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !444, file: !227, line: 2064, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!30, !230}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !444, file: !227, line: 2065, baseType: !451, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !444, file: !227, line: 2066, baseType: !414, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !444, file: !227, line: 2067, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!30, !379, !30}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !444, file: !227, line: 2068, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!30, !379, !479}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !227, line: 2052, baseType: !43, size: 32, elements: !480)
!480 = !{!481, !482}
!481 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!482 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !444, file: !227, line: 2069, baseType: !484, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!30, !379}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !444, file: !227, line: 2070, baseType: !476, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !444, file: !227, line: 2071, baseType: !484, size: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !444, file: !227, line: 2072, baseType: !490, size: 64, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!30, !265, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !227, line: 62, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !444, file: !227, line: 2073, baseType: !496, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!30, !379, !499, !149}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !444, file: !227, line: 2074, baseType: !414, size: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !444, file: !227, line: 2076, baseType: !502, size: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!30, !505, !265}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !507, line: 66, flags: DIFlagFwdDecl)
!507 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !444, file: !227, line: 2077, baseType: !502, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !444, file: !227, line: 2078, baseType: !502, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !444, file: !227, line: 2079, baseType: !502, size: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !444, file: !227, line: 2081, baseType: !512, size: 64, offset: 1280)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!181, !379, !30, !149, !196, !389}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !444, file: !227, line: 2082, baseType: !516, size: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!181, !379, !30, !68, !196, !389}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !444, file: !227, line: 2083, baseType: !520, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !230}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !526, line: 296, size: 1664, elements: !527)
!526 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!527 = !{!528, !529, !530, !531, !532, !553, !554, !555, !556, !577, !578, !579}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !525, file: !526, line: 297, baseType: !424, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !525, file: !526, line: 298, baseType: !50, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !525, file: !526, line: 299, baseType: !50, size: 128, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !525, file: !526, line: 300, baseType: !50, size: 128, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !525, file: !526, line: 301, baseType: !533, size: 256, offset: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !534, line: 66, size: 256, elements: !535)
!534 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!535 = !{!536, !545, !547, !552}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !534, line: 67, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !538, line: 13, baseType: !539)
!538 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 181, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 179, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !540, file: !51, line: 180, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !108, line: 22, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !110, line: 30, baseType: !391)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !533, file: !534, line: 68, baseType: !546, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !533, file: !534, line: 70, baseType: !548, size: 32, offset: 96)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !549, line: 15, size: 32, elements: !550)
!549 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !548, file: !549, line: 20, baseType: !99, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !533, file: !534, line: 72, baseType: !50, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !525, file: !526, line: 302, baseType: !79, size: 32, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !525, file: !526, line: 303, baseType: !99, size: 32, offset: 800)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !525, file: !526, line: 304, baseType: !379, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !525, file: !526, line: 305, baseType: !557, size: 64, offset: 896)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !526, line: 68, size: 64, elements: !558)
!558 = !{!559, !571}
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !526, line: 69, baseType: !560, size: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !526, line: 69, size: 32, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !560, file: !526, line: 70, baseType: !236, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !560, file: !526, line: 71, baseType: !245, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !560, file: !526, line: 72, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !566, line: 24, baseType: !567)
!566 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 22, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !567, file: !566, line: 23, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !566, line: 20, baseType: !242)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !526, line: 74, baseType: !572, size: 32, offset: 32)
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !526, line: 54, baseType: !43, size: 32, elements: !573)
!573 = !{!574, !575, !576}
!574 = !DIEnumerator(name: "USRQUOTA", value: 0)
!575 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!576 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !525, file: !526, line: 306, baseType: !389, size: 64, offset: 960)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !525, file: !526, line: 307, baseType: !199, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !525, file: !526, line: 308, baseType: !580, size: 576, offset: 1088)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !526, line: 205, size: 576, elements: !581)
!581 = !{!582, !584, !585, !586, !587, !588, !589, !590, !593}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !580, file: !526, line: 206, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !526, line: 66, baseType: !391)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !580, file: !526, line: 207, baseType: !583, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !580, file: !526, line: 208, baseType: !583, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !580, file: !526, line: 209, baseType: !583, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !580, file: !526, line: 210, baseType: !583, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !580, file: !526, line: 211, baseType: !583, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !580, file: !526, line: 212, baseType: !583, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !580, file: !526, line: 213, baseType: !591, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !592, line: 8, baseType: !544)
!592 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !580, file: !526, line: 214, baseType: !591, size: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !444, file: !227, line: 2085, baseType: !595, size: 64, offset: 1472)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!185, !379, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !600, line: 15, size: 256, elements: !601)
!600 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!601 = !{!602, !604, !605, !606, !607}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !599, file: !600, line: 16, baseType: !603, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 154, baseType: !43)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !599, file: !600, line: 19, baseType: !30, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !599, file: !600, line: 26, baseType: !199, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !599, file: !600, line: 33, baseType: !199, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !599, file: !600, line: 36, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !610, line: 33, flags: DIFlagFwdDecl)
!610 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !444, file: !227, line: 2087, baseType: !595, size: 64, offset: 1536)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !444, file: !227, line: 2089, baseType: !414, size: 64, offset: 1600)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !380, file: !227, line: 1198, baseType: !614, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !526, line: 324, size: 704, elements: !617)
!617 = !{!618, !622, !626, !630, !631, !632, !633, !634, !639, !644, !648}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !616, file: !526, line: 325, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!30, !524}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !616, file: !526, line: 326, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!524, !379, !30}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !616, file: !526, line: 327, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !524}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !616, file: !526, line: 328, baseType: !619, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !616, file: !526, line: 329, baseType: !619, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !616, file: !526, line: 330, baseType: !619, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !616, file: !526, line: 331, baseType: !472, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !616, file: !526, line: 334, baseType: !635, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !230}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !616, file: !526, line: 335, baseType: !640, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!30, !230, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !616, file: !526, line: 337, baseType: !645, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!30, !230, !638}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !616, file: !526, line: 339, baseType: !649, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!30, !379, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !380, file: !227, line: 1199, baseType: !654, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !526, line: 430, size: 704, elements: !657)
!657 = !{!658, !669, !670, !674, !675, !676, !691, !714, !718, !719, !742}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !656, file: !526, line: 431, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!30, !379, !30, !30, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !665, line: 8, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !664, file: !665, line: 9, baseType: !373, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !664, file: !665, line: 10, baseType: !265, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !656, file: !526, line: 432, baseType: !472, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !656, file: !526, line: 433, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!30, !379, !43}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !656, file: !526, line: 434, baseType: !671, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !656, file: !526, line: 435, baseType: !472, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !656, file: !526, line: 436, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!30, !379, !30, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !526, line: 417, size: 256, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !681, file: !526, line: 418, baseType: !30, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !681, file: !526, line: 419, baseType: !43, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !681, file: !526, line: 420, baseType: !43, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !681, file: !526, line: 422, baseType: !43, size: 32, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !681, file: !526, line: 423, baseType: !43, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !681, file: !526, line: 424, baseType: !43, size: 32, offset: 160)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !681, file: !526, line: 425, baseType: !43, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !681, file: !526, line: 426, baseType: !43, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !656, file: !526, line: 437, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!30, !379, !557, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !526, line: 345, size: 960, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !696, file: !526, line: 346, baseType: !30, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !696, file: !526, line: 347, baseType: !303, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !696, file: !526, line: 348, baseType: !303, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !696, file: !526, line: 349, baseType: !303, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !696, file: !526, line: 350, baseType: !303, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !696, file: !526, line: 351, baseType: !303, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !696, file: !526, line: 352, baseType: !303, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !696, file: !526, line: 353, baseType: !543, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !696, file: !526, line: 355, baseType: !543, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !696, file: !526, line: 356, baseType: !30, size: 32, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !696, file: !526, line: 357, baseType: !30, size: 32, offset: 608)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !696, file: !526, line: 358, baseType: !303, size: 64, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !696, file: !526, line: 359, baseType: !303, size: 64, offset: 704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !696, file: !526, line: 360, baseType: !303, size: 64, offset: 768)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !696, file: !526, line: 361, baseType: !543, size: 64, offset: 832)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !696, file: !526, line: 362, baseType: !30, size: 32, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !656, file: !526, line: 438, baseType: !715, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!30, !379, !652, !695}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !656, file: !526, line: 440, baseType: !692, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !656, file: !526, line: 441, baseType: !720, size: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!30, !379, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !526, line: 411, size: 1408, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !724, file: !526, line: 412, baseType: !43, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !724, file: !526, line: 413, baseType: !728, size: 1344, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 1344, elements: !150)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !526, line: 397, size: 448, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !526, line: 398, baseType: !43, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !729, file: !526, line: 399, baseType: !43, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !729, file: !526, line: 401, baseType: !43, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !729, file: !526, line: 402, baseType: !43, size: 32, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !729, file: !526, line: 403, baseType: !43, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !729, file: !526, line: 404, baseType: !43, size: 32, offset: 160)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !729, file: !526, line: 405, baseType: !43, size: 32, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !729, file: !526, line: 406, baseType: !305, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !729, file: !526, line: 407, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !51, line: 132, baseType: !303)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !729, file: !526, line: 408, baseType: !740, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !656, file: !526, line: 442, baseType: !671, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !380, file: !227, line: 1200, baseType: !744, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !227, line: 54, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !380, file: !227, line: 1201, baseType: !199, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !380, file: !227, line: 1202, baseType: !199, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !380, file: !227, line: 1203, baseType: !199, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !380, file: !227, line: 1204, baseType: !265, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !380, file: !227, line: 1205, baseType: !752, size: 320, offset: 896)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !753, line: 48, size: 320, elements: !754)
!753 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!754 = !{!755, !756, !757, !758, !759}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !753, line: 49, baseType: !537, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !752, file: !753, line: 55, baseType: !537, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !752, file: !753, line: 57, baseType: !548, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !752, file: !753, line: 59, baseType: !546, size: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !752, file: !753, line: 60, baseType: !50, size: 128, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !380, file: !227, line: 1206, baseType: !30, size: 32, offset: 1216)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !380, file: !227, line: 1207, baseType: !99, size: 32, offset: 1248)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !380, file: !227, line: 1209, baseType: !35, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !380, file: !227, line: 1211, baseType: !764, size: 64, offset: 1344)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !227, line: 1211, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !380, file: !227, line: 1223, baseType: !769, size: 64, offset: 1408)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !282, line: 34, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !769, file: !282, line: 35, baseType: !285, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !380, file: !227, line: 1224, baseType: !50, size: 128, offset: 1472)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !380, file: !227, line: 1225, baseType: !774, size: 64, offset: 1600)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !227, line: 1225, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !380, file: !227, line: 1226, baseType: !777, size: 64, offset: 1664)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !227, line: 1226, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !380, file: !227, line: 1227, baseType: !780, size: 64, offset: 1728)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 50, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !380, file: !227, line: 1228, baseType: !783, size: 64, offset: 1792)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !227, line: 1228, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !380, file: !227, line: 1229, baseType: !424, size: 128, offset: 1856)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !380, file: !227, line: 1230, baseType: !43, size: 32, offset: 1984)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !380, file: !227, line: 1231, baseType: !788, size: 2496, offset: 2048)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !526, line: 521, size: 2496, elements: !789)
!789 = !{!790, !791, !792, !794, !826}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !526, line: 522, baseType: !43, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !788, file: !526, line: 523, baseType: !752, size: 320, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !788, file: !526, line: 524, baseType: !793, size: 192, offset: 384)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !150)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !788, file: !526, line: 525, baseType: !795, size: 1728, offset: 576)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 1728, elements: !150)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !526, line: 222, size: 576, elements: !797)
!797 = !{!798, !818, !819, !820, !821, !822, !823, !824, !825}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !796, file: !526, line: 223, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !526, line: 445, size: 256, elements: !801)
!801 = !{!802, !803, !816, !817}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !800, file: !526, line: 446, baseType: !30, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !800, file: !526, line: 447, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !526, line: 312, size: 512, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !806, file: !526, line: 313, baseType: !472, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !806, file: !526, line: 314, baseType: !472, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !806, file: !526, line: 315, baseType: !472, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !806, file: !526, line: 316, baseType: !472, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !806, file: !526, line: 317, baseType: !619, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !806, file: !526, line: 318, baseType: !619, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !806, file: !526, line: 319, baseType: !619, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !806, file: !526, line: 320, baseType: !649, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !800, file: !526, line: 448, baseType: !37, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !800, file: !526, line: 449, baseType: !799, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !796, file: !526, line: 224, baseType: !30, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !796, file: !526, line: 226, baseType: !50, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !796, file: !526, line: 227, baseType: !199, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !796, file: !526, line: 228, baseType: !43, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !796, file: !526, line: 229, baseType: !43, size: 32, offset: 352)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !796, file: !526, line: 230, baseType: !583, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !796, file: !526, line: 231, baseType: !583, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !796, file: !526, line: 232, baseType: !35, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !788, file: !526, line: 526, baseType: !827, size: 192, offset: 2304)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 192, elements: !150)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !380, file: !227, line: 1233, baseType: !829, size: 2368, offset: 4544)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !227, line: 1184, size: 2368, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !829, file: !227, line: 1185, baseType: !119, size: 16)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !829, file: !227, line: 1186, baseType: !119, size: 16, offset: 16)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !829, file: !227, line: 1187, baseType: !834, size: 2304, offset: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 2304, elements: !150)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !836, line: 12, size: 768, elements: !837)
!836 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!837 = !{!838, !860, !862, !2844, !2845}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !835, file: !836, line: 13, baseType: !839, size: 384)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !840, line: 17, size: 384, elements: !841)
!840 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!841 = !{!842, !843, !844, !851}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !839, file: !840, line: 18, baseType: !30, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !839, file: !840, line: 19, baseType: !30, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !839, file: !840, line: 20, baseType: !845, size: 192, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !846, line: 41, baseType: !847)
!846 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !846, line: 37, size: 192, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !847, file: !846, line: 38, baseType: !79, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !847, file: !846, line: 39, baseType: !50, size: 128, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !839, file: !840, line: 22, baseType: !852, size: 128, align: 64, offset: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !51, line: 232, size: 128, align: 64, elements: !853)
!853 = !{!854, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !51, line: 233, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !852, file: !51, line: 234, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !855}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !835, file: !836, line: 14, baseType: !861, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !835, file: !836, line: 15, baseType: !863, size: 64, offset: 448)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !864, line: 16, size: 64, elements: !865)
!864 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !863, file: !864, line: 17, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !507, line: 746, size: 58368, elements: !869)
!869 = !{!870, !878, !879, !880, !886, !887, !888, !889, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !967, !978, !1078, !1082, !1085, !1116, !1117, !1118, !1119, !1130, !1132, !1133, !1134, !1135, !1136, !1137, !1148, !1149, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1166, !1167, !1174, !1175, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1938, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1953, !1954, !1955, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1997, !2003, !2004, !2005, !2006, !2007, !2011, !2014, !2021, !2026, !2029, !2032, !2035, !2039, !2179, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2219, !2220, !2221, !2230, !2238, !2239, !2240, !2241, !2242, !2247, !2248, !2249, !2252, !2253, !2256, !2259, !2262, !2270, !2273, !2274, !2360, !2361, !2362, !2363, !2364, !2370, !2371, !2372, !2373, !2376, !2377, !2380, !2383, !2384, !2387, !2388, !2389, !2392, !2393, !2394, !2395, !2396, !2397, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2429, !2430, !2496, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2508, !2586, !2588, !2589, !2590, !2591, !2592, !2604, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2621, !2622, !2623}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !868, file: !507, line: 752, baseType: !871, size: 192)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !872, line: 56, size: 192, elements: !873)
!872 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !871, file: !872, line: 57, baseType: !199, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !871, file: !872, line: 58, baseType: !199, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !871, file: !872, line: 59, baseType: !299, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !871, file: !872, line: 61, baseType: !299, size: 32, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !868, file: !507, line: 754, baseType: !43, size: 32, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !868, file: !507, line: 767, baseType: !35, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !868, file: !507, line: 768, baseType: !881, size: 32, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !882, line: 113, baseType: !883)
!882 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !882, line: 111, size: 32, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !883, file: !882, line: 112, baseType: !99, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !507, line: 770, baseType: !43, size: 32, offset: 352)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !868, file: !507, line: 771, baseType: !43, size: 32, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !868, file: !507, line: 774, baseType: !30, size: 32, offset: 416)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !868, file: !507, line: 775, baseType: !890, size: 128, offset: 448)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !891, line: 58, size: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!892 = !{!893, !899, !904, !905}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !890, file: !891, line: 59, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !895, line: 60, size: 64, elements: !896)
!895 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !894, file: !895, line: 61, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !891, line: 60, baseType: !900, size: 32, offset: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !891, line: 60, size: 32, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !900, file: !891, line: 61, baseType: !43, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !900, file: !891, line: 62, baseType: !99, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !890, file: !891, line: 65, baseType: !117, size: 16, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !890, file: !891, line: 65, baseType: !117, size: 16, offset: 112)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !868, file: !507, line: 776, baseType: !43, size: 32, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !868, file: !507, line: 777, baseType: !199, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !868, file: !507, line: 778, baseType: !867, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !868, file: !507, line: 787, baseType: !30, size: 32, offset: 768)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !868, file: !507, line: 788, baseType: !30, size: 32, offset: 800)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !868, file: !507, line: 790, baseType: !30, size: 32, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !868, file: !507, line: 792, baseType: !30, size: 32, offset: 864)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !868, file: !507, line: 793, baseType: !30, size: 32, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !868, file: !507, line: 794, baseType: !30, size: 32, offset: 928)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !868, file: !507, line: 795, baseType: !43, size: 32, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !868, file: !507, line: 797, baseType: !917, size: 2048, offset: 1024)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !507, line: 551, size: 2048, elements: !918)
!918 = !{!919, !924, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !946, !949, !950, !951}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !917, file: !507, line: 553, baseType: !920, size: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !507, line: 411, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !920, file: !507, line: 412, baseType: !199, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !920, file: !507, line: 413, baseType: !299, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !917, file: !507, line: 554, baseType: !925, size: 192, align: 64, offset: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !926, line: 5, size: 192, align: 64, elements: !927)
!926 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!927 = !{!928, !929, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !925, file: !926, line: 6, baseType: !199, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !925, file: !926, line: 7, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !925, file: !926, line: 8, baseType: !930, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !917, file: !507, line: 555, baseType: !303, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !917, file: !507, line: 556, baseType: !303, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !917, file: !507, line: 558, baseType: !50, size: 128, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !917, file: !507, line: 559, baseType: !43, size: 32, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !917, file: !507, line: 561, baseType: !303, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !917, file: !507, line: 562, baseType: !303, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !917, file: !507, line: 563, baseType: !303, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !917, file: !507, line: 564, baseType: !303, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !917, file: !507, line: 565, baseType: !543, size: 64, offset: 896)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !917, file: !507, line: 566, baseType: !303, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !917, file: !507, line: 568, baseType: !303, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !917, file: !507, line: 571, baseType: !30, size: 32, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !917, file: !507, line: 572, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !917, file: !507, line: 574, baseType: !947, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !507, line: 49, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !917, file: !507, line: 576, baseType: !947, size: 64, offset: 1280)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !917, file: !507, line: 578, baseType: !199, size: 64, offset: 1344)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !917, file: !507, line: 588, baseType: !952, size: 512, align: 512, offset: 1536)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !507, line: 497, size: 512, align: 512, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !952, file: !507, line: 498, baseType: !303, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !952, file: !507, line: 499, baseType: !303, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !952, file: !507, line: 500, baseType: !303, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !952, file: !507, line: 501, baseType: !299, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !952, file: !507, line: 502, baseType: !299, size: 32, offset: 224)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !952, file: !507, line: 503, baseType: !199, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !952, file: !507, line: 504, baseType: !199, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !952, file: !507, line: 505, baseType: !199, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !952, file: !507, line: 506, baseType: !963, size: 64, align: 64, offset: 448)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !507, line: 445, size: 64, align: 64, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !963, file: !507, line: 446, baseType: !43, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !963, file: !507, line: 447, baseType: !43, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !868, file: !507, line: 798, baseType: !968, size: 384, offset: 3072)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !507, line: 592, size: 384, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !968, file: !507, line: 593, baseType: !50, size: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !968, file: !507, line: 594, baseType: !199, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !968, file: !507, line: 595, baseType: !199, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !968, file: !507, line: 596, baseType: !43, size: 32, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !968, file: !507, line: 597, baseType: !119, size: 16, offset: 288)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !968, file: !507, line: 598, baseType: !119, size: 16, offset: 304)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !968, file: !507, line: 600, baseType: !977, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !868, file: !507, line: 799, baseType: !979, size: 1792, offset: 3456)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !507, line: 610, size: 1792, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !1075, !1076}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !979, file: !507, line: 611, baseType: !925, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !979, file: !507, line: 618, baseType: !303, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !979, file: !507, line: 619, baseType: !303, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !979, file: !507, line: 620, baseType: !303, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !979, file: !507, line: 621, baseType: !303, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !979, file: !507, line: 622, baseType: !303, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !979, file: !507, line: 629, baseType: !543, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !979, file: !507, line: 630, baseType: !303, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !507, line: 631, baseType: !43, size: 32, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !979, file: !507, line: 653, baseType: !43, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !979, file: !507, line: 654, baseType: !43, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !979, file: !507, line: 655, baseType: !43, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !979, file: !507, line: 656, baseType: !43, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !979, file: !507, line: 662, baseType: !995, size: 512, offset: 704)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !996, line: 118, size: 512, elements: !997)
!996 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!997 = !{!998, !1006, !1007, !1016, !1071, !1072, !1073, !1074}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !995, file: !996, line: 119, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1000, line: 9, size: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !999, file: !1000, line: 10, baseType: !925, size: 192, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !999, file: !1000, line: 11, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1005, line: 29, baseType: !543)
!1005 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !995, file: !996, line: 120, baseType: !1004, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !995, file: !996, line: 121, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011, !1015}
!1011 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !996, line: 65, baseType: !43, size: 32, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1014 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !995, file: !996, line: 122, baseType: !1017, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !996, line: 159, size: 512, align: 512, elements: !1019)
!1019 = !{!1020, !1045, !1046, !1049, !1054, !1055, !1066, !1070}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1018, file: !996, line: 160, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !996, line: 215, size: 4608, align: 512, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1022, file: !996, line: 216, baseType: !546, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1022, file: !996, line: 217, baseType: !43, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1022, file: !996, line: 218, baseType: !43, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1022, file: !996, line: 219, baseType: !43, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1022, file: !996, line: 220, baseType: !43, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1022, file: !996, line: 221, baseType: !43, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1022, file: !996, line: 222, baseType: !43, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1022, file: !996, line: 223, baseType: !43, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1022, file: !996, line: 224, baseType: !43, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1022, file: !996, line: 226, baseType: !43, size: 32, offset: 160)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1022, file: !996, line: 227, baseType: !119, size: 16, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1022, file: !996, line: 228, baseType: !119, size: 16, offset: 208)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1022, file: !996, line: 229, baseType: !43, size: 32, offset: 224)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1022, file: !996, line: 235, baseType: !1004, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1022, file: !996, line: 236, baseType: !1015, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1022, file: !996, line: 237, baseType: !1004, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1022, file: !996, line: 238, baseType: !1015, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1022, file: !996, line: 239, baseType: !1042, size: 4096, align: 512, offset: 512)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 4096, align: 512, elements: !1043)
!1043 = !{!1044}
!1044 = !DISubrange(count: 8)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1018, file: !996, line: 161, baseType: !43, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1018, file: !996, line: 162, baseType: !1047, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !51, line: 32, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !183, line: 96, baseType: !30)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1018, file: !996, line: 163, baseType: !1050, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !272, line: 274, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !272, line: 274, size: 32, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1051, file: !272, line: 274, baseType: !276, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1018, file: !996, line: 164, baseType: !1015, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1018, file: !996, line: 165, baseType: !1056, size: 128, offset: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1000, line: 14, size: 128, elements: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1056, file: !1000, line: 15, baseType: !1059, size: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !926, line: 26, size: 128, elements: !1060)
!1060 = !{!1061, !1065}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1059, file: !926, line: 27, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !926, line: 12, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1062, file: !926, line: 13, baseType: !930, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1059, file: !926, line: 28, baseType: !930, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1018, file: !996, line: 166, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1004}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1018, file: !996, line: 167, baseType: !1004, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !995, file: !996, line: 123, baseType: !107, size: 8, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !995, file: !996, line: 124, baseType: !107, size: 8, offset: 456)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !995, file: !996, line: 125, baseType: !107, size: 8, offset: 464)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !995, file: !996, line: 126, baseType: !107, size: 8, offset: 472)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !979, file: !507, line: 671, baseType: !995, size: 512, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !979, file: !507, line: 679, baseType: !1077, size: 64, offset: 1728)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !868, file: !507, line: 800, baseType: !1079, size: 64, offset: 5248)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !507, line: 800, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !868, file: !507, line: 809, baseType: !1083, size: 64, offset: 5312)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !507, line: 70, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !868, file: !507, line: 825, baseType: !1086, size: 2048, align: 512, offset: 5632)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !507, line: 509, size: 2048, align: 512, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1086, file: !507, line: 511, baseType: !303, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1086, file: !507, line: 512, baseType: !303, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1086, file: !507, line: 513, baseType: !303, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1086, file: !507, line: 514, baseType: !303, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1086, file: !507, line: 515, baseType: !303, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1086, file: !507, line: 516, baseType: !303, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1086, file: !507, line: 518, baseType: !303, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1086, file: !507, line: 519, baseType: !303, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1086, file: !507, line: 520, baseType: !543, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1086, file: !507, line: 522, baseType: !303, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1086, file: !507, line: 523, baseType: !303, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1086, file: !507, line: 524, baseType: !543, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1086, file: !507, line: 526, baseType: !543, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1086, file: !507, line: 527, baseType: !303, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1086, file: !507, line: 529, baseType: !303, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1086, file: !507, line: 530, baseType: !303, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1086, file: !507, line: 531, baseType: !303, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1086, file: !507, line: 532, baseType: !303, size: 64, offset: 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1086, file: !507, line: 533, baseType: !303, size: 64, offset: 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1086, file: !507, line: 535, baseType: !303, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1086, file: !507, line: 536, baseType: !303, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1086, file: !507, line: 537, baseType: !303, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1086, file: !507, line: 538, baseType: !303, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1086, file: !507, line: 539, baseType: !303, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1086, file: !507, line: 540, baseType: !303, size: 64, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1086, file: !507, line: 541, baseType: !303, size: 64, offset: 1600)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1086, file: !507, line: 542, baseType: !303, size: 64, offset: 1664)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1086, file: !507, line: 543, baseType: !303, size: 64, offset: 1728)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !868, file: !507, line: 833, baseType: !43, size: 32, offset: 7680)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !868, file: !507, line: 836, baseType: !43, size: 32, offset: 7712)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !868, file: !507, line: 837, baseType: !30, size: 32, offset: 7744)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !868, file: !507, line: 838, baseType: !1120, size: 64, offset: 7808)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1123, line: 19, baseType: !1124)
!1123 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1123, line: 19, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1124, file: !1123, line: 19, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 1)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !868, file: !507, line: 839, baseType: !1131, size: 64, offset: 7872)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !868, file: !507, line: 840, baseType: !1122, size: 64, offset: 7936)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !868, file: !507, line: 841, baseType: !35, size: 64, offset: 8000)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !868, file: !507, line: 843, baseType: !119, size: 16, offset: 8064)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !868, file: !507, line: 845, baseType: !119, size: 16, offset: 8080)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !868, file: !507, line: 848, baseType: !30, size: 32, offset: 8096)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !868, file: !507, line: 849, baseType: !1138, size: 32, offset: 8128)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !507, line: 718, size: 32, elements: !1139)
!1139 = !{!1140, !1147}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1138, file: !507, line: 724, baseType: !1141, size: 32)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !507, line: 719, size: 32, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1141, file: !507, line: 720, baseType: !107, size: 8)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1141, file: !507, line: 721, baseType: !107, size: 8, offset: 8)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1141, file: !507, line: 722, baseType: !107, size: 8, offset: 16)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1141, file: !507, line: 723, baseType: !107, size: 8, offset: 24)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1138, file: !507, line: 725, baseType: !299, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !868, file: !507, line: 850, baseType: !50, size: 128, offset: 8192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !868, file: !507, line: 851, baseType: !1150, size: 64, offset: 8320)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !507, line: 60, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !868, file: !507, line: 855, baseType: !199, size: 64, offset: 8384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !868, file: !507, line: 856, baseType: !107, size: 8, offset: 8448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !868, file: !507, line: 857, baseType: !107, size: 8, offset: 8456)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !868, file: !507, line: 858, baseType: !30, size: 32, offset: 8480)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !868, file: !507, line: 859, baseType: !50, size: 128, offset: 8512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !868, file: !507, line: 860, baseType: !30, size: 32, offset: 8640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !868, file: !507, line: 861, baseType: !50, size: 128, offset: 8704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !868, file: !507, line: 873, baseType: !1160, size: 256, offset: 8832)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !507, line: 376, size: 256, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1160, file: !507, line: 381, baseType: !199, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1160, file: !507, line: 384, baseType: !305, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1160, file: !507, line: 389, baseType: !305, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1160, file: !507, line: 392, baseType: !305, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !868, file: !507, line: 875, baseType: !50, size: 128, offset: 9088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !868, file: !507, line: 877, baseType: !1168, size: 320, offset: 9216)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1169, line: 86, size: 320, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1168, file: !1169, line: 87, baseType: !30, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1168, file: !1169, line: 88, baseType: !50, size: 128, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1168, file: !1169, line: 89, baseType: !50, size: 128, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !868, file: !507, line: 878, baseType: !925, size: 192, align: 64, offset: 9536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !868, file: !507, line: 881, baseType: !1176, size: 64, offset: 9728)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !610, line: 733, size: 10240, elements: !1178)
!1178 = !{!1179, !1851}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !610, line: 734, baseType: !1180, size: 10240)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !610, line: 734, size: 10240, elements: !1181)
!1181 = !{!1182, !1186, !1199, !1714, !1715, !1716, !1717, !1718, !1719, !1726, !1727, !1728, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1767, !1769, !1772, !1819, !1820, !1821, !1824, !1825, !1826, !1829, !1830, !1831, !1838, !1839}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !610, line: 739, baseType: !1183, size: 512, align: 512)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !610, line: 739, size: 512, align: 512, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1183, file: !610, line: 747, baseType: !99, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1180, file: !610, line: 750, baseType: !1187, size: 128, offset: 512)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1188, line: 218, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1189 = !{!1190, !1197, !1198}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1188, line: 219, baseType: !1191, size: 32)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 219, size: 32, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1191, file: !1188, line: 220, baseType: !79, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1191, file: !1188, line: 221, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1188, line: 197, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 197, elements: !432)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1187, file: !1188, line: 223, baseType: !43, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1187, file: !1188, line: 224, baseType: !35, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1180, file: !610, line: 752, baseType: !1200, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!199, !1203, !199, !199, !199, !199}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !227, line: 994, size: 1856, align: 64, elements: !1205)
!1205 = !{!1206, !1212, !1213, !1215, !1216, !1217, !1218, !1219, !1279, !1474, !1483, !1484, !1485, !1704, !1705, !1706, !1707, !1709, !1710, !1713}
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !227, line: 995, baseType: !1207, size: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !227, line: 995, size: 128, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1207, file: !227, line: 996, baseType: !894, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1207, file: !227, line: 997, baseType: !852, size: 128, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1207, file: !227, line: 998, baseType: !43, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1204, file: !227, line: 1005, baseType: !79, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1204, file: !227, line: 1006, baseType: !1214, size: 32, offset: 160)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !51, line: 156, baseType: !43)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1204, file: !227, line: 1007, baseType: !537, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1204, file: !227, line: 1008, baseType: !533, size: 256, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1204, file: !227, line: 1009, baseType: !389, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1204, file: !227, line: 1010, baseType: !43, size: 32, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1204, file: !227, line: 1011, baseType: !1220, size: 256, offset: 640)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !227, line: 948, size: 256, elements: !1221)
!1221 = !{!1222, !1243, !1268, !1276, !1277, !1278}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1220, file: !227, line: 949, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1224, line: 34, baseType: !1225)
!1224 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1224, line: 25, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1225, file: !1224, line: 26, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1229, line: 27, baseType: !1230)
!1229 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1229, line: 13, size: 64, elements: !1231)
!1231 = !{!1232, !1242}
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1229, line: 14, baseType: !1233, size: 32)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1229, line: 14, size: 32, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1233, file: !1229, line: 15, baseType: !99, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1229, line: 16, baseType: !1237, size: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1229, line: 16, size: 32, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1237, file: !1229, line: 18, baseType: !107, size: 8)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1237, file: !1229, line: 19, baseType: !1241, size: 24, offset: 8)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 24, elements: !150)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1230, file: !1229, line: 26, baseType: !91, size: 32, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1220, file: !227, line: 950, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1246, line: 59, size: 768, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1247 = !{!1248, !1249, !1250, !1251, !1255, !1256, !1257, !1258}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1245, file: !1246, line: 61, baseType: !881, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1245, file: !1246, line: 62, baseType: !43, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1245, file: !1246, line: 63, baseType: !79, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1245, file: !1246, line: 65, baseType: !1252, size: 256, offset: 128)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 4)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1245, file: !1246, line: 66, baseType: !420, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1245, file: !1246, line: 68, baseType: !845, size: 192, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1245, file: !1246, line: 69, baseType: !852, size: 128, align: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1245, file: !1246, line: 70, baseType: !1259, offset: 768)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, elements: !1266)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1246, line: 54, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1260, file: !1246, line: 55, baseType: !30, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1260, file: !1246, line: 56, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1246, line: 56, flags: DIFlagFwdDecl)
!1266 = !{!1267}
!1267 = !DISubrange(count: -1)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1220, file: !227, line: 951, baseType: !1269, size: 32, offset: 128)
!1269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1246, line: 9, baseType: !43, size: 32, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1272 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1273 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1274 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1275 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1220, file: !227, line: 952, baseType: !236, size: 32, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1220, file: !227, line: 952, baseType: !236, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1220, file: !227, line: 953, baseType: !30, size: 32, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1204, file: !227, line: 1012, baseType: !1280, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1283, line: 110, size: 1472, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1301, !1302, !1303, !1304, !1305, !1306, !1419, !1420, !1421, !1422, !1423, !1454, !1457, !1461, !1469}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1282, file: !1283, line: 111, baseType: !537, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1282, file: !1283, line: 112, baseType: !236, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1282, file: !1283, line: 113, baseType: !245, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1282, file: !1283, line: 114, baseType: !236, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1282, file: !1283, line: 115, baseType: !245, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1282, file: !1283, line: 116, baseType: !236, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1282, file: !1283, line: 117, baseType: !245, size: 32, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1282, file: !1283, line: 118, baseType: !236, size: 32, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1282, file: !1283, line: 119, baseType: !245, size: 32, offset: 288)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1282, file: !1283, line: 120, baseType: !43, size: 32, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1282, file: !1283, line: 121, baseType: !1296, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1297, line: 24, baseType: !1298)
!1297 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 24, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1298, file: !1297, line: 24, baseType: !303, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1282, file: !1283, line: 122, baseType: !1296, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1282, file: !1283, line: 123, baseType: !1296, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1282, file: !1283, line: 124, baseType: !1296, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1282, file: !1283, line: 125, baseType: !1296, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1282, file: !1283, line: 127, baseType: !111, size: 8, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1282, file: !1283, line: 129, baseType: !1307, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1309, line: 195, size: 1728, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1310 = !{!1311, !1312, !1317, !1322, !1323, !1326, !1327, !1332, !1333, !1334, !1335, !1338, !1339, !1340, !1342, !1343, !1383, !1404}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1308, file: !1309, line: 196, baseType: !881, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1308, file: !1309, line: 197, baseType: !1313, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1309, line: 28, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !51, line: 104, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !108, line: 20, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !110, line: 26, baseType: !30)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 198, baseType: !1318, size: 192, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 198, size: 192, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1318, file: !1309, line: 199, baseType: !50, size: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1318, file: !1309, line: 200, baseType: !925, size: 192, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1308, file: !1309, line: 205, baseType: !752, size: 320, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1308, file: !1309, line: 206, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1309, line: 206, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1308, file: !1309, line: 207, baseType: !35, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 208, baseType: !1328, size: 64, offset: 704)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 208, size: 64, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1328, file: !1309, line: 209, baseType: !591, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1328, file: !1309, line: 210, baseType: !591, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1308, file: !1309, line: 212, baseType: !591, size: 64, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1308, file: !1309, line: 213, baseType: !236, size: 32, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1308, file: !1309, line: 214, baseType: !245, size: 32, offset: 864)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1308, file: !1309, line: 215, baseType: !1336, size: 32, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1309, line: 31, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 110, baseType: !299)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1308, file: !1309, line: 216, baseType: !119, size: 16, offset: 928)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1308, file: !1309, line: 217, baseType: !119, size: 16, offset: 944)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1308, file: !1309, line: 221, baseType: !1341, size: 16, offset: 960)
!1341 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1309, line: 228, baseType: !199, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 245, baseType: !1344, size: 320, offset: 1088)
!1344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 245, size: 320, elements: !1345)
!1345 = !{!1346, !1375}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1344, file: !1309, line: 246, baseType: !1347, size: 320)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1309, line: 114, size: 320, elements: !1348)
!1348 = !{!1349, !1350, !1362, !1365, !1374}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1347, file: !1309, line: 116, baseType: !199, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !1309, line: 117, baseType: !1351, size: 64, offset: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !1309, line: 117, size: 64, elements: !1352)
!1352 = !{!1353, !1361}
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1309, line: 118, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !1309, line: 118, size: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1354, file: !1309, line: 120, baseType: !117, size: 16)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1354, file: !1309, line: 121, baseType: !1358, size: 48, offset: 16)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 6)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1351, file: !1309, line: 127, baseType: !199, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1347, file: !1309, line: 129, baseType: !1363, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1309, line: 102, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1347, file: !1309, line: 130, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1309, line: 108, size: 192, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1367, file: !1309, line: 109, baseType: !852, size: 128, align: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1367, file: !1309, line: 110, baseType: !881, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1367, file: !1309, line: 111, baseType: !1372, size: 8, offset: 160)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !1373)
!1373 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1347, file: !1309, line: 131, baseType: !68, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1309, line: 247, baseType: !1376, size: 320)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1344, file: !1309, line: 247, size: 320, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1376, file: !1309, line: 248, baseType: !199, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1376, file: !1309, line: 249, baseType: !199, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1376, file: !1309, line: 250, baseType: !1363, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1376, file: !1309, line: 251, baseType: !1366, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1376, file: !1309, line: 252, baseType: !149, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 260, baseType: !1384, size: 256, offset: 1408)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 260, size: 256, elements: !1385)
!1385 = !{!1386, !1392}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1384, file: !1309, line: 261, baseType: !1387, size: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1309, line: 134, size: 256, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1387, file: !1309, line: 135, baseType: !35, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1387, file: !1309, line: 136, baseType: !1391, size: 256)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !1253)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1309, line: 262, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1309, line: 262, size: 256, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1393, file: !1309, line: 264, baseType: !50, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1393, file: !1309, line: 265, baseType: !1397, size: 128, offset: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1398, line: 22, size: 128, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1399 = !{!1400, !1403}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1397, file: !1398, line: 23, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1398, line: 23, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1397, file: !1398, line: 24, baseType: !199, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1308, file: !1309, line: 280, baseType: !1405, size: 64, offset: 1664)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1309, line: 176, size: 192, elements: !1407)
!1407 = !{!1408, !1417, !1418}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1406, file: !1309, line: 177, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1309, line: 171, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!30, !1307, !1413, !1415, !1307}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1406, file: !1309, line: 178, baseType: !1307, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1406, file: !1309, line: 179, baseType: !1363, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1282, file: !1283, line: 130, baseType: !1307, size: 64, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1282, file: !1283, line: 131, baseType: !1307, size: 64, offset: 896)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1282, file: !1283, line: 132, baseType: !1307, size: 64, offset: 960)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1282, file: !1283, line: 135, baseType: !35, size: 64, offset: 1024)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1282, file: !1283, line: 137, baseType: !1424, size: 64, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1426, line: 14, size: 1088, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1427 = !{!1428, !1429, !1438, !1439, !1440, !1441, !1442, !1443}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1425, file: !1426, line: 15, baseType: !881, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1425, file: !1426, line: 17, baseType: !1430, size: 320, offset: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1431, line: 22, size: 320, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !1431, line: 23, baseType: !546, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1430, file: !1431, line: 24, baseType: !543, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1430, file: !1431, line: 26, baseType: !50, size: 128, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1430, file: !1431, line: 28, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1425, file: !1426, line: 19, baseType: !199, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1425, file: !1426, line: 20, baseType: !537, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1425, file: !1426, line: 23, baseType: !424, size: 128, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1425, file: !1426, line: 24, baseType: !236, size: 32, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1425, file: !1426, line: 29, baseType: !537, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1425, file: !1426, line: 36, baseType: !1444, size: 320, offset: 768)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1445, line: 15, size: 320, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1444, file: !1445, line: 16, baseType: !546, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1444, file: !1445, line: 18, baseType: !30, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1444, file: !1445, line: 19, baseType: !30, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1444, file: !1445, line: 20, baseType: !30, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1444, file: !1445, line: 21, baseType: !30, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1444, file: !1445, line: 22, baseType: !199, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1445, line: 23, baseType: !199, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1282, file: !1283, line: 138, baseType: !1455, size: 64, offset: 1152)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !237, line: 18, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1282, file: !1283, line: 139, baseType: !1458, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1460, line: 16, flags: DIFlagFwdDecl)
!1460 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1282, file: !1283, line: 140, baseType: !1462, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1283, line: 25, size: 64, elements: !1464)
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1463, file: !1283, line: 26, baseType: !99, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1463, file: !1283, line: 27, baseType: !30, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1463, file: !1283, line: 28, baseType: !1468, offset: 64)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !1266)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1283, line: 142, baseType: !1470, size: 128, offset: 1344)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1283, line: 142, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1470, file: !1283, line: 143, baseType: !30, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1470, file: !1283, line: 144, baseType: !852, size: 128, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1204, file: !227, line: 1013, baseType: !1475, size: 256, offset: 960)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !227, line: 970, size: 256, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1475, file: !227, line: 971, baseType: !199, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1475, file: !227, line: 972, baseType: !43, size: 32, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1475, file: !227, line: 973, baseType: !43, size: 32, offset: 96)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1475, file: !227, line: 974, baseType: !43, size: 32, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1475, file: !227, line: 975, baseType: !43, size: 32, offset: 160)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1475, file: !227, line: 976, baseType: !389, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1204, file: !227, line: 1014, baseType: !664, size: 128, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1204, file: !227, line: 1015, baseType: !230, size: 64, offset: 1344)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1204, file: !227, line: 1016, baseType: !1486, size: 64, offset: 1408)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !227, line: 1914, size: 2112, elements: !1489)
!1489 = !{!1490, !1491, !1495, !1500, !1504, !1532, !1533, !1539, !1552, !1560, !1564, !1565, !1626, !1627, !1631, !1636, !1637, !1641, !1645, !1651, !1652, !1656, !1657, !1663, !1667, !1671, !1677, !1681, !1685, !1689, !1693, !1694, !1700}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1488, file: !227, line: 1915, baseType: !37, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1488, file: !227, line: 1916, baseType: !1492, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!389, !1203, !389, !30}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1488, file: !227, line: 1917, baseType: !1496, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!181, !1203, !149, !196, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1488, file: !227, line: 1918, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!181, !1203, !68, !196, !1499}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1488, file: !227, line: 1919, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!181, !1508, !1530}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !227, line: 373, size: 384, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1517, !1518, !1519, !1520}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1509, file: !227, line: 374, baseType: !1203, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1509, file: !227, line: 375, baseType: !389, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1509, file: !227, line: 376, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !1508, !185}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1509, file: !227, line: 377, baseType: !35, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1509, file: !227, line: 378, baseType: !30, size: 32, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1509, file: !227, line: 379, baseType: !117, size: 16, offset: 288)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !227, line: 380, baseType: !1521, size: 64, offset: 320)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !227, line: 380, size: 64, elements: !1522)
!1522 = !{!1523, !1526}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1521, file: !227, line: 386, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !227, line: 386, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1521, file: !227, line: 395, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!181, !35}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !227, line: 69, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1488, file: !227, line: 1920, baseType: !1505, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1488, file: !227, line: 1921, baseType: !1534, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!30, !1508, !1537, !43}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !227, line: 53, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1488, file: !227, line: 1923, baseType: !1540, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!30, !1203, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !227, line: 1858, size: 128, elements: !1545)
!1545 = !{!1546, !1551}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1544, file: !227, line: 1859, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !227, line: 1855, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1372, !1543, !68, !30, !389, !303, !43}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1544, file: !227, line: 1860, baseType: !389, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1488, file: !227, line: 1924, baseType: !1553, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1556, !1203, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1557, line: 59, baseType: !43)
!1557 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !404, line: 31, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1488, file: !227, line: 1925, baseType: !1561, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!185, !1203, !43, !199}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1488, file: !227, line: 1926, baseType: !1561, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1488, file: !227, line: 1927, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!30, !1203, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !610, line: 625, size: 1344, elements: !1571)
!1571 = !{!1572, !1581, !1582, !1590, !1597, !1598, !1603, !1604, !1609, !1610, !1613, !1617, !1618, !1619, !1620, !1621, !1624}
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !610, line: 628, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !610, line: 628, size: 128, elements: !1574)
!1574 = !{!1575, !1580}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !610, line: 629, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !610, line: 629, size: 128, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1576, file: !610, line: 631, baseType: !199, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1576, file: !610, line: 632, baseType: !199, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1573, file: !610, line: 635, baseType: !852, size: 128, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1570, file: !610, line: 639, baseType: !1176, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1570, file: !610, line: 640, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1584, line: 297, baseType: !1585)
!1584 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1584, line: 297, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1585, file: !1584, line: 297, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1589, line: 19, baseType: !199)
!1589 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !610, line: 646, baseType: !1591, size: 64, offset: 256)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !610, line: 646, size: 64, elements: !1592)
!1592 = !{!1593, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1591, file: !610, line: 647, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !610, line: 542, baseType: !199)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1591, file: !610, line: 648, baseType: !1595, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1570, file: !610, line: 666, baseType: !30, size: 32, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1570, file: !610, line: 667, baseType: !1599, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !610, line: 579, size: 320, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1600, file: !610, line: 580, baseType: !752, size: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1570, file: !610, line: 670, baseType: !1372, size: 8, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1570, file: !610, line: 681, baseType: !1605, size: 256, offset: 512)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !610, line: 678, size: 256, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1605, file: !610, line: 679, baseType: !925, size: 192, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1605, file: !610, line: 680, baseType: !199, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1570, file: !610, line: 689, baseType: !50, size: 128, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1570, file: !610, line: 691, baseType: !1611, size: 64, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !610, line: 691, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1570, file: !610, line: 694, baseType: !1614, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !610, line: 694, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1570, file: !610, line: 697, baseType: !199, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1570, file: !610, line: 699, baseType: !1203, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1570, file: !610, line: 700, baseType: !35, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1570, file: !610, line: 711, baseType: !537, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1570, file: !610, line: 717, baseType: !1622, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !610, line: 717, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1570, file: !610, line: 722, baseType: !1625, offset: 1344)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !610, line: 570, elements: !432)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1488, file: !227, line: 1928, baseType: !199, size: 64, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1488, file: !227, line: 1929, baseType: !1628, size: 64, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!30, !230, !1203}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1488, file: !227, line: 1930, baseType: !1632, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!30, !1203, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !227, line: 1061, baseType: !35)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1488, file: !227, line: 1931, baseType: !1628, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1488, file: !227, line: 1932, baseType: !1638, size: 64, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!30, !1203, !389, !389, !30}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1488, file: !227, line: 1933, baseType: !1642, size: 64, offset: 1088)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!30, !30, !1203, !30}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !227, line: 1934, baseType: !1646, size: 64, offset: 1152)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!30, !1203, !30, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !227, line: 1063, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1488, file: !227, line: 1935, baseType: !1200, size: 64, offset: 1216)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1488, file: !227, line: 1936, baseType: !1653, size: 64, offset: 1280)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!30, !30}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1488, file: !227, line: 1937, baseType: !1646, size: 64, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1488, file: !227, line: 1938, baseType: !1658, size: 64, offset: 1408)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!181, !1661, !1203, !1499, !196, !43}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !507, line: 59, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1488, file: !227, line: 1939, baseType: !1664, size: 64, offset: 1472)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!181, !1203, !1499, !1661, !196, !43}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1488, file: !227, line: 1940, baseType: !1668, size: 64, offset: 1536)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1203}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1488, file: !227, line: 1941, baseType: !1672, size: 64, offset: 1600)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!30, !1203, !30, !1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1488, file: !227, line: 1942, baseType: !1678, size: 64, offset: 1664)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!185, !1203, !30, !389, !389}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1488, file: !227, line: 1944, baseType: !1682, size: 64, offset: 1728)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !505, !1203}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1488, file: !227, line: 1948, baseType: !1686, size: 64, offset: 1792)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!181, !1203, !389, !1203, !389, !196, !43}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1488, file: !227, line: 1950, baseType: !1690, size: 64, offset: 1856)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!389, !1203, !389, !1203, !389, !389, !43}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1488, file: !227, line: 1953, baseType: !1638, size: 64, offset: 1920)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1488, file: !227, line: 1954, baseType: !1695, size: 64, offset: 1984)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!30, !1698, !43}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !227, line: 1911, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1488, file: !227, line: 1955, baseType: !1701, size: 64, offset: 2048)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!30, !1698, !1537, !43}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1204, file: !227, line: 1018, baseType: !303, size: 64, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1204, file: !227, line: 1020, baseType: !35, size: 64, offset: 1536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1204, file: !227, line: 1023, baseType: !35, size: 64, offset: 1600)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1204, file: !227, line: 1027, baseType: !1708, size: 64, offset: 1664)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1204, file: !227, line: 1029, baseType: !225, size: 64, offset: 1728)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1204, file: !227, line: 1030, baseType: !1711, size: 32, offset: 1792)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1712, line: 8, baseType: !299)
!1712 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1204, file: !227, line: 1031, baseType: !1711, size: 32, offset: 1824)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1180, file: !610, line: 756, baseType: !199, size: 64, offset: 704)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1180, file: !610, line: 757, baseType: !199, size: 64, offset: 768)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1180, file: !610, line: 760, baseType: !199, size: 64, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1180, file: !610, line: 761, baseType: !199, size: 64, offset: 896)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1180, file: !610, line: 763, baseType: !199, size: 64, offset: 960)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1180, file: !610, line: 764, baseType: !1720, size: 64, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1584, line: 299, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1584, line: 299, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1722, file: !1584, line: 299, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1589, line: 18, baseType: !199)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1180, file: !610, line: 773, baseType: !99, size: 32, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1180, file: !610, line: 785, baseType: !99, size: 32, offset: 1120)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1180, file: !610, line: 795, baseType: !1729, size: 64, offset: 1152)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !610, line: 726, size: 128, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1730, file: !610, line: 727, baseType: !303, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1730, file: !610, line: 728, baseType: !30, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1180, file: !610, line: 801, baseType: !199, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1180, file: !610, line: 804, baseType: !537, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1180, file: !610, line: 806, baseType: !30, size: 32, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1180, file: !610, line: 808, baseType: !79, size: 32, offset: 1376)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1180, file: !610, line: 823, baseType: !752, size: 320, offset: 1408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1180, file: !610, line: 825, baseType: !50, size: 128, offset: 1728)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1180, file: !610, line: 845, baseType: !30, size: 32, offset: 1856)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1180, file: !610, line: 849, baseType: !199, size: 64, offset: 1920)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1180, file: !610, line: 850, baseType: !199, size: 64, offset: 1984)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1180, file: !610, line: 852, baseType: !199, size: 64, offset: 2048)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1180, file: !610, line: 853, baseType: !199, size: 64, offset: 2112)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1180, file: !610, line: 854, baseType: !539, size: 64, offset: 2176)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1180, file: !610, line: 855, baseType: !199, size: 64, offset: 2240)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1180, file: !610, line: 856, baseType: !199, size: 64, offset: 2304)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1180, file: !610, line: 857, baseType: !199, size: 64, offset: 2368)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1180, file: !610, line: 858, baseType: !199, size: 64, offset: 2432)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1180, file: !610, line: 865, baseType: !276, size: 32, offset: 2496)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1180, file: !610, line: 867, baseType: !79, size: 32, offset: 2528)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1180, file: !610, line: 869, baseType: !199, size: 64, offset: 2560)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1180, file: !610, line: 869, baseType: !199, size: 64, offset: 2624)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1180, file: !610, line: 869, baseType: !199, size: 64, offset: 2688)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1180, file: !610, line: 869, baseType: !199, size: 64, offset: 2752)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1180, file: !610, line: 870, baseType: !199, size: 64, offset: 2816)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1180, file: !610, line: 870, baseType: !199, size: 64, offset: 2880)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1180, file: !610, line: 870, baseType: !199, size: 64, offset: 2944)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1180, file: !610, line: 871, baseType: !199, size: 64, offset: 3008)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1180, file: !610, line: 871, baseType: !199, size: 64, offset: 3072)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1180, file: !610, line: 871, baseType: !199, size: 64, offset: 3136)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1180, file: !610, line: 871, baseType: !199, size: 64, offset: 3200)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1180, file: !610, line: 873, baseType: !1764, size: 3328, offset: 3264)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3328, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 52)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1180, file: !610, line: 875, baseType: !1768, size: 1280, offset: 6592)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1430, size: 1280, elements: !1253)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1180, file: !610, line: 877, baseType: !1770, size: 64, offset: 7872)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !610, line: 877, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1180, file: !610, line: 880, baseType: !1773, size: 1088, offset: 7936)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1774, line: 72, baseType: !1775)
!1774 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1774, line: 23, size: 1088, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1784, !1785, !1786, !1787, !1814, !1815, !1816}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1775, file: !1774, line: 28, baseType: !303, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1775, file: !1774, line: 38, baseType: !539, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1775, file: !1774, line: 40, baseType: !199, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1775, file: !1774, line: 43, baseType: !752, size: 320, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1775, file: !1774, line: 44, baseType: !1782, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1774, line: 44, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1774, line: 48, baseType: !199, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !1774, line: 59, baseType: !533, size: 256, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1775, file: !1774, line: 60, baseType: !35, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1775, file: !1774, line: 61, baseType: !1788, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1791, line: 13, size: 1216, elements: !1792)
!1791 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1790, file: !1791, line: 14, baseType: !35, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1790, file: !1791, line: 15, baseType: !199, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1790, file: !1791, line: 17, baseType: !199, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1790, file: !1791, line: 17, baseType: !199, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1790, file: !1791, line: 18, baseType: !199, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1790, file: !1791, line: 18, baseType: !199, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1790, file: !1791, line: 19, baseType: !1800, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1790, file: !1791, line: 21, baseType: !185, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1790, file: !1791, line: 23, baseType: !185, size: 64, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1790, file: !1791, line: 24, baseType: !185, size: 64, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1790, file: !1791, line: 25, baseType: !185, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1790, file: !1791, line: 26, baseType: !185, size: 64, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1790, file: !1791, line: 27, baseType: !185, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1790, file: !1791, line: 28, baseType: !185, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1790, file: !1791, line: 29, baseType: !185, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1790, file: !1791, line: 30, baseType: !185, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1790, file: !1791, line: 31, baseType: !185, size: 64, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1790, file: !1791, line: 32, baseType: !185, size: 64, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1790, file: !1791, line: 33, baseType: !185, size: 64, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1775, file: !1774, line: 63, baseType: !99, size: 32, offset: 1024)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1775, file: !1774, line: 69, baseType: !117, size: 16, offset: 1056)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1775, file: !1774, line: 70, baseType: !1817, size: 16, offset: 1072)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !108, line: 18, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !110, line: 23, baseType: !1341)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !610, line: 882, baseType: !199, size: 64, offset: 9024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1180, file: !610, line: 885, baseType: !79, size: 32, offset: 9088)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1180, file: !610, line: 886, baseType: !1822, size: 64, offset: 9152)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !610, line: 732, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1180, file: !610, line: 901, baseType: !1455, size: 64, offset: 9216)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1180, file: !610, line: 904, baseType: !1203, size: 64, offset: 9280)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1180, file: !610, line: 906, baseType: !1827, size: 64, offset: 9344)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !610, line: 906, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1180, file: !610, line: 930, baseType: !99, size: 32, offset: 9408)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1180, file: !610, line: 933, baseType: !99, size: 32, offset: 9440)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1180, file: !610, line: 935, baseType: !1832, size: 64, offset: 9472)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1833, line: 103, size: 64, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1832, file: !1833, line: 104, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1833, line: 101, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1180, file: !610, line: 940, baseType: !537, size: 64, offset: 9536)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1180, file: !610, line: 942, baseType: !1840, size: 256, offset: 9600)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1841, line: 98, size: 256, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1842 = !{!1843, !1844, !1845}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1840, file: !1841, line: 99, baseType: !537, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1840, file: !1841, line: 100, baseType: !50, size: 128, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1840, file: !1841, line: 101, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1841, line: 21, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1177, file: !610, line: 986, baseType: !1852, offset: 10240)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1266)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !868, file: !507, line: 882, baseType: !1176, size: 64, offset: 9792)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !868, file: !507, line: 884, baseType: !30, size: 32, offset: 9856)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !868, file: !507, line: 885, baseType: !30, size: 32, offset: 9888)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !868, file: !507, line: 886, baseType: !30, size: 32, offset: 9920)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !868, file: !507, line: 888, baseType: !30, size: 32, offset: 9952)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !868, file: !507, line: 890, baseType: !199, size: 64, offset: 9984)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !868, file: !507, line: 893, baseType: !43, size: 32, offset: 10048)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !868, file: !507, line: 896, baseType: !43, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !868, file: !507, line: 897, baseType: !43, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !868, file: !507, line: 898, baseType: !43, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !868, file: !507, line: 899, baseType: !43, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !868, file: !507, line: 919, baseType: !43, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !868, file: !507, line: 922, baseType: !43, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !868, file: !507, line: 923, baseType: !43, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !868, file: !507, line: 925, baseType: !43, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !868, file: !507, line: 939, baseType: !43, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !868, file: !507, line: 941, baseType: !43, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !868, file: !507, line: 944, baseType: !43, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !868, file: !507, line: 956, baseType: !43, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !868, file: !507, line: 962, baseType: !43, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !868, file: !507, line: 966, baseType: !43, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !868, file: !507, line: 969, baseType: !199, size: 64, offset: 10176)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !868, file: !507, line: 971, baseType: !1876, size: 448, offset: 10240)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1877, line: 25, size: 448, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!1878 = !{!1879, !1880, !1885}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1876, file: !1877, line: 26, baseType: !199, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1876, file: !1877, line: 27, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!185, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1877, line: 28, baseType: !1886, size: 320, offset: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !1877, line: 28, size: 320, elements: !1887)
!1887 = !{!1888, !1898, !1928}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1886, file: !1877, line: 37, baseType: !1889, size: 320)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1877, line: 30, size: 320, elements: !1890)
!1890 = !{!1891, !1893, !1894, !1895, !1896, !1897}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1889, file: !1877, line: 31, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1889, file: !1877, line: 32, baseType: !299, size: 32, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1889, file: !1877, line: 33, baseType: !299, size: 32, offset: 96)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1889, file: !1877, line: 34, baseType: !299, size: 32, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1889, file: !1877, line: 35, baseType: !303, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1889, file: !1877, line: 36, baseType: !1892, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1886, file: !1877, line: 47, baseType: !1899, size: 192)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1877, line: 39, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1908, !1927}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1899, file: !1877, line: 40, baseType: !1047, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1899, file: !1877, line: 41, baseType: !1903, size: 32, offset: 32)
!1903 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1877, line: 16, baseType: !43, size: 32, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIEnumerator(name: "TT_NONE", value: 0)
!1906 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!1907 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1877, line: 42, baseType: !1909, size: 64, offset: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1877, line: 42, size: 64, elements: !1910)
!1910 = !{!1911, !1919}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1909, file: !1877, line: 43, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1914, line: 7, size: 128, elements: !1915)
!1914 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1915 = !{!1916, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1913, file: !1914, line: 8, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !183, line: 93, baseType: !391)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1913, file: !1914, line: 9, baseType: !391, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1909, file: !1877, line: 44, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1922, line: 7, size: 64, elements: !1923)
!1922 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1923 = !{!1924, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1921, file: !1922, line: 8, baseType: !1925, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1922, line: 5, baseType: !1315)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1921, file: !1922, line: 9, baseType: !1315, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1899, file: !1877, line: 46, baseType: !303, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1886, file: !1877, line: 55, baseType: !1929, size: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1877, line: 49, size: 256, elements: !1930)
!1930 = !{!1931, !1934, !1935, !1936, !1937}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1929, file: !1877, line: 50, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1877, line: 14, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1929, file: !1877, line: 51, baseType: !30, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1929, file: !1877, line: 52, baseType: !30, size: 32, offset: 96)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1929, file: !1877, line: 53, baseType: !199, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1929, file: !1877, line: 54, baseType: !199, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !868, file: !507, line: 973, baseType: !1939, size: 32, offset: 10688)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !51, line: 27, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !183, line: 28, baseType: !30)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !868, file: !507, line: 974, baseType: !1939, size: 32, offset: 10720)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !868, file: !507, line: 978, baseType: !199, size: 64, offset: 10752)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !868, file: !507, line: 987, baseType: !867, size: 64, offset: 10816)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !868, file: !507, line: 990, baseType: !867, size: 64, offset: 10880)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !868, file: !507, line: 995, baseType: !50, size: 128, offset: 10944)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !868, file: !507, line: 996, baseType: !50, size: 128, offset: 11072)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !868, file: !507, line: 997, baseType: !867, size: 64, offset: 11200)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !868, file: !507, line: 1005, baseType: !50, size: 128, offset: 11264)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !868, file: !507, line: 1006, baseType: !50, size: 128, offset: 11392)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !868, file: !507, line: 1009, baseType: !1244, size: 64, offset: 11520)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !868, file: !507, line: 1010, baseType: !1952, size: 512, offset: 11584)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 512, elements: !1253)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !868, file: !507, line: 1011, baseType: !50, size: 128, offset: 12096)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !868, file: !507, line: 1012, baseType: !50, size: 128, offset: 12224)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !868, file: !507, line: 1014, baseType: !1956, size: 64, offset: 12352)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1958, line: 26, size: 256, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1957, file: !1958, line: 27, baseType: !43, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1957, file: !1958, line: 28, baseType: !1962, size: 192, offset: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1963, line: 43, size: 192, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1962, file: !1963, line: 44, baseType: !546, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1962, file: !1963, line: 45, baseType: !50, size: 128, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !868, file: !507, line: 1017, baseType: !499, size: 64, offset: 12416)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !868, file: !507, line: 1020, baseType: !499, size: 64, offset: 12480)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !868, file: !507, line: 1023, baseType: !35, size: 64, offset: 12544)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !868, file: !507, line: 1025, baseType: !303, size: 64, offset: 12608)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !868, file: !507, line: 1026, baseType: !303, size: 64, offset: 12672)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !868, file: !507, line: 1031, baseType: !303, size: 64, offset: 12736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !868, file: !507, line: 1032, baseType: !1974, size: 192, offset: 12800)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !507, line: 324, size: 192, elements: !1975)
!1975 = !{!1976, !1977, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1974, file: !507, line: 326, baseType: !303, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1974, file: !507, line: 327, baseType: !303, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !507, line: 328, baseType: !546, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !868, file: !507, line: 1041, baseType: !199, size: 64, offset: 12992)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !868, file: !507, line: 1042, baseType: !199, size: 64, offset: 13056)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !868, file: !507, line: 1045, baseType: !303, size: 64, offset: 13120)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !868, file: !507, line: 1048, baseType: !303, size: 64, offset: 13184)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !868, file: !507, line: 1051, baseType: !199, size: 64, offset: 13248)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !868, file: !507, line: 1052, baseType: !199, size: 64, offset: 13312)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !868, file: !507, line: 1055, baseType: !1986, size: 640, offset: 13376)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1987, line: 132, size: 640, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1988 = !{!1989, !1995, !1996}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1986, file: !1987, line: 133, baseType: !1990, size: 576)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 576, elements: !150)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1987, line: 117, size: 192, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1991, file: !1987, line: 118, baseType: !303, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1991, file: !1987, line: 119, baseType: !1056, size: 128, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1986, file: !1987, line: 134, baseType: !43, size: 32, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1986, file: !1987, line: 135, baseType: !43, size: 32, offset: 608)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !868, file: !507, line: 1058, baseType: !1998, size: 448, offset: 14016)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1987, line: 144, size: 448, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1998, file: !1987, line: 145, baseType: !852, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1998, file: !1987, line: 146, baseType: !533, size: 256, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1998, file: !1987, line: 147, baseType: !43, size: 32, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !868, file: !507, line: 1064, baseType: !1280, size: 64, offset: 14464)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !868, file: !507, line: 1067, baseType: !1280, size: 64, offset: 14528)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !868, file: !507, line: 1070, baseType: !1280, size: 64, offset: 14592)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !868, file: !507, line: 1074, baseType: !1307, size: 64, offset: 14656)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !868, file: !507, line: 1084, baseType: !2008, size: 128, offset: 14720)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 16)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !868, file: !507, line: 1086, baseType: !2012, size: 64, offset: 14848)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !507, line: 55, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !868, file: !507, line: 1089, baseType: !2015, size: 64, offset: 14912)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2016, line: 12, size: 64, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2015, file: !2016, line: 13, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2016, line: 8, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !868, file: !507, line: 1090, baseType: !2022, size: 128, offset: 14976)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2023, line: 13, size: 128, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2022, file: !2023, line: 14, baseType: !50, size: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !868, file: !507, line: 1097, baseType: !2027, size: 64, offset: 15104)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !507, line: 50, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !868, file: !507, line: 1100, baseType: !2030, size: 64, offset: 15168)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !507, line: 1100, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !868, file: !507, line: 1103, baseType: !2033, size: 64, offset: 15232)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !507, line: 53, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !868, file: !507, line: 1107, baseType: !2036, size: 64, offset: 15296)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2038, line: 35, flags: DIFlagFwdDecl)
!2038 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !868, file: !507, line: 1110, baseType: !2040, size: 64, offset: 15360)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2042, line: 93, size: 8768, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2093, !2102, !2103, !2105, !2106, !2107, !2110, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2148, !2149, !2156, !2166, !2169, !2170, !2173, !2174, !2175, !2176, !2177, !2178}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2041, file: !2042, line: 94, baseType: !881, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2041, file: !2042, line: 95, baseType: !99, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2041, file: !2042, line: 96, baseType: !30, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2041, file: !2042, line: 97, baseType: !30, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2041, file: !2042, line: 98, baseType: !50, size: 128, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2041, file: !2042, line: 100, baseType: !845, size: 192, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2041, file: !2042, line: 103, baseType: !867, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2041, file: !2042, line: 106, baseType: !2052, size: 192, offset: 512)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1460, line: 32, size: 192, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2052, file: !1460, line: 33, baseType: !50, size: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2052, file: !1460, line: 34, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2057, line: 25, baseType: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 23, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2058, file: !2057, line: 24, baseType: !1127, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2041, file: !2042, line: 109, baseType: !420, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2041, file: !2042, line: 112, baseType: !30, size: 32, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2041, file: !2042, line: 114, baseType: !30, size: 32, offset: 800)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2041, file: !2042, line: 115, baseType: !867, size: 64, offset: 832)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2041, file: !2042, line: 118, baseType: !30, size: 32, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2042, line: 119, baseType: !43, size: 32, offset: 928)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2041, file: !2042, line: 121, baseType: !2068, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2042, line: 80, size: 448, elements: !2070)
!2070 = !{!2071, !2072, !2078}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2069, file: !2042, line: 81, baseType: !99, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2069, file: !2042, line: 82, baseType: !2073, size: 128, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2042, line: 75, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2073, file: !2042, line: 76, baseType: !867, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2073, file: !2042, line: 77, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2069, file: !2042, line: 83, baseType: !1957, size: 256, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2041, file: !2042, line: 132, baseType: !43, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2041, file: !2042, line: 133, baseType: !43, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2041, file: !2042, line: 138, baseType: !43, size: 32, offset: 1056)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2041, file: !2042, line: 139, baseType: !50, size: 128, offset: 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2041, file: !2042, line: 142, baseType: !995, size: 512, offset: 1216)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2041, file: !2042, line: 143, baseType: !1004, size: 64, offset: 1728)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2041, file: !2042, line: 150, baseType: !2086, size: 256, offset: 1792)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2087, size: 256, elements: !2091)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2042, line: 38, size: 128, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2087, file: !2042, line: 39, baseType: !303, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2087, file: !2042, line: 40, baseType: !303, size: 64, offset: 64)
!2091 = !{!2092}
!2092 = !DISubrange(count: 2)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2041, file: !2042, line: 156, baseType: !2094, size: 192, offset: 2048)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2042, line: 66, size: 192, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2094, file: !2042, line: 67, baseType: !2097, size: 192)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2042, line: 47, size: 192, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2097, file: !2042, line: 48, baseType: !539, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2097, file: !2042, line: 49, baseType: !539, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2097, file: !2042, line: 50, baseType: !539, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2041, file: !2042, line: 160, baseType: !1986, size: 640, offset: 2240)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2041, file: !2042, line: 163, baseType: !2104, size: 256, offset: 2880)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 256, elements: !1253)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2041, file: !2042, line: 169, baseType: !1244, size: 64, offset: 3136)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2041, file: !2042, line: 172, baseType: !30, size: 32, offset: 3200)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2041, file: !2042, line: 174, baseType: !2108, size: 64, offset: 3264)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2042, line: 174, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2041, file: !2042, line: 185, baseType: !2111, size: 64, offset: 3328)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !272, line: 860, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 853, size: 64, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2112, file: !272, line: 858, baseType: !271, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2112, file: !272, line: 859, baseType: !79, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2041, file: !2042, line: 186, baseType: !303, size: 64, offset: 3392)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2041, file: !2042, line: 186, baseType: !303, size: 64, offset: 3456)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2041, file: !2042, line: 186, baseType: !303, size: 64, offset: 3520)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2041, file: !2042, line: 186, baseType: !303, size: 64, offset: 3584)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2041, file: !2042, line: 187, baseType: !303, size: 64, offset: 3648)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2041, file: !2042, line: 188, baseType: !303, size: 64, offset: 3712)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2041, file: !2042, line: 189, baseType: !1974, size: 192, offset: 3776)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2041, file: !2042, line: 190, baseType: !199, size: 64, offset: 3968)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2041, file: !2042, line: 190, baseType: !199, size: 64, offset: 4032)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2041, file: !2042, line: 190, baseType: !199, size: 64, offset: 4096)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2041, file: !2042, line: 190, baseType: !199, size: 64, offset: 4160)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2041, file: !2042, line: 191, baseType: !199, size: 64, offset: 4224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2041, file: !2042, line: 191, baseType: !199, size: 64, offset: 4288)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2041, file: !2042, line: 191, baseType: !199, size: 64, offset: 4352)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2041, file: !2042, line: 191, baseType: !199, size: 64, offset: 4416)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2041, file: !2042, line: 192, baseType: !199, size: 64, offset: 4480)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2041, file: !2042, line: 192, baseType: !199, size: 64, offset: 4544)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2041, file: !2042, line: 192, baseType: !199, size: 64, offset: 4608)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2041, file: !2042, line: 192, baseType: !199, size: 64, offset: 4672)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2041, file: !2042, line: 193, baseType: !199, size: 64, offset: 4736)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2041, file: !2042, line: 193, baseType: !199, size: 64, offset: 4800)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2041, file: !2042, line: 194, baseType: !2138, size: 448, offset: 4864)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2139, line: 12, size: 448, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2138, file: !2139, line: 15, baseType: !303, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2138, file: !2139, line: 17, baseType: !303, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2138, file: !2139, line: 19, baseType: !303, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2138, file: !2139, line: 21, baseType: !303, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2138, file: !2139, line: 29, baseType: !303, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2138, file: !2139, line: 35, baseType: !303, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2138, file: !2139, line: 44, baseType: !303, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2041, file: !2042, line: 202, baseType: !305, size: 64, offset: 5312)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2041, file: !2042, line: 213, baseType: !2150, size: 2048, offset: 5376)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 2048, elements: !2009)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2152, line: 43, size: 128, elements: !2153)
!2152 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2151, file: !2152, line: 44, baseType: !198, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2151, file: !2152, line: 45, baseType: !198, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2041, file: !2042, line: 216, baseType: !2157, size: 448, offset: 7424)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2042, line: 30, size: 448, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2157, file: !2042, line: 31, baseType: !30, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2157, file: !2042, line: 32, baseType: !185, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2157, file: !2042, line: 33, baseType: !199, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2157, file: !2042, line: 34, baseType: !303, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2157, file: !2042, line: 34, baseType: !303, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2157, file: !2042, line: 35, baseType: !199, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2157, file: !2042, line: 35, baseType: !199, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2041, file: !2042, line: 219, baseType: !2167, size: 64, offset: 7872)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2042, line: 219, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2041, file: !2042, line: 222, baseType: !43, size: 32, offset: 7936)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2041, file: !2042, line: 223, baseType: !2171, size: 64, offset: 8000)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2042, line: 223, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2041, file: !2042, line: 230, baseType: !1372, size: 8, offset: 8064)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2041, file: !2042, line: 231, baseType: !1341, size: 16, offset: 8080)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2041, file: !2042, line: 232, baseType: !1341, size: 16, offset: 8096)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2041, file: !2042, line: 234, baseType: !1176, size: 64, offset: 8128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2041, file: !2042, line: 237, baseType: !533, size: 256, offset: 8192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2041, file: !2042, line: 243, baseType: !752, size: 320, offset: 8448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !868, file: !507, line: 1111, baseType: !2180, size: 64, offset: 15424)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2042, line: 20, size: 16640, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2181, file: !2042, line: 21, baseType: !79, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2181, file: !2042, line: 22, baseType: !881, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2181, file: !2042, line: 23, baseType: !845, size: 192, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2181, file: !2042, line: 24, baseType: !2187, size: 16384, offset: 256)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 16384, elements: !154)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1460, line: 51, size: 256, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2188, file: !1460, line: 52, baseType: !2191, size: 256)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1460, line: 37, size: 256, elements: !2192)
!2192 = !{!2193, !2200, !2201, !2207}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2191, file: !1460, line: 39, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2195, line: 83, baseType: !2196)
!2195 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2195, line: 82, baseType: !2198)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !30}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2191, file: !1460, line: 40, baseType: !199, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2191, file: !1460, line: 46, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2195, line: 86, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2195, line: 85, baseType: !2205)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2191, file: !1460, line: 48, baseType: !2056, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !868, file: !507, line: 1112, baseType: !2056, size: 64, offset: 15488)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !868, file: !507, line: 1113, baseType: !2056, size: 64, offset: 15552)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !868, file: !507, line: 1115, baseType: !2056, size: 64, offset: 15616)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !868, file: !507, line: 1116, baseType: !2052, size: 192, offset: 15680)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !868, file: !507, line: 1117, baseType: !199, size: 64, offset: 15872)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !868, file: !507, line: 1118, baseType: !196, size: 64, offset: 15936)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !868, file: !507, line: 1119, baseType: !43, size: 32, offset: 16000)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !868, file: !507, line: 1121, baseType: !855, size: 64, offset: 16064)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !868, file: !507, line: 1125, baseType: !2217, size: 64, offset: 16128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !507, line: 43, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !868, file: !507, line: 1127, baseType: !236, size: 32, offset: 16192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !868, file: !507, line: 1128, baseType: !43, size: 32, offset: 16224)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !868, file: !507, line: 1130, baseType: !2222, size: 128, offset: 16256)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2223, line: 37, size: 128, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2222, file: !2223, line: 38, baseType: !30, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2222, file: !2223, line: 39, baseType: !99, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2222, file: !2223, line: 40, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2223, line: 24, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !868, file: !507, line: 1131, baseType: !2231, size: 256, offset: 16384)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2232, line: 12, size: 256, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2231, file: !2232, line: 13, baseType: !149, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2231, file: !2232, line: 14, baseType: !199, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2231, file: !2232, line: 15, baseType: !199, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2231, file: !2232, line: 16, baseType: !1372, size: 8, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !868, file: !507, line: 1134, baseType: !303, size: 64, offset: 16640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !868, file: !507, line: 1135, baseType: !303, size: 64, offset: 16704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !868, file: !507, line: 1138, baseType: !79, size: 32, offset: 16768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !868, file: !507, line: 1141, baseType: !546, size: 32, offset: 16800)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !868, file: !507, line: 1143, baseType: !2243, size: 64, offset: 16832)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !507, line: 735, size: 64, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2243, file: !507, line: 736, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !868, file: !507, line: 1147, baseType: !1059, size: 128, offset: 16896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !868, file: !507, line: 1149, baseType: !867, size: 64, offset: 17024)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !868, file: !507, line: 1151, baseType: !2250, size: 64, offset: 17088)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !507, line: 1151, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !868, file: !507, line: 1188, baseType: !35, size: 64, offset: 17152)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !868, file: !507, line: 1191, baseType: !2254, size: 64, offset: 17216)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !507, line: 44, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !868, file: !507, line: 1194, baseType: !2257, size: 64, offset: 17280)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !507, line: 45, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !868, file: !507, line: 1197, baseType: !2260, size: 64, offset: 17344)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !507, line: 61, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !868, file: !507, line: 1199, baseType: !2263, size: 64, offset: 17408)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2265, line: 99, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2266 = !{!2267, !2268, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2264, file: !2265, line: 100, baseType: !537, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2264, file: !2265, line: 101, baseType: !99, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2264, file: !2265, line: 103, baseType: !119, size: 16, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !868, file: !507, line: 1202, baseType: !2271, size: 64, offset: 17472)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !507, line: 48, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !868, file: !507, line: 1205, baseType: !199, size: 64, offset: 17536)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !868, file: !507, line: 1206, baseType: !2275, size: 64, offset: 17600)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1460, line: 14, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1460, line: 12, size: 384, elements: !2278)
!2278 = !{!2279}
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !1460, line: 13, baseType: !2280, size: 384)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !1460, line: 13, size: 384, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2280, file: !1460, line: 13, baseType: !30, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2280, file: !1460, line: 13, baseType: !30, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2280, file: !1460, line: 13, baseType: !30, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2280, file: !1460, line: 13, baseType: !2286, size: 256, offset: 128)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2287, line: 37, size: 256, elements: !2288)
!2287 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2288 = !{!2289, !2294, !2307, !2313, !2322, !2349, !2354}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2286, file: !2287, line: 42, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 39, size: 64, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2290, file: !2287, line: 40, baseType: !1940, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2290, file: !2287, line: 41, baseType: !242, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2286, file: !2287, line: 50, baseType: !2295, size: 192)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 45, size: 192, elements: !2296)
!2296 = !{!2297, !2299, !2300, !2306}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2295, file: !2287, line: 46, baseType: !2298, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !183, line: 95, baseType: !30)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2295, file: !2287, line: 47, baseType: !30, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2295, file: !2287, line: 48, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2287, line: 11, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2287, line: 8, size: 64, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2302, file: !2287, line: 9, baseType: !30, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2302, file: !2287, line: 10, baseType: !35, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2295, file: !2287, line: 49, baseType: !30, size: 32, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2286, file: !2287, line: 57, baseType: !2308, size: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 53, size: 128, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2308, file: !2287, line: 54, baseType: !1940, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2308, file: !2287, line: 55, baseType: !242, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2308, file: !2287, line: 56, baseType: !2301, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2286, file: !2287, line: 66, baseType: !2314, size: 256)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 60, size: 256, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2321}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2314, file: !2287, line: 61, baseType: !1940, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2314, file: !2287, line: 62, baseType: !242, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2314, file: !2287, line: 63, baseType: !30, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2314, file: !2287, line: 64, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !183, line: 94, baseType: !184)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2314, file: !2287, line: 65, baseType: !2320, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2286, file: !2287, line: 105, baseType: !2323, size: 256)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 69, size: 256, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2323, file: !2287, line: 70, baseType: !35, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !2287, line: 79, baseType: !2327, size: 192, offset: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !2287, line: 79, size: 192, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2338, !2343}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2327, file: !2287, line: 81, baseType: !30, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2327, file: !2287, line: 86, baseType: !1341, size: 16)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2327, file: !2287, line: 92, baseType: !2332, size: 192)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2287, line: 88, size: 192, elements: !2333)
!2333 = !{!2334, !2336, !2337}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2332, file: !2287, line: 89, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1043)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2332, file: !2287, line: 90, baseType: !35, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2332, file: !2287, line: 91, baseType: !35, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2327, file: !2287, line: 97, baseType: !2339, size: 96)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2287, line: 94, size: 96, elements: !2340)
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2339, file: !2287, line: 95, baseType: !2335, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2339, file: !2287, line: 96, baseType: !300, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2327, file: !2287, line: 103, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2287, line: 99, size: 128, elements: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2344, file: !2287, line: 100, baseType: !199, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2344, file: !2287, line: 101, baseType: !300, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2344, file: !2287, line: 102, baseType: !300, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2286, file: !2287, line: 111, baseType: !2350, size: 128)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 108, size: 128, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2350, file: !2287, line: 109, baseType: !185, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2350, file: !2287, line: 110, baseType: !30, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2286, file: !2287, line: 118, baseType: !2355, size: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !2287, line: 114, size: 128, elements: !2356)
!2356 = !{!2357, !2358, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2355, file: !2287, line: 115, baseType: !35, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2355, file: !2287, line: 116, baseType: !30, size: 32, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2355, file: !2287, line: 117, baseType: !43, size: 32, offset: 96)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !868, file: !507, line: 1208, baseType: !2138, size: 448, offset: 17664)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !868, file: !507, line: 1215, baseType: !303, size: 64, offset: 18112)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !868, file: !507, line: 1217, baseType: !303, size: 64, offset: 18176)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !868, file: !507, line: 1219, baseType: !303, size: 64, offset: 18240)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !868, file: !507, line: 1223, baseType: !2365, size: 64, offset: 18304)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2366, line: 99, baseType: !2367)
!2366 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2366, line: 99, size: 64, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2367, file: !2366, line: 99, baseType: !1127, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !868, file: !507, line: 1225, baseType: !271, size: 32, offset: 18368)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !868, file: !507, line: 1226, baseType: !30, size: 32, offset: 18400)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !868, file: !507, line: 1227, baseType: !30, size: 32, offset: 18432)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !868, file: !507, line: 1231, baseType: !2374, size: 64, offset: 18496)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !507, line: 1231, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !868, file: !507, line: 1233, baseType: !50, size: 128, offset: 18560)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !868, file: !507, line: 1240, baseType: !2378, size: 64, offset: 18688)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !507, line: 62, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !868, file: !507, line: 1242, baseType: !2381, size: 64, offset: 18752)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !507, line: 1242, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !868, file: !507, line: 1244, baseType: !50, size: 128, offset: 18816)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !868, file: !507, line: 1245, baseType: !2385, size: 64, offset: 18944)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !507, line: 51, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !868, file: !507, line: 1246, baseType: !533, size: 256, offset: 19008)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !868, file: !507, line: 1247, baseType: !43, size: 32, offset: 19264)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !868, file: !507, line: 1250, baseType: !2390, size: 64, offset: 19328)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !507, line: 57, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !868, file: !507, line: 1251, baseType: !533, size: 256, offset: 19392)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !868, file: !507, line: 1252, baseType: !50, size: 128, offset: 19648)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !868, file: !507, line: 1259, baseType: !1622, size: 64, offset: 19776)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !868, file: !507, line: 1260, baseType: !1341, size: 16, offset: 19840)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !868, file: !507, line: 1261, baseType: !1341, size: 16, offset: 19856)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !868, file: !507, line: 1314, baseType: !2398, size: 64, offset: 19904)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2400, line: 62, size: 256, align: 256, elements: !2401)
!2400 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2399, file: !2400, line: 75, baseType: !300, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2399, file: !2400, line: 90, baseType: !300, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2399, file: !2400, line: 112, baseType: !304, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2399, file: !2400, line: 132, baseType: !300, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2399, file: !2400, line: 140, baseType: !300, size: 32, offset: 160)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2399, file: !2400, line: 149, baseType: !300, size: 32, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2399, file: !2400, line: 154, baseType: !2409, offset: 224)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1266)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !868, file: !507, line: 1315, baseType: !299, size: 32, offset: 19968)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !868, file: !507, line: 1316, baseType: !299, size: 32, offset: 20000)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !868, file: !507, line: 1321, baseType: !199, size: 64, offset: 20032)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !868, file: !507, line: 1325, baseType: !30, size: 32, offset: 20096)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !868, file: !507, line: 1326, baseType: !30, size: 32, offset: 20128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !868, file: !507, line: 1327, baseType: !30, size: 32, offset: 20160)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !868, file: !507, line: 1328, baseType: !30, size: 32, offset: 20192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !868, file: !507, line: 1329, baseType: !852, size: 128, align: 64, offset: 20224)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !868, file: !507, line: 1332, baseType: !2419, size: 128, offset: 20352)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2420, line: 51, size: 128, elements: !2421)
!2420 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2421 = !{!2422, !2427, !2428}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2419, file: !2420, line: 60, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2424, line: 7, size: 64, elements: !2425)
!2424 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2425 = !{!2426}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2423, file: !2424, line: 12, baseType: !1124, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2419, file: !2420, line: 63, baseType: !1372, size: 8, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2419, file: !2420, line: 70, baseType: !1372, size: 8, offset: 72)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !868, file: !507, line: 1335, baseType: !1661, size: 64, offset: 20480)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !868, file: !507, line: 1337, baseType: !2431, size: 128, offset: 20544)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2420, line: 39, size: 128, elements: !2432)
!2432 = !{!2433, !2494, !2495}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2431, file: !2420, line: 40, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !610, line: 74, size: 512, align: 128, elements: !2436)
!2436 = !{!2437, !2438, !2488, !2493}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2435, file: !610, line: 75, baseType: !199, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !610, line: 83, baseType: !2439, size: 320, offset: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2435, file: !610, line: 83, size: 320, elements: !2440)
!2440 = !{!2441, !2462, !2476, !2480, !2487}
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !610, line: 84, baseType: !2442, size: 320)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2439, file: !610, line: 84, size: 320, elements: !2443)
!2443 = !{!2444, !2455, !2456, !2461}
!2444 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !610, line: 90, baseType: !2445, size: 128)
!2445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !610, line: 90, size: 128, elements: !2446)
!2446 = !{!2447, !2448, !2453, !2454}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2445, file: !610, line: 91, baseType: !50, size: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !610, line: 94, baseType: !2449, size: 128)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2445, file: !610, line: 94, size: 128, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2449, file: !610, line: 96, baseType: !35, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2449, file: !610, line: 98, baseType: !43, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2445, file: !610, line: 102, baseType: !50, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2445, file: !610, line: 103, baseType: !50, size: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2442, file: !610, line: 106, baseType: !225, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !610, line: 107, baseType: !2457, size: 64, offset: 192)
!2457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !610, line: 107, size: 64, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2457, file: !610, line: 108, baseType: !199, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2457, file: !610, line: 109, baseType: !199, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2442, file: !610, line: 117, baseType: !199, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !610, line: 119, baseType: !2463, size: 320)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2439, file: !610, line: 119, size: 320, elements: !2464)
!2464 = !{!2465, !2466, !2469, !2470, !2471}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2463, file: !610, line: 124, baseType: !199, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2463, file: !610, line: 125, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !610, line: 125, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2463, file: !610, line: 126, baseType: !199, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2463, file: !610, line: 127, baseType: !199, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !610, line: 128, baseType: !2472, size: 64, offset: 256)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !610, line: 128, size: 64, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2472, file: !610, line: 133, baseType: !199, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2472, file: !610, line: 138, baseType: !537, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !610, line: 141, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2439, file: !610, line: 141, size: 64, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2477, file: !610, line: 142, baseType: !199, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !610, line: 144, baseType: !2481, size: 128)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2439, file: !610, line: 144, size: 128, elements: !2482)
!2482 = !{!2483, !2486}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2481, file: !610, line: 146, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !610, line: 146, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2481, file: !610, line: 147, baseType: !35, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2439, file: !610, line: 161, baseType: !852, size: 128, align: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !610, line: 164, baseType: !2489, size: 32, offset: 384)
!2489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2435, file: !610, line: 164, size: 32, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2489, file: !610, line: 169, baseType: !99, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2489, file: !610, line: 177, baseType: !43, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2435, file: !610, line: 181, baseType: !99, size: 32, offset: 416)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2431, file: !2420, line: 42, baseType: !300, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2431, file: !2420, line: 43, baseType: !300, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !868, file: !507, line: 1340, baseType: !2497, size: 64, offset: 20672)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !507, line: 69, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !868, file: !507, line: 1351, baseType: !30, size: 32, offset: 20736)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !868, file: !507, line: 1352, baseType: !30, size: 32, offset: 20768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !868, file: !507, line: 1354, baseType: !199, size: 64, offset: 20800)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !868, file: !507, line: 1364, baseType: !303, size: 64, offset: 20864)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !868, file: !507, line: 1365, baseType: !303, size: 64, offset: 20928)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !868, file: !507, line: 1412, baseType: !199, size: 64, offset: 20992)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !868, file: !507, line: 1453, baseType: !2506, size: 64, offset: 21056)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !507, line: 1453, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !868, file: !507, line: 1457, baseType: !2509, size: 64, offset: 21120)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1833, line: 61, size: 576, elements: !2511)
!2511 = !{!2512, !2519, !2538, !2541, !2542, !2575, !2585}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2510, file: !1833, line: 62, baseType: !2513, size: 32)
!2513 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1833, line: 51, baseType: !43, size: 32, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2518}
!2515 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!2516 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!2517 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!2518 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !1833, line: 64, baseType: !2520, size: 192, offset: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !1833, line: 64, size: 192, elements: !2521)
!2521 = !{!2522, !2533}
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !1833, line: 65, baseType: !2523, size: 192)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !1833, line: 65, size: 192, elements: !2524)
!2524 = !{!2525, !2532}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2523, file: !1833, line: 66, baseType: !2526, size: 128)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2527, line: 50, size: 128, elements: !2528)
!2527 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2526, file: !2527, line: 52, baseType: !199, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2526, file: !2527, line: 54, baseType: !43, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2526, file: !2527, line: 55, baseType: !43, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2523, file: !1833, line: 67, baseType: !199, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, scope: !2520, file: !1833, line: 70, baseType: !2534, size: 192)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !1833, line: 70, size: 192, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2534, file: !1833, line: 71, baseType: !852, size: 128, align: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2534, file: !1833, line: 72, baseType: !199, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2510, file: !1833, line: 76, baseType: !2539, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1833, line: 76, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2510, file: !1833, line: 77, baseType: !199, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2510, file: !1833, line: 79, baseType: !2543, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2527, line: 25, size: 256, elements: !2545)
!2545 = !{!2546, !2552, !2556}
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !2527, line: 26, baseType: !2547, size: 128)
!2547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !2527, line: 26, size: 128, elements: !2548)
!2548 = !{!2549, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2547, file: !2527, line: 27, baseType: !2550, size: 128)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !2009)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2547, file: !2527, line: 28, baseType: !2550, size: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2544, file: !2527, line: 31, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2527, line: 23, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !2527, line: 33, baseType: !2557, size: 64, offset: 192)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !2527, line: 33, size: 64, elements: !2558)
!2558 = !{!2559, !2565, !2570}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2557, file: !2527, line: 38, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2527, line: 34, size: 64, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2560, file: !2527, line: 35, baseType: !1315, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2560, file: !2527, line: 36, baseType: !107, size: 8, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2560, file: !2527, line: 37, baseType: !107, size: 8, offset: 40)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2557, file: !2527, line: 42, baseType: !2566, size: 16)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2527, line: 39, size: 16, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2566, file: !2527, line: 40, baseType: !107, size: 8)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2566, file: !2527, line: 41, baseType: !107, size: 8, offset: 8)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2557, file: !2527, line: 46, baseType: !2571, size: 16)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2527, line: 43, size: 16, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2571, file: !2527, line: 44, baseType: !107, size: 8)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2571, file: !2527, line: 45, baseType: !107, size: 8, offset: 8)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2510, file: !1833, line: 81, baseType: !2576, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1833, line: 85, size: 384, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2577, file: !1833, line: 86, baseType: !2539, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2577, file: !1833, line: 87, baseType: !199, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2577, file: !1833, line: 88, baseType: !199, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2577, file: !1833, line: 89, baseType: !199, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2577, file: !1833, line: 90, baseType: !1372, size: 8, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2577, file: !1833, line: 92, baseType: !2576, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2510, file: !1833, line: 82, baseType: !43, size: 32, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !868, file: !507, line: 1463, baseType: !2587, offset: 21184)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !507, line: 739, elements: !432)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !868, file: !507, line: 1470, baseType: !852, size: 128, align: 64, offset: 21184)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !868, file: !507, line: 1471, baseType: !881, size: 32, offset: 21312)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !868, file: !507, line: 1472, baseType: !30, size: 32, offset: 21344)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !868, file: !507, line: 1474, baseType: !867, size: 64, offset: 21376)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !868, file: !507, line: 1475, baseType: !2593, size: 320, offset: 21440)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2594, line: 11, size: 320, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2595 = !{!2596, !2597, !2598, !2603}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2593, file: !2594, line: 16, baseType: !424, size: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2593, file: !2594, line: 17, baseType: !199, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2593, file: !2594, line: 18, baseType: !2599, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2593, file: !2594, line: 19, baseType: !299, size: 32, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !868, file: !507, line: 1478, baseType: !2605, size: 64, offset: 21760)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !507, line: 1478, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !868, file: !507, line: 1482, baseType: !881, size: 32, offset: 21824)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !868, file: !507, line: 1489, baseType: !35, size: 64, offset: 21888)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !868, file: !507, line: 1504, baseType: !35, size: 64, offset: 21952)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !868, file: !507, line: 1505, baseType: !304, size: 64, offset: 22016)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !868, file: !507, line: 1506, baseType: !303, size: 64, offset: 22080)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !868, file: !507, line: 1507, baseType: !304, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !868, file: !507, line: 1508, baseType: !304, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !868, file: !507, line: 1509, baseType: !304, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !868, file: !507, line: 1510, baseType: !852, size: 128, align: 64, offset: 22208)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !868, file: !507, line: 1511, baseType: !30, size: 32, offset: 22336)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !868, file: !507, line: 1515, baseType: !2618, size: 64, offset: 22400)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !895, line: 56, size: 64, elements: !2619)
!2619 = !{!2620}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2618, file: !895, line: 57, baseType: !898, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !868, file: !507, line: 1518, baseType: !2618, size: 64, offset: 22464)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !868, file: !507, line: 1528, baseType: !852, size: 128, align: 64, offset: 22528)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !868, file: !507, line: 1552, baseType: !2624, size: 35328, offset: 23040)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2625, line: 430, size: 35328, elements: !2626)
!2625 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2626 = !{!2627, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2656, !2657, !2658, !2659, !2660, !2661, !2664, !2665, !2666, !2667}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2624, file: !2625, line: 432, baseType: !2628, size: 192)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 192, elements: !150)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2630, line: 16, size: 64, elements: !2631)
!2630 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2629, file: !2630, line: 17, baseType: !117, size: 16)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2629, file: !2630, line: 18, baseType: !117, size: 16, offset: 16)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2629, file: !2630, line: 19, baseType: !117, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2629, file: !2630, line: 19, baseType: !117, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2629, file: !2630, line: 19, baseType: !117, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2629, file: !2630, line: 19, baseType: !117, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2629, file: !2630, line: 19, baseType: !117, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2629, file: !2630, line: 20, baseType: !117, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2629, file: !2630, line: 20, baseType: !117, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2629, file: !2630, line: 20, baseType: !117, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2629, file: !2630, line: 20, baseType: !117, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2629, file: !2630, line: 20, baseType: !117, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2629, file: !2630, line: 20, baseType: !117, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2624, file: !2625, line: 436, baseType: !199, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2624, file: !2625, line: 440, baseType: !119, size: 16, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2624, file: !2625, line: 441, baseType: !119, size: 16, offset: 272)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2624, file: !2625, line: 442, baseType: !119, size: 16, offset: 288)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2624, file: !2625, line: 443, baseType: !119, size: 16, offset: 304)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2624, file: !2625, line: 447, baseType: !199, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2624, file: !2625, line: 448, baseType: !199, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2624, file: !2625, line: 459, baseType: !2653, size: 256, offset: 448)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 256, elements: !1253)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2625, line: 428, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2624, file: !2625, line: 461, baseType: !199, size: 64, offset: 704)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2624, file: !2625, line: 463, baseType: !199, size: 64, offset: 768)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2624, file: !2625, line: 465, baseType: !199, size: 64, offset: 832)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2624, file: !2625, line: 466, baseType: !199, size: 64, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2624, file: !2625, line: 467, baseType: !199, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2624, file: !2625, line: 473, baseType: !2662, size: 64, offset: 1024)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2625, line: 10, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2624, file: !2625, line: 480, baseType: !199, size: 64, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2624, file: !2625, line: 482, baseType: !43, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2624, file: !2625, line: 491, baseType: !299, size: 32, offset: 1184)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2624, file: !2625, line: 501, baseType: !2668, size: 33792, offset: 1536)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2669, line: 448, size: 33792, elements: !2670)
!2669 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2670 = !{!2671, !2672, !2673, !2835, !2836, !2842, !2843}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2668, file: !2669, line: 461, baseType: !43, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2668, file: !2669, line: 468, baseType: !199, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2668, file: !2669, line: 476, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2669, line: 356, size: 33280, align: 512, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2675, file: !2669, line: 358, baseType: !43, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2675, file: !2669, line: 361, baseType: !43, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2675, file: !2669, line: 364, baseType: !303, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2675, file: !2669, line: 367, baseType: !303, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2675, file: !2669, line: 370, baseType: !303, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2675, file: !2669, line: 373, baseType: !43, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2675, file: !2669, line: 376, baseType: !43, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2675, file: !2669, line: 391, baseType: !43, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2675, file: !2669, line: 394, baseType: !43, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2675, file: !2669, line: 397, baseType: !2687, size: 32768, offset: 512)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2669, line: 348, size: 32768, elements: !2688)
!2688 = !{!2689, !2704, !2741, !2818, !2831}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2687, file: !2669, line: 349, baseType: !2690, size: 896)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2669, line: 12, size: 896, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2703}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2690, file: !2669, line: 13, baseType: !299, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2690, file: !2669, line: 14, baseType: !299, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2690, file: !2669, line: 15, baseType: !299, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2690, file: !2669, line: 16, baseType: !299, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2690, file: !2669, line: 17, baseType: !299, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2690, file: !2669, line: 18, baseType: !299, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2690, file: !2669, line: 19, baseType: !299, size: 32, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2690, file: !2669, line: 22, baseType: !2700, size: 640, offset: 224)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 640, elements: !2701)
!2701 = !{!2702}
!2702 = !DISubrange(count: 20)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2690, file: !2669, line: 25, baseType: !299, size: 32, offset: 864)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2687, file: !2669, line: 350, baseType: !2705, size: 4096, align: 128)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2669, line: 34, size: 4096, align: 128, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2726, !2727, !2728, !2730, !2732, !2736}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2705, file: !2669, line: 35, baseType: !117, size: 16)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2705, file: !2669, line: 36, baseType: !117, size: 16, offset: 16)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2705, file: !2669, line: 37, baseType: !117, size: 16, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2705, file: !2669, line: 38, baseType: !117, size: 16, offset: 48)
!2711 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2669, line: 39, baseType: !2712, size: 128, offset: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2669, line: 39, size: 128, elements: !2713)
!2713 = !{!2714, !2719}
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !2669, line: 40, baseType: !2715, size: 128)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !2669, line: 40, size: 128, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2715, file: !2669, line: 41, baseType: !303, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2715, file: !2669, line: 42, baseType: !303, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !2669, line: 44, baseType: !2720, size: 128)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !2669, line: 44, size: 128, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2720, file: !2669, line: 45, baseType: !299, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2720, file: !2669, line: 46, baseType: !299, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2720, file: !2669, line: 47, baseType: !299, size: 32, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2720, file: !2669, line: 48, baseType: !299, size: 32, offset: 96)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2705, file: !2669, line: 51, baseType: !299, size: 32, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2705, file: !2669, line: 52, baseType: !299, size: 32, offset: 224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2705, file: !2669, line: 55, baseType: !2729, size: 1024, offset: 256)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 1024, elements: !26)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2705, file: !2669, line: 58, baseType: !2731, size: 2048, offset: 1280)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 2048, elements: !154)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2705, file: !2669, line: 60, baseType: !2733, size: 384, offset: 3328)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 384, elements: !2734)
!2734 = !{!2735}
!2735 = !DISubrange(count: 12)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2669, line: 62, baseType: !2737, size: 384, offset: 3712)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2669, line: 62, size: 384, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2737, file: !2669, line: 63, baseType: !2733, size: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2737, file: !2669, line: 64, baseType: !2733, size: 384)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2687, file: !2669, line: 351, baseType: !2742, size: 1088)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2669, line: 79, size: 1088, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2817}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2742, file: !2669, line: 80, baseType: !299, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2742, file: !2669, line: 81, baseType: !299, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2742, file: !2669, line: 82, baseType: !299, size: 32, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2742, file: !2669, line: 83, baseType: !299, size: 32, offset: 96)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2742, file: !2669, line: 84, baseType: !299, size: 32, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2742, file: !2669, line: 85, baseType: !299, size: 32, offset: 160)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2742, file: !2669, line: 86, baseType: !299, size: 32, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2742, file: !2669, line: 88, baseType: !2700, size: 640, offset: 224)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2742, file: !2669, line: 89, baseType: !107, size: 8, offset: 864)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2742, file: !2669, line: 90, baseType: !107, size: 8, offset: 872)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2742, file: !2669, line: 91, baseType: !107, size: 8, offset: 880)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2742, file: !2669, line: 92, baseType: !107, size: 8, offset: 888)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2742, file: !2669, line: 93, baseType: !107, size: 8, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2742, file: !2669, line: 94, baseType: !107, size: 8, offset: 904)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2742, file: !2669, line: 95, baseType: !2759, size: 64, offset: 960)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2761, line: 11, size: 128, elements: !2762)
!2761 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2760, file: !2761, line: 12, baseType: !185, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2760, file: !2761, line: 13, baseType: !2765, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2767, line: 103, size: 1344, elements: !2768)
!2767 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2797, !2798, !2799}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2766, file: !2767, line: 109, baseType: !199, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2766, file: !2767, line: 110, baseType: !199, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2766, file: !2767, line: 111, baseType: !199, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2766, file: !2767, line: 112, baseType: !199, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2766, file: !2767, line: 113, baseType: !199, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2766, file: !2767, line: 114, baseType: !199, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2766, file: !2767, line: 117, baseType: !199, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2766, file: !2767, line: 118, baseType: !199, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2766, file: !2767, line: 119, baseType: !199, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2766, file: !2767, line: 120, baseType: !199, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2766, file: !2767, line: 121, baseType: !199, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2766, file: !2767, line: 122, baseType: !199, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2766, file: !2767, line: 123, baseType: !199, size: 64, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2766, file: !2767, line: 124, baseType: !199, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2766, file: !2767, line: 125, baseType: !199, size: 64, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2766, file: !2767, line: 139, baseType: !199, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2766, file: !2767, line: 142, baseType: !199, size: 64, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2767, line: 144, baseType: !2787, size: 64, offset: 1088)
!2787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2767, line: 144, size: 64, elements: !2788)
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2787, file: !2767, line: 146, baseType: !117, size: 16)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2787, file: !2767, line: 148, baseType: !303, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2787, file: !2767, line: 150, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2767, line: 59, size: 64, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2792, file: !2767, line: 61, baseType: !303, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2792, file: !2767, line: 63, baseType: !303, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2792, file: !2767, line: 65, baseType: !303, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2766, file: !2767, line: 153, baseType: !199, size: 64, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2766, file: !2767, line: 154, baseType: !199, size: 64, offset: 1216)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2767, line: 156, baseType: !2800, size: 64, offset: 1280)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2767, line: 156, size: 64, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2800, file: !2767, line: 158, baseType: !117, size: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2800, file: !2767, line: 160, baseType: !303, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2800, file: !2767, line: 162, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2767, line: 69, size: 64, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2805, file: !2767, line: 71, baseType: !303, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2805, file: !2767, line: 73, baseType: !303, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2805, file: !2767, line: 75, baseType: !303, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2805, file: !2767, line: 77, baseType: !303, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2805, file: !2767, line: 80, baseType: !303, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2805, file: !2767, line: 83, baseType: !303, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2805, file: !2767, line: 86, baseType: !303, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2805, file: !2767, line: 88, baseType: !303, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2805, file: !2767, line: 93, baseType: !303, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2805, file: !2767, line: 100, baseType: !303, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2742, file: !2669, line: 96, baseType: !299, size: 32, offset: 1024)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2687, file: !2669, line: 352, baseType: !2819, size: 4608, align: 512)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2669, line: 333, size: 4608, align: 512, elements: !2820)
!2820 = !{!2821, !2822, !2829}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2819, file: !2669, line: 334, baseType: !2705, size: 4096, align: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2819, file: !2669, line: 335, baseType: !2823, size: 512, offset: 4096)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2669, line: 312, size: 512, elements: !2824)
!2824 = !{!2825, !2826, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2823, file: !2669, line: 313, baseType: !303, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2823, file: !2669, line: 314, baseType: !303, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2823, file: !2669, line: 315, baseType: !2828, size: 384, offset: 128)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 384, elements: !1359)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2819, file: !2669, line: 336, baseType: !2830, offset: 4608)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !1266)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2687, file: !2669, line: 353, baseType: !2832, size: 32768)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 32768, elements: !2833)
!2833 = !{!2834}
!2834 = !DISubrange(count: 4096)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2668, file: !2669, line: 484, baseType: !2674, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2668, file: !2669, line: 491, baseType: !2837, size: 128, offset: 256)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2669, line: 404, size: 128, elements: !2838)
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2837, file: !2669, line: 424, baseType: !303, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2837, file: !2669, line: 432, baseType: !43, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2837, file: !2669, line: 440, baseType: !43, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2668, file: !2669, line: 498, baseType: !2837, size: 128, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2668, file: !2669, line: 508, baseType: !2675, size: 33280, align: 512, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !835, file: !836, line: 16, baseType: !845, size: 192, offset: 512)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !835, file: !836, line: 17, baseType: !99, size: 32, offset: 704)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !380, file: !227, line: 1240, baseType: !35, size: 64, offset: 6912)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !380, file: !227, line: 1243, baseType: !299, size: 32, offset: 6976)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !380, file: !227, line: 1245, baseType: !591, size: 64, offset: 7040)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !380, file: !227, line: 1246, baseType: !591, size: 64, offset: 7104)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !380, file: !227, line: 1248, baseType: !300, size: 32, offset: 7168)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !380, file: !227, line: 1249, baseType: !2852, size: 64, offset: 7232)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !227, line: 634, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !380, file: !227, line: 1252, baseType: !25, size: 256, offset: 7296)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !380, file: !227, line: 1253, baseType: !2856, size: 128, offset: 7552)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2857, line: 21, baseType: !2858)
!2857 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2857, line: 19, size: 128, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2858, file: !2857, line: 20, baseType: !2861, size: 128)
!2861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !2009)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !380, file: !227, line: 1255, baseType: !43, size: 32, offset: 7680)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !380, file: !227, line: 1261, baseType: !533, size: 256, offset: 7744)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !380, file: !227, line: 1267, baseType: !68, size: 64, offset: 8000)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !380, file: !227, line: 1269, baseType: !326, size: 64, offset: 8064)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !380, file: !227, line: 1271, baseType: !2867, size: 448, offset: 8128)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !600, line: 63, size: 448, elements: !2868)
!2868 = !{!2869, !2874, !2875, !2876, !2877, !2878, !2879}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2867, file: !600, line: 64, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!199, !2873, !598}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2867, file: !600, line: 66, baseType: !2870, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2867, file: !600, line: 69, baseType: !185, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2867, file: !600, line: 70, baseType: !30, size: 32, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !600, line: 71, baseType: !43, size: 32, offset: 224)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2867, file: !600, line: 74, baseType: !50, size: 128, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2867, file: !600, line: 85, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !380, file: !227, line: 1274, baseType: !537, size: 64, offset: 8576)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !380, file: !227, line: 1280, baseType: !537, size: 64, offset: 8640)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !380, file: !227, line: 1283, baseType: !30, size: 32, offset: 8704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !380, file: !227, line: 1286, baseType: !1711, size: 32, offset: 8736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !380, file: !227, line: 1289, baseType: !2886, size: 64, offset: 8768)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1841, line: 18, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !380, file: !227, line: 1290, baseType: !420, size: 64, offset: 8832)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !380, file: !227, line: 1297, baseType: !1455, size: 64, offset: 8896)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !380, file: !227, line: 1304, baseType: !2891, size: 64, offset: 8960)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2892, line: 49, size: 64, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2891, file: !2892, line: 50, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2892, line: 41, size: 512, align: 512, elements: !2897)
!2897 = !{!2898, !2899, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !2892, line: 43, baseType: !79, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2896, file: !2892, line: 45, baseType: !2900, size: 192, offset: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2892, line: 29, size: 192, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2900, file: !2892, line: 30, baseType: !50, size: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2900, file: !2892, line: 32, baseType: !185, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2896, file: !2892, line: 46, baseType: !185, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !380, file: !227, line: 1305, baseType: !2891, size: 64, offset: 9024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !380, file: !227, line: 1306, baseType: !852, size: 128, align: 64, offset: 9088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !380, file: !227, line: 1307, baseType: !1840, size: 256, offset: 9216)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !380, file: !227, line: 1309, baseType: !533, size: 256, offset: 9472)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !380, file: !227, line: 1314, baseType: !30, size: 32, offset: 9728)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !380, file: !227, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !380, file: !227, line: 1318, baseType: !50, size: 128, offset: 10304)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !380, file: !227, line: 1320, baseType: !79, size: 32, offset: 10432)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !380, file: !227, line: 1321, baseType: !50, size: 128, offset: 10496)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !374, file: !375, line: 73, baseType: !30, size: 32, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !374, file: !375, line: 74, baseType: !2916, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1297, line: 42, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !328, file: !267, line: 141, baseType: !2920, size: 64, offset: 704)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!30, !662, !1372}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !328, file: !267, line: 142, baseType: !2924, size: 64, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!265, !265, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !266, file: !267, line: 96, baseType: !379, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !266, file: !267, line: 97, baseType: !199, size: 64, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !266, file: !267, line: 98, baseType: !35, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 100, baseType: !2933, size: 128, offset: 1024)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 100, size: 128, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2933, file: !267, line: 101, baseType: !50, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2933, file: !267, line: 102, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !266, file: !267, line: 104, baseType: !50, size: 128, offset: 1152)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !266, file: !267, line: 105, baseType: !50, size: 128, offset: 1280)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !266, file: !267, line: 113, baseType: !2941, size: 128, offset: 1408)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 109, size: 128, elements: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2941, file: !267, line: 110, baseType: !424, size: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2941, file: !267, line: 111, baseType: !281, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2941, file: !267, line: 112, baseType: !852, size: 128, align: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !259, file: !227, line: 1968, baseType: !2947, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!68, !265, !230, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2952, line: 10, size: 128, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2953 = !{!2954, !2958}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2951, file: !2952, line: 11, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !35}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2951, file: !2952, line: 12, baseType: !35, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !259, file: !227, line: 1969, baseType: !2960, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!30, !2916, !230, !30}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !259, file: !227, line: 1970, baseType: !2964, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!253, !230, !30, !1372}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !259, file: !227, line: 1972, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!30, !265, !149, !30}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !259, file: !227, line: 1974, baseType: !2972, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!30, !2916, !230, !265, !191, !1372}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !259, file: !227, line: 1976, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!30, !265, !230, !265}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !259, file: !227, line: 1977, baseType: !2980, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!30, !230, !265}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !259, file: !227, line: 1978, baseType: !2984, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!30, !2916, !230, !265, !68}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !259, file: !227, line: 1980, baseType: !2988, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!30, !2916, !230, !265, !191}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !259, file: !227, line: 1982, baseType: !2980, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !259, file: !227, line: 1983, baseType: !2993, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!30, !2916, !230, !265, !191, !384}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !259, file: !227, line: 1985, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!30, !2916, !230, !265, !230, !265, !43}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !259, file: !227, line: 1987, baseType: !3001, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!30, !2916, !265, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !227, line: 226, size: 640, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3019, !3028, !3029, !3034, !3035, !3036}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3005, file: !227, line: 227, baseType: !43, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3005, file: !227, line: 228, baseType: !191, size: 16, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !3005, file: !227, line: 241, baseType: !3010, size: 32, offset: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3005, file: !227, line: 241, size: 32, elements: !3011)
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3010, file: !227, line: 242, baseType: !236, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3010, file: !227, line: 243, baseType: !3014, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3015, line: 16, baseType: !3016)
!3015 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3015, line: 14, size: 32, elements: !3017)
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3016, file: !3015, line: 15, baseType: !241, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, scope: !3005, file: !227, line: 245, baseType: !3020, size: 32, offset: 96)
!3020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3005, file: !227, line: 245, size: 32, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3020, file: !227, line: 246, baseType: !245, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3020, file: !227, line: 247, baseType: !3024, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3015, line: 20, baseType: !3025)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3015, line: 18, size: 32, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3025, file: !3015, line: 19, baseType: !249, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3005, file: !227, line: 249, baseType: !389, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3005, file: !227, line: 250, baseType: !3030, size: 128, offset: 192)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !592, line: 13, size: 128, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3030, file: !592, line: 14, baseType: !591, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3030, file: !592, line: 15, baseType: !185, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3005, file: !227, line: 251, baseType: !3030, size: 128, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3005, file: !227, line: 252, baseType: !3030, size: 128, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3005, file: !227, line: 259, baseType: !1203, size: 64, offset: 576)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !259, file: !227, line: 1988, baseType: !3038, size: 64, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!30, !2916, !662, !3041, !299, !43}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3043, line: 22, size: 1280, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3042, file: !3043, line: 23, baseType: !299, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3042, file: !3043, line: 24, baseType: !191, size: 16, offset: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3042, file: !3043, line: 25, baseType: !43, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3042, file: !3043, line: 26, baseType: !1337, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3042, file: !3043, line: 27, baseType: !303, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3042, file: !3043, line: 28, baseType: !303, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3042, file: !3043, line: 41, baseType: !303, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3042, file: !3043, line: 42, baseType: !384, size: 32, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3042, file: !3043, line: 43, baseType: !384, size: 32, offset: 352)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3042, file: !3043, line: 44, baseType: !236, size: 32, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3042, file: !3043, line: 45, baseType: !245, size: 32, offset: 416)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3042, file: !3043, line: 46, baseType: !389, size: 64, offset: 448)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3042, file: !3043, line: 47, baseType: !3030, size: 128, offset: 512)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3042, file: !3043, line: 48, baseType: !3030, size: 128, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3042, file: !3043, line: 49, baseType: !3030, size: 128, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3042, file: !3043, line: 50, baseType: !3030, size: 128, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3042, file: !3043, line: 51, baseType: !303, size: 64, offset: 1024)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3042, file: !3043, line: 52, baseType: !303, size: 64, offset: 1088)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3042, file: !3043, line: 53, baseType: !299, size: 32, offset: 1152)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3042, file: !3043, line: 54, baseType: !299, size: 32, offset: 1184)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3042, file: !3043, line: 55, baseType: !303, size: 64, offset: 1216)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !259, file: !227, line: 1990, baseType: !3067, size: 64, offset: 960)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!181, !265, !149, !196}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !259, file: !227, line: 1991, baseType: !3071, size: 64, offset: 1024)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!30, !230, !3074, !303, !303}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !227, line: 55, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !259, file: !227, line: 1993, baseType: !3077, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!30, !230, !30}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !259, file: !227, line: 1994, baseType: !3081, size: 64, offset: 1152)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!30, !230, !265, !1203, !43, !191}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !259, file: !227, line: 1997, baseType: !3085, size: 64, offset: 1216)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!30, !2916, !230, !1203, !191}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !259, file: !227, line: 1999, baseType: !3089, size: 64, offset: 1280)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!253, !2916, !265, !30}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !259, file: !227, line: 2001, baseType: !3093, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!30, !2916, !265, !253, !30}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !259, file: !227, line: 2003, baseType: !3097, size: 64, offset: 1408)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!30, !2916, !265, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !227, line: 76, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !259, file: !227, line: 2005, baseType: !3103, size: 64, offset: 1472)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!30, !265, !3100}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !259, file: !227, line: 2006, baseType: !3107, size: 64, offset: 1536)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !230}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !227, line: 3192, size: 192, elements: !3112)
!3112 = !{!3113, !3120}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3111, file: !227, line: 3193, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3115, line: 296, size: 128, elements: !3116)
!3115 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3116 = !{!3117, !3118, !3119}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3114, file: !3115, line: 297, baseType: !79, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3114, file: !3115, line: 299, baseType: !603, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3114, file: !3115, line: 300, baseType: !35, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3111, file: !227, line: 3194, baseType: !299, size: 32, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !231, file: !227, line: 655, baseType: !379, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !231, file: !227, line: 656, baseType: !225, size: 64, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !231, file: !227, line: 659, baseType: !35, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !231, file: !227, line: 663, baseType: !199, size: 64, offset: 640)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 671, baseType: !3126, size: 32, offset: 704)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !227, line: 671, size: 32, elements: !3127)
!3127 = !{!3128, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3126, file: !227, line: 672, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3126, file: !227, line: 673, baseType: !43, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !231, file: !227, line: 675, baseType: !384, size: 32, offset: 736)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !231, file: !227, line: 676, baseType: !389, size: 64, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !231, file: !227, line: 677, baseType: !3030, size: 128, offset: 832)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !231, file: !227, line: 678, baseType: !3030, size: 128, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !231, file: !227, line: 679, baseType: !3030, size: 128, offset: 1088)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !231, file: !227, line: 680, baseType: !79, size: 32, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !231, file: !227, line: 681, baseType: !119, size: 16, offset: 1248)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !231, file: !227, line: 682, baseType: !107, size: 8, offset: 1264)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !231, file: !227, line: 683, baseType: !107, size: 8, offset: 1272)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !231, file: !227, line: 684, baseType: !740, size: 64, offset: 1280)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !231, file: !227, line: 691, baseType: !199, size: 64, offset: 1344)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !231, file: !227, line: 692, baseType: !752, size: 320, offset: 1408)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !231, file: !227, line: 694, baseType: !199, size: 64, offset: 1728)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !231, file: !227, line: 695, baseType: !199, size: 64, offset: 1792)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !231, file: !227, line: 697, baseType: !424, size: 128, offset: 1856)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !231, file: !227, line: 698, baseType: !50, size: 128, offset: 1984)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !231, file: !227, line: 707, baseType: !50, size: 128, offset: 2112)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !231, file: !227, line: 708, baseType: !50, size: 128, offset: 2240)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 709, baseType: !3150, size: 128, offset: 2368)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !227, line: 709, size: 128, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3150, file: !227, line: 710, baseType: !420, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3150, file: !227, line: 711, baseType: !852, size: 128, align: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !231, file: !227, line: 713, baseType: !539, size: 64, offset: 2496)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !231, file: !227, line: 714, baseType: !539, size: 64, offset: 2560)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !231, file: !227, line: 715, baseType: !99, size: 32, offset: 2624)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !231, file: !227, line: 716, baseType: !99, size: 32, offset: 2656)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !231, file: !227, line: 717, baseType: !99, size: 32, offset: 2688)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !231, file: !227, line: 719, baseType: !99, size: 32, offset: 2720)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 721, baseType: !3161, size: 64, offset: 2752)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !227, line: 721, size: 64, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3161, file: !227, line: 722, baseType: !1486, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3161, file: !227, line: 723, baseType: !451, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !231, file: !227, line: 725, baseType: !3166, size: 64, offset: 2816)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !227, line: 725, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !231, file: !227, line: 726, baseType: !226, size: 1536, align: 64, offset: 2880)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !231, file: !227, line: 727, baseType: !50, size: 128, offset: 4416)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 728, baseType: !3171, size: 64, offset: 4544)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !227, line: 728, size: 64, elements: !3172)
!3172 = !{!3173, !3174, !3185, !3186}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3171, file: !227, line: 729, baseType: !1661, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3171, file: !227, line: 730, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3177, line: 14, size: 832, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3176, file: !3177, line: 15, baseType: !64, size: 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3176, file: !3177, line: 16, baseType: !37, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3176, file: !3177, line: 17, baseType: !1486, size: 64, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3176, file: !3177, line: 18, baseType: !50, size: 128, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3176, file: !3177, line: 19, baseType: !384, size: 32, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3176, file: !3177, line: 20, baseType: !43, size: 32, offset: 800)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3171, file: !227, line: 731, baseType: !149, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3171, file: !227, line: 732, baseType: !43, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !231, file: !227, line: 735, baseType: !300, size: 32, offset: 4608)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !231, file: !227, line: 738, baseType: !300, size: 32, offset: 4640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !231, file: !227, line: 739, baseType: !2852, size: 64, offset: 4672)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !231, file: !227, line: 750, baseType: !35, size: 64, offset: 4736)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !226, file: !227, line: 474, baseType: !3114, size: 128, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !226, file: !227, line: 475, baseType: !752, size: 320, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !226, file: !227, line: 476, baseType: !603, size: 32, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !226, file: !227, line: 477, baseType: !99, size: 32, offset: 544)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !226, file: !227, line: 482, baseType: !1059, size: 128, offset: 576)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !226, file: !227, line: 483, baseType: !199, size: 64, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !226, file: !227, line: 484, baseType: !199, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !226, file: !227, line: 485, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !227, line: 404, size: 1280, elements: !3202)
!3202 = !{!3203, !3207, !3277, !3281, !3285, !3291, !3296, !3300, !3305, !3309, !3313, !3317, !3318, !3329, !3333, !3337, !3342, !3346, !3353, !3354}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3201, file: !227, line: 405, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!30, !2434, !463}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3201, file: !227, line: 406, baseType: !3208, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!30, !1203, !3211}
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !610, line: 293, size: 1536, elements: !3213)
!3213 = !{!3214, !3244, !3258}
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !610, line: 295, baseType: !3215, size: 512)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !610, line: 295, size: 512, elements: !3216)
!3216 = !{!3217, !3243}
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3215, file: !610, line: 296, baseType: !3218, size: 448)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !610, line: 296, size: 448, elements: !3219)
!3219 = !{!3220, !3221, !3230, !3231, !3232, !3241, !3242}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !610, line: 298, baseType: !199, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !610, line: 299, baseType: !3222, size: 128, offset: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3218, file: !610, line: 299, size: 128, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3222, file: !610, line: 300, baseType: !50, size: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !610, line: 302, baseType: !3226, size: 128)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !610, line: 302, size: 128, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3226, file: !610, line: 303, baseType: !35, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3226, file: !610, line: 305, baseType: !43, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3218, file: !610, line: 310, baseType: !225, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3218, file: !610, line: 311, baseType: !199, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !610, line: 312, baseType: !3233, size: 64, offset: 320)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3218, file: !610, line: 312, size: 64, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3233, file: !610, line: 313, baseType: !35, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3233, file: !610, line: 314, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !610, line: 257, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 255, size: 64, elements: !3239)
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3238, file: !610, line: 256, baseType: !199, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3218, file: !610, line: 316, baseType: !99, size: 32, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3218, file: !610, line: 317, baseType: !99, size: 32, offset: 416)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3215, file: !610, line: 323, baseType: !2435, size: 512, align: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !610, line: 325, baseType: !3245, size: 512, offset: 512)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !610, line: 325, size: 512, elements: !3246)
!3246 = !{!3247, !3257}
!3247 = !DIDerivedType(tag: DW_TAG_member, scope: !3245, file: !610, line: 326, baseType: !3248, size: 320)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !610, line: 326, size: 320, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3248, file: !610, line: 327, baseType: !199, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3248, file: !610, line: 328, baseType: !199, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3248, file: !610, line: 329, baseType: !199, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3248, file: !610, line: 331, baseType: !99, size: 32, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3248, file: !610, line: 332, baseType: !99, size: 32, offset: 224)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3248, file: !610, line: 333, baseType: !99, size: 32, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3248, file: !610, line: 335, baseType: !43, size: 32, offset: 288)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3245, file: !610, line: 339, baseType: !2435, size: 512, align: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !610, line: 341, baseType: !3259, size: 512, offset: 1024)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !610, line: 341, size: 512, elements: !3260)
!3260 = !{!3261, !3270, !3276}
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !610, line: 342, baseType: !3262, size: 384)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3259, file: !610, line: 342, size: 384, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3262, file: !610, line: 343, baseType: !199, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3262, file: !610, line: 344, baseType: !199, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3262, file: !610, line: 346, baseType: !35, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3262, file: !610, line: 347, baseType: !35, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3262, file: !610, line: 348, baseType: !35, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3262, file: !610, line: 349, baseType: !35, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !610, line: 352, baseType: !3271, size: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3259, file: !610, line: 352, size: 256, elements: !3272)
!3272 = !{!3273, !3274, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3271, file: !610, line: 353, baseType: !199, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3271, file: !610, line: 354, baseType: !199, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3271, file: !610, line: 356, baseType: !50, size: 128, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3259, file: !610, line: 359, baseType: !2435, size: 512, align: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3201, file: !227, line: 409, baseType: !3278, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!30, !225, !463}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3201, file: !227, line: 412, baseType: !3282, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!1372, !225, !3211}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3201, file: !227, line: 414, baseType: !3286, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !3289}
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !227, line: 310, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3201, file: !227, line: 416, baseType: !3292, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!30, !1203, !225, !389, !43, !3295, !1676}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3201, file: !227, line: 419, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!30, !1203, !225, !389, !43, !43, !2434, !35}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3201, file: !227, line: 424, baseType: !3301, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!3304, !225, !3304}
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !51, line: 131, baseType: !303)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3201, file: !227, line: 425, baseType: !3306, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3211, !196, !196}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3201, file: !227, line: 426, baseType: !3310, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!1372, !3211, !603}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3201, file: !227, line: 427, baseType: !3314, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3211}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3201, file: !227, line: 428, baseType: !1505, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3201, file: !227, line: 433, baseType: !3319, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!30, !225, !3211, !3211, !3322}
!3322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3323, line: 15, baseType: !43, size: 32, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3324 = !{!3325, !3326, !3327, !3328}
!3325 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3326 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3327 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3328 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3201, file: !227, line: 435, baseType: !3330, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!30, !3211}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3201, file: !227, line: 436, baseType: !3334, size: 64, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!1372, !3211, !196, !196}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3201, file: !227, line: 438, baseType: !3338, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3211, !3341, !3341}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3201, file: !227, line: 439, baseType: !3343, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!30, !225, !2434}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3201, file: !227, line: 442, baseType: !3347, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!30, !3350, !1203, !3352}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !227, line: 66, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3201, file: !227, line: 444, baseType: !1668, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3201, file: !227, line: 445, baseType: !3355, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!30, !1508, !1530}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !227, line: 486, baseType: !199, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !226, file: !227, line: 487, baseType: !752, size: 320, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !226, file: !227, line: 488, baseType: !1711, size: 32, offset: 1280)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !226, file: !227, line: 489, baseType: !79, size: 32, offset: 1312)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !226, file: !227, line: 490, baseType: !50, size: 128, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !226, file: !227, line: 491, baseType: !35, size: 64, offset: 1472)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !216, file: !175, line: 180, baseType: !3365, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!181, !1203, !72, !215, !149, !389, !196}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !216, file: !175, line: 182, baseType: !3365, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !216, file: !175, line: 184, baseType: !3370, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!30, !1203, !72, !215, !1569}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !204, file: !175, line: 90, baseType: !3374, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !204, file: !175, line: 91, baseType: !3376, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !165, file: !65, line: 120, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!3381, !132}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3384, line: 39, size: 384, elements: !3385)
!3384 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3385 = !{!3386, !3392, !3396, !3400, !3406, !3410}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3383, file: !3384, line: 40, baseType: !3387, size: 32)
!3387 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3384, line: 26, baseType: !43, size: 32, elements: !3388)
!3388 = !{!3389, !3390, !3391}
!3389 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3390 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3391 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3383, file: !3384, line: 41, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!1372}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3383, file: !3384, line: 42, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!35}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3383, file: !3384, line: 43, baseType: !3401, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!1800, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3384, line: 19, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3383, file: !3384, line: 44, baseType: !3407, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1800}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3383, file: !3384, line: 45, baseType: !2955, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !165, file: !65, line: 121, baseType: !3412, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!1800, !132}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !165, file: !65, line: 122, baseType: !3416, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !132, !3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !64, file: !65, line: 70, baseType: !3422, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !404, line: 190, size: 1152, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3516, !3517, !3518, !3519, !3520, !3523}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3423, file: !404, line: 191, baseType: !99, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3423, file: !404, line: 192, baseType: !99, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3423, file: !404, line: 202, baseType: !3422, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3423, file: !404, line: 203, baseType: !68, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3423, file: !404, line: 205, baseType: !925, size: 192, align: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3423, file: !404, line: 207, baseType: !1800, size: 64, offset: 384)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3423, file: !404, line: 208, baseType: !43, size: 32, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !404, line: 209, baseType: !3433, size: 256, offset: 512)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3423, file: !404, line: 209, size: 256, elements: !3434)
!3434 = !{!3435, !3444, !3448}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3433, file: !404, line: 210, baseType: !3436, size: 256)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !404, line: 153, size: 256, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3443}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3436, file: !404, line: 154, baseType: !199, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3436, file: !404, line: 156, baseType: !1062, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3436, file: !404, line: 162, baseType: !3441, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !404, line: 162, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3436, file: !404, line: 167, baseType: !199, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3433, file: !404, line: 211, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !404, line: 170, size: 64, elements: !3446)
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3445, file: !404, line: 171, baseType: !3422, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3433, file: !404, line: 212, baseType: !3449, size: 256)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !404, line: 174, size: 256, elements: !3450)
!3450 = !{!3451, !3511, !3514, !3515}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3449, file: !404, line: 175, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !404, line: 271, size: 768, elements: !3455)
!3455 = !{!3456, !3476, !3480, !3484, !3488, !3492, !3496, !3500, !3501, !3502, !3503, !3507}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3454, file: !404, line: 276, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!30, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !404, line: 251, size: 1216, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3461, file: !404, line: 253, baseType: !3422, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3461, file: !404, line: 254, baseType: !1203, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3461, file: !404, line: 255, baseType: !505, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3461, file: !404, line: 256, baseType: !35, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3461, file: !404, line: 259, baseType: !533, size: 256, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3461, file: !404, line: 260, baseType: !533, size: 256, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3461, file: !404, line: 261, baseType: !30, size: 32, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3461, file: !404, line: 262, baseType: !50, size: 128, offset: 832)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3461, file: !404, line: 263, baseType: !149, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3461, file: !404, line: 265, baseType: !196, size: 64, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3461, file: !404, line: 266, baseType: !1372, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3461, file: !404, line: 267, baseType: !1372, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3461, file: !404, line: 268, baseType: !1614, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3454, file: !404, line: 277, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3460}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3454, file: !404, line: 290, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!30, !505, !35}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3454, file: !404, line: 292, baseType: !3485, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!35, !505, !1499}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3454, file: !404, line: 293, baseType: !3489, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!35, !505, !35, !1499}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3454, file: !404, line: 294, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !505, !35}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3454, file: !404, line: 296, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!181, !3460, !149, !196, !389}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3454, file: !404, line: 306, baseType: !196, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3454, file: !404, line: 313, baseType: !1372, size: 8, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3454, file: !404, line: 314, baseType: !3497, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3454, file: !404, line: 317, baseType: !3504, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!1556, !3460, !1558}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3454, file: !404, line: 320, baseType: !3508, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!30, !3460, !1569}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3449, file: !404, line: 176, baseType: !3512, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !404, line: 35, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3449, file: !404, line: 177, baseType: !389, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3449, file: !404, line: 178, baseType: !3422, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3423, file: !404, line: 215, baseType: !35, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3423, file: !404, line: 221, baseType: !303, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3423, file: !404, line: 223, baseType: !119, size: 16, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3423, file: !404, line: 224, baseType: !191, size: 16, offset: 912)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3423, file: !404, line: 225, baseType: !3521, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !404, line: 36, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3423, file: !404, line: 227, baseType: !852, size: 128, align: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !64, file: !65, line: 71, baseType: !3525, size: 32, offset: 448)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3526, line: 19, size: 32, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3525, file: !3526, line: 20, baseType: !881, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !64, file: !65, line: 73, baseType: !43, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !64, file: !65, line: 74, baseType: !43, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !64, file: !65, line: 75, baseType: !43, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !64, file: !65, line: 76, baseType: !43, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !64, file: !65, line: 77, baseType: !43, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !61, file: !39, line: 47, baseType: !37, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !61, file: !39, line: 48, baseType: !72, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !61, file: !39, line: 49, baseType: !3537, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !39, line: 49, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !61, file: !39, line: 50, baseType: !1956, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !38, file: !39, line: 418, baseType: !3541, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !39, line: 53, size: 448, elements: !3543)
!3543 = !{!3544, !3545, !3550, !3554, !3558, !3562}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3542, file: !39, line: 54, baseType: !187, size: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3542, file: !39, line: 55, baseType: !3546, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!181, !3541, !3549, !149}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3542, file: !39, line: 57, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!181, !3541, !3549, !68, !196}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3542, file: !39, line: 59, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !37, !68}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3542, file: !39, line: 60, baseType: !3559, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!30, !37}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3542, file: !39, line: 61, baseType: !3563, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !37}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !38, file: !39, line: 419, baseType: !68, size: 64, offset: 1472)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !38, file: !39, line: 420, baseType: !68, size: 64, offset: 1536)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !38, file: !39, line: 421, baseType: !72, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !38, file: !39, line: 424, baseType: !3570, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !39, line: 424, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !38, file: !39, line: 425, baseType: !3574, size: 64, offset: 1728)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !38, file: !39, line: 426, baseType: !43, size: 32, offset: 1792)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !38, file: !39, line: 435, baseType: !533, size: 256, offset: 1856)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !38, file: !39, line: 437, baseType: !3579, size: 64, offset: 2112)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3581, line: 69, size: 320, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3582 = !{!3583, !3584, !3585, !3602, !3604, !3608, !3609}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3580, file: !3581, line: 70, baseType: !68, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3580, file: !3581, line: 71, baseType: !37, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3580, file: !3581, line: 72, baseType: !3586, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3581, line: 47, size: 256, elements: !3589)
!3589 = !{!3590, !3591, !3597, !3601}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3588, file: !3581, line: 49, baseType: !43, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3588, file: !3581, line: 51, baseType: !3592, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!30, !68, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3588, file: !3581, line: 53, baseType: !3598, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!30, !149, !3595}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3588, file: !3581, line: 55, baseType: !2955, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3580, file: !3581, line: 73, baseType: !3603, size: 16, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3580, file: !3581, line: 74, baseType: !3605, size: 8, offset: 208)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !108, line: 16, baseType: !3606)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !110, line: 20, baseType: !3607)
!3607 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3580, file: !3581, line: 75, baseType: !107, size: 8, offset: 216)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3580, file: !3581, line: 76, baseType: !3610, size: 64, offset: 256)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3580, file: !3581, line: 76, size: 64, elements: !3611)
!3611 = !{!3612, !3613, !3620}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3610, file: !3581, line: 77, baseType: !35, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3610, file: !3581, line: 78, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3581, line: 86, size: 128, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3616, file: !3581, line: 87, baseType: !43, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3616, file: !3581, line: 88, baseType: !149, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3610, file: !3581, line: 79, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3581, line: 92, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3623, file: !3581, line: 94, baseType: !43, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3623, file: !3581, line: 95, baseType: !43, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3623, file: !3581, line: 96, baseType: !861, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3623, file: !3581, line: 97, baseType: !3586, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3623, file: !3581, line: 98, baseType: !35, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !38, file: !39, line: 438, baseType: !43, size: 32, offset: 2176)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !38, file: !39, line: 441, baseType: !43, size: 32, offset: 2208)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !38, file: !39, line: 442, baseType: !3570, size: 64, offset: 2240)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !38, file: !39, line: 443, baseType: !3574, size: 64, offset: 2304)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !38, file: !39, line: 444, baseType: !1372, size: 8, offset: 2368)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !38, file: !39, line: 451, baseType: !1372, size: 8, offset: 2376)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !38, file: !39, line: 454, baseType: !43, size: 32, offset: 2400)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !38, file: !39, line: 455, baseType: !3638, size: 64, offset: 2432)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3640, line: 23, size: 96, elements: !3641)
!3640 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3641 = !{!3642, !3643, !3644}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3639, file: !3640, line: 24, baseType: !30, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3639, file: !3640, line: 24, baseType: !30, size: 32, offset: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3639, file: !3640, line: 24, baseType: !30, size: 32, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !39, line: 458, baseType: !3646, size: 64, offset: 2496)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!30}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !38, file: !39, line: 460, baseType: !3650, size: 4032, align: 512, offset: 2560)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3651, size: 4032, elements: !3665)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !39, line: 362, size: 576, elements: !3652)
!3652 = !{!3653, !3654, !3655}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3651, file: !39, line: 363, baseType: !35, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3651, file: !39, line: 364, baseType: !43, size: 32, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3651, file: !39, line: 367, baseType: !3656, size: 448, offset: 128)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !39, line: 319, size: 448, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3656, file: !39, line: 320, baseType: !37, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3656, file: !39, line: 321, baseType: !3660, size: 384, offset: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3661, line: 40, size: 384, elements: !3662)
!3661 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3662 = !{!3663}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3660, file: !3661, line: 41, baseType: !3664, size: 384, align: 64)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 384, align: 64, elements: !2091)
!3665 = !{!3666}
!3666 = !DISubrange(count: 7)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !38, file: !39, line: 463, baseType: !3668, size: 192, offset: 6592)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3669, line: 8, size: 192, elements: !3670)
!3669 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3670 = !{!3671, !3672, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3668, file: !3669, line: 10, baseType: !43, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3668, file: !3669, line: 11, baseType: !499, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3668, file: !3669, line: 12, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3676, line: 59, size: 48, elements: !3677)
!3676 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3675, file: !3676, line: 60, baseType: !1817, size: 16)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3675, file: !3676, line: 61, baseType: !1817, size: 16, offset: 16)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3675, file: !3676, line: 63, baseType: !43, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3675, file: !3676, line: 64, baseType: !43, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3675, file: !3676, line: 65, baseType: !43, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3675, file: !3676, line: 66, baseType: !43, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !38, file: !39, line: 465, baseType: !199, size: 64, offset: 6784)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !38, file: !39, line: 469, baseType: !43, size: 32, offset: 6848)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !38, file: !39, line: 470, baseType: !50, size: 128, offset: 6912)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !38, file: !39, line: 471, baseType: !3688, size: 64, offset: 7040)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3690, line: 33, size: 96, elements: !3691)
!3690 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3691 = !{!3692, !3693, !3694, !3695}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3689, file: !3690, line: 37, baseType: !30, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3689, file: !3690, line: 43, baseType: !30, size: 32, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3689, file: !3690, line: 45, baseType: !119, size: 16, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3689, file: !3690, line: 47, baseType: !119, size: 16, offset: 80)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !38, file: !39, line: 476, baseType: !3697, size: 64, offset: 7104)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !39, line: 378, size: 256, elements: !3699)
!3699 = !{!3700, !3716, !3717, !3718}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3698, file: !39, line: 379, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3703, line: 204, baseType: !3704)
!3703 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3703, line: 197, size: 192, elements: !3705)
!3705 = !{!3706, !3708, !3709, !3710, !3712, !3714}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3704, file: !3703, line: 198, baseType: !3707, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3703, line: 21, baseType: !300)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3704, file: !3703, line: 199, baseType: !111, size: 8, offset: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3704, file: !3703, line: 200, baseType: !111, size: 8, offset: 40)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3704, file: !3703, line: 201, baseType: !3711, size: 16, offset: 48)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3703, line: 17, baseType: !118)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3704, file: !3703, line: 202, baseType: !3713, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3703, line: 16, baseType: !304)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3704, file: !3703, line: 203, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3703, line: 22, baseType: !304)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3698, file: !39, line: 380, baseType: !43, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3698, file: !39, line: 381, baseType: !149, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3698, file: !39, line: 382, baseType: !149, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !38, file: !39, line: 477, baseType: !3698, size: 256, offset: 7168)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !38, file: !39, line: 480, baseType: !3721, size: 64, offset: 7424)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !39, line: 480, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !38, file: !39, line: 483, baseType: !3724, size: 64, offset: 7488)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !39, line: 483, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !38, file: !39, line: 488, baseType: !149, size: 64, offset: 7552)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !38, file: !39, line: 492, baseType: !35, size: 64, offset: 7616)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !38, file: !39, line: 493, baseType: !43, size: 32, offset: 7680)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !38, file: !39, line: 495, baseType: !35, size: 64, offset: 7744)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !38, file: !39, line: 496, baseType: !43, size: 32, offset: 7808)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !38, file: !39, line: 499, baseType: !43, size: 32, offset: 7840)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !38, file: !39, line: 500, baseType: !3733, size: 64, offset: 7872)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3735, line: 45, baseType: !3736)
!3735 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !38, file: !39, line: 503, baseType: !43, size: 32, offset: 7936)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !38, file: !39, line: 504, baseType: !3739, size: 64, offset: 8000)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3742, line: 96, size: 192, elements: !3743)
!3742 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3743 = !{!3744, !3745, !3788, !3790}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3741, file: !3742, line: 97, baseType: !43, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3741, file: !3742, line: 98, baseType: !3746, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3742, line: 24, size: 3072, elements: !3748)
!3748 = !{!3749, !3751, !3752, !3753, !3754, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3785, !3786, !3787}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3747, file: !3742, line: 26, baseType: !3750, size: 128)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 128, elements: !2091)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3747, file: !3742, line: 27, baseType: !3750, size: 128, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3747, file: !3742, line: 28, baseType: !30, size: 32, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3747, file: !3742, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3747, file: !3742, line: 32, baseType: !3755, size: 960, offset: 576)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3756, line: 206, size: 960, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3757 = !{!3758, !3759, !3762, !3764, !3765, !3767}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3755, file: !3756, line: 207, baseType: !855, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3755, file: !3756, line: 208, baseType: !3760, size: 256, offset: 64)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 256, elements: !1253)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3755, file: !3756, line: 209, baseType: !3763, size: 256, offset: 320)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !1253)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3755, file: !3756, line: 213, baseType: !185, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3755, file: !3756, line: 215, baseType: !3766, size: 256, offset: 640)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !1253)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3755, file: !3756, line: 216, baseType: !107, size: 8, offset: 896)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3747, file: !3742, line: 33, baseType: !199, size: 64, offset: 1536)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3747, file: !3742, line: 34, baseType: !199, size: 64, offset: 1600)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3747, file: !3742, line: 35, baseType: !1372, size: 8, offset: 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3747, file: !3742, line: 36, baseType: !2593, size: 320, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3747, file: !3742, line: 37, baseType: !1840, size: 256, offset: 2048)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3747, file: !3742, line: 38, baseType: !852, size: 128, align: 64, offset: 2304)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3747, file: !3742, line: 39, baseType: !3775, size: 64, offset: 2432)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3742, line: 49, size: 768, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3776, file: !3742, line: 50, baseType: !79, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3776, file: !3742, line: 51, baseType: !3763, size: 256, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3776, file: !3742, line: 53, baseType: !3763, size: 256, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3776, file: !3742, line: 54, baseType: !199, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3776, file: !3742, line: 55, baseType: !3775, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3776, file: !3742, line: 56, baseType: !30, size: 32, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3776, file: !3742, line: 57, baseType: !30, size: 32, offset: 736)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3747, file: !3742, line: 40, baseType: !199, size: 64, offset: 2496)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3747, file: !3742, line: 42, baseType: !30, size: 32, offset: 2560)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3747, file: !3742, line: 43, baseType: !3740, size: 64, offset: 2624)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3741, file: !3742, line: 99, baseType: !3789, offset: 128)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !431, line: 211, elements: !432)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3741, file: !3742, line: 100, baseType: !3791, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3742, line: 63, size: 3008, elements: !3793)
!3793 = !{!3794, !3795, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3823}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3792, file: !3742, line: 64, baseType: !3775, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3792, file: !3742, line: 65, baseType: !3796, size: 192, offset: 64)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3775, size: 192, elements: !150)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3792, file: !3742, line: 67, baseType: !30, size: 32, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3792, file: !3742, line: 68, baseType: !533, size: 256, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !3742, line: 69, baseType: !79, size: 32, offset: 576)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3792, file: !3742, line: 70, baseType: !533, size: 256, offset: 640)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3792, file: !3742, line: 71, baseType: !199, size: 64, offset: 896)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3792, file: !3742, line: 72, baseType: !199, size: 64, offset: 960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3792, file: !3742, line: 73, baseType: !199, size: 64, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3792, file: !3742, line: 74, baseType: !199, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3792, file: !3742, line: 75, baseType: !199, size: 64, offset: 1152)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3792, file: !3742, line: 76, baseType: !199, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3792, file: !3742, line: 77, baseType: !199, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3792, file: !3742, line: 78, baseType: !199, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3792, file: !3742, line: 79, baseType: !1372, size: 8, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3792, file: !3742, line: 80, baseType: !199, size: 64, offset: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3792, file: !3742, line: 81, baseType: !533, size: 256, offset: 1536)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3792, file: !3742, line: 82, baseType: !1957, size: 256, offset: 1792)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3792, file: !3742, line: 84, baseType: !99, size: 32, offset: 2048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3792, file: !3742, line: 87, baseType: !199, size: 64, offset: 2112)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3792, file: !3742, line: 88, baseType: !199, size: 64, offset: 2176)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3792, file: !3742, line: 89, baseType: !3817, size: 704, offset: 2240)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1841, line: 111, size: 704, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3817, file: !1841, line: 112, baseType: !1840, size: 256)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3817, file: !1841, line: 113, baseType: !2593, size: 320, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3817, file: !1841, line: 116, baseType: !2886, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3817, file: !1841, line: 117, baseType: !30, size: 32, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3792, file: !3742, line: 90, baseType: !3740, size: 64, offset: 2944)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !38, file: !39, line: 515, baseType: !3825, size: 64, offset: 8064)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3827, line: 117, size: 128, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3826, file: !3827, line: 118, baseType: !1315, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3826, file: !3827, line: 119, baseType: !1315, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3826, file: !3827, line: 120, baseType: !185, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !38, file: !39, line: 516, baseType: !43, size: 32, offset: 8128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !38, file: !39, line: 519, baseType: !43, size: 32, offset: 8160)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !38, file: !39, line: 520, baseType: !3835, size: 64, offset: 8192)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !38, file: !39, line: 523, baseType: !3837, size: 64, offset: 8256)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !39, line: 523, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !38, file: !39, line: 524, baseType: !43, size: 32, offset: 8320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !38, file: !39, line: 525, baseType: !3842, size: 64, offset: 8384)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !39, line: 525, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !38, file: !39, line: 526, baseType: !43, size: 32, offset: 8448)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !38, file: !39, line: 533, baseType: !35, size: 64, offset: 8512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !38, file: !39, line: 534, baseType: !43, size: 32, offset: 8576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !38, file: !39, line: 535, baseType: !3849, size: 64, offset: 8640)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !38, file: !39, line: 536, baseType: !43, size: 32, offset: 8704)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !38, file: !39, line: 539, baseType: !30, size: 32, offset: 8736)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !38, file: !39, line: 540, baseType: !3853, size: 64, offset: 8768)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3855, line: 32, size: 64, elements: !3856)
!3855 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3854, file: !3855, line: 33, baseType: !1315, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3854, file: !3855, line: 34, baseType: !1315, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !38, file: !39, line: 563, baseType: !50, size: 128, offset: 8832)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !38, file: !39, line: 565, baseType: !50, size: 128, offset: 8960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !38, file: !39, line: 568, baseType: !3862, size: 64, offset: 9088)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !38, file: !39, line: 570, baseType: !99, size: 32, offset: 9152)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !22, file: !19, line: 32, baseType: !3865, size: 64, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !3867, line: 705, size: 5824, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!3868 = !{!3869, !3870, !3871, !3874, !3875, !3929, !4005, !4006, !4007, !4008, !4009, !4022, !4128, !4141, !4151, !4155, !4157, !4158, !4159, !4163, !4170, !4171, !4174, !4177, !4181, !4184, !4185, !4186, !4187, !4188, !4189, !4219, !4220, !4221, !4224, !4227, !4255, !4262, !4263, !4264, !4265, !4266}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3866, file: !3867, line: 706, baseType: !64, size: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3866, file: !3867, line: 707, baseType: !3865, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3866, file: !3867, line: 709, baseType: !3872, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !3867, line: 37, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3866, file: !3867, line: 711, baseType: !68, size: 64, offset: 640)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3866, file: !3867, line: 712, baseType: !3876, size: 64, offset: 704)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !3867, line: 89, size: 384, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3888, !3893, !3897}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !3867, line: 90, baseType: !68, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3878, file: !3867, line: 91, baseType: !201, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3878, file: !3867, line: 92, baseType: !3883, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!30, !3886, !144}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3866)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3878, file: !3867, line: 93, baseType: !3889, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!149, !3886, !3892, !3419, !3420}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3878, file: !3867, line: 95, baseType: !3894, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3865}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3878, file: !3867, line: 97, baseType: !3898, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3901, line: 286, size: 1472, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!3902 = !{!3903, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3900, file: !3901, line: 287, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!30, !3865}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3900, file: !3901, line: 288, baseType: !3894, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3900, file: !3901, line: 289, baseType: !3904, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3900, file: !3901, line: 290, baseType: !3904, size: 64, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3900, file: !3901, line: 291, baseType: !3904, size: 64, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3900, file: !3901, line: 292, baseType: !3904, size: 64, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3900, file: !3901, line: 293, baseType: !3904, size: 64, offset: 384)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3900, file: !3901, line: 294, baseType: !3904, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3900, file: !3901, line: 295, baseType: !3904, size: 64, offset: 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3900, file: !3901, line: 296, baseType: !3904, size: 64, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3900, file: !3901, line: 297, baseType: !3904, size: 64, offset: 640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3900, file: !3901, line: 298, baseType: !3904, size: 64, offset: 704)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3900, file: !3901, line: 299, baseType: !3904, size: 64, offset: 768)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3900, file: !3901, line: 300, baseType: !3904, size: 64, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3900, file: !3901, line: 301, baseType: !3904, size: 64, offset: 896)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3900, file: !3901, line: 302, baseType: !3904, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3900, file: !3901, line: 303, baseType: !3904, size: 64, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3900, file: !3901, line: 304, baseType: !3904, size: 64, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3900, file: !3901, line: 305, baseType: !3904, size: 64, offset: 1152)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3900, file: !3901, line: 306, baseType: !3904, size: 64, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3900, file: !3901, line: 307, baseType: !3904, size: 64, offset: 1280)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3900, file: !3901, line: 308, baseType: !3904, size: 64, offset: 1344)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3900, file: !3901, line: 309, baseType: !3904, size: 64, offset: 1408)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3866, file: !3867, line: 714, baseType: !3930, size: 64, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3933, line: 80, size: 1344, elements: !3934)
!3933 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4004}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3932, file: !3933, line: 81, baseType: !68, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3932, file: !3933, line: 82, baseType: !68, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3932, file: !3933, line: 83, baseType: !201, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3932, file: !3933, line: 84, baseType: !201, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3932, file: !3933, line: 85, baseType: !201, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3932, file: !3933, line: 87, baseType: !3941, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!30, !3865, !3944}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3946, line: 96, size: 1152, elements: !3947)
!3946 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3959, !3963, !3967, !3968, !3969, !3970, !3971, !3979, !3980, !3981, !3982, !3983, !3984}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3945, file: !3946, line: 97, baseType: !68, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3945, file: !3946, line: 98, baseType: !3930, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3945, file: !3946, line: 100, baseType: !37, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3945, file: !3946, line: 101, baseType: !68, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3945, file: !3946, line: 103, baseType: !1372, size: 8, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3945, file: !3946, line: 104, baseType: !3954, size: 32, offset: 288)
!3954 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3946, line: 45, baseType: !43, size: 32, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!3957 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!3958 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3945, file: !3946, line: 106, baseType: !3960, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3946, line: 106, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3945, file: !3946, line: 107, baseType: !3964, size: 64, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3966)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3946, line: 107, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3945, file: !3946, line: 109, baseType: !3904, size: 64, offset: 448)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3945, file: !3946, line: 110, baseType: !3894, size: 64, offset: 512)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3945, file: !3946, line: 111, baseType: !3904, size: 64, offset: 576)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3945, file: !3946, line: 112, baseType: !3894, size: 64, offset: 640)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3945, file: !3946, line: 113, baseType: !3972, size: 64, offset: 704)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!30, !3865, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3901, line: 60, baseType: !3976)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3901, line: 58, size: 32, elements: !3977)
!3977 = !{!3978}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3976, file: !3901, line: 59, baseType: !30, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3945, file: !3946, line: 114, baseType: !3904, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3945, file: !3946, line: 115, baseType: !201, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3945, file: !3946, line: 116, baseType: !201, size: 64, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3945, file: !3946, line: 118, baseType: !3898, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3945, file: !3946, line: 119, baseType: !3894, size: 64, offset: 1024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3945, file: !3946, line: 121, baseType: !3985, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3946, line: 121, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3932, file: !3933, line: 88, baseType: !3883, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3932, file: !3933, line: 89, baseType: !3904, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3932, file: !3933, line: 90, baseType: !3894, size: 64, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3932, file: !3933, line: 91, baseType: !3894, size: 64, offset: 576)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3932, file: !3933, line: 92, baseType: !3894, size: 64, offset: 640)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3932, file: !3933, line: 94, baseType: !3904, size: 64, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3932, file: !3933, line: 95, baseType: !3904, size: 64, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3932, file: !3933, line: 97, baseType: !3972, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3932, file: !3933, line: 98, baseType: !3904, size: 64, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3932, file: !3933, line: 100, baseType: !3904, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3932, file: !3933, line: 102, baseType: !3904, size: 64, offset: 1024)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3932, file: !3933, line: 103, baseType: !3894, size: 64, offset: 1088)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3932, file: !3933, line: 105, baseType: !3898, size: 64, offset: 1152)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3932, file: !3933, line: 107, baseType: !4001, size: 64, offset: 1216)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4003)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3933, line: 107, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3932, file: !3933, line: 109, baseType: !1372, size: 8, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3866, file: !3867, line: 715, baseType: !3944, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3866, file: !3867, line: 717, baseType: !35, size: 64, offset: 896)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3866, file: !3867, line: 719, baseType: !35, size: 64, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3866, file: !3867, line: 721, baseType: !533, size: 256, offset: 1024)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3866, file: !3867, line: 725, baseType: !4010, size: 448, offset: 1280)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !3867, line: 517, size: 448, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4010, file: !3867, line: 518, baseType: !50, size: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4010, file: !3867, line: 519, baseType: !50, size: 128, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4010, file: !3867, line: 520, baseType: !50, size: 128, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4010, file: !3867, line: 521, baseType: !4016, size: 32, offset: 384)
!4016 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !3867, line: 487, baseType: !43, size: 32, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021}
!4018 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4019 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4020 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4021 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3866, file: !3867, line: 726, baseType: !4023, size: 2496, offset: 1728)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3901, line: 663, size: 2496, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4100, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4121, !4125}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4023, file: !3901, line: 664, baseType: !3975, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4023, file: !3901, line: 665, baseType: !43, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4023, file: !3901, line: 666, baseType: !43, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4023, file: !3901, line: 667, baseType: !1372, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4023, file: !3901, line: 668, baseType: !1372, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4023, file: !3901, line: 669, baseType: !1372, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4023, file: !3901, line: 670, baseType: !1372, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4023, file: !3901, line: 671, baseType: !1372, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4023, file: !3901, line: 672, baseType: !1372, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4023, file: !3901, line: 673, baseType: !1372, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4023, file: !3901, line: 674, baseType: !1372, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4023, file: !3901, line: 675, baseType: !299, size: 32, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4023, file: !3901, line: 676, baseType: !79, size: 32, offset: 96)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4023, file: !3901, line: 678, baseType: !50, size: 128, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4023, file: !3901, line: 679, baseType: !1957, size: 256, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4023, file: !3901, line: 680, baseType: !4041, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4043, line: 43, size: 1536, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4042, file: !4043, line: 44, baseType: !68, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4042, file: !4043, line: 45, baseType: !30, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4042, file: !4043, line: 46, baseType: !50, size: 128, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4042, file: !4043, line: 47, baseType: !79, size: 32, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4042, file: !4043, line: 48, baseType: !4050, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3901, line: 629, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4042, file: !4043, line: 49, baseType: !2593, size: 320, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4042, file: !4043, line: 50, baseType: !199, size: 64, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4042, file: !4043, line: 51, baseType: !1004, size: 64, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4042, file: !4043, line: 52, baseType: !1004, size: 64, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4042, file: !4043, line: 53, baseType: !1004, size: 64, offset: 896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4042, file: !4043, line: 54, baseType: !1004, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4042, file: !4043, line: 55, baseType: !1004, size: 64, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4042, file: !4043, line: 56, baseType: !199, size: 64, offset: 1088)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4042, file: !4043, line: 57, baseType: !199, size: 64, offset: 1152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4042, file: !4043, line: 58, baseType: !199, size: 64, offset: 1216)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4042, file: !4043, line: 59, baseType: !199, size: 64, offset: 1280)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4042, file: !4043, line: 60, baseType: !199, size: 64, offset: 1344)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4042, file: !4043, line: 61, baseType: !3865, size: 64, offset: 1408)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4042, file: !4043, line: 62, baseType: !1372, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4042, file: !4043, line: 63, baseType: !1372, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4023, file: !3901, line: 681, baseType: !1372, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4023, file: !3901, line: 682, baseType: !1372, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4023, file: !3901, line: 683, baseType: !1372, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4023, file: !3901, line: 684, baseType: !43, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4023, file: !3901, line: 685, baseType: !43, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4023, file: !3901, line: 690, baseType: !995, size: 512, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4023, file: !3901, line: 691, baseType: !303, size: 64, offset: 1152)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4023, file: !3901, line: 692, baseType: !1840, size: 256, offset: 1216)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4023, file: !3901, line: 693, baseType: !845, size: 192, offset: 1472)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4023, file: !3901, line: 694, baseType: !4050, size: 64, offset: 1664)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4023, file: !3901, line: 695, baseType: !99, size: 32, offset: 1728)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4023, file: !3901, line: 696, baseType: !99, size: 32, offset: 1760)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4023, file: !3901, line: 697, baseType: !43, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4023, file: !3901, line: 698, baseType: !43, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4023, file: !3901, line: 699, baseType: !43, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4023, file: !3901, line: 700, baseType: !43, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4023, file: !3901, line: 701, baseType: !43, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4023, file: !3901, line: 702, baseType: !43, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4023, file: !3901, line: 703, baseType: !1372, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4023, file: !3901, line: 704, baseType: !43, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4023, file: !3901, line: 705, baseType: !43, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4023, file: !3901, line: 706, baseType: !43, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4023, file: !3901, line: 707, baseType: !43, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4023, file: !3901, line: 708, baseType: !43, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4023, file: !3901, line: 709, baseType: !43, size: 32, offset: 1824)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4023, file: !3901, line: 710, baseType: !4093, size: 32, offset: 1856)
!4093 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3901, line: 620, baseType: !43, size: 32, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099}
!4095 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4096 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4097 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4098 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4099 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4023, file: !3901, line: 711, baseType: !4101, size: 32, offset: 1888)
!4101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3901, line: 597, baseType: !30, size: 32, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107}
!4103 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4104 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4105 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4106 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4107 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4023, file: !3901, line: 712, baseType: !4101, size: 32, offset: 1920)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4023, file: !3901, line: 713, baseType: !30, size: 32, offset: 1952)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4023, file: !3901, line: 714, baseType: !30, size: 32, offset: 1984)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4023, file: !3901, line: 715, baseType: !303, size: 64, offset: 2048)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4023, file: !3901, line: 716, baseType: !303, size: 64, offset: 2112)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4023, file: !3901, line: 717, baseType: !303, size: 64, offset: 2176)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4023, file: !3901, line: 718, baseType: !303, size: 64, offset: 2240)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4023, file: !3901, line: 720, baseType: !4116, size: 64, offset: 2304)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3901, line: 632, size: 64, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4117, file: !3901, line: 633, baseType: !79, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4117, file: !3901, line: 634, baseType: !43, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4023, file: !3901, line: 721, baseType: !4122, size: 64, offset: 2368)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !3865, !1315}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4023, file: !3901, line: 722, baseType: !4126, size: 64, offset: 2432)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3901, line: 722, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3866, file: !3867, line: 727, baseType: !4129, size: 64, offset: 4224)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3901, line: 742, size: 1792, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4138, !4139, !4140}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4130, file: !3901, line: 743, baseType: !3900, size: 1472)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4130, file: !3901, line: 744, baseType: !3904, size: 64, offset: 1472)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4130, file: !3901, line: 745, baseType: !4135, size: 64, offset: 1536)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !3865, !1372}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4130, file: !3901, line: 746, baseType: !3904, size: 64, offset: 1600)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4130, file: !3901, line: 747, baseType: !3894, size: 64, offset: 1664)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4130, file: !3901, line: 748, baseType: !3894, size: 64, offset: 1728)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3866, file: !3867, line: 736, baseType: !4142, size: 128, offset: 4288)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !3867, line: 529, size: 128, elements: !4143)
!4143 = !{!4144, !4148}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4142, file: !3867, line: 531, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4147, line: 13, flags: DIFlagFwdDecl)
!4147 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4142, file: !3867, line: 532, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !3867, line: 49, flags: DIFlagFwdDecl)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3866, file: !3867, line: 738, baseType: !4152, size: 64, offset: 4416)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3867, line: 738, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3866, file: !3867, line: 740, baseType: !4156, size: 64, offset: 4480)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3866, file: !3867, line: 741, baseType: !303, size: 64, offset: 4544)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3866, file: !3867, line: 746, baseType: !303, size: 64, offset: 4608)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3866, file: !3867, line: 747, baseType: !4160, size: 64, offset: 4672)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4162)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3867, line: 747, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3866, file: !3867, line: 749, baseType: !4164, size: 64, offset: 4736)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !3867, line: 428, size: 128, elements: !4166)
!4166 = !{!4167, !4168, !4169}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4165, file: !3867, line: 433, baseType: !43, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4165, file: !3867, line: 434, baseType: !43, size: 32, offset: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4165, file: !3867, line: 435, baseType: !199, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3866, file: !3867, line: 751, baseType: !50, size: 128, offset: 4800)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3866, file: !3867, line: 762, baseType: !4172, size: 64, offset: 4928)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !3867, line: 762, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3866, file: !3867, line: 770, baseType: !4175, offset: 4992)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4176, line: 5, elements: !432)
!4176 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3866, file: !3867, line: 772, baseType: !4178, size: 64, offset: 4992)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4180, line: 18, flags: DIFlagFwdDecl)
!4180 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3866, file: !3867, line: 773, baseType: !4182, size: 64, offset: 5056)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3933, line: 22, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3866, file: !3867, line: 776, baseType: !30, size: 32, offset: 5120)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3866, file: !3867, line: 778, baseType: !384, size: 32, offset: 5152)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3866, file: !3867, line: 779, baseType: !299, size: 32, offset: 5184)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3866, file: !3867, line: 781, baseType: !79, size: 32, offset: 5216)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3866, file: !3867, line: 782, baseType: !50, size: 128, offset: 5248)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3866, file: !3867, line: 784, baseType: !4190, size: 64, offset: 5376)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4193, line: 52, size: 768, elements: !4194)
!4193 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4203, !4207, !4208, !4209, !4210, !4214, !4218}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4192, file: !4193, line: 53, baseType: !68, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4192, file: !4193, line: 55, baseType: !201, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4192, file: !4193, line: 56, baseType: !201, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4192, file: !4193, line: 58, baseType: !3883, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4192, file: !4193, line: 59, baseType: !4200, size: 64, offset: 256)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!149, !3886, !3892}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4192, file: !4193, line: 61, baseType: !4204, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !4190}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4192, file: !4193, line: 62, baseType: !3894, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4192, file: !4193, line: 64, baseType: !3904, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4192, file: !4193, line: 66, baseType: !3381, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4192, file: !4193, line: 67, baseType: !4211, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!1800, !3886}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4192, file: !4193, line: 69, baseType: !4215, size: 64, offset: 640)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !3886, !3419, !3420}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4192, file: !4193, line: 71, baseType: !3898, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3866, file: !3867, line: 785, baseType: !201, size: 64, offset: 5440)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3866, file: !3867, line: 787, baseType: !3894, size: 64, offset: 5504)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3866, file: !3867, line: 788, baseType: !4222, size: 64, offset: 5568)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !3867, line: 46, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3866, file: !3867, line: 789, baseType: !4225, size: 64, offset: 5632)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !3867, line: 48, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3866, file: !3867, line: 791, baseType: !4228, size: 64, offset: 5696)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !3867, line: 597, size: 128, elements: !4230)
!4230 = !{!4231, !4241, !4247, !4253, !4254}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4229, file: !3867, line: 598, baseType: !4232, size: 32)
!4232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !3867, line: 547, baseType: !43, size: 32, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4240}
!4234 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4235 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4236 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4237 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4238 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4239 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4240 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4229, file: !3867, line: 599, baseType: !4242, size: 32, offset: 32)
!4242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !3867, line: 564, baseType: !43, size: 32, elements: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4245 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4246 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4229, file: !3867, line: 600, baseType: !4248, size: 32, offset: 64)
!4248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !3867, line: 577, baseType: !43, size: 32, elements: !4249)
!4249 = !{!4250, !4251, !4252}
!4250 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4251 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4252 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4229, file: !3867, line: 601, baseType: !1372, size: 8, offset: 96)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4229, file: !3867, line: 602, baseType: !1372, size: 8, offset: 104)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3866, file: !3867, line: 793, baseType: !4256, size: 32, offset: 5760)
!4256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !3867, line: 503, baseType: !43, size: 32, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261}
!4258 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4259 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4260 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4261 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3866, file: !3867, line: 795, baseType: !1372, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3866, file: !3867, line: 796, baseType: !1372, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3866, file: !3867, line: 797, baseType: !1372, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3866, file: !3867, line: 798, baseType: !1372, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3866, file: !3867, line: 799, baseType: !1372, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !18, file: !19, line: 46, baseType: !4268, size: 320, offset: 768)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4269, line: 83, size: 320, elements: !4270)
!4269 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c00ae321b94f0eea44369ad4fb4a07b")
!4270 = !{!4271, !4272, !4273, !4279}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4268, file: !4269, line: 84, baseType: !30, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4268, file: !4269, line: 85, baseType: !30, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4268, file: !4269, line: 86, baseType: !4274, size: 128, offset: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4269, line: 54, size: 128, elements: !4275)
!4275 = !{!4276, !4277, !4278}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4274, file: !4269, line: 55, baseType: !544, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4274, file: !4269, line: 56, baseType: !1316, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4274, file: !4269, line: 57, baseType: !300, size: 32, offset: 96)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4268, file: !4269, line: 87, baseType: !4274, size: 128, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !18, file: !19, line: 48, baseType: !300, size: 32, offset: 1088)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !18, file: !19, line: 49, baseType: !300, size: 32, offset: 1120)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !18, file: !19, line: 50, baseType: !4274, size: 128, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !18, file: !19, line: 51, baseType: !4274, size: 128, offset: 1280)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !18, file: !19, line: 52, baseType: !30, size: 32, offset: 1408)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !18, file: !19, line: 54, baseType: !43, size: 32, offset: 1440)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !18, file: !19, line: 55, baseType: !845, size: 192, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !19, line: 57, baseType: !43, size: 32, offset: 1664)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !18, file: !19, line: 58, baseType: !1800, size: 64, offset: 1728)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !18, file: !19, line: 59, baseType: !3866, size: 5824, offset: 1792)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !18, file: !19, line: 60, baseType: !4291, size: 64, offset: 7616)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !227, line: 1083, size: 384, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4292, file: !227, line: 1084, baseType: !1223, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4292, file: !227, line: 1085, baseType: !30, size: 32, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4292, file: !227, line: 1086, baseType: !30, size: 32, offset: 96)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4292, file: !227, line: 1087, baseType: !4291, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4292, file: !227, line: 1088, baseType: !1203, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4292, file: !227, line: 1089, baseType: !852, size: 128, align: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !18, file: !19, line: 61, baseType: !79, size: 32, offset: 7680)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!4302 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pps/.kapi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pps/pps_core\22 -D KBUILD_BASENAME=\22kapi\22 -D KBUILD_MODNAME=\22pps_core\22 -D __KBUILD_MODNAME=kmod_pps_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pps/kapi.ll drivers/pps/kapi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4303, retainedTypes: !4319, globals: !4320, splitDebugInlining: false, nameTableKind: None)
!4303 = !{!42, !479, !572, !1011, !1269, !1903, !2513, !3322, !3387, !3954, !4016, !4093, !4101, !4232, !4242, !4248, !4256, !4304, !4309}
!4304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4305, line: 10, baseType: !43, size: 32, elements: !4306)
!4305 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4306 = !{!4307, !4308}
!4307 = !DIEnumerator(name: "false", value: 0)
!4308 = !DIEnumerator(name: "true", value: 1)
!4309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4310, line: 364, baseType: !43, size: 32, elements: !4311)
!4310 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318}
!4312 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4313 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4314 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4315 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4316 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4317 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4318 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4319 = !{!603, !35, !199}
!4320 = !{!0, !7, !12, !4321, !4324, !4329, !4334, !4336, !4338, !4343, !4345, !4350, !4352, !4355, !4358}
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !4323, isLocal: true, isDefinition: true)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !2734)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !4326, isLocal: true, isDefinition: true)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !4327)
!4327 = !{!4328}
!4328 = !DISubrange(count: 46)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !4331, isLocal: true, isDefinition: true)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !4332)
!4332 = !{!4333}
!4333 = !DISubrange(count: 43)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pps_register_source267", scope: !4302, file: !2, line: 127, type: !35, isLocal: true, isDefinition: true)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pps_unregister_source268", scope: !4302, file: !2, line: 144, type: !35, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !4340, isLocal: true, isDefinition: true)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !4341)
!4341 = !{!4342}
!4342 = !DISubrange(count: 19)
!4343 = !DIGlobalVariableExpression(var: !4344, expr: !DIExpression())
!4344 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pps_event269", scope: !4302, file: !2, line: 223, type: !35, isLocal: true, isDefinition: true)
!4345 = !DIGlobalVariableExpression(var: !4346, expr: !DIExpression())
!4346 = distinct !DIGlobalVariable(scope: null, file: !4310, line: 480, type: !4347, isLocal: true, isDefinition: true)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4348)
!4348 = !{!4349}
!4349 = !DISubrange(count: 21)
!4350 = !DIGlobalVariableExpression(var: !4351, expr: !DIExpression())
!4351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !4323, isLocal: true, isDefinition: true)
!4352 = !DIGlobalVariableExpression(var: !4353, expr: !DIExpression())
!4353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !4354, isLocal: true, isDefinition: true)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !3665)
!4355 = !DIGlobalVariableExpression(var: !4356, expr: !DIExpression())
!4356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !4357, isLocal: true, isDefinition: true)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1128)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !1358, isLocal: true, isDefinition: true)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366}
!4361 = !DILocalVariable(name: "info", arg: 1, scope: !14, file: !2, line: 65, type: !4301)
!4362 = !DILocalVariable(name: "default_params", arg: 2, scope: !14, file: !2, line: 66, type: !30)
!4363 = !DILocalVariable(name: "pps", scope: !14, file: !2, line: 68, type: !17)
!4364 = !DILocalVariable(name: "err", scope: !14, file: !2, line: 69, type: !30)
!4365 = !DILabel(scope: !14, name: "kfree_pps", file: !2, line: 119)
!4366 = !DILabel(scope: !14, name: "pps_register_source_exit", file: !2, line: 122)
!4367 = !{i32 7, !"Dwarf Version", i32 5}
!4368 = !{i32 2, !"Debug Info Version", i32 3}
!4369 = !{i32 1, !"wchar_size", i32 2}
!4370 = !{i32 8, !"cf-protection-branch", i32 1}
!4371 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4372 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4373 = !{i32 1, !"Code Model", i32 2}
!4374 = !{i32 1, !"override-stack-alignment", i32 8}
!4375 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4376 = !DILocation(line: 65, column: 64, scope: !14)
!4377 = !DILocation(line: 66, column: 7, scope: !14)
!4378 = !DILocation(line: 68, column: 2, scope: !14)
!4379 = !DILocation(line: 68, column: 21, scope: !14)
!4380 = !DILocation(line: 69, column: 2, scope: !14)
!4381 = !DILocation(line: 69, column: 6, scope: !14)
!4382 = !DILocation(line: 72, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !14, file: !2, line: 72, column: 6)
!4384 = !DILocation(line: 72, column: 13, scope: !4383)
!4385 = !DILocation(line: 72, column: 20, scope: !4383)
!4386 = !DILocation(line: 72, column: 18, scope: !4383)
!4387 = !DILocation(line: 72, column: 39, scope: !4383)
!4388 = !DILocation(line: 72, column: 36, scope: !4383)
!4389 = !DILocation(line: 72, column: 6, scope: !14)
!4390 = !DILocation(line: 73, column: 3, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !2, line: 73, column: 3)
!4392 = distinct !DILexicalBlock(scope: !4383, file: !2, line: 72, column: 55)
!4393 = !DILocation(line: 73, column: 3, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4391, file: !2, line: 73, column: 3)
!4395 = !DILocation(line: 75, column: 7, scope: !4392)
!4396 = !DILocation(line: 76, column: 3, scope: !4392)
!4397 = !DILocation(line: 78, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !14, file: !2, line: 78, column: 6)
!4399 = !DILocation(line: 78, column: 13, scope: !4398)
!4400 = !DILocation(line: 78, column: 18, scope: !4398)
!4401 = !DILocation(line: 78, column: 57, scope: !4398)
!4402 = !DILocation(line: 78, column: 6, scope: !14)
!4403 = !DILocation(line: 79, column: 3, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !2, line: 79, column: 3)
!4405 = distinct !DILexicalBlock(scope: !4398, file: !2, line: 78, column: 63)
!4406 = !DILocation(line: 79, column: 3, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !2, line: 79, column: 3)
!4408 = !DILocation(line: 81, column: 7, scope: !4405)
!4409 = !DILocation(line: 82, column: 3, scope: !4405)
!4410 = !DILocation(line: 86, column: 8, scope: !14)
!4411 = !DILocation(line: 86, column: 6, scope: !14)
!4412 = !DILocation(line: 87, column: 6, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !14, file: !2, line: 87, column: 6)
!4414 = !DILocation(line: 87, column: 10, scope: !4413)
!4415 = !DILocation(line: 87, column: 6, scope: !14)
!4416 = !DILocation(line: 88, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4413, file: !2, line: 87, column: 19)
!4418 = !DILocation(line: 89, column: 3, scope: !4417)
!4419 = !DILocation(line: 95, column: 2, scope: !14)
!4420 = !DILocation(line: 95, column: 7, scope: !14)
!4421 = !DILocation(line: 95, column: 14, scope: !14)
!4422 = !DILocation(line: 95, column: 26, scope: !14)
!4423 = !DILocation(line: 96, column: 21, scope: !14)
!4424 = !DILocation(line: 96, column: 2, scope: !14)
!4425 = !DILocation(line: 96, column: 7, scope: !14)
!4426 = !DILocation(line: 96, column: 14, scope: !14)
!4427 = !DILocation(line: 96, column: 19, scope: !14)
!4428 = !DILocation(line: 97, column: 2, scope: !14)
!4429 = !DILocation(line: 97, column: 7, scope: !14)
!4430 = !DILocation(line: 97, column: 15, scope: !14)
!4431 = !DILocation(line: 97, column: 14, scope: !14)
!4432 = !DILocation(line: 100, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !14, file: !2, line: 100, column: 6)
!4434 = !DILocation(line: 100, column: 12, scope: !4433)
!4435 = !DILocation(line: 100, column: 17, scope: !4433)
!4436 = !DILocation(line: 100, column: 22, scope: !4433)
!4437 = !DILocation(line: 100, column: 58, scope: !4433)
!4438 = !DILocation(line: 101, column: 4, scope: !4433)
!4439 = !DILocation(line: 101, column: 9, scope: !4433)
!4440 = !DILocation(line: 101, column: 14, scope: !4433)
!4441 = !DILocation(line: 101, column: 19, scope: !4433)
!4442 = !DILocation(line: 100, column: 6, scope: !14)
!4443 = !DILocation(line: 102, column: 3, scope: !4433)
!4444 = !DILocation(line: 102, column: 8, scope: !4433)
!4445 = !DILocation(line: 102, column: 13, scope: !4433)
!4446 = !DILocation(line: 102, column: 18, scope: !4433)
!4447 = !DILocation(line: 104, column: 2, scope: !14)
!4448 = !DILocation(line: 104, column: 2, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !14, file: !2, line: 104, column: 2)
!4450 = !DILocation(line: 105, column: 2, scope: !14)
!4451 = !DILocation(line: 105, column: 2, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !14, file: !2, line: 105, column: 2)
!4453 = !DILocation(line: 108, column: 26, scope: !14)
!4454 = !DILocation(line: 108, column: 8, scope: !14)
!4455 = !DILocation(line: 108, column: 6, scope: !14)
!4456 = !DILocation(line: 109, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !14, file: !2, line: 109, column: 6)
!4458 = !DILocation(line: 109, column: 10, scope: !4457)
!4459 = !DILocation(line: 109, column: 6, scope: !14)
!4460 = !DILocation(line: 110, column: 3, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !2, line: 110, column: 3)
!4462 = distinct !DILexicalBlock(scope: !4457, file: !2, line: 109, column: 15)
!4463 = !DILocation(line: 110, column: 3, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !2, line: 110, column: 3)
!4465 = !DILocation(line: 112, column: 3, scope: !4462)
!4466 = !DILocation(line: 117, column: 9, scope: !14)
!4467 = !DILocation(line: 117, column: 2, scope: !14)
!4468 = !DILocation(line: 119, column: 1, scope: !14)
!4469 = !DILocation(line: 120, column: 8, scope: !14)
!4470 = !DILocation(line: 120, column: 2, scope: !14)
!4471 = !DILocation(line: 122, column: 1, scope: !14)
!4472 = !DILocation(line: 123, column: 2, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !14, file: !2, line: 123, column: 2)
!4474 = !DILocation(line: 123, column: 2, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 123, column: 2)
!4476 = !DILocation(line: 125, column: 17, scope: !14)
!4477 = !DILocation(line: 125, column: 9, scope: !14)
!4478 = !DILocation(line: 125, column: 2, scope: !14)
!4479 = !DILocation(line: 126, column: 1, scope: !14)
!4480 = !DISubprogram(name: "_printk", scope: !4481, file: !4481, line: 153, type: !4482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4481 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!30, !68, null}
!4484 = distinct !DISubprogram(name: "kzalloc", scope: !4310, file: !4310, line: 719, type: !4485, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!35, !196, !603}
!4487 = !{!4488, !4489}
!4488 = !DILocalVariable(name: "size", arg: 1, scope: !4484, file: !4310, line: 719, type: !196)
!4489 = !DILocalVariable(name: "flags", arg: 2, scope: !4484, file: !4310, line: 719, type: !603)
!4490 = !DILocation(line: 719, column: 52, scope: !4484)
!4491 = !DILocation(line: 719, column: 64, scope: !4484)
!4492 = !DILocation(line: 721, column: 17, scope: !4484)
!4493 = !DILocation(line: 721, column: 23, scope: !4484)
!4494 = !DILocation(line: 721, column: 29, scope: !4484)
!4495 = !DILocation(line: 721, column: 9, scope: !4484)
!4496 = !DILocation(line: 721, column: 2, scope: !4484)
!4497 = distinct !DISubprogram(name: "pps_echo_client_default", scope: !2, file: !2, line: 41, type: !33, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4498)
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "pps", arg: 1, scope: !4497, file: !2, line: 41, type: !17)
!4500 = !DILocalVariable(name: "event", arg: 2, scope: !4497, file: !2, line: 41, type: !30)
!4501 = !DILocalVariable(name: "data", arg: 3, scope: !4497, file: !2, line: 42, type: !35)
!4502 = !DILocation(line: 41, column: 56, scope: !4497)
!4503 = !DILocation(line: 41, column: 65, scope: !4497)
!4504 = !DILocation(line: 42, column: 9, scope: !4497)
!4505 = !DILocation(line: 44, column: 2, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4497, file: !2, line: 44, column: 2)
!4507 = !DILocation(line: 44, column: 2, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 44, column: 2)
!4509 = !DILocation(line: 47, column: 1, scope: !4497)
!4510 = !DISubprogram(name: "__init_waitqueue_head", scope: !846, file: !846, line: 64, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4513, !68, !4514}
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4515 = distinct !DISubprogram(name: "spinlock_check", scope: !4516, file: !4516, line: 324, type: !4517, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4521)
!4516 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!4519, !4520}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!4521 = !{!4522}
!4522 = !DILocalVariable(name: "lock", arg: 1, scope: !4515, file: !4516, line: 324, type: !4520)
!4523 = !DILocation(line: 324, column: 67, scope: !4515)
!4524 = !DILocation(line: 326, column: 10, scope: !4515)
!4525 = !DILocation(line: 326, column: 16, scope: !4515)
!4526 = !DILocation(line: 326, column: 2, scope: !4515)
!4527 = !DISubprogram(name: "pps_register_cdev", scope: !19, file: !19, line: 77, type: !4528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!30, !17}
!4530 = !DISubprogram(name: "kfree", scope: !4310, file: !4310, line: 227, type: !4531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !1800}
!4533 = distinct !DISubprogram(name: "ERR_PTR", scope: !4534, file: !4534, line: 39, type: !4535, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4537)
!4534 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!35, !185}
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "error", arg: 1, scope: !4533, file: !4534, line: 39, type: !185)
!4539 = !DILocation(line: 39, column: 48, scope: !4533)
!4540 = !DILocation(line: 41, column: 18, scope: !4533)
!4541 = !DILocation(line: 41, column: 9, scope: !4533)
!4542 = !DILocation(line: 41, column: 2, scope: !4533)
!4543 = distinct !DISubprogram(name: "pps_unregister_source", scope: !2, file: !2, line: 136, type: !4544, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !17}
!4546 = !{!4547}
!4547 = !DILocalVariable(name: "pps", arg: 1, scope: !4543, file: !2, line: 136, type: !17)
!4548 = !DILocation(line: 136, column: 47, scope: !4543)
!4549 = !DILocation(line: 138, column: 16, scope: !4543)
!4550 = !DILocation(line: 138, column: 2, scope: !4543)
!4551 = !DILocation(line: 139, column: 22, scope: !4543)
!4552 = !DILocation(line: 139, column: 2, scope: !4543)
!4553 = !DILocation(line: 143, column: 1, scope: !4543)
!4554 = distinct !DISubprogram(name: "pps_kc_remove", scope: !4555, file: !4555, line: 27, type: !4544, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4556)
!4555 = !DIFile(filename: "drivers/pps/kc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd5c5a3b24fbb2985ecebc7392245396")
!4556 = !{!4557}
!4557 = !DILocalVariable(name: "pps", arg: 1, scope: !4554, file: !4555, line: 27, type: !17)
!4558 = !DILocation(line: 27, column: 53, scope: !4554)
!4559 = !DILocation(line: 27, column: 59, scope: !4554)
!4560 = !DISubprogram(name: "pps_unregister_cdev", scope: !19, file: !19, line: 78, type: !4544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4561 = distinct !DISubprogram(name: "pps_event", scope: !2, file: !2, line: 159, type: !4562, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4568)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !17, !4564, !30, !35}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_event_time", file: !19, line: 35, size: 128, elements: !4566)
!4566 = !{!4567}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "ts_real", scope: !4565, file: !19, line: 39, baseType: !3030, size: 128)
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4580}
!4569 = !DILocalVariable(name: "pps", arg: 1, scope: !4561, file: !2, line: 159, type: !17)
!4570 = !DILocalVariable(name: "ts", arg: 2, scope: !4561, file: !2, line: 159, type: !4564)
!4571 = !DILocalVariable(name: "event", arg: 3, scope: !4561, file: !2, line: 159, type: !30)
!4572 = !DILocalVariable(name: "data", arg: 4, scope: !4561, file: !2, line: 160, type: !35)
!4573 = !DILocalVariable(name: "flags", scope: !4561, file: !2, line: 162, type: !199)
!4574 = !DILocalVariable(name: "captured", scope: !4561, file: !2, line: 163, type: !30)
!4575 = !DILocalVariable(name: "ts_real", scope: !4561, file: !2, line: 164, type: !4274)
!4576 = !DILocalVariable(name: "__dummy", scope: !4577, file: !2, line: 174, type: !199)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !2, line: 174, column: 2)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !2, line: 174, column: 2)
!4579 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 174, column: 2)
!4580 = !DILocalVariable(name: "__dummy2", scope: !4577, file: !2, line: 174, type: !199)
!4581 = !DILocation(line: 159, column: 35, scope: !4561)
!4582 = !DILocation(line: 159, column: 63, scope: !4561)
!4583 = !DILocation(line: 159, column: 71, scope: !4561)
!4584 = !DILocation(line: 160, column: 9, scope: !4561)
!4585 = !DILocation(line: 162, column: 2, scope: !4561)
!4586 = !DILocation(line: 162, column: 16, scope: !4561)
!4587 = !DILocation(line: 163, column: 2, scope: !4561)
!4588 = !DILocation(line: 163, column: 6, scope: !4561)
!4589 = !DILocation(line: 164, column: 2, scope: !4561)
!4590 = !DILocation(line: 164, column: 19, scope: !4561)
!4591 = !DILocation(line: 167, column: 2, scope: !4561)
!4592 = !DILocation(line: 167, column: 2, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !2, line: 167, column: 2)
!4594 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 167, column: 2)
!4595 = !DILocation(line: 167, column: 2, scope: !4594)
!4596 = !DILocation(line: 167, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !2, line: 167, column: 2)
!4598 = !DILocation(line: 167, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !2, line: 167, column: 2)
!4600 = !DILocation(line: 167, column: 2, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !2, line: 167, column: 2)
!4602 = !{i64 2153898833, i64 2153898862, i64 2153898908, i64 2153898966, i64 2153899020, i64 2153899074, i64 2153899129, i64 2153899160}
!4603 = !DILocation(line: 172, column: 34, scope: !4561)
!4604 = !DILocation(line: 172, column: 38, scope: !4561)
!4605 = !DILocation(line: 172, column: 2, scope: !4561)
!4606 = !DILocation(line: 174, column: 2, scope: !4561)
!4607 = !DILocation(line: 174, column: 2, scope: !4579)
!4608 = !DILocation(line: 174, column: 2, scope: !4577)
!4609 = !DILocation(line: 174, column: 2, scope: !4578)
!4610 = !DILocation(line: 177, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 177, column: 6)
!4612 = !DILocation(line: 177, column: 12, scope: !4611)
!4613 = !DILocation(line: 177, column: 19, scope: !4611)
!4614 = !DILocation(line: 177, column: 24, scope: !4611)
!4615 = !DILocation(line: 177, column: 6, scope: !4561)
!4616 = !DILocation(line: 178, column: 3, scope: !4611)
!4617 = !DILocation(line: 178, column: 8, scope: !4611)
!4618 = !DILocation(line: 178, column: 13, scope: !4611)
!4619 = !DILocation(line: 178, column: 18, scope: !4611)
!4620 = !DILocation(line: 178, column: 23, scope: !4611)
!4621 = !DILocation(line: 178, column: 30, scope: !4611)
!4622 = !DILocation(line: 181, column: 22, scope: !4561)
!4623 = !DILocation(line: 181, column: 27, scope: !4561)
!4624 = !DILocation(line: 181, column: 34, scope: !4561)
!4625 = !DILocation(line: 181, column: 2, scope: !4561)
!4626 = !DILocation(line: 181, column: 7, scope: !4561)
!4627 = !DILocation(line: 181, column: 20, scope: !4561)
!4628 = !DILocation(line: 182, column: 6, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 182, column: 6)
!4630 = !DILocation(line: 182, column: 14, scope: !4629)
!4631 = !DILocation(line: 182, column: 19, scope: !4629)
!4632 = !DILocation(line: 182, column: 26, scope: !4629)
!4633 = !DILocation(line: 182, column: 12, scope: !4629)
!4634 = !DILocation(line: 182, column: 31, scope: !4629)
!4635 = !DILocation(line: 182, column: 6, scope: !4561)
!4636 = !DILocation(line: 184, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !2, line: 184, column: 7)
!4638 = distinct !DILexicalBlock(scope: !4629, file: !2, line: 182, column: 52)
!4639 = !DILocation(line: 184, column: 12, scope: !4637)
!4640 = !DILocation(line: 184, column: 19, scope: !4637)
!4641 = !DILocation(line: 184, column: 24, scope: !4637)
!4642 = !DILocation(line: 184, column: 7, scope: !4638)
!4643 = !DILocation(line: 186, column: 7, scope: !4637)
!4644 = !DILocation(line: 186, column: 12, scope: !4637)
!4645 = !DILocation(line: 186, column: 19, scope: !4637)
!4646 = !DILocation(line: 185, column: 4, scope: !4637)
!4647 = !DILocation(line: 189, column: 3, scope: !4638)
!4648 = !DILocation(line: 189, column: 8, scope: !4638)
!4649 = !DILocation(line: 189, column: 20, scope: !4638)
!4650 = !DILocation(line: 190, column: 3, scope: !4638)
!4651 = !DILocation(line: 190, column: 8, scope: !4638)
!4652 = !DILocation(line: 190, column: 23, scope: !4638)
!4653 = !DILocation(line: 194, column: 12, scope: !4638)
!4654 = !DILocation(line: 195, column: 2, scope: !4638)
!4655 = !DILocation(line: 196, column: 6, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 196, column: 6)
!4657 = !DILocation(line: 196, column: 14, scope: !4656)
!4658 = !DILocation(line: 196, column: 19, scope: !4656)
!4659 = !DILocation(line: 196, column: 26, scope: !4656)
!4660 = !DILocation(line: 196, column: 12, scope: !4656)
!4661 = !DILocation(line: 196, column: 31, scope: !4656)
!4662 = !DILocation(line: 196, column: 6, scope: !4561)
!4663 = !DILocation(line: 198, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !2, line: 198, column: 7)
!4665 = distinct !DILexicalBlock(scope: !4656, file: !2, line: 196, column: 51)
!4666 = !DILocation(line: 198, column: 12, scope: !4664)
!4667 = !DILocation(line: 198, column: 19, scope: !4664)
!4668 = !DILocation(line: 198, column: 24, scope: !4664)
!4669 = !DILocation(line: 198, column: 7, scope: !4665)
!4670 = !DILocation(line: 200, column: 7, scope: !4664)
!4671 = !DILocation(line: 200, column: 12, scope: !4664)
!4672 = !DILocation(line: 200, column: 19, scope: !4664)
!4673 = !DILocation(line: 199, column: 4, scope: !4664)
!4674 = !DILocation(line: 203, column: 3, scope: !4665)
!4675 = !DILocation(line: 203, column: 8, scope: !4665)
!4676 = !DILocation(line: 203, column: 19, scope: !4665)
!4677 = !DILocation(line: 204, column: 3, scope: !4665)
!4678 = !DILocation(line: 204, column: 8, scope: !4665)
!4679 = !DILocation(line: 204, column: 22, scope: !4665)
!4680 = !DILocation(line: 208, column: 12, scope: !4665)
!4681 = !DILocation(line: 209, column: 2, scope: !4665)
!4682 = !DILocation(line: 211, column: 15, scope: !4561)
!4683 = !DILocation(line: 211, column: 20, scope: !4561)
!4684 = !DILocation(line: 211, column: 24, scope: !4561)
!4685 = !DILocation(line: 211, column: 2, scope: !4561)
!4686 = !DILocation(line: 214, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4561, file: !2, line: 214, column: 6)
!4688 = !DILocation(line: 214, column: 6, scope: !4561)
!4689 = !DILocation(line: 215, column: 3, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !2, line: 214, column: 16)
!4691 = !DILocation(line: 215, column: 8, scope: !4690)
!4692 = !DILocation(line: 215, column: 15, scope: !4690)
!4693 = !DILocation(line: 216, column: 3, scope: !4690)
!4694 = !DILocation(line: 218, column: 16, scope: !4690)
!4695 = !DILocation(line: 218, column: 21, scope: !4690)
!4696 = !DILocation(line: 218, column: 3, scope: !4690)
!4697 = !DILocation(line: 219, column: 2, scope: !4690)
!4698 = !DILocation(line: 221, column: 26, scope: !4561)
!4699 = !DILocation(line: 221, column: 31, scope: !4561)
!4700 = !DILocation(line: 221, column: 37, scope: !4561)
!4701 = !DILocation(line: 221, column: 2, scope: !4561)
!4702 = !DILocation(line: 222, column: 1, scope: !4561)
!4703 = distinct !DISubprogram(name: "timespec_to_pps_ktime", scope: !19, file: !19, line: 92, type: !4704, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4707)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{null, !4706, !3030}
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "kt", arg: 1, scope: !4703, file: !19, line: 92, type: !4706)
!4709 = !DILocalVariable(name: "ts", arg: 2, scope: !4703, file: !19, line: 93, type: !3030)
!4710 = !DILocation(line: 92, column: 60, scope: !4703)
!4711 = !DILocation(line: 93, column: 21, scope: !4703)
!4712 = !DILocation(line: 95, column: 15, scope: !4703)
!4713 = !DILocation(line: 95, column: 2, scope: !4703)
!4714 = !DILocation(line: 95, column: 6, scope: !4703)
!4715 = !DILocation(line: 95, column: 10, scope: !4703)
!4716 = !DILocation(line: 96, column: 16, scope: !4703)
!4717 = !DILocation(line: 96, column: 13, scope: !4703)
!4718 = !DILocation(line: 96, column: 2, scope: !4703)
!4719 = !DILocation(line: 96, column: 6, scope: !4703)
!4720 = !DILocation(line: 96, column: 11, scope: !4703)
!4721 = !DILocation(line: 97, column: 1, scope: !4703)
!4722 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4723, file: !4723, line: 32, type: !4724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4723 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!199, !4519}
!4726 = distinct !DISubprogram(name: "pps_add_offset", scope: !2, file: !2, line: 27, type: !4727, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !4706, !4706}
!4729 = !{!4730, !4731}
!4730 = !DILocalVariable(name: "ts", arg: 1, scope: !4726, file: !2, line: 27, type: !4706)
!4731 = !DILocalVariable(name: "offset", arg: 2, scope: !4726, file: !2, line: 27, type: !4706)
!4732 = !DILocation(line: 27, column: 46, scope: !4726)
!4733 = !DILocation(line: 27, column: 68, scope: !4726)
!4734 = !DILocation(line: 29, column: 14, scope: !4726)
!4735 = !DILocation(line: 29, column: 22, scope: !4726)
!4736 = !DILocation(line: 29, column: 2, scope: !4726)
!4737 = !DILocation(line: 29, column: 6, scope: !4726)
!4738 = !DILocation(line: 29, column: 11, scope: !4726)
!4739 = !DILocation(line: 30, column: 2, scope: !4726)
!4740 = !DILocation(line: 30, column: 9, scope: !4726)
!4741 = !DILocation(line: 30, column: 13, scope: !4726)
!4742 = !DILocation(line: 30, column: 18, scope: !4726)
!4743 = !DILocation(line: 31, column: 3, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4726, file: !2, line: 30, column: 35)
!4745 = !DILocation(line: 31, column: 7, scope: !4744)
!4746 = !DILocation(line: 31, column: 12, scope: !4744)
!4747 = !DILocation(line: 32, column: 3, scope: !4744)
!4748 = !DILocation(line: 32, column: 7, scope: !4744)
!4749 = !DILocation(line: 32, column: 10, scope: !4744)
!4750 = distinct !{!4750, !4739, !4751, !4752, !4753}
!4751 = !DILocation(line: 33, column: 2, scope: !4726)
!4752 = !{!"llvm.loop.mustprogress"}
!4753 = !{!"llvm.loop.unroll.disable"}
!4754 = !DILocation(line: 34, column: 2, scope: !4726)
!4755 = !DILocation(line: 34, column: 9, scope: !4726)
!4756 = !DILocation(line: 34, column: 13, scope: !4726)
!4757 = !DILocation(line: 34, column: 18, scope: !4726)
!4758 = !DILocation(line: 35, column: 3, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4726, file: !2, line: 34, column: 23)
!4760 = !DILocation(line: 35, column: 7, scope: !4759)
!4761 = !DILocation(line: 35, column: 12, scope: !4759)
!4762 = !DILocation(line: 36, column: 3, scope: !4759)
!4763 = !DILocation(line: 36, column: 7, scope: !4759)
!4764 = !DILocation(line: 36, column: 10, scope: !4759)
!4765 = distinct !{!4765, !4754, !4766, !4752, !4753}
!4766 = !DILocation(line: 37, column: 2, scope: !4726)
!4767 = !DILocation(line: 38, column: 13, scope: !4726)
!4768 = !DILocation(line: 38, column: 21, scope: !4726)
!4769 = !DILocation(line: 38, column: 2, scope: !4726)
!4770 = !DILocation(line: 38, column: 6, scope: !4726)
!4771 = !DILocation(line: 38, column: 10, scope: !4726)
!4772 = !DILocation(line: 39, column: 1, scope: !4726)
!4773 = distinct !DISubprogram(name: "pps_kc_event", scope: !4555, file: !4555, line: 28, type: !4774, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4776)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{null, !17, !4564, !30}
!4776 = !{!4777, !4778, !4779}
!4777 = !DILocalVariable(name: "pps", arg: 1, scope: !4773, file: !4555, line: 28, type: !17)
!4778 = !DILocalVariable(name: "ts", arg: 2, scope: !4773, file: !4555, line: 29, type: !4564)
!4779 = !DILocalVariable(name: "event", arg: 3, scope: !4773, file: !4555, line: 29, type: !30)
!4780 = !DILocation(line: 28, column: 52, scope: !4773)
!4781 = !DILocation(line: 29, column: 26, scope: !4773)
!4782 = !DILocation(line: 29, column: 34, scope: !4773)
!4783 = !DILocation(line: 29, column: 42, scope: !4773)
!4784 = !DISubprogram(name: "__wake_up", scope: !846, file: !846, line: 212, type: !4785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!30, !4513, !43, !30, !35}
!4787 = !DISubprogram(name: "kill_fasync", scope: !227, file: !227, line: 1102, type: !4788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !4790, !30, !30}
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4791 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4516, file: !4516, line: 404, type: !4792, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{null, !4520, !199}
!4794 = !{!4795, !4796, !4797, !4800}
!4795 = !DILocalVariable(name: "lock", arg: 1, scope: !4791, file: !4516, line: 404, type: !4520)
!4796 = !DILocalVariable(name: "flags", arg: 2, scope: !4791, file: !4516, line: 404, type: !199)
!4797 = !DILocalVariable(name: "__dummy", scope: !4798, file: !4516, line: 406, type: !199)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !4516, line: 406, column: 2)
!4799 = distinct !DILexicalBlock(scope: !4791, file: !4516, line: 406, column: 2)
!4800 = !DILocalVariable(name: "__dummy2", scope: !4798, file: !4516, line: 406, type: !199)
!4801 = !DILocation(line: 404, column: 64, scope: !4791)
!4802 = !DILocation(line: 404, column: 84, scope: !4791)
!4803 = !DILocation(line: 406, column: 2, scope: !4791)
!4804 = !DILocation(line: 406, column: 2, scope: !4798)
!4805 = !DILocation(line: 406, column: 2, scope: !4799)
!4806 = !DILocation(line: 407, column: 1, scope: !4791)
!4807 = distinct !DISubprogram(name: "kmalloc", scope: !4310, file: !4310, line: 591, type: !4485, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4808)
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "size", arg: 1, scope: !4807, file: !4310, line: 591, type: !196)
!4810 = !DILocalVariable(name: "flags", arg: 2, scope: !4807, file: !4310, line: 591, type: !603)
!4811 = !DILocalVariable(name: "index", scope: !4812, file: !4310, line: 594, type: !43)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !4310, line: 593, column: 42)
!4813 = distinct !DILexicalBlock(scope: !4807, file: !4310, line: 593, column: 6)
!4814 = !DILocation(line: 591, column: 61, scope: !4807)
!4815 = !DILocation(line: 591, column: 73, scope: !4807)
!4816 = !DILocation(line: 593, column: 27, scope: !4813)
!4817 = !DILocation(line: 593, column: 6, scope: !4813)
!4818 = !DILocation(line: 593, column: 33, scope: !4813)
!4819 = !DILocation(line: 593, column: 36, scope: !4813)
!4820 = !DILocation(line: 593, column: 6, scope: !4807)
!4821 = !DILocation(line: 594, column: 3, scope: !4812)
!4822 = !DILocation(line: 594, column: 16, scope: !4812)
!4823 = !DILocation(line: 596, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4812, file: !4310, line: 596, column: 7)
!4825 = !DILocation(line: 596, column: 12, scope: !4824)
!4826 = !DILocation(line: 596, column: 7, scope: !4812)
!4827 = !DILocation(line: 597, column: 25, scope: !4824)
!4828 = !DILocation(line: 597, column: 31, scope: !4824)
!4829 = !DILocation(line: 597, column: 11, scope: !4824)
!4830 = !DILocation(line: 597, column: 4, scope: !4824)
!4831 = !DILocation(line: 599, column: 11, scope: !4812)
!4832 = !DILocation(line: 599, column: 9, scope: !4812)
!4833 = !DILocation(line: 601, column: 33, scope: !4812)
!4834 = !DILocation(line: 601, column: 40, scope: !4812)
!4835 = !DILocation(line: 601, column: 20, scope: !4812)
!4836 = !DILocation(line: 601, column: 5, scope: !4812)
!4837 = !DILocation(line: 601, column: 51, scope: !4812)
!4838 = !DILocation(line: 602, column: 5, scope: !4812)
!4839 = !DILocation(line: 602, column: 12, scope: !4812)
!4840 = !DILocation(line: 600, column: 10, scope: !4812)
!4841 = !DILocation(line: 600, column: 3, scope: !4812)
!4842 = !DILocation(line: 603, column: 2, scope: !4813)
!4843 = !DILocation(line: 604, column: 19, scope: !4807)
!4844 = !DILocation(line: 604, column: 25, scope: !4807)
!4845 = !DILocation(line: 604, column: 9, scope: !4807)
!4846 = !DILocation(line: 604, column: 2, scope: !4807)
!4847 = !DILocation(line: 605, column: 1, scope: !4807)
!4848 = !DISubprogram(name: "kmalloc_large", scope: !4310, file: !4310, line: 531, type: !4485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4849 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4310, file: !4310, line: 444, type: !4850, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !4852)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!43, !196, !1372}
!4852 = !{!4853, !4854}
!4853 = !DILocalVariable(name: "size", arg: 1, scope: !4849, file: !4310, line: 444, type: !196)
!4854 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4849, file: !4310, line: 445, type: !1372)
!4855 = !DILocation(line: 444, column: 60, scope: !4849)
!4856 = !DILocation(line: 445, column: 16, scope: !4849)
!4857 = !DILocation(line: 447, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 447, column: 6)
!4859 = !DILocation(line: 447, column: 6, scope: !4849)
!4860 = !DILocation(line: 448, column: 3, scope: !4858)
!4861 = !DILocation(line: 450, column: 6, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 450, column: 6)
!4863 = !DILocation(line: 450, column: 11, scope: !4862)
!4864 = !DILocation(line: 450, column: 6, scope: !4849)
!4865 = !DILocation(line: 451, column: 3, scope: !4862)
!4866 = !DILocation(line: 453, column: 32, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 453, column: 6)
!4868 = !DILocation(line: 453, column: 37, scope: !4867)
!4869 = !DILocation(line: 453, column: 42, scope: !4867)
!4870 = !DILocation(line: 453, column: 45, scope: !4867)
!4871 = !DILocation(line: 453, column: 50, scope: !4867)
!4872 = !DILocation(line: 453, column: 6, scope: !4849)
!4873 = !DILocation(line: 454, column: 3, scope: !4867)
!4874 = !DILocation(line: 455, column: 32, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 455, column: 6)
!4876 = !DILocation(line: 455, column: 37, scope: !4875)
!4877 = !DILocation(line: 455, column: 43, scope: !4875)
!4878 = !DILocation(line: 455, column: 46, scope: !4875)
!4879 = !DILocation(line: 455, column: 51, scope: !4875)
!4880 = !DILocation(line: 455, column: 6, scope: !4849)
!4881 = !DILocation(line: 456, column: 3, scope: !4875)
!4882 = !DILocation(line: 457, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 457, column: 6)
!4884 = !DILocation(line: 457, column: 11, scope: !4883)
!4885 = !DILocation(line: 457, column: 6, scope: !4849)
!4886 = !DILocation(line: 457, column: 26, scope: !4883)
!4887 = !DILocation(line: 458, column: 6, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 458, column: 6)
!4889 = !DILocation(line: 458, column: 11, scope: !4888)
!4890 = !DILocation(line: 458, column: 6, scope: !4849)
!4891 = !DILocation(line: 458, column: 26, scope: !4888)
!4892 = !DILocation(line: 459, column: 6, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 459, column: 6)
!4894 = !DILocation(line: 459, column: 11, scope: !4893)
!4895 = !DILocation(line: 459, column: 6, scope: !4849)
!4896 = !DILocation(line: 459, column: 26, scope: !4893)
!4897 = !DILocation(line: 460, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 460, column: 6)
!4899 = !DILocation(line: 460, column: 11, scope: !4898)
!4900 = !DILocation(line: 460, column: 6, scope: !4849)
!4901 = !DILocation(line: 460, column: 26, scope: !4898)
!4902 = !DILocation(line: 461, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 461, column: 6)
!4904 = !DILocation(line: 461, column: 11, scope: !4903)
!4905 = !DILocation(line: 461, column: 6, scope: !4849)
!4906 = !DILocation(line: 461, column: 26, scope: !4903)
!4907 = !DILocation(line: 462, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 462, column: 6)
!4909 = !DILocation(line: 462, column: 11, scope: !4908)
!4910 = !DILocation(line: 462, column: 6, scope: !4849)
!4911 = !DILocation(line: 462, column: 26, scope: !4908)
!4912 = !DILocation(line: 463, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 463, column: 6)
!4914 = !DILocation(line: 463, column: 11, scope: !4913)
!4915 = !DILocation(line: 463, column: 6, scope: !4849)
!4916 = !DILocation(line: 463, column: 26, scope: !4913)
!4917 = !DILocation(line: 464, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 464, column: 6)
!4919 = !DILocation(line: 464, column: 11, scope: !4918)
!4920 = !DILocation(line: 464, column: 6, scope: !4849)
!4921 = !DILocation(line: 464, column: 26, scope: !4918)
!4922 = !DILocation(line: 465, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 465, column: 6)
!4924 = !DILocation(line: 465, column: 11, scope: !4923)
!4925 = !DILocation(line: 465, column: 6, scope: !4849)
!4926 = !DILocation(line: 465, column: 26, scope: !4923)
!4927 = !DILocation(line: 466, column: 6, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 466, column: 6)
!4929 = !DILocation(line: 466, column: 11, scope: !4928)
!4930 = !DILocation(line: 466, column: 6, scope: !4849)
!4931 = !DILocation(line: 466, column: 26, scope: !4928)
!4932 = !DILocation(line: 467, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 467, column: 6)
!4934 = !DILocation(line: 467, column: 11, scope: !4933)
!4935 = !DILocation(line: 467, column: 6, scope: !4849)
!4936 = !DILocation(line: 467, column: 26, scope: !4933)
!4937 = !DILocation(line: 468, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 468, column: 6)
!4939 = !DILocation(line: 468, column: 11, scope: !4938)
!4940 = !DILocation(line: 468, column: 6, scope: !4849)
!4941 = !DILocation(line: 468, column: 26, scope: !4938)
!4942 = !DILocation(line: 469, column: 6, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 469, column: 6)
!4944 = !DILocation(line: 469, column: 11, scope: !4943)
!4945 = !DILocation(line: 469, column: 6, scope: !4849)
!4946 = !DILocation(line: 469, column: 26, scope: !4943)
!4947 = !DILocation(line: 470, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 470, column: 6)
!4949 = !DILocation(line: 470, column: 11, scope: !4948)
!4950 = !DILocation(line: 470, column: 6, scope: !4849)
!4951 = !DILocation(line: 470, column: 26, scope: !4948)
!4952 = !DILocation(line: 471, column: 6, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 471, column: 6)
!4954 = !DILocation(line: 471, column: 11, scope: !4953)
!4955 = !DILocation(line: 471, column: 6, scope: !4849)
!4956 = !DILocation(line: 471, column: 26, scope: !4953)
!4957 = !DILocation(line: 472, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 472, column: 6)
!4959 = !DILocation(line: 472, column: 11, scope: !4958)
!4960 = !DILocation(line: 472, column: 6, scope: !4849)
!4961 = !DILocation(line: 472, column: 26, scope: !4958)
!4962 = !DILocation(line: 473, column: 6, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 473, column: 6)
!4964 = !DILocation(line: 473, column: 11, scope: !4963)
!4965 = !DILocation(line: 473, column: 6, scope: !4849)
!4966 = !DILocation(line: 473, column: 26, scope: !4963)
!4967 = !DILocation(line: 474, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 474, column: 6)
!4969 = !DILocation(line: 474, column: 11, scope: !4968)
!4970 = !DILocation(line: 474, column: 6, scope: !4849)
!4971 = !DILocation(line: 474, column: 27, scope: !4968)
!4972 = !DILocation(line: 475, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 475, column: 6)
!4974 = !DILocation(line: 475, column: 11, scope: !4973)
!4975 = !DILocation(line: 475, column: 6, scope: !4849)
!4976 = !DILocation(line: 475, column: 32, scope: !4973)
!4977 = !DILocation(line: 477, column: 50, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4849, file: !4310, line: 477, column: 6)
!4979 = !{i8 0, i8 2}
!4980 = !DILocation(line: 477, column: 6, scope: !4849)
!4981 = !DILocation(line: 478, column: 3, scope: !4978)
!4982 = !DILocation(line: 478, column: 3, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !4310, line: 478, column: 3)
!4984 = distinct !DILexicalBlock(scope: !4978, file: !4310, line: 478, column: 3)
!4985 = !{i32 -2141477337}
!4986 = !DILocation(line: 478, column: 3, scope: !4984)
!4987 = !DILocation(line: 480, column: 3, scope: !4978)
!4988 = !DILocation(line: 480, column: 3, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4978, file: !4310, line: 480, column: 3)
!4990 = !DILocation(line: 480, column: 3, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4989, file: !4310, line: 480, column: 3)
!4992 = !DILocation(line: 480, column: 3, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !4310, line: 480, column: 3)
!4994 = !{i64 2153490162, i64 2153490191, i64 2153490237, i64 2153490295, i64 2153490349, i64 2153490403, i64 2153490458, i64 2153490489}
!4995 = !DILocation(line: 483, column: 2, scope: !4849)
!4996 = !DILocation(line: 484, column: 1, scope: !4849)
!4997 = !DISubprogram(name: "kmalloc_trace", scope: !4310, file: !4310, line: 525, type: !4998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!35, !5000, !603, !196}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5002, line: 325, flags: DIFlagFwdDecl)
!5002 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5003 = distinct !DISubprogram(name: "kmalloc_type", scope: !4310, file: !4310, line: 401, type: !5004, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4302, retainedNodes: !5006)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!4309, !603, !199}
!5006 = !{!5007, !5008}
!5007 = !DILocalVariable(name: "flags", arg: 1, scope: !5003, file: !4310, line: 401, type: !603)
!5008 = !DILocalVariable(name: "caller", arg: 2, scope: !5003, file: !4310, line: 401, type: !199)
!5009 = !DILocation(line: 401, column: 67, scope: !5003)
!5010 = !DILocation(line: 401, column: 88, scope: !5003)
!5011 = !DILocation(line: 407, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5003, file: !4310, line: 407, column: 6)
!5013 = !DILocation(line: 407, column: 6, scope: !5003)
!5014 = !DILocation(line: 413, column: 3, scope: !5012)
!5015 = !DILocation(line: 423, column: 38, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5003, file: !4310, line: 423, column: 6)
!5017 = !DILocation(line: 423, column: 44, scope: !5016)
!5018 = !DILocation(line: 423, column: 6, scope: !5003)
!5019 = !DILocation(line: 424, column: 3, scope: !5016)
!5020 = !DILocation(line: 426, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5003, file: !4310, line: 425, column: 6)
!5022 = !DILocation(line: 429, column: 1, scope: !5003)
!5023 = !DISubprogram(name: "__kmalloc", scope: !4310, file: !4310, line: 488, type: !4485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubprogram(name: "__compiletime_assert_255", scope: !4310, file: !4310, line: 478, type: !2205, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5025 = !DISubprogram(name: "_dev_info", scope: !5026, file: !5026, line: 56, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !3886, !68, null}
!5029 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4723, file: !4723, line: 43, type: !5030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !4519, !199}
