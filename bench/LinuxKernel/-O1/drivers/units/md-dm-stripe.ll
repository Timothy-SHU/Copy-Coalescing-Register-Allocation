; ModuleID = 'drivers/md/dm-stripe.c'
source_filename = "drivers/md/dm-stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.atomic64_t = type { i64 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, ptr, ptr, i16 }
%struct.stripe_c = type { i32, i32, i64, i32, i32, ptr, %struct.work_struct, [0 x %struct.stripe] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.stripe = type { ptr, i64, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.13, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.13 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}

@.str = private unnamed_addr constant [13 x i8] c"dm_stripe_wq\00", align 1, !dbg !0
@dm_stripe_wq = internal global ptr null, align 8, !dbg !7
@stripe_target = internal global %struct.target_type { i64 160, ptr @.str.2, ptr null, [3 x i32] [i32 1, i32 6, i32 0], ptr @stripe_ctr, ptr @stripe_dtr, ptr @stripe_map, ptr null, ptr null, ptr @stripe_end_io, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stripe_status, ptr null, ptr null, ptr null, ptr null, ptr @stripe_iterate_devices, ptr @stripe_io_hints, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, align 8, !dbg !5302
@.str.1 = private unnamed_addr constant [54 x i8] c"\014device-mapper: striped: target registration failed\0A\00", align 1, !dbg !5295
@.str.2 = private unnamed_addr constant [8 x i8] c"striped\00", align 1, !dbg !5300
@.str.3 = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1, !dbg !5304
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid stripe count\00", align 1, !dbg !5309
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid chunk_size\00", align 1, !dbg !5311
@.str.6 = private unnamed_addr constant [49 x i8] c"Target length not divisible by number of stripes\00", align 1, !dbg !5316
@.str.7 = private unnamed_addr constant [42 x i8] c"Target length not divisible by chunk size\00", align 1, !dbg !5321
@.str.8 = private unnamed_addr constant [34 x i8] c"Not enough destinations specified\00", align 1, !dbg !5326
@.str.9 = private unnamed_addr constant [45 x i8] c"Memory allocation for striped context failed\00", align 1, !dbg !5331
@stripe_ctr.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5336
@.str.10 = private unnamed_addr constant [34 x i8] c"Couldn't parse stripe destination\00", align 1, !dbg !5358
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5360
@.str.12 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1, !dbg !5362
@.str.13 = private unnamed_addr constant [23 x i8] c"drivers/md/dm-stripe.c\00", align 1, !dbg !5365
@.str.14 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1, !dbg !5370
@.str.15 = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !5372
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !5375
@.str.17 = private unnamed_addr constant [3 x i8] c"1 \00", align 1, !dbg !5377
@.str.18 = private unnamed_addr constant [3 x i8] c"%c\00", align 1, !dbg !5380
@.str.19 = private unnamed_addr constant [8 x i8] c"%d %llu\00", align 1, !dbg !5382
@.str.20 = private unnamed_addr constant [9 x i8] c" %s %llu\00", align 1, !dbg !5384
@.str.21 = private unnamed_addr constant [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", align 1, !dbg !5389
@.str.22 = private unnamed_addr constant [28 x i8] c",stripes=%d,chunk_size=%llu\00", align 1, !dbg !5394
@.str.23 = private unnamed_addr constant [26 x i8] c",stripe_%d_device_name=%s\00", align 1, !dbg !5399
@.str.24 = private unnamed_addr constant [31 x i8] c",stripe_%d_physical_start=%llu\00", align 1, !dbg !5404
@.str.25 = private unnamed_addr constant [21 x i8] c",stripe_%d_status=%c\00", align 1, !dbg !5409
@.str.26 = private unnamed_addr constant [2 x i8] c";\00", align 1, !dbg !5411

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @dm_stripe_init() #0 section ".init.text" align 16 !dbg !5423 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5426
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5425, metadata !DIExpression()), !dbg !5427
  %call = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef @.str, i32 noundef 0, i32 noundef 0) #17, !dbg !5428
  store ptr %call, ptr @dm_stripe_wq, align 8, !dbg !5429
  %0 = load ptr, ptr @dm_stripe_wq, align 8, !dbg !5430
  %tobool = icmp ne ptr %0, null, !dbg !5430
  br i1 %tobool, label %if.end, label %if.then, !dbg !5432

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5433

if.end:                                           ; preds = %entry
  %call1 = call i32 @dm_register_target(ptr noundef @stripe_target) #17, !dbg !5434
  store i32 %call1, ptr %r, align 4, !dbg !5435
  %1 = load i32, ptr %r, align 4, !dbg !5436
  %cmp = icmp slt i32 %1, 0, !dbg !5438
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5439

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @dm_stripe_wq, align 8, !dbg !5440
  call void @destroy_workqueue(ptr noundef %2) #17, !dbg !5442
  br label %do.body, !dbg !5443

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5445

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5445

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #18, !dbg !5443
  store i32 %call3, ptr %tmp, align 4, !dbg !5445
  %3 = load i32, ptr %tmp, align 4, !dbg !5443
  br label %if.end4, !dbg !5447

if.end4:                                          ; preds = %do.end, %if.end
  %4 = load i32, ptr %r, align 4, !dbg !5448
  store i32 %4, ptr %retval, align 4, !dbg !5449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5449

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5450
  %5 = load i32, ptr %retval, align 4, !dbg !5450
  ret i32 %5, !dbg !5450
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5451 dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5454 dso_local i32 @dm_register_target(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5457 dso_local void @destroy_workqueue(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5460 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dm_stripe_exit() #5 align 16 !dbg !5464 {
entry:
  call void @dm_unregister_target(ptr noundef @stripe_target) #17, !dbg !5465
  %0 = load ptr, ptr @dm_stripe_wq, align 8, !dbg !5466
  call void @destroy_workqueue(ptr noundef %0) #17, !dbg !5467
  ret void, !dbg !5468
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5469 dso_local void @dm_unregister_target(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stripe_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #5 align 16 !dbg !5338 {
entry:
  %retval = alloca i32, align 4
  %ti.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %width = alloca i64, align 8
  %tmp_len = alloca i64, align 8
  %stripes = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base19 = alloca i32, align 4
  %__rem20 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5340, metadata !DIExpression()), !dbg !5472
  store i32 %argc, ptr %argc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !5341, metadata !DIExpression()), !dbg !5473
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !5342, metadata !DIExpression()), !dbg !5474
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !5475
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !5343, metadata !DIExpression()), !dbg !5476
  call void @llvm.lifetime.start.p0(i64 8, ptr %width) #16, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %width, metadata !5344, metadata !DIExpression()), !dbg !5478
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_len) #16, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %tmp_len, metadata !5345, metadata !DIExpression()), !dbg !5479
  call void @llvm.lifetime.start.p0(i64 4, ptr %stripes) #16, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %stripes, metadata !5346, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 4, ptr %chunk_size) #16, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %chunk_size, metadata !5347, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5348, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5349, metadata !DIExpression()), !dbg !5487
  %0 = load i32, ptr %argc.addr, align 4, !dbg !5488
  %cmp = icmp ult i32 %0, 2, !dbg !5490
  br i1 %cmp, label %if.then, label %if.end, !dbg !5491

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5492
  %error = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 11, !dbg !5494
  store ptr @.str.3, ptr %error, align 8, !dbg !5495
  store i32 -22, ptr %retval, align 4, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !5497
  %arrayidx = getelementptr ptr, ptr %2, i64 0, !dbg !5497
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5497
  %call = call i32 @kstrtouint(ptr noundef %3, i32 noundef 10, ptr noundef %stripes) #17, !dbg !5499
  %tobool = icmp ne i32 %call, 0, !dbg !5499
  br i1 %tobool, label %if.then2, label %lor.lhs.false, !dbg !5500

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %stripes, align 4, !dbg !5501
  %tobool1 = icmp ne i32 %4, 0, !dbg !5501
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !5502

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5503
  %error3 = getelementptr inbounds %struct.dm_target, ptr %5, i32 0, i32 11, !dbg !5505
  store ptr @.str.4, ptr %error3, align 8, !dbg !5506
  store i32 -22, ptr %retval, align 4, !dbg !5507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5507

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %argv.addr, align 8, !dbg !5508
  %arrayidx5 = getelementptr ptr, ptr %6, i64 1, !dbg !5508
  %7 = load ptr, ptr %arrayidx5, align 8, !dbg !5508
  %call6 = call i32 @kstrtouint(ptr noundef %7, i32 noundef 10, ptr noundef %chunk_size) #17, !dbg !5510
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5510
  br i1 %tobool7, label %if.then10, label %lor.lhs.false8, !dbg !5511

lor.lhs.false8:                                   ; preds = %if.end4
  %8 = load i32, ptr %chunk_size, align 4, !dbg !5512
  %tobool9 = icmp ne i32 %8, 0, !dbg !5512
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !5513

if.then10:                                        ; preds = %lor.lhs.false8, %if.end4
  %9 = load ptr, ptr %ti.addr, align 8, !dbg !5514
  %error11 = getelementptr inbounds %struct.dm_target, ptr %9, i32 0, i32 11, !dbg !5516
  store ptr @.str.5, ptr %error11, align 8, !dbg !5517
  store i32 -22, ptr %retval, align 4, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5518

if.end12:                                         ; preds = %lor.lhs.false8
  %10 = load ptr, ptr %ti.addr, align 8, !dbg !5519
  %len = getelementptr inbounds %struct.dm_target, ptr %10, i32 0, i32 3, !dbg !5520
  %11 = load i64, ptr %len, align 8, !dbg !5520
  store i64 %11, ptr %width, align 8, !dbg !5521
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !5350, metadata !DIExpression()), !dbg !5522
  %12 = load i32, ptr %stripes, align 4, !dbg !5522
  store i32 %12, ptr %__base, align 4, !dbg !5522
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !5353, metadata !DIExpression()), !dbg !5522
  %13 = load i64, ptr %width, align 8, !dbg !5522
  %14 = load i32, ptr %__base, align 4, !dbg !5522
  %conv = zext i32 %14 to i64, !dbg !5522
  %rem = urem i64 %13, %conv, !dbg !5522
  %conv13 = trunc i64 %rem to i32, !dbg !5522
  store i32 %conv13, ptr %__rem, align 4, !dbg !5522
  %15 = load i64, ptr %width, align 8, !dbg !5522
  %16 = load i32, ptr %__base, align 4, !dbg !5522
  %conv14 = zext i32 %16 to i64, !dbg !5522
  %div = udiv i64 %15, %conv14, !dbg !5522
  store i64 %div, ptr %width, align 8, !dbg !5522
  %17 = load i32, ptr %__rem, align 4, !dbg !5522
  store i32 %17, ptr %tmp, align 4, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !5523
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !5523
  %18 = load i32, ptr %tmp, align 4, !dbg !5522
  %tobool15 = icmp ne i32 %18, 0, !dbg !5523
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5524

if.then16:                                        ; preds = %if.end12
  %19 = load ptr, ptr %ti.addr, align 8, !dbg !5525
  %error17 = getelementptr inbounds %struct.dm_target, ptr %19, i32 0, i32 11, !dbg !5527
  store ptr @.str.6, ptr %error17, align 8, !dbg !5528
  store i32 -22, ptr %retval, align 4, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

if.end18:                                         ; preds = %if.end12
  %20 = load i64, ptr %width, align 8, !dbg !5530
  store i64 %20, ptr %tmp_len, align 8, !dbg !5531
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base19) #16, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %__base19, metadata !5354, metadata !DIExpression()), !dbg !5532
  %21 = load i32, ptr %chunk_size, align 4, !dbg !5532
  store i32 %21, ptr %__base19, align 4, !dbg !5532
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem20) #16, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %__rem20, metadata !5357, metadata !DIExpression()), !dbg !5532
  %22 = load i64, ptr %tmp_len, align 8, !dbg !5532
  %23 = load i32, ptr %__base19, align 4, !dbg !5532
  %conv21 = zext i32 %23 to i64, !dbg !5532
  %rem22 = urem i64 %22, %conv21, !dbg !5532
  %conv23 = trunc i64 %rem22 to i32, !dbg !5532
  store i32 %conv23, ptr %__rem20, align 4, !dbg !5532
  %24 = load i64, ptr %tmp_len, align 8, !dbg !5532
  %25 = load i32, ptr %__base19, align 4, !dbg !5532
  %conv24 = zext i32 %25 to i64, !dbg !5532
  %div25 = udiv i64 %24, %conv24, !dbg !5532
  store i64 %div25, ptr %tmp_len, align 8, !dbg !5532
  %26 = load i32, ptr %__rem20, align 4, !dbg !5532
  store i32 %26, ptr %tmp26, align 4, !dbg !5532
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem20) #16, !dbg !5533
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base19) #16, !dbg !5533
  %27 = load i32, ptr %tmp26, align 4, !dbg !5532
  %tobool27 = icmp ne i32 %27, 0, !dbg !5533
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5534

if.then28:                                        ; preds = %if.end18
  %28 = load ptr, ptr %ti.addr, align 8, !dbg !5535
  %error29 = getelementptr inbounds %struct.dm_target, ptr %28, i32 0, i32 11, !dbg !5537
  store ptr @.str.7, ptr %error29, align 8, !dbg !5538
  store i32 -22, ptr %retval, align 4, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end30:                                         ; preds = %if.end18
  %29 = load i32, ptr %argc.addr, align 4, !dbg !5540
  %30 = load i32, ptr %stripes, align 4, !dbg !5542
  %mul = mul i32 2, %30, !dbg !5543
  %add = add i32 2, %mul, !dbg !5544
  %cmp31 = icmp ne i32 %29, %add, !dbg !5545
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !5546

if.then33:                                        ; preds = %if.end30
  %31 = load ptr, ptr %ti.addr, align 8, !dbg !5547
  %error34 = getelementptr inbounds %struct.dm_target, ptr %31, i32 0, i32 11, !dbg !5549
  store ptr @.str.8, ptr %error34, align 8, !dbg !5550
  store i32 -22, ptr %retval, align 4, !dbg !5551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5551

if.end35:                                         ; preds = %if.end30
  %32 = load i32, ptr %stripes, align 4, !dbg !5552
  %conv36 = zext i32 %32 to i64, !dbg !5552
  %call37 = call i64 @size_mul(i64 noundef %conv36, i64 noundef 24) #17, !dbg !5552
  %call38 = call i64 @size_add(i64 noundef 64, i64 noundef %call37) #17, !dbg !5552
  %call39 = call noalias ptr @kmalloc(i64 noundef %call38, i32 noundef 3264) #19, !dbg !5553
  store ptr %call39, ptr %sc, align 8, !dbg !5554
  %33 = load ptr, ptr %sc, align 8, !dbg !5555
  %tobool40 = icmp ne ptr %33, null, !dbg !5555
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !5557

if.then41:                                        ; preds = %if.end35
  %34 = load ptr, ptr %ti.addr, align 8, !dbg !5558
  %error42 = getelementptr inbounds %struct.dm_target, ptr %34, i32 0, i32 11, !dbg !5560
  store ptr @.str.9, ptr %error42, align 8, !dbg !5561
  store i32 -12, ptr %retval, align 4, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

if.end43:                                         ; preds = %if.end35
  br label %do.body, !dbg !5563

do.body:                                          ; preds = %if.end43
  br label %do.body44, !dbg !5564

do.body44:                                        ; preds = %do.body
  %35 = load ptr, ptr %sc, align 8, !dbg !5566
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %35, i32 0, i32 6, !dbg !5566
  call void @__init_work(ptr noundef %trigger_event, i32 noundef 0) #17, !dbg !5566
  %36 = load ptr, ptr %sc, align 8, !dbg !5566
  %trigger_event45 = getelementptr inbounds %struct.stripe_c, ptr %36, i32 0, i32 6, !dbg !5566
  %data = getelementptr inbounds %struct.work_struct, ptr %trigger_event45, i32 0, i32 0, !dbg !5566
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5566
  store i64 68719476704, ptr %counter, align 8, !dbg !5566
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5566
  %37 = load ptr, ptr %sc, align 8, !dbg !5566
  %trigger_event46 = getelementptr inbounds %struct.stripe_c, ptr %37, i32 0, i32 6, !dbg !5566
  %entry47 = getelementptr inbounds %struct.work_struct, ptr %trigger_event46, i32 0, i32 1, !dbg !5566
  call void @INIT_LIST_HEAD(ptr noundef %entry47) #17, !dbg !5566
  %38 = load ptr, ptr %sc, align 8, !dbg !5566
  %trigger_event48 = getelementptr inbounds %struct.stripe_c, ptr %38, i32 0, i32 6, !dbg !5566
  %func = getelementptr inbounds %struct.work_struct, ptr %trigger_event48, i32 0, i32 2, !dbg !5566
  store ptr @trigger_event, ptr %func, align 8, !dbg !5566
  br label %do.cond, !dbg !5566

do.cond:                                          ; preds = %do.body44
  br label %do.end, !dbg !5566

do.end:                                           ; preds = %do.cond
  br label %do.cond49, !dbg !5564

do.cond49:                                        ; preds = %do.end
  br label %do.end50, !dbg !5564

do.end50:                                         ; preds = %do.cond49
  %39 = load ptr, ptr %ti.addr, align 8, !dbg !5568
  %40 = load ptr, ptr %sc, align 8, !dbg !5569
  %ti51 = getelementptr inbounds %struct.stripe_c, ptr %40, i32 0, i32 5, !dbg !5570
  store ptr %39, ptr %ti51, align 8, !dbg !5571
  %41 = load i32, ptr %stripes, align 4, !dbg !5572
  %42 = load ptr, ptr %sc, align 8, !dbg !5573
  %stripes52 = getelementptr inbounds %struct.stripe_c, ptr %42, i32 0, i32 0, !dbg !5574
  store i32 %41, ptr %stripes52, align 8, !dbg !5575
  %43 = load i64, ptr %width, align 8, !dbg !5576
  %44 = load ptr, ptr %sc, align 8, !dbg !5577
  %stripe_width = getelementptr inbounds %struct.stripe_c, ptr %44, i32 0, i32 2, !dbg !5578
  store i64 %43, ptr %stripe_width, align 8, !dbg !5579
  %45 = load i32, ptr %stripes, align 4, !dbg !5580
  %46 = load i32, ptr %stripes, align 4, !dbg !5582
  %sub = sub i32 %46, 1, !dbg !5583
  %and = and i32 %45, %sub, !dbg !5584
  %tobool53 = icmp ne i32 %and, 0, !dbg !5584
  br i1 %tobool53, label %if.then54, label %if.else, !dbg !5585

if.then54:                                        ; preds = %do.end50
  %47 = load ptr, ptr %sc, align 8, !dbg !5586
  %stripes_shift = getelementptr inbounds %struct.stripe_c, ptr %47, i32 0, i32 1, !dbg !5587
  store i32 -1, ptr %stripes_shift, align 4, !dbg !5588
  br label %if.end61, !dbg !5586

if.else:                                          ; preds = %do.end50
  %48 = load i32, ptr %stripes, align 4, !dbg !5589
  %49 = call i1 @llvm.is.constant.i32(i32 %48), !dbg !5589
  br i1 %49, label %cond.true, label %cond.false, !dbg !5589

cond.true:                                        ; preds = %if.else
  %50 = load i32, ptr %stripes, align 4, !dbg !5589
  %conv55 = zext i32 %50 to i64, !dbg !5589
  %51 = call i64 @llvm.cttz.i64(i64 %conv55, i1 true), !dbg !5589
  %cast = trunc i64 %51 to i32, !dbg !5589
  %conv56 = sext i32 %cast to i64, !dbg !5589
  br label %cond.end, !dbg !5589

cond.false:                                       ; preds = %if.else
  %52 = load i32, ptr %stripes, align 4, !dbg !5589
  %conv57 = zext i32 %52 to i64, !dbg !5589
  %call58 = call i64 @variable__ffs(i64 noundef %conv57) #17, !dbg !5589
  br label %cond.end, !dbg !5589

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv56, %cond.true ], [ %call58, %cond.false ], !dbg !5589
  %conv59 = trunc i64 %cond to i32, !dbg !5589
  %53 = load ptr, ptr %sc, align 8, !dbg !5590
  %stripes_shift60 = getelementptr inbounds %struct.stripe_c, ptr %53, i32 0, i32 1, !dbg !5591
  store i32 %conv59, ptr %stripes_shift60, align 4, !dbg !5592
  br label %if.end61

if.end61:                                         ; preds = %cond.end, %if.then54
  %54 = load ptr, ptr %ti.addr, align 8, !dbg !5593
  %55 = load i32, ptr %chunk_size, align 4, !dbg !5594
  %conv62 = zext i32 %55 to i64, !dbg !5594
  %call63 = call i32 @dm_set_target_max_io_len(ptr noundef %54, i64 noundef %conv62) #17, !dbg !5595
  store i32 %call63, ptr %r, align 4, !dbg !5596
  %56 = load i32, ptr %r, align 4, !dbg !5597
  %tobool64 = icmp ne i32 %56, 0, !dbg !5597
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !5599

if.then65:                                        ; preds = %if.end61
  %57 = load ptr, ptr %sc, align 8, !dbg !5600
  call void @kfree(ptr noundef %57) #17, !dbg !5602
  %58 = load i32, ptr %r, align 4, !dbg !5603
  store i32 %58, ptr %retval, align 4, !dbg !5604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5604

if.end66:                                         ; preds = %if.end61
  %59 = load i32, ptr %stripes, align 4, !dbg !5605
  %60 = load ptr, ptr %ti.addr, align 8, !dbg !5606
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %60, i32 0, i32 5, !dbg !5607
  store i32 %59, ptr %num_flush_bios, align 4, !dbg !5608
  %61 = load i32, ptr %stripes, align 4, !dbg !5609
  %62 = load ptr, ptr %ti.addr, align 8, !dbg !5610
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %62, i32 0, i32 6, !dbg !5611
  store i32 %61, ptr %num_discard_bios, align 8, !dbg !5612
  %63 = load i32, ptr %stripes, align 4, !dbg !5613
  %64 = load ptr, ptr %ti.addr, align 8, !dbg !5614
  %num_secure_erase_bios = getelementptr inbounds %struct.dm_target, ptr %64, i32 0, i32 7, !dbg !5615
  store i32 %63, ptr %num_secure_erase_bios, align 4, !dbg !5616
  %65 = load i32, ptr %stripes, align 4, !dbg !5617
  %66 = load ptr, ptr %ti.addr, align 8, !dbg !5618
  %num_write_zeroes_bios = getelementptr inbounds %struct.dm_target, ptr %66, i32 0, i32 8, !dbg !5619
  store i32 %65, ptr %num_write_zeroes_bios, align 8, !dbg !5620
  %67 = load i32, ptr %chunk_size, align 4, !dbg !5621
  %68 = load ptr, ptr %sc, align 8, !dbg !5622
  %chunk_size67 = getelementptr inbounds %struct.stripe_c, ptr %68, i32 0, i32 3, !dbg !5623
  store i32 %67, ptr %chunk_size67, align 8, !dbg !5624
  %69 = load i32, ptr %chunk_size, align 4, !dbg !5625
  %70 = load i32, ptr %chunk_size, align 4, !dbg !5627
  %sub68 = sub i32 %70, 1, !dbg !5628
  %and69 = and i32 %69, %sub68, !dbg !5629
  %tobool70 = icmp ne i32 %and69, 0, !dbg !5629
  br i1 %tobool70, label %if.then71, label %if.else72, !dbg !5630

if.then71:                                        ; preds = %if.end66
  %71 = load ptr, ptr %sc, align 8, !dbg !5631
  %chunk_size_shift = getelementptr inbounds %struct.stripe_c, ptr %71, i32 0, i32 4, !dbg !5632
  store i32 -1, ptr %chunk_size_shift, align 4, !dbg !5633
  br label %if.end84, !dbg !5631

if.else72:                                        ; preds = %if.end66
  %72 = load i32, ptr %chunk_size, align 4, !dbg !5634
  %73 = call i1 @llvm.is.constant.i32(i32 %72), !dbg !5634
  br i1 %73, label %cond.true73, label %cond.false77, !dbg !5634

cond.true73:                                      ; preds = %if.else72
  %74 = load i32, ptr %chunk_size, align 4, !dbg !5634
  %conv74 = zext i32 %74 to i64, !dbg !5634
  %75 = call i64 @llvm.cttz.i64(i64 %conv74, i1 true), !dbg !5634
  %cast75 = trunc i64 %75 to i32, !dbg !5634
  %conv76 = sext i32 %cast75 to i64, !dbg !5634
  br label %cond.end80, !dbg !5634

cond.false77:                                     ; preds = %if.else72
  %76 = load i32, ptr %chunk_size, align 4, !dbg !5634
  %conv78 = zext i32 %76 to i64, !dbg !5634
  %call79 = call i64 @variable__ffs(i64 noundef %conv78) #17, !dbg !5634
  br label %cond.end80, !dbg !5634

cond.end80:                                       ; preds = %cond.false77, %cond.true73
  %cond81 = phi i64 [ %conv76, %cond.true73 ], [ %call79, %cond.false77 ], !dbg !5634
  %conv82 = trunc i64 %cond81 to i32, !dbg !5634
  %77 = load ptr, ptr %sc, align 8, !dbg !5635
  %chunk_size_shift83 = getelementptr inbounds %struct.stripe_c, ptr %77, i32 0, i32 4, !dbg !5636
  store i32 %conv82, ptr %chunk_size_shift83, align 4, !dbg !5637
  br label %if.end84

if.end84:                                         ; preds = %cond.end80, %if.then71
  store i32 0, ptr %i, align 4, !dbg !5638
  br label %for.cond, !dbg !5640

for.cond:                                         ; preds = %for.inc, %if.end84
  %78 = load i32, ptr %i, align 4, !dbg !5641
  %79 = load i32, ptr %stripes, align 4, !dbg !5643
  %cmp85 = icmp ult i32 %78, %79, !dbg !5644
  br i1 %cmp85, label %for.body, label %for.end, !dbg !5645

for.body:                                         ; preds = %for.cond
  %80 = load ptr, ptr %argv.addr, align 8, !dbg !5646
  %add.ptr = getelementptr ptr, ptr %80, i64 2, !dbg !5646
  store ptr %add.ptr, ptr %argv.addr, align 8, !dbg !5646
  %81 = load ptr, ptr %ti.addr, align 8, !dbg !5648
  %82 = load ptr, ptr %sc, align 8, !dbg !5649
  %83 = load i32, ptr %i, align 4, !dbg !5650
  %84 = load ptr, ptr %argv.addr, align 8, !dbg !5651
  %call87 = call i32 @get_stripe(ptr noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84) #17, !dbg !5652
  store i32 %call87, ptr %r, align 4, !dbg !5653
  %85 = load i32, ptr %r, align 4, !dbg !5654
  %cmp88 = icmp slt i32 %85, 0, !dbg !5656
  br i1 %cmp88, label %if.then90, label %if.end94, !dbg !5657

if.then90:                                        ; preds = %for.body
  %86 = load ptr, ptr %ti.addr, align 8, !dbg !5658
  %error91 = getelementptr inbounds %struct.dm_target, ptr %86, i32 0, i32 11, !dbg !5660
  store ptr @.str.10, ptr %error91, align 8, !dbg !5661
  br label %while.cond, !dbg !5662

while.cond:                                       ; preds = %while.body, %if.then90
  %87 = load i32, ptr %i, align 4, !dbg !5663
  %dec = add i32 %87, -1, !dbg !5663
  store i32 %dec, ptr %i, align 4, !dbg !5663
  %tobool92 = icmp ne i32 %87, 0, !dbg !5662
  br i1 %tobool92, label %while.body, label %while.end, !dbg !5662

while.body:                                       ; preds = %while.cond
  %88 = load ptr, ptr %ti.addr, align 8, !dbg !5664
  %89 = load ptr, ptr %sc, align 8, !dbg !5665
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %89, i32 0, i32 7, !dbg !5666
  %90 = load i32, ptr %i, align 4, !dbg !5667
  %idxprom = zext i32 %90 to i64, !dbg !5665
  %arrayidx93 = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !5665
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx93, i32 0, i32 0, !dbg !5668
  %91 = load ptr, ptr %dev, align 8, !dbg !5668
  call void @dm_put_device(ptr noundef %88, ptr noundef %91) #17, !dbg !5669
  br label %while.cond, !dbg !5662, !llvm.loop !5670

while.end:                                        ; preds = %while.cond
  %92 = load ptr, ptr %sc, align 8, !dbg !5674
  call void @kfree(ptr noundef %92) #17, !dbg !5675
  %93 = load i32, ptr %r, align 4, !dbg !5676
  store i32 %93, ptr %retval, align 4, !dbg !5677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5677

if.end94:                                         ; preds = %for.body
  %94 = load ptr, ptr %sc, align 8, !dbg !5678
  %stripe95 = getelementptr inbounds %struct.stripe_c, ptr %94, i32 0, i32 7, !dbg !5679
  %95 = load i32, ptr %i, align 4, !dbg !5680
  %idxprom96 = zext i32 %95 to i64, !dbg !5678
  %arrayidx97 = getelementptr [0 x %struct.stripe], ptr %stripe95, i64 0, i64 %idxprom96, !dbg !5678
  %error_count = getelementptr inbounds %struct.stripe, ptr %arrayidx97, i32 0, i32 2, !dbg !5681
  call void @atomic_set(ptr noundef %error_count, i32 noundef 0) #17, !dbg !5682
  br label %for.inc, !dbg !5683

for.inc:                                          ; preds = %if.end94
  %96 = load i32, ptr %i, align 4, !dbg !5684
  %inc = add i32 %96, 1, !dbg !5684
  store i32 %inc, ptr %i, align 4, !dbg !5684
  br label %for.cond, !dbg !5685, !llvm.loop !5686

for.end:                                          ; preds = %for.cond
  %97 = load ptr, ptr %sc, align 8, !dbg !5688
  %98 = load ptr, ptr %ti.addr, align 8, !dbg !5689
  %private = getelementptr inbounds %struct.dm_target, ptr %98, i32 0, i32 10, !dbg !5690
  store ptr %97, ptr %private, align 8, !dbg !5691
  store i32 0, ptr %retval, align 4, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

cleanup:                                          ; preds = %for.end, %while.end, %if.then65, %if.then41, %if.then33, %if.then28, %if.then16, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 4, ptr %chunk_size) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 4, ptr %stripes) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_len) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %width) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !5693
  %99 = load i32, ptr %retval, align 4, !dbg !5693
  ret i32 %99, !dbg !5693
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stripe_dtr(ptr noundef %ti) #5 align 16 !dbg !5694 {
entry:
  %ti.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sc = alloca ptr, align 8
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5696, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5697, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !5698, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !5704
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !5705
  %1 = load ptr, ptr %private, align 8, !dbg !5705
  store ptr %1, ptr %sc, align 8, !dbg !5703
  store i32 0, ptr %i, align 4, !dbg !5706
  br label %for.cond, !dbg !5708

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5709
  %3 = load ptr, ptr %sc, align 8, !dbg !5711
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %3, i32 0, i32 0, !dbg !5712
  %4 = load i32, ptr %stripes, align 8, !dbg !5712
  %cmp = icmp ult i32 %2, %4, !dbg !5713
  br i1 %cmp, label %for.body, label %for.end, !dbg !5714

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5715
  %6 = load ptr, ptr %sc, align 8, !dbg !5716
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %6, i32 0, i32 7, !dbg !5717
  %7 = load i32, ptr %i, align 4, !dbg !5718
  %idxprom = zext i32 %7 to i64, !dbg !5716
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !5716
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !5719
  %8 = load ptr, ptr %dev, align 8, !dbg !5719
  call void @dm_put_device(ptr noundef %5, ptr noundef %8) #17, !dbg !5720
  br label %for.inc, !dbg !5720

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !5721
  %inc = add i32 %9, 1, !dbg !5721
  store i32 %inc, ptr %i, align 4, !dbg !5721
  br label %for.cond, !dbg !5722, !llvm.loop !5723

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %sc, align 8, !dbg !5725
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %10, i32 0, i32 6, !dbg !5726
  %call = call zeroext i1 @flush_work(ptr noundef %trigger_event) #17, !dbg !5727
  %11 = load ptr, ptr %sc, align 8, !dbg !5728
  call void @kfree(ptr noundef %11) #17, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5730
  ret void, !dbg !5730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stripe_map(ptr noundef %ti, ptr noundef %bio) #5 align 16 !dbg !5731 {
entry:
  %retval = alloca i32, align 4
  %ti.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %stripe = alloca i32, align 4
  %target_bio_nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5733, metadata !DIExpression()), !dbg !5738
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5734, metadata !DIExpression()), !dbg !5739
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !5735, metadata !DIExpression()), !dbg !5741
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !5742
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !5743
  %1 = load ptr, ptr %private, align 8, !dbg !5743
  store ptr %1, ptr %sc, align 8, !dbg !5741
  call void @llvm.lifetime.start.p0(i64 4, ptr %stripe) #16, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %stripe, metadata !5736, metadata !DIExpression()), !dbg !5745
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_bio_nr) #16, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %target_bio_nr, metadata !5737, metadata !DIExpression()), !dbg !5747
  %2 = load ptr, ptr %bio.addr, align 8, !dbg !5748
  %bi_opf = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2, !dbg !5750
  %3 = load i32, ptr %bi_opf, align 8, !dbg !5750
  %and = and i32 %3, 262144, !dbg !5751
  %tobool = icmp ne i32 %and, 0, !dbg !5751
  br i1 %tobool, label %if.then, label %if.end14, !dbg !5752

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bio.addr, align 8, !dbg !5753
  %call = call i32 @dm_bio_get_target_bio_nr(ptr noundef %4) #17, !dbg !5755
  store i32 %call, ptr %target_bio_nr, align 4, !dbg !5756
  br label %do.body, !dbg !5757

do.body:                                          ; preds = %if.then
  %5 = load i32, ptr %target_bio_nr, align 4, !dbg !5758
  %6 = load ptr, ptr %sc, align 8, !dbg !5758
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %6, i32 0, i32 0, !dbg !5758
  %7 = load i32, ptr %stripes, align 8, !dbg !5758
  %cmp = icmp uge i32 %5, %7, !dbg !5758
  %lnot = xor i1 %cmp, true, !dbg !5758
  %lnot1 = xor i1 %lnot, true, !dbg !5758
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5758
  %conv = sext i32 %lnot.ext to i64, !dbg !5758
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5758
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5758
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5761

if.then3:                                         ; preds = %do.body
  br label %do.body4, !dbg !5758

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !5762

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5764

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5764

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5762

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 279, i32 0, i64 12) #16, !dbg !5766, !srcloc !5768
  br label %do.cond7, !dbg !5766

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5766

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5762

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5762

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5762

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5761

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5761

do.end12:                                         ; preds = %do.cond11
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !5769
  %9 = load ptr, ptr %sc, align 8, !dbg !5770
  %stripe13 = getelementptr inbounds %struct.stripe_c, ptr %9, i32 0, i32 7, !dbg !5771
  %10 = load i32, ptr %target_bio_nr, align 4, !dbg !5772
  %idxprom = zext i32 %10 to i64, !dbg !5770
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe13, i64 0, i64 %idxprom, !dbg !5770
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !5773
  %11 = load ptr, ptr %dev, align 8, !dbg !5773
  %bdev = getelementptr inbounds %struct.dm_dev, ptr %11, i32 0, i32 0, !dbg !5774
  %12 = load ptr, ptr %bdev, align 8, !dbg !5774
  call void @bio_set_dev(ptr noundef %8, ptr noundef %12) #17, !dbg !5775
  store i32 1, ptr %retval, align 4, !dbg !5776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5776

if.end14:                                         ; preds = %entry
  %13 = load ptr, ptr %bio.addr, align 8, !dbg !5777
  %call15 = call i32 @bio_op(ptr noundef %13) #17, !dbg !5777
  %cmp16 = icmp eq i32 %call15, 3, !dbg !5777
  %lnot18 = xor i1 %cmp16, true, !dbg !5777
  %lnot20 = xor i1 %lnot18, true, !dbg !5777
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5777
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5777
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5777
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !5777
  br i1 %tobool24, label %if.then46, label %lor.lhs.false, !dbg !5779

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load ptr, ptr %bio.addr, align 8, !dbg !5780
  %call25 = call i32 @bio_op(ptr noundef %14) #17, !dbg !5780
  %cmp26 = icmp eq i32 %call25, 5, !dbg !5780
  %lnot28 = xor i1 %cmp26, true, !dbg !5780
  %lnot30 = xor i1 %lnot28, true, !dbg !5780
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5780
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5780
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5780
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !5780
  br i1 %tobool34, label %if.then46, label %lor.lhs.false35, !dbg !5781

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %bio.addr, align 8, !dbg !5782
  %call36 = call i32 @bio_op(ptr noundef %15) #17, !dbg !5782
  %cmp37 = icmp eq i32 %call36, 9, !dbg !5782
  %lnot39 = xor i1 %cmp37, true, !dbg !5782
  %lnot41 = xor i1 %lnot39, true, !dbg !5782
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5782
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5782
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5782
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !5782
  br i1 %tobool45, label %if.then46, label %if.end73, !dbg !5783

if.then46:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.end14
  %16 = load ptr, ptr %bio.addr, align 8, !dbg !5784
  %call47 = call i32 @dm_bio_get_target_bio_nr(ptr noundef %16) #17, !dbg !5786
  store i32 %call47, ptr %target_bio_nr, align 4, !dbg !5787
  br label %do.body48, !dbg !5788

do.body48:                                        ; preds = %if.then46
  %17 = load i32, ptr %target_bio_nr, align 4, !dbg !5789
  %18 = load ptr, ptr %sc, align 8, !dbg !5789
  %stripes49 = getelementptr inbounds %struct.stripe_c, ptr %18, i32 0, i32 0, !dbg !5789
  %19 = load i32, ptr %stripes49, align 8, !dbg !5789
  %cmp50 = icmp uge i32 %17, %19, !dbg !5789
  %lnot52 = xor i1 %cmp50, true, !dbg !5789
  %lnot54 = xor i1 %lnot52, true, !dbg !5789
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5789
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5789
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5789
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5789
  br i1 %tobool58, label %if.then59, label %if.end69, !dbg !5792

if.then59:                                        ; preds = %do.body48
  br label %do.body60, !dbg !5789

do.body60:                                        ; preds = %if.then59
  br label %do.body61, !dbg !5793

do.body61:                                        ; preds = %do.body60
  br label %do.cond62, !dbg !5795

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !5795

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !5793

do.body64:                                        ; preds = %do.end63
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 287, i32 0, i64 12) #16, !dbg !5797, !srcloc !5799
  br label %do.cond65, !dbg !5797

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !5797

do.end66:                                         ; preds = %do.cond65
  unreachable, !dbg !5793

do.cond67:                                        ; No predecessors!
  br label %do.end68, !dbg !5793

do.end68:                                         ; preds = %do.cond67
  br label %if.end69, !dbg !5793

if.end69:                                         ; preds = %do.end68, %do.body48
  br label %do.cond70, !dbg !5792

do.cond70:                                        ; preds = %if.end69
  br label %do.end71, !dbg !5792

do.end71:                                         ; preds = %do.cond70
  %20 = load ptr, ptr %sc, align 8, !dbg !5800
  %21 = load ptr, ptr %bio.addr, align 8, !dbg !5801
  %22 = load i32, ptr %target_bio_nr, align 4, !dbg !5802
  %call72 = call i32 @stripe_map_range(ptr noundef %20, ptr noundef %21, i32 noundef %22) #17, !dbg !5803
  store i32 %call72, ptr %retval, align 4, !dbg !5804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5804

if.end73:                                         ; preds = %lor.lhs.false35
  %23 = load ptr, ptr %sc, align 8, !dbg !5805
  %24 = load ptr, ptr %bio.addr, align 8, !dbg !5806
  %bi_iter = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 7, !dbg !5807
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !5808
  %25 = load i64, ptr %bi_sector, align 8, !dbg !5808
  %26 = load ptr, ptr %bio.addr, align 8, !dbg !5809
  %bi_iter74 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 7, !dbg !5810
  %bi_sector75 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter74, i32 0, i32 0, !dbg !5811
  call void @stripe_map_sector(ptr noundef %23, i64 noundef %25, ptr noundef %stripe, ptr noundef %bi_sector75) #17, !dbg !5812
  %27 = load ptr, ptr %sc, align 8, !dbg !5813
  %stripe76 = getelementptr inbounds %struct.stripe_c, ptr %27, i32 0, i32 7, !dbg !5814
  %28 = load i32, ptr %stripe, align 4, !dbg !5815
  %idxprom77 = zext i32 %28 to i64, !dbg !5813
  %arrayidx78 = getelementptr [0 x %struct.stripe], ptr %stripe76, i64 0, i64 %idxprom77, !dbg !5813
  %physical_start = getelementptr inbounds %struct.stripe, ptr %arrayidx78, i32 0, i32 1, !dbg !5816
  %29 = load i64, ptr %physical_start, align 8, !dbg !5816
  %30 = load ptr, ptr %bio.addr, align 8, !dbg !5817
  %bi_iter79 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 7, !dbg !5818
  %bi_sector80 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter79, i32 0, i32 0, !dbg !5819
  %31 = load i64, ptr %bi_sector80, align 8, !dbg !5820
  %add = add i64 %31, %29, !dbg !5820
  store i64 %add, ptr %bi_sector80, align 8, !dbg !5820
  %32 = load ptr, ptr %bio.addr, align 8, !dbg !5821
  %33 = load ptr, ptr %sc, align 8, !dbg !5822
  %stripe81 = getelementptr inbounds %struct.stripe_c, ptr %33, i32 0, i32 7, !dbg !5823
  %34 = load i32, ptr %stripe, align 4, !dbg !5824
  %idxprom82 = zext i32 %34 to i64, !dbg !5822
  %arrayidx83 = getelementptr [0 x %struct.stripe], ptr %stripe81, i64 0, i64 %idxprom82, !dbg !5822
  %dev84 = getelementptr inbounds %struct.stripe, ptr %arrayidx83, i32 0, i32 0, !dbg !5825
  %35 = load ptr, ptr %dev84, align 8, !dbg !5825
  %bdev85 = getelementptr inbounds %struct.dm_dev, ptr %35, i32 0, i32 0, !dbg !5826
  %36 = load ptr, ptr %bdev85, align 8, !dbg !5826
  call void @bio_set_dev(ptr noundef %32, ptr noundef %36) #17, !dbg !5827
  store i32 1, ptr %retval, align 4, !dbg !5828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5828

cleanup:                                          ; preds = %if.end73, %do.end71, %do.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_bio_nr) #16, !dbg !5829
  call void @llvm.lifetime.end.p0(i64 4, ptr %stripe) #16, !dbg !5829
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !5829
  %37 = load i32, ptr %retval, align 4, !dbg !5829
  ret i32 %37, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stripe_end_io(ptr noundef %ti, ptr noundef %bio, ptr noundef %error) #5 align 16 !dbg !5830 {
entry:
  %retval = alloca i32, align 4
  %ti.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %major_minor = alloca [16 x i8], align 16
  %sc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5832, metadata !DIExpression()), !dbg !5838
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5833, metadata !DIExpression()), !dbg !5839
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5834, metadata !DIExpression()), !dbg !5840
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5835, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 16, ptr %major_minor) #16, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %major_minor, metadata !5836, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !5837, metadata !DIExpression()), !dbg !5846
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !5847
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !5848
  %1 = load ptr, ptr %private, align 8, !dbg !5848
  store ptr %1, ptr %sc, align 8, !dbg !5846
  %2 = load ptr, ptr %error.addr, align 8, !dbg !5849
  %3 = load i8, ptr %2, align 1, !dbg !5851
  %tobool = icmp ne i8 %3, 0, !dbg !5851
  br i1 %tobool, label %if.end, label %if.then, !dbg !5852

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5853

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %bio.addr, align 8, !dbg !5854
  %bi_opf = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 2, !dbg !5856
  %5 = load i32, ptr %bi_opf, align 8, !dbg !5856
  %and = and i32 %5, 524288, !dbg !5857
  %tobool1 = icmp ne i32 %and, 0, !dbg !5857
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5858

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5859

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %error.addr, align 8, !dbg !5860
  %7 = load i8, ptr %6, align 1, !dbg !5862
  %conv = zext i8 %7 to i32, !dbg !5862
  %cmp = icmp eq i32 %conv, 1, !dbg !5863
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5864

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5865

if.end6:                                          ; preds = %if.end3
  %arraydecay = getelementptr inbounds [16 x i8], ptr %major_minor, i64 0, i64 0, !dbg !5866
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 16, i1 false), !dbg !5866
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %major_minor, i64 0, i64 0, !dbg !5867
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !5868
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 1, !dbg !5868
  %9 = load ptr, ptr %bi_bdev, align 8, !dbg !5868
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 2, !dbg !5868
  %10 = load ptr, ptr %bd_disk, align 8, !dbg !5868
  %call = call i32 @disk_devt(ptr noundef %10) #17, !dbg !5868
  %shr = lshr i32 %call, 20, !dbg !5868
  %11 = load ptr, ptr %bio.addr, align 8, !dbg !5869
  %bi_bdev8 = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 1, !dbg !5869
  %12 = load ptr, ptr %bi_bdev8, align 8, !dbg !5869
  %bd_disk9 = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 2, !dbg !5869
  %13 = load ptr, ptr %bd_disk9, align 8, !dbg !5869
  %call10 = call i32 @disk_devt(ptr noundef %13) #17, !dbg !5869
  %and11 = and i32 %call10, 1048575, !dbg !5869
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay7, ptr noundef @.str.14, i32 noundef %shr, i32 noundef %and11) #17, !dbg !5870
  store i32 0, ptr %i, align 4, !dbg !5871
  br label %for.cond, !dbg !5873

for.cond:                                         ; preds = %for.inc, %if.end6
  %14 = load i32, ptr %i, align 4, !dbg !5874
  %15 = load ptr, ptr %sc, align 8, !dbg !5876
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %15, i32 0, i32 0, !dbg !5877
  %16 = load i32, ptr %stripes, align 8, !dbg !5877
  %cmp13 = icmp ult i32 %14, %16, !dbg !5878
  br i1 %cmp13, label %for.body, label %for.end, !dbg !5879

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %sc, align 8, !dbg !5880
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %17, i32 0, i32 7, !dbg !5882
  %18 = load i32, ptr %i, align 4, !dbg !5883
  %idxprom = zext i32 %18 to i64, !dbg !5880
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !5880
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !5884
  %19 = load ptr, ptr %dev, align 8, !dbg !5884
  %name = getelementptr inbounds %struct.dm_dev, ptr %19, i32 0, i32 3, !dbg !5885
  %arraydecay15 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5880
  %arraydecay16 = getelementptr inbounds [16 x i8], ptr %major_minor, i64 0, i64 0, !dbg !5886
  %call17 = call i32 @strcmp(ptr noundef %arraydecay15, ptr noundef %arraydecay16) #17, !dbg !5887
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5887
  br i1 %tobool18, label %if.end33, label %if.then19, !dbg !5888

if.then19:                                        ; preds = %for.body
  %20 = load ptr, ptr %sc, align 8, !dbg !5889
  %stripe20 = getelementptr inbounds %struct.stripe_c, ptr %20, i32 0, i32 7, !dbg !5891
  %21 = load i32, ptr %i, align 4, !dbg !5892
  %idxprom21 = zext i32 %21 to i64, !dbg !5889
  %arrayidx22 = getelementptr [0 x %struct.stripe], ptr %stripe20, i64 0, i64 %idxprom21, !dbg !5889
  %error_count = getelementptr inbounds %struct.stripe, ptr %arrayidx22, i32 0, i32 2, !dbg !5893
  call void @atomic_inc(ptr noundef %error_count) #17, !dbg !5894
  %22 = load ptr, ptr %sc, align 8, !dbg !5895
  %stripe23 = getelementptr inbounds %struct.stripe_c, ptr %22, i32 0, i32 7, !dbg !5897
  %23 = load i32, ptr %i, align 4, !dbg !5898
  %idxprom24 = zext i32 %23 to i64, !dbg !5895
  %arrayidx25 = getelementptr [0 x %struct.stripe], ptr %stripe23, i64 0, i64 %idxprom24, !dbg !5895
  %error_count26 = getelementptr inbounds %struct.stripe, ptr %arrayidx25, i32 0, i32 2, !dbg !5899
  %call27 = call i32 @atomic_read(ptr noundef %error_count26) #17, !dbg !5900
  %cmp28 = icmp slt i32 %call27, 15, !dbg !5901
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !5902

if.then30:                                        ; preds = %if.then19
  %24 = load ptr, ptr @dm_stripe_wq, align 8, !dbg !5903
  %25 = load ptr, ptr %sc, align 8, !dbg !5904
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %25, i32 0, i32 6, !dbg !5905
  %call31 = call zeroext i1 @queue_work(ptr noundef %24, ptr noundef %trigger_event) #17, !dbg !5906
  br label %if.end32, !dbg !5906

if.end32:                                         ; preds = %if.then30, %if.then19
  br label %if.end33, !dbg !5907

if.end33:                                         ; preds = %if.end32, %for.body
  br label %for.inc, !dbg !5908

for.inc:                                          ; preds = %if.end33
  %26 = load i32, ptr %i, align 4, !dbg !5909
  %inc = add i32 %26, 1, !dbg !5909
  store i32 %inc, ptr %i, align 4, !dbg !5909
  br label %for.cond, !dbg !5910, !llvm.loop !5911

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913

cleanup:                                          ; preds = %for.end, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 16, ptr %major_minor) #16, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5914
  %27 = load i32, ptr %retval, align 4, !dbg !5914
  ret i32 %27, !dbg !5914
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stripe_status(ptr noundef %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #5 align 16 !dbg !5915 {
entry:
  %ti.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status_flags.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %maxlen.addr = alloca i32, align 4
  %sc = alloca ptr, align 8
  %sz = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5917, metadata !DIExpression()), !dbg !5925
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5918, metadata !DIExpression()), !dbg !5926
  store i32 %status_flags, ptr %status_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status_flags.addr, metadata !5919, metadata !DIExpression()), !dbg !5927
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !5920, metadata !DIExpression()), !dbg !5928
  store i32 %maxlen, ptr %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !5921, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !5922, metadata !DIExpression()), !dbg !5931
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !5932
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !5933
  %1 = load ptr, ptr %private, align 8, !dbg !5933
  store ptr %1, ptr %sc, align 8, !dbg !5931
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5923, metadata !DIExpression()), !dbg !5935
  store i32 0, ptr %sz, align 4, !dbg !5935
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5924, metadata !DIExpression()), !dbg !5937
  %2 = load i32, ptr %type.addr, align 4, !dbg !5938
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb53
    i32 2, label %sw.bb97
  ], !dbg !5939

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5940
  %4 = load i32, ptr %maxlen.addr, align 4, !dbg !5940
  %cmp = icmp uge i32 %3, %4, !dbg !5940
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5940

cond.true:                                        ; preds = %sw.bb
  br label %cond.end, !dbg !5940

cond.false:                                       ; preds = %sw.bb
  %5 = load ptr, ptr %result.addr, align 8, !dbg !5940
  %6 = load i32, ptr %sz, align 4, !dbg !5940
  %idx.ext = zext i32 %6 to i64, !dbg !5940
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !5940
  %7 = load i32, ptr %maxlen.addr, align 4, !dbg !5940
  %8 = load i32, ptr %sz, align 4, !dbg !5940
  %sub = sub i32 %7, %8, !dbg !5940
  %conv = zext i32 %sub to i64, !dbg !5940
  %9 = load ptr, ptr %sc, align 8, !dbg !5940
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %9, i32 0, i32 0, !dbg !5940
  %10 = load i32, ptr %stripes, align 8, !dbg !5940
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr, i64 noundef %conv, ptr noundef @.str.15, i32 noundef %10) #17, !dbg !5940
  br label %cond.end, !dbg !5940

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ], !dbg !5940
  %11 = load i32, ptr %sz, align 4, !dbg !5940
  %add = add i32 %11, %cond, !dbg !5940
  store i32 %add, ptr %sz, align 4, !dbg !5940
  store i32 0, ptr %i, align 4, !dbg !5942
  br label %for.cond, !dbg !5944

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4, !dbg !5945
  %13 = load ptr, ptr %sc, align 8, !dbg !5947
  %stripes1 = getelementptr inbounds %struct.stripe_c, ptr %13, i32 0, i32 0, !dbg !5948
  %14 = load i32, ptr %stripes1, align 8, !dbg !5948
  %cmp2 = icmp ult i32 %12, %14, !dbg !5949
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5950

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %sz, align 4, !dbg !5951
  %16 = load i32, ptr %maxlen.addr, align 4, !dbg !5951
  %cmp4 = icmp uge i32 %15, %16, !dbg !5951
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5951

cond.true6:                                       ; preds = %for.body
  br label %cond.end13, !dbg !5951

cond.false7:                                      ; preds = %for.body
  %17 = load ptr, ptr %result.addr, align 8, !dbg !5951
  %18 = load i32, ptr %sz, align 4, !dbg !5951
  %idx.ext8 = zext i32 %18 to i64, !dbg !5951
  %add.ptr9 = getelementptr i8, ptr %17, i64 %idx.ext8, !dbg !5951
  %19 = load i32, ptr %maxlen.addr, align 4, !dbg !5951
  %20 = load i32, ptr %sz, align 4, !dbg !5951
  %sub10 = sub i32 %19, %20, !dbg !5951
  %conv11 = zext i32 %sub10 to i64, !dbg !5951
  %21 = load ptr, ptr %sc, align 8, !dbg !5951
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %21, i32 0, i32 7, !dbg !5951
  %22 = load i32, ptr %i, align 4, !dbg !5951
  %idxprom = zext i32 %22 to i64, !dbg !5951
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !5951
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !5951
  %23 = load ptr, ptr %dev, align 8, !dbg !5951
  %name = getelementptr inbounds %struct.dm_dev, ptr %23, i32 0, i32 3, !dbg !5951
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5951
  %call12 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i64 noundef %conv11, ptr noundef @.str.16, ptr noundef %arraydecay) #17, !dbg !5951
  br label %cond.end13, !dbg !5951

cond.end13:                                       ; preds = %cond.false7, %cond.true6
  %cond14 = phi i32 [ 0, %cond.true6 ], [ %call12, %cond.false7 ], !dbg !5951
  %24 = load i32, ptr %sz, align 4, !dbg !5951
  %add15 = add i32 %24, %cond14, !dbg !5951
  store i32 %add15, ptr %sz, align 4, !dbg !5951
  br label %for.inc, !dbg !5951

for.inc:                                          ; preds = %cond.end13
  %25 = load i32, ptr %i, align 4, !dbg !5952
  %inc = add i32 %25, 1, !dbg !5952
  store i32 %inc, ptr %i, align 4, !dbg !5952
  br label %for.cond, !dbg !5953, !llvm.loop !5954

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %sz, align 4, !dbg !5956
  %27 = load i32, ptr %maxlen.addr, align 4, !dbg !5956
  %cmp16 = icmp uge i32 %26, %27, !dbg !5956
  br i1 %cmp16, label %cond.true18, label %cond.false19, !dbg !5956

cond.true18:                                      ; preds = %for.end
  br label %cond.end25, !dbg !5956

cond.false19:                                     ; preds = %for.end
  %28 = load ptr, ptr %result.addr, align 8, !dbg !5956
  %29 = load i32, ptr %sz, align 4, !dbg !5956
  %idx.ext20 = zext i32 %29 to i64, !dbg !5956
  %add.ptr21 = getelementptr i8, ptr %28, i64 %idx.ext20, !dbg !5956
  %30 = load i32, ptr %maxlen.addr, align 4, !dbg !5956
  %31 = load i32, ptr %sz, align 4, !dbg !5956
  %sub22 = sub i32 %30, %31, !dbg !5956
  %conv23 = zext i32 %sub22 to i64, !dbg !5956
  %call24 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i64 noundef %conv23, ptr noundef @.str.17) #17, !dbg !5956
  br label %cond.end25, !dbg !5956

cond.end25:                                       ; preds = %cond.false19, %cond.true18
  %cond26 = phi i32 [ 0, %cond.true18 ], [ %call24, %cond.false19 ], !dbg !5956
  %32 = load i32, ptr %sz, align 4, !dbg !5956
  %add27 = add i32 %32, %cond26, !dbg !5956
  store i32 %add27, ptr %sz, align 4, !dbg !5956
  store i32 0, ptr %i, align 4, !dbg !5957
  br label %for.cond28, !dbg !5959

for.cond28:                                       ; preds = %for.inc50, %cond.end25
  %33 = load i32, ptr %i, align 4, !dbg !5960
  %34 = load ptr, ptr %sc, align 8, !dbg !5962
  %stripes29 = getelementptr inbounds %struct.stripe_c, ptr %34, i32 0, i32 0, !dbg !5963
  %35 = load i32, ptr %stripes29, align 8, !dbg !5963
  %cmp30 = icmp ult i32 %33, %35, !dbg !5964
  br i1 %cmp30, label %for.body32, label %for.end52, !dbg !5965

for.body32:                                       ; preds = %for.cond28
  %36 = load i32, ptr %sz, align 4, !dbg !5966
  %37 = load i32, ptr %maxlen.addr, align 4, !dbg !5966
  %cmp33 = icmp uge i32 %36, %37, !dbg !5966
  br i1 %cmp33, label %cond.true35, label %cond.false36, !dbg !5966

cond.true35:                                      ; preds = %for.body32
  br label %cond.end47, !dbg !5966

cond.false36:                                     ; preds = %for.body32
  %38 = load ptr, ptr %result.addr, align 8, !dbg !5966
  %39 = load i32, ptr %sz, align 4, !dbg !5966
  %idx.ext37 = zext i32 %39 to i64, !dbg !5966
  %add.ptr38 = getelementptr i8, ptr %38, i64 %idx.ext37, !dbg !5966
  %40 = load i32, ptr %maxlen.addr, align 4, !dbg !5966
  %41 = load i32, ptr %sz, align 4, !dbg !5966
  %sub39 = sub i32 %40, %41, !dbg !5966
  %conv40 = zext i32 %sub39 to i64, !dbg !5966
  %42 = load ptr, ptr %sc, align 8, !dbg !5966
  %stripe41 = getelementptr inbounds %struct.stripe_c, ptr %42, i32 0, i32 7, !dbg !5966
  %43 = load i32, ptr %i, align 4, !dbg !5966
  %idxprom42 = zext i32 %43 to i64, !dbg !5966
  %arrayidx43 = getelementptr [0 x %struct.stripe], ptr %stripe41, i64 0, i64 %idxprom42, !dbg !5966
  %error_count = getelementptr inbounds %struct.stripe, ptr %arrayidx43, i32 0, i32 2, !dbg !5966
  %call44 = call i32 @atomic_read(ptr noundef %error_count) #17, !dbg !5966
  %tobool = icmp ne i32 %call44, 0, !dbg !5966
  %44 = zext i1 %tobool to i64, !dbg !5966
  %cond45 = select i1 %tobool, i32 68, i32 65, !dbg !5966
  %call46 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i64 noundef %conv40, ptr noundef @.str.18, i32 noundef %cond45) #17, !dbg !5966
  br label %cond.end47, !dbg !5966

cond.end47:                                       ; preds = %cond.false36, %cond.true35
  %cond48 = phi i32 [ 0, %cond.true35 ], [ %call46, %cond.false36 ], !dbg !5966
  %45 = load i32, ptr %sz, align 4, !dbg !5966
  %add49 = add i32 %45, %cond48, !dbg !5966
  store i32 %add49, ptr %sz, align 4, !dbg !5966
  br label %for.inc50, !dbg !5966

for.inc50:                                        ; preds = %cond.end47
  %46 = load i32, ptr %i, align 4, !dbg !5967
  %inc51 = add i32 %46, 1, !dbg !5967
  store i32 %inc51, ptr %i, align 4, !dbg !5967
  br label %for.cond28, !dbg !5968, !llvm.loop !5969

for.end52:                                        ; preds = %for.cond28
  br label %sw.epilog, !dbg !5971

sw.bb53:                                          ; preds = %entry
  %47 = load i32, ptr %sz, align 4, !dbg !5972
  %48 = load i32, ptr %maxlen.addr, align 4, !dbg !5972
  %cmp54 = icmp uge i32 %47, %48, !dbg !5972
  br i1 %cmp54, label %cond.true56, label %cond.false57, !dbg !5972

cond.true56:                                      ; preds = %sw.bb53
  br label %cond.end65, !dbg !5972

cond.false57:                                     ; preds = %sw.bb53
  %49 = load ptr, ptr %result.addr, align 8, !dbg !5972
  %50 = load i32, ptr %sz, align 4, !dbg !5972
  %idx.ext58 = zext i32 %50 to i64, !dbg !5972
  %add.ptr59 = getelementptr i8, ptr %49, i64 %idx.ext58, !dbg !5972
  %51 = load i32, ptr %maxlen.addr, align 4, !dbg !5972
  %52 = load i32, ptr %sz, align 4, !dbg !5972
  %sub60 = sub i32 %51, %52, !dbg !5972
  %conv61 = zext i32 %sub60 to i64, !dbg !5972
  %53 = load ptr, ptr %sc, align 8, !dbg !5972
  %stripes62 = getelementptr inbounds %struct.stripe_c, ptr %53, i32 0, i32 0, !dbg !5972
  %54 = load i32, ptr %stripes62, align 8, !dbg !5972
  %55 = load ptr, ptr %sc, align 8, !dbg !5972
  %chunk_size = getelementptr inbounds %struct.stripe_c, ptr %55, i32 0, i32 3, !dbg !5972
  %56 = load i32, ptr %chunk_size, align 8, !dbg !5972
  %conv63 = zext i32 %56 to i64, !dbg !5972
  %call64 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i64 noundef %conv61, ptr noundef @.str.19, i32 noundef %54, i64 noundef %conv63) #17, !dbg !5972
  br label %cond.end65, !dbg !5972

cond.end65:                                       ; preds = %cond.false57, %cond.true56
  %cond66 = phi i32 [ 0, %cond.true56 ], [ %call64, %cond.false57 ], !dbg !5972
  %57 = load i32, ptr %sz, align 4, !dbg !5972
  %add67 = add i32 %57, %cond66, !dbg !5972
  store i32 %add67, ptr %sz, align 4, !dbg !5972
  store i32 0, ptr %i, align 4, !dbg !5973
  br label %for.cond68, !dbg !5975

for.cond68:                                       ; preds = %for.inc94, %cond.end65
  %58 = load i32, ptr %i, align 4, !dbg !5976
  %59 = load ptr, ptr %sc, align 8, !dbg !5978
  %stripes69 = getelementptr inbounds %struct.stripe_c, ptr %59, i32 0, i32 0, !dbg !5979
  %60 = load i32, ptr %stripes69, align 8, !dbg !5979
  %cmp70 = icmp ult i32 %58, %60, !dbg !5980
  br i1 %cmp70, label %for.body72, label %for.end96, !dbg !5981

for.body72:                                       ; preds = %for.cond68
  %61 = load i32, ptr %sz, align 4, !dbg !5982
  %62 = load i32, ptr %maxlen.addr, align 4, !dbg !5982
  %cmp73 = icmp uge i32 %61, %62, !dbg !5982
  br i1 %cmp73, label %cond.true75, label %cond.false76, !dbg !5982

cond.true75:                                      ; preds = %for.body72
  br label %cond.end91, !dbg !5982

cond.false76:                                     ; preds = %for.body72
  %63 = load ptr, ptr %result.addr, align 8, !dbg !5982
  %64 = load i32, ptr %sz, align 4, !dbg !5982
  %idx.ext77 = zext i32 %64 to i64, !dbg !5982
  %add.ptr78 = getelementptr i8, ptr %63, i64 %idx.ext77, !dbg !5982
  %65 = load i32, ptr %maxlen.addr, align 4, !dbg !5982
  %66 = load i32, ptr %sz, align 4, !dbg !5982
  %sub79 = sub i32 %65, %66, !dbg !5982
  %conv80 = zext i32 %sub79 to i64, !dbg !5982
  %67 = load ptr, ptr %sc, align 8, !dbg !5982
  %stripe81 = getelementptr inbounds %struct.stripe_c, ptr %67, i32 0, i32 7, !dbg !5982
  %68 = load i32, ptr %i, align 4, !dbg !5982
  %idxprom82 = zext i32 %68 to i64, !dbg !5982
  %arrayidx83 = getelementptr [0 x %struct.stripe], ptr %stripe81, i64 0, i64 %idxprom82, !dbg !5982
  %dev84 = getelementptr inbounds %struct.stripe, ptr %arrayidx83, i32 0, i32 0, !dbg !5982
  %69 = load ptr, ptr %dev84, align 8, !dbg !5982
  %name85 = getelementptr inbounds %struct.dm_dev, ptr %69, i32 0, i32 3, !dbg !5982
  %arraydecay86 = getelementptr inbounds [16 x i8], ptr %name85, i64 0, i64 0, !dbg !5982
  %70 = load ptr, ptr %sc, align 8, !dbg !5982
  %stripe87 = getelementptr inbounds %struct.stripe_c, ptr %70, i32 0, i32 7, !dbg !5982
  %71 = load i32, ptr %i, align 4, !dbg !5982
  %idxprom88 = zext i32 %71 to i64, !dbg !5982
  %arrayidx89 = getelementptr [0 x %struct.stripe], ptr %stripe87, i64 0, i64 %idxprom88, !dbg !5982
  %physical_start = getelementptr inbounds %struct.stripe, ptr %arrayidx89, i32 0, i32 1, !dbg !5982
  %72 = load i64, ptr %physical_start, align 8, !dbg !5982
  %call90 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr78, i64 noundef %conv80, ptr noundef @.str.20, ptr noundef %arraydecay86, i64 noundef %72) #17, !dbg !5982
  br label %cond.end91, !dbg !5982

cond.end91:                                       ; preds = %cond.false76, %cond.true75
  %cond92 = phi i32 [ 0, %cond.true75 ], [ %call90, %cond.false76 ], !dbg !5982
  %73 = load i32, ptr %sz, align 4, !dbg !5982
  %add93 = add i32 %73, %cond92, !dbg !5982
  store i32 %add93, ptr %sz, align 4, !dbg !5982
  br label %for.inc94, !dbg !5982

for.inc94:                                        ; preds = %cond.end91
  %74 = load i32, ptr %i, align 4, !dbg !5983
  %inc95 = add i32 %74, 1, !dbg !5983
  store i32 %inc95, ptr %i, align 4, !dbg !5983
  br label %for.cond68, !dbg !5984, !llvm.loop !5985

for.end96:                                        ; preds = %for.cond68
  br label %sw.epilog, !dbg !5987

sw.bb97:                                          ; preds = %entry
  %75 = load i32, ptr %sz, align 4, !dbg !5988
  %76 = load i32, ptr %maxlen.addr, align 4, !dbg !5988
  %cmp98 = icmp uge i32 %75, %76, !dbg !5988
  br i1 %cmp98, label %cond.true100, label %cond.false101, !dbg !5988

cond.true100:                                     ; preds = %sw.bb97
  br label %cond.end117, !dbg !5988

cond.false101:                                    ; preds = %sw.bb97
  %77 = load ptr, ptr %result.addr, align 8, !dbg !5988
  %78 = load i32, ptr %sz, align 4, !dbg !5988
  %idx.ext102 = zext i32 %78 to i64, !dbg !5988
  %add.ptr103 = getelementptr i8, ptr %77, i64 %idx.ext102, !dbg !5988
  %79 = load i32, ptr %maxlen.addr, align 4, !dbg !5988
  %80 = load i32, ptr %sz, align 4, !dbg !5988
  %sub104 = sub i32 %79, %80, !dbg !5988
  %conv105 = zext i32 %sub104 to i64, !dbg !5988
  %81 = load ptr, ptr %ti.addr, align 8, !dbg !5988
  %type106 = getelementptr inbounds %struct.dm_target, ptr %81, i32 0, i32 1, !dbg !5988
  %82 = load ptr, ptr %type106, align 8, !dbg !5988
  %name107 = getelementptr inbounds %struct.target_type, ptr %82, i32 0, i32 1, !dbg !5988
  %83 = load ptr, ptr %name107, align 8, !dbg !5988
  %84 = load ptr, ptr %ti.addr, align 8, !dbg !5988
  %type108 = getelementptr inbounds %struct.dm_target, ptr %84, i32 0, i32 1, !dbg !5988
  %85 = load ptr, ptr %type108, align 8, !dbg !5988
  %version = getelementptr inbounds %struct.target_type, ptr %85, i32 0, i32 3, !dbg !5988
  %arrayidx109 = getelementptr [3 x i32], ptr %version, i64 0, i64 0, !dbg !5988
  %86 = load i32, ptr %arrayidx109, align 8, !dbg !5988
  %87 = load ptr, ptr %ti.addr, align 8, !dbg !5988
  %type110 = getelementptr inbounds %struct.dm_target, ptr %87, i32 0, i32 1, !dbg !5988
  %88 = load ptr, ptr %type110, align 8, !dbg !5988
  %version111 = getelementptr inbounds %struct.target_type, ptr %88, i32 0, i32 3, !dbg !5988
  %arrayidx112 = getelementptr [3 x i32], ptr %version111, i64 0, i64 1, !dbg !5988
  %89 = load i32, ptr %arrayidx112, align 4, !dbg !5988
  %90 = load ptr, ptr %ti.addr, align 8, !dbg !5988
  %type113 = getelementptr inbounds %struct.dm_target, ptr %90, i32 0, i32 1, !dbg !5988
  %91 = load ptr, ptr %type113, align 8, !dbg !5988
  %version114 = getelementptr inbounds %struct.target_type, ptr %91, i32 0, i32 3, !dbg !5988
  %arrayidx115 = getelementptr [3 x i32], ptr %version114, i64 0, i64 2, !dbg !5988
  %92 = load i32, ptr %arrayidx115, align 8, !dbg !5988
  %call116 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i64 noundef %conv105, ptr noundef @.str.21, ptr noundef %83, i32 noundef %86, i32 noundef %89, i32 noundef %92) #17, !dbg !5988
  br label %cond.end117, !dbg !5988

cond.end117:                                      ; preds = %cond.false101, %cond.true100
  %cond118 = phi i32 [ 0, %cond.true100 ], [ %call116, %cond.false101 ], !dbg !5988
  %93 = load i32, ptr %sz, align 4, !dbg !5988
  %add119 = add i32 %93, %cond118, !dbg !5988
  store i32 %add119, ptr %sz, align 4, !dbg !5988
  %94 = load i32, ptr %sz, align 4, !dbg !5989
  %95 = load i32, ptr %maxlen.addr, align 4, !dbg !5989
  %cmp120 = icmp uge i32 %94, %95, !dbg !5989
  br i1 %cmp120, label %cond.true122, label %cond.false123, !dbg !5989

cond.true122:                                     ; preds = %cond.end117
  br label %cond.end132, !dbg !5989

cond.false123:                                    ; preds = %cond.end117
  %96 = load ptr, ptr %result.addr, align 8, !dbg !5989
  %97 = load i32, ptr %sz, align 4, !dbg !5989
  %idx.ext124 = zext i32 %97 to i64, !dbg !5989
  %add.ptr125 = getelementptr i8, ptr %96, i64 %idx.ext124, !dbg !5989
  %98 = load i32, ptr %maxlen.addr, align 4, !dbg !5989
  %99 = load i32, ptr %sz, align 4, !dbg !5989
  %sub126 = sub i32 %98, %99, !dbg !5989
  %conv127 = zext i32 %sub126 to i64, !dbg !5989
  %100 = load ptr, ptr %sc, align 8, !dbg !5989
  %stripes128 = getelementptr inbounds %struct.stripe_c, ptr %100, i32 0, i32 0, !dbg !5989
  %101 = load i32, ptr %stripes128, align 8, !dbg !5989
  %102 = load ptr, ptr %sc, align 8, !dbg !5989
  %chunk_size129 = getelementptr inbounds %struct.stripe_c, ptr %102, i32 0, i32 3, !dbg !5989
  %103 = load i32, ptr %chunk_size129, align 8, !dbg !5989
  %conv130 = zext i32 %103 to i64, !dbg !5989
  %call131 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr125, i64 noundef %conv127, ptr noundef @.str.22, i32 noundef %101, i64 noundef %conv130) #17, !dbg !5989
  br label %cond.end132, !dbg !5989

cond.end132:                                      ; preds = %cond.false123, %cond.true122
  %cond133 = phi i32 [ 0, %cond.true122 ], [ %call131, %cond.false123 ], !dbg !5989
  %104 = load i32, ptr %sz, align 4, !dbg !5989
  %add134 = add i32 %104, %cond133, !dbg !5989
  store i32 %add134, ptr %sz, align 4, !dbg !5989
  store i32 0, ptr %i, align 4, !dbg !5990
  br label %for.cond135, !dbg !5992

for.cond135:                                      ; preds = %for.inc193, %cond.end132
  %105 = load i32, ptr %i, align 4, !dbg !5993
  %106 = load ptr, ptr %sc, align 8, !dbg !5995
  %stripes136 = getelementptr inbounds %struct.stripe_c, ptr %106, i32 0, i32 0, !dbg !5996
  %107 = load i32, ptr %stripes136, align 8, !dbg !5996
  %cmp137 = icmp ult i32 %105, %107, !dbg !5997
  br i1 %cmp137, label %for.body139, label %for.end195, !dbg !5998

for.body139:                                      ; preds = %for.cond135
  %108 = load i32, ptr %sz, align 4, !dbg !5999
  %109 = load i32, ptr %maxlen.addr, align 4, !dbg !5999
  %cmp140 = icmp uge i32 %108, %109, !dbg !5999
  br i1 %cmp140, label %cond.true142, label %cond.false143, !dbg !5999

cond.true142:                                     ; preds = %for.body139
  br label %cond.end155, !dbg !5999

cond.false143:                                    ; preds = %for.body139
  %110 = load ptr, ptr %result.addr, align 8, !dbg !5999
  %111 = load i32, ptr %sz, align 4, !dbg !5999
  %idx.ext144 = zext i32 %111 to i64, !dbg !5999
  %add.ptr145 = getelementptr i8, ptr %110, i64 %idx.ext144, !dbg !5999
  %112 = load i32, ptr %maxlen.addr, align 4, !dbg !5999
  %113 = load i32, ptr %sz, align 4, !dbg !5999
  %sub146 = sub i32 %112, %113, !dbg !5999
  %conv147 = zext i32 %sub146 to i64, !dbg !5999
  %114 = load i32, ptr %i, align 4, !dbg !5999
  %115 = load ptr, ptr %sc, align 8, !dbg !5999
  %stripe148 = getelementptr inbounds %struct.stripe_c, ptr %115, i32 0, i32 7, !dbg !5999
  %116 = load i32, ptr %i, align 4, !dbg !5999
  %idxprom149 = zext i32 %116 to i64, !dbg !5999
  %arrayidx150 = getelementptr [0 x %struct.stripe], ptr %stripe148, i64 0, i64 %idxprom149, !dbg !5999
  %dev151 = getelementptr inbounds %struct.stripe, ptr %arrayidx150, i32 0, i32 0, !dbg !5999
  %117 = load ptr, ptr %dev151, align 8, !dbg !5999
  %name152 = getelementptr inbounds %struct.dm_dev, ptr %117, i32 0, i32 3, !dbg !5999
  %arraydecay153 = getelementptr inbounds [16 x i8], ptr %name152, i64 0, i64 0, !dbg !5999
  %call154 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr145, i64 noundef %conv147, ptr noundef @.str.23, i32 noundef %114, ptr noundef %arraydecay153) #17, !dbg !5999
  br label %cond.end155, !dbg !5999

cond.end155:                                      ; preds = %cond.false143, %cond.true142
  %cond156 = phi i32 [ 0, %cond.true142 ], [ %call154, %cond.false143 ], !dbg !5999
  %118 = load i32, ptr %sz, align 4, !dbg !5999
  %add157 = add i32 %118, %cond156, !dbg !5999
  store i32 %add157, ptr %sz, align 4, !dbg !5999
  %119 = load i32, ptr %sz, align 4, !dbg !6001
  %120 = load i32, ptr %maxlen.addr, align 4, !dbg !6001
  %cmp158 = icmp uge i32 %119, %120, !dbg !6001
  br i1 %cmp158, label %cond.true160, label %cond.false161, !dbg !6001

cond.true160:                                     ; preds = %cond.end155
  br label %cond.end171, !dbg !6001

cond.false161:                                    ; preds = %cond.end155
  %121 = load ptr, ptr %result.addr, align 8, !dbg !6001
  %122 = load i32, ptr %sz, align 4, !dbg !6001
  %idx.ext162 = zext i32 %122 to i64, !dbg !6001
  %add.ptr163 = getelementptr i8, ptr %121, i64 %idx.ext162, !dbg !6001
  %123 = load i32, ptr %maxlen.addr, align 4, !dbg !6001
  %124 = load i32, ptr %sz, align 4, !dbg !6001
  %sub164 = sub i32 %123, %124, !dbg !6001
  %conv165 = zext i32 %sub164 to i64, !dbg !6001
  %125 = load i32, ptr %i, align 4, !dbg !6001
  %126 = load ptr, ptr %sc, align 8, !dbg !6001
  %stripe166 = getelementptr inbounds %struct.stripe_c, ptr %126, i32 0, i32 7, !dbg !6001
  %127 = load i32, ptr %i, align 4, !dbg !6001
  %idxprom167 = zext i32 %127 to i64, !dbg !6001
  %arrayidx168 = getelementptr [0 x %struct.stripe], ptr %stripe166, i64 0, i64 %idxprom167, !dbg !6001
  %physical_start169 = getelementptr inbounds %struct.stripe, ptr %arrayidx168, i32 0, i32 1, !dbg !6001
  %128 = load i64, ptr %physical_start169, align 8, !dbg !6001
  %call170 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr163, i64 noundef %conv165, ptr noundef @.str.24, i32 noundef %125, i64 noundef %128) #17, !dbg !6001
  br label %cond.end171, !dbg !6001

cond.end171:                                      ; preds = %cond.false161, %cond.true160
  %cond172 = phi i32 [ 0, %cond.true160 ], [ %call170, %cond.false161 ], !dbg !6001
  %129 = load i32, ptr %sz, align 4, !dbg !6001
  %add173 = add i32 %129, %cond172, !dbg !6001
  store i32 %add173, ptr %sz, align 4, !dbg !6001
  %130 = load i32, ptr %sz, align 4, !dbg !6002
  %131 = load i32, ptr %maxlen.addr, align 4, !dbg !6002
  %cmp174 = icmp uge i32 %130, %131, !dbg !6002
  br i1 %cmp174, label %cond.true176, label %cond.false177, !dbg !6002

cond.true176:                                     ; preds = %cond.end171
  br label %cond.end190, !dbg !6002

cond.false177:                                    ; preds = %cond.end171
  %132 = load ptr, ptr %result.addr, align 8, !dbg !6002
  %133 = load i32, ptr %sz, align 4, !dbg !6002
  %idx.ext178 = zext i32 %133 to i64, !dbg !6002
  %add.ptr179 = getelementptr i8, ptr %132, i64 %idx.ext178, !dbg !6002
  %134 = load i32, ptr %maxlen.addr, align 4, !dbg !6002
  %135 = load i32, ptr %sz, align 4, !dbg !6002
  %sub180 = sub i32 %134, %135, !dbg !6002
  %conv181 = zext i32 %sub180 to i64, !dbg !6002
  %136 = load i32, ptr %i, align 4, !dbg !6002
  %137 = load ptr, ptr %sc, align 8, !dbg !6002
  %stripe182 = getelementptr inbounds %struct.stripe_c, ptr %137, i32 0, i32 7, !dbg !6002
  %138 = load i32, ptr %i, align 4, !dbg !6002
  %idxprom183 = zext i32 %138 to i64, !dbg !6002
  %arrayidx184 = getelementptr [0 x %struct.stripe], ptr %stripe182, i64 0, i64 %idxprom183, !dbg !6002
  %error_count185 = getelementptr inbounds %struct.stripe, ptr %arrayidx184, i32 0, i32 2, !dbg !6002
  %call186 = call i32 @atomic_read(ptr noundef %error_count185) #17, !dbg !6002
  %tobool187 = icmp ne i32 %call186, 0, !dbg !6002
  %139 = zext i1 %tobool187 to i64, !dbg !6002
  %cond188 = select i1 %tobool187, i32 68, i32 65, !dbg !6002
  %call189 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr179, i64 noundef %conv181, ptr noundef @.str.25, i32 noundef %136, i32 noundef %cond188) #17, !dbg !6002
  br label %cond.end190, !dbg !6002

cond.end190:                                      ; preds = %cond.false177, %cond.true176
  %cond191 = phi i32 [ 0, %cond.true176 ], [ %call189, %cond.false177 ], !dbg !6002
  %140 = load i32, ptr %sz, align 4, !dbg !6002
  %add192 = add i32 %140, %cond191, !dbg !6002
  store i32 %add192, ptr %sz, align 4, !dbg !6002
  br label %for.inc193, !dbg !6003

for.inc193:                                       ; preds = %cond.end190
  %141 = load i32, ptr %i, align 4, !dbg !6004
  %inc194 = add i32 %141, 1, !dbg !6004
  store i32 %inc194, ptr %i, align 4, !dbg !6004
  br label %for.cond135, !dbg !6005, !llvm.loop !6006

for.end195:                                       ; preds = %for.cond135
  %142 = load i32, ptr %sz, align 4, !dbg !6008
  %143 = load i32, ptr %maxlen.addr, align 4, !dbg !6008
  %cmp196 = icmp uge i32 %142, %143, !dbg !6008
  br i1 %cmp196, label %cond.true198, label %cond.false199, !dbg !6008

cond.true198:                                     ; preds = %for.end195
  br label %cond.end205, !dbg !6008

cond.false199:                                    ; preds = %for.end195
  %144 = load ptr, ptr %result.addr, align 8, !dbg !6008
  %145 = load i32, ptr %sz, align 4, !dbg !6008
  %idx.ext200 = zext i32 %145 to i64, !dbg !6008
  %add.ptr201 = getelementptr i8, ptr %144, i64 %idx.ext200, !dbg !6008
  %146 = load i32, ptr %maxlen.addr, align 4, !dbg !6008
  %147 = load i32, ptr %sz, align 4, !dbg !6008
  %sub202 = sub i32 %146, %147, !dbg !6008
  %conv203 = zext i32 %sub202 to i64, !dbg !6008
  %call204 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr201, i64 noundef %conv203, ptr noundef @.str.26) #17, !dbg !6008
  br label %cond.end205, !dbg !6008

cond.end205:                                      ; preds = %cond.false199, %cond.true198
  %cond206 = phi i32 [ 0, %cond.true198 ], [ %call204, %cond.false199 ], !dbg !6008
  %148 = load i32, ptr %sz, align 4, !dbg !6008
  %add207 = add i32 %148, %cond206, !dbg !6008
  store i32 %add207, ptr %sz, align 4, !dbg !6008
  br label %sw.epilog, !dbg !6009

sw.epilog:                                        ; preds = %entry, %cond.end205, %for.end96, %for.end52
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !6010
  ret void, !dbg !6010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stripe_iterate_devices(ptr noundef %ti, ptr noundef %fn, ptr noundef %data) #5 align 16 !dbg !6011 {
entry:
  %ti.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6013, metadata !DIExpression()), !dbg !6019
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !6014, metadata !DIExpression()), !dbg !6020
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6015, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !6016, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !6024
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !6025
  %1 = load ptr, ptr %private, align 8, !dbg !6025
  store ptr %1, ptr %sc, align 8, !dbg !6023
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6017, metadata !DIExpression()), !dbg !6027
  store i32 0, ptr %ret, align 4, !dbg !6027
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6018, metadata !DIExpression()), !dbg !6029
  store i32 0, ptr %i, align 4, !dbg !6029
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %land.end, %entry
  %2 = load ptr, ptr %fn.addr, align 8, !dbg !6031
  %3 = load ptr, ptr %ti.addr, align 8, !dbg !6033
  %4 = load ptr, ptr %sc, align 8, !dbg !6034
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %4, i32 0, i32 7, !dbg !6035
  %5 = load i32, ptr %i, align 4, !dbg !6036
  %idxprom = zext i32 %5 to i64, !dbg !6034
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !6034
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !6037
  %6 = load ptr, ptr %dev, align 8, !dbg !6037
  %7 = load ptr, ptr %sc, align 8, !dbg !6038
  %stripe1 = getelementptr inbounds %struct.stripe_c, ptr %7, i32 0, i32 7, !dbg !6039
  %8 = load i32, ptr %i, align 4, !dbg !6040
  %idxprom2 = zext i32 %8 to i64, !dbg !6038
  %arrayidx3 = getelementptr [0 x %struct.stripe], ptr %stripe1, i64 0, i64 %idxprom2, !dbg !6038
  %physical_start = getelementptr inbounds %struct.stripe, ptr %arrayidx3, i32 0, i32 1, !dbg !6041
  %9 = load i64, ptr %physical_start, align 8, !dbg !6041
  %10 = load ptr, ptr %sc, align 8, !dbg !6042
  %stripe_width = getelementptr inbounds %struct.stripe_c, ptr %10, i32 0, i32 2, !dbg !6043
  %11 = load i64, ptr %stripe_width, align 8, !dbg !6043
  %12 = load ptr, ptr %data.addr, align 8, !dbg !6044
  %call = call i32 %2(ptr noundef %3, ptr noundef %6, i64 noundef %9, i64 noundef %11, ptr noundef %12) #17, !dbg !6031
  store i32 %call, ptr %ret, align 4, !dbg !6045
  br label %do.cond, !dbg !6046

do.cond:                                          ; preds = %do.body
  %13 = load i32, ptr %ret, align 4, !dbg !6047
  %tobool = icmp ne i32 %13, 0, !dbg !6047
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6048

land.rhs:                                         ; preds = %do.cond
  %14 = load i32, ptr %i, align 4, !dbg !6049
  %inc = add i32 %14, 1, !dbg !6049
  store i32 %inc, ptr %i, align 4, !dbg !6049
  %15 = load ptr, ptr %sc, align 8, !dbg !6050
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %15, i32 0, i32 0, !dbg !6051
  %16 = load i32, ptr %stripes, align 8, !dbg !6051
  %cmp = icmp ult i32 %inc, %16, !dbg !6052
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %17 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !6053
  br i1 %17, label %do.body, label %do.end, !dbg !6046, !llvm.loop !6054

do.end:                                           ; preds = %land.end
  %18 = load i32, ptr %ret, align 4, !dbg !6056
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !6057
  ret i32 %18, !dbg !6058
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stripe_io_hints(ptr noundef %ti, ptr noundef %limits) #5 align 16 !dbg !6059 {
entry:
  %ti.addr = alloca ptr, align 8
  %limits.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %chunk_size = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6061, metadata !DIExpression()), !dbg !6065
  store ptr %limits, ptr %limits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limits.addr, metadata !6062, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !6063, metadata !DIExpression()), !dbg !6068
  %0 = load ptr, ptr %ti.addr, align 8, !dbg !6069
  %private = getelementptr inbounds %struct.dm_target, ptr %0, i32 0, i32 10, !dbg !6070
  %1 = load ptr, ptr %private, align 8, !dbg !6070
  store ptr %1, ptr %sc, align 8, !dbg !6068
  call void @llvm.lifetime.start.p0(i64 4, ptr %chunk_size) #16, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %chunk_size, metadata !6064, metadata !DIExpression()), !dbg !6072
  %2 = load ptr, ptr %sc, align 8, !dbg !6073
  %chunk_size1 = getelementptr inbounds %struct.stripe_c, ptr %2, i32 0, i32 3, !dbg !6074
  %3 = load i32, ptr %chunk_size1, align 8, !dbg !6074
  %shl = shl i32 %3, 9, !dbg !6075
  store i32 %shl, ptr %chunk_size, align 4, !dbg !6072
  %4 = load ptr, ptr %limits.addr, align 8, !dbg !6076
  %5 = load i32, ptr %chunk_size, align 4, !dbg !6077
  call void @blk_limits_io_min(ptr noundef %4, i32 noundef %5) #17, !dbg !6078
  %6 = load ptr, ptr %limits.addr, align 8, !dbg !6079
  %7 = load i32, ptr %chunk_size, align 4, !dbg !6080
  %8 = load ptr, ptr %sc, align 8, !dbg !6081
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %8, i32 0, i32 0, !dbg !6082
  %9 = load i32, ptr %stripes, align 8, !dbg !6082
  %mul = mul i32 %7, %9, !dbg !6083
  call void @blk_limits_io_opt(ptr noundef %6, i32 noundef %mul) #17, !dbg !6084
  call void @llvm.lifetime.end.p0(i64 4, ptr %chunk_size) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !6085
  ret void, !dbg !6085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6090 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6094, metadata !DIExpression()), !dbg !6099
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6095, metadata !DIExpression()), !dbg !6100
  %0 = load i64, ptr %size.addr, align 8, !dbg !6101
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6102
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6103

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6104
  %tobool = icmp ne i64 %2, 0, !dbg !6104
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6105

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6096, metadata !DIExpression()), !dbg !6107
  %3 = load i64, ptr %size.addr, align 8, !dbg !6108
  %cmp = icmp ugt i64 %3, 8192, !dbg !6110
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6111

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6112
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6113
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6114
  store ptr %call, ptr %retval, align 8, !dbg !6115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6115

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6116
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6116
  store i32 %call2, ptr %index, align 4, !dbg !6117
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6118
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6119
  %9 = ptrtoint ptr %8 to i64, !dbg !6119
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6120
  %idxprom = zext i32 %call3 to i64, !dbg !6121
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6121
  %10 = load i32, ptr %index, align 4, !dbg !6122
  %idxprom4 = zext i32 %10 to i64, !dbg !6121
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6121
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6121
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6123
  %13 = load i64, ptr %size.addr, align 8, !dbg !6124
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6125
  store ptr %call6, ptr %retval, align 8, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6127
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6128
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6129
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6130
  store ptr %call8, ptr %retval, align 8, !dbg !6131
  br label %return, !dbg !6131

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6132
  ret ptr %16, !dbg !6132
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #7 align 16 !dbg !6133 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !6138, metadata !DIExpression()), !dbg !6141
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !6139, metadata !DIExpression()), !dbg !6142
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !6143
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6140, metadata !DIExpression()), !dbg !6144
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !6145
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !6145
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !6145
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6145
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6145
  store i64 %4, ptr %bytes, align 8, !dbg !6145
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !6145
  br i1 %call, label %if.then, label %if.end, !dbg !6147

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6148

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6149
  store i64 %5, ptr %retval, align 8, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !6151
  %6 = load i64, ptr %retval, align 8, !dbg !6151
  ret i64 %6, !dbg !6151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #7 align 16 !dbg !6152 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !6154, metadata !DIExpression()), !dbg !6157
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !6155, metadata !DIExpression()), !dbg !6158
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6156, metadata !DIExpression()), !dbg !6160
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !6161
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !6161
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6161
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6161
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6161
  store i64 %4, ptr %bytes, align 8, !dbg !6161
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !6161
  br i1 %call, label %if.then, label %if.end, !dbg !6163

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6164

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6165
  store i64 %5, ptr %retval, align 8, !dbg !6166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6166

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !6167
  %6 = load i64, ptr %retval, align 8, !dbg !6167
  ret i64 %6, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #7 align 16 !dbg !6168 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  ret void, !dbg !6176
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #7 align 16 !dbg !6177 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  br label %do.body, !dbg !6184

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6185

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6187

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6185

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6189
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6189
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6189
  store volatile ptr %0, ptr %next, align 8, !dbg !6189
  br label %do.end3, !dbg !6189

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6185

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6191

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6192

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6194

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6192

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6196
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6196
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6196
  store volatile ptr %2, ptr %prev, align 8, !dbg !6196
  br label %do.end9, !dbg !6196

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6192

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trigger_event(ptr noundef %work) #5 align 16 !dbg !6199 {
entry:
  %work.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6201, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #16, !dbg !6206
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !6202, metadata !DIExpression()), !dbg !6207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6203, metadata !DIExpression()), !dbg !6208
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6208
  store ptr %0, ptr %__mptr, align 8, !dbg !6208
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6208
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6208
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6209
  %2 = load ptr, ptr %tmp, align 8, !dbg !6208
  store ptr %2, ptr %sc, align 8, !dbg !6207
  %3 = load ptr, ptr %sc, align 8, !dbg !6210
  %ti = getelementptr inbounds %struct.stripe_c, ptr %3, i32 0, i32 5, !dbg !6211
  %4 = load ptr, ptr %ti, align 8, !dbg !6211
  %table = getelementptr inbounds %struct.dm_target, ptr %4, i32 0, i32 0, !dbg !6212
  %5 = load ptr, ptr %table, align 8, !dbg !6212
  call void @dm_table_event(ptr noundef %5) #17, !dbg !6213
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #16, !dbg !6214
  ret void, !dbg !6214
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #10 align 16 !dbg !6215 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  %0 = load i64, ptr %word.addr, align 8, !dbg !6222
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !6223, !srcloc !6224
  store i64 %1, ptr %word.addr, align 8, !dbg !6223
  %2 = load i64, ptr %word.addr, align 8, !dbg !6225
  ret i64 %2, !dbg !6226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6227 dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6230 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_stripe(ptr noundef %ti, ptr noundef %sc, i32 noundef %stripe, ptr noundef %argv) #5 align 16 !dbg !6233 {
entry:
  %retval = alloca i32, align 4
  %ti.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %stripe.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %dummy = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6237, metadata !DIExpression()), !dbg !6244
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6238, metadata !DIExpression()), !dbg !6245
  store i32 %stripe, ptr %stripe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stripe.addr, metadata !6239, metadata !DIExpression()), !dbg !6246
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !6240, metadata !DIExpression()), !dbg !6247
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !6248
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6241, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 1, ptr %dummy) #16, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !6242, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6243, metadata !DIExpression()), !dbg !6253
  %0 = load ptr, ptr %argv.addr, align 8, !dbg !6254
  %arrayidx = getelementptr ptr, ptr %0, i64 1, !dbg !6254
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !6254
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.12, ptr noundef %start, ptr noundef %dummy) #17, !dbg !6256
  %cmp = icmp ne i32 %call, 1, !dbg !6257
  br i1 %cmp, label %if.then, label %if.end, !dbg !6258

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6259

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6260
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !6261
  %arrayidx1 = getelementptr ptr, ptr %3, i64 0, !dbg !6261
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !6261
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6262
  %table = getelementptr inbounds %struct.dm_target, ptr %5, i32 0, i32 0, !dbg !6263
  %6 = load ptr, ptr %table, align 8, !dbg !6263
  %call2 = call i32 @dm_table_get_mode(ptr noundef %6) #17, !dbg !6264
  %7 = load ptr, ptr %sc.addr, align 8, !dbg !6265
  %stripe3 = getelementptr inbounds %struct.stripe_c, ptr %7, i32 0, i32 7, !dbg !6266
  %8 = load i32, ptr %stripe.addr, align 4, !dbg !6267
  %idxprom = zext i32 %8 to i64, !dbg !6265
  %arrayidx4 = getelementptr [0 x %struct.stripe], ptr %stripe3, i64 0, i64 %idxprom, !dbg !6265
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx4, i32 0, i32 0, !dbg !6268
  %call5 = call i32 @dm_get_device(ptr noundef %2, ptr noundef %4, i32 noundef %call2, ptr noundef %dev) #17, !dbg !6269
  store i32 %call5, ptr %ret, align 4, !dbg !6270
  %9 = load i32, ptr %ret, align 4, !dbg !6271
  %tobool = icmp ne i32 %9, 0, !dbg !6271
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6273

if.then6:                                         ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !6274
  store i32 %10, ptr %retval, align 4, !dbg !6275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6275

if.end7:                                          ; preds = %if.end
  %11 = load i64, ptr %start, align 8, !dbg !6276
  %12 = load ptr, ptr %sc.addr, align 8, !dbg !6277
  %stripe8 = getelementptr inbounds %struct.stripe_c, ptr %12, i32 0, i32 7, !dbg !6278
  %13 = load i32, ptr %stripe.addr, align 4, !dbg !6279
  %idxprom9 = zext i32 %13 to i64, !dbg !6277
  %arrayidx10 = getelementptr [0 x %struct.stripe], ptr %stripe8, i64 0, i64 %idxprom9, !dbg !6277
  %physical_start = getelementptr inbounds %struct.stripe, ptr %arrayidx10, i32 0, i32 1, !dbg !6280
  store i64 %11, ptr %physical_start, align 8, !dbg !6281
  store i32 0, ptr %retval, align 4, !dbg !6282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6282

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 1, ptr %dummy) #16, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !6283
  %14 = load i32, ptr %retval, align 4, !dbg !6283
  ret i32 %14, !dbg !6283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local void @dm_put_device(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6287 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6293, metadata !DIExpression()), !dbg !6295
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6297
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6298
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6299
  %2 = load i32, ptr %i.addr, align 4, !dbg !6300
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !6301
  ret void, !dbg !6302
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6303 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6304 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  %0 = load i64, ptr %size.addr, align 8, !dbg !6312
  %tobool = icmp ne i64 %0, 0, !dbg !6312
  br i1 %tobool, label %if.end, label %if.then, !dbg !6314

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6315
  br label %return, !dbg !6315

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6316
  %cmp = icmp ule i64 %1, 8, !dbg !6318
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6319

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6321
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6323
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6324

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6325
  %cmp4 = icmp ule i64 %3, 96, !dbg !6326
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6327

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6328
  br label %return, !dbg !6328

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6329
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6331
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6332

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6333
  %cmp9 = icmp ule i64 %5, 192, !dbg !6334
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6335

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6336
  br label %return, !dbg !6336

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6337
  %cmp12 = icmp ule i64 %6, 8, !dbg !6339
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6340

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6341
  br label %return, !dbg !6341

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6342
  %cmp15 = icmp ule i64 %7, 16, !dbg !6344
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6345

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6346
  br label %return, !dbg !6346

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6347
  %cmp18 = icmp ule i64 %8, 32, !dbg !6349
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6350

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6351
  br label %return, !dbg !6351

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6352
  %cmp21 = icmp ule i64 %9, 64, !dbg !6354
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6355

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6356
  br label %return, !dbg !6356

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6357
  %cmp24 = icmp ule i64 %10, 128, !dbg !6359
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6360

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6362
  %cmp27 = icmp ule i64 %11, 256, !dbg !6364
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6365

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6367
  %cmp30 = icmp ule i64 %12, 512, !dbg !6369
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6370

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6372
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6374
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6375

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6377
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6379
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6380

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6382
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6384
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6385

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6387
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6389
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6390

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6392
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6394
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6395

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6397
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6399
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6400

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6402
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6404
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6405

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6407
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6409
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6410

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6412
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6414
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6415

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6417
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6419
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6420

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6422
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6424
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6425

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6426
  br label %return, !dbg !6426

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6427
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6429
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6430

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6431
  br label %return, !dbg !6431

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6432, !range !6434, !noundef !677
  %tobool69 = trunc i8 %25 to i1, !dbg !6432
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6435

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6436

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !6437, !srcloc !6440
  unreachable, !dbg !6437

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6441

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6442

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6443

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6445

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6443

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #16, !dbg !6447, !srcloc !6449
  br label %do.end75, !dbg !6447

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6443

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6450
  br label %return, !dbg !6450

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6451
  ret i32 %26, !dbg !6451
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6452 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6455 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6459, metadata !DIExpression()), !dbg !6461
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6460, metadata !DIExpression()), !dbg !6462
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6463
  %and = and i32 %0, 17, !dbg !6463
  %cmp = icmp eq i32 %and, 0, !dbg !6463
  %lnot = xor i1 %cmp, true, !dbg !6463
  %lnot1 = xor i1 %lnot, true, !dbg !6463
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6463
  %conv = sext i32 %lnot.ext to i64, !dbg !6463
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6463
  %tobool = icmp ne i64 %expval, 0, !dbg !6463
  br i1 %tobool, label %if.then, label %if.end, !dbg !6465

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6466
  br label %return, !dbg !6466

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6467
  %and2 = and i32 %1, 1, !dbg !6469
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6469
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6470

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6471
  br label %return, !dbg !6471

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6472
  br label %return, !dbg !6472

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6474
  ret i32 %2, !dbg !6474
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6475 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6476 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !6477 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6483, !range !6434, !noundef !677
  %tobool = trunc i8 %0 to i1, !dbg !6483
  %lnot = xor i1 %tobool, true, !dbg !6483
  %lnot1 = xor i1 %lnot, true, !dbg !6483
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6483
  %conv = sext i32 %lnot.ext to i64, !dbg !6483
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6483
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6483
  ret i1 %tobool2, !dbg !6484
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6485 dso_local void @dm_table_event(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6488 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6492 dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6496 dso_local i32 @dm_table_get_mode(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6499 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6507, metadata !DIExpression()), !dbg !6509
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6511
  %1 = load i64, ptr %size.addr, align 8, !dbg !6512
  %conv = trunc i64 %1 to i32, !dbg !6512
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6513
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6514
  %3 = load i64, ptr %size.addr, align 8, !dbg !6514
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6514
  ret void, !dbg !6515
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6516 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6519, metadata !DIExpression()), !dbg !6521
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6520, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6523
  %1 = load i32, ptr %i.addr, align 4, !dbg !6524
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !6525
  ret void, !dbg !6526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6527 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6532, metadata !DIExpression()), !dbg !6534
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6533, metadata !DIExpression()), !dbg !6535
  ret i1 true, !dbg !6536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6537 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6542, metadata !DIExpression()), !dbg !6545
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6543, metadata !DIExpression()), !dbg !6546
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6544, metadata !DIExpression()), !dbg !6547
  ret void, !dbg !6548
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6549 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6552, metadata !DIExpression()), !dbg !6554
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6553, metadata !DIExpression()), !dbg !6555
  br label %do.body, !dbg !6556

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6557
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6557
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6557
  store volatile i32 %0, ptr %counter, align 4, !dbg !6557
  br label %do.end, !dbg !6557

do.end:                                           ; preds = %do.body
  ret void, !dbg !6559
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6560 dso_local zeroext i1 @flush_work(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6563 dso_local i32 @dm_bio_get_target_bio_nr(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_set_dev(ptr noundef %bio, ptr noundef %bdev) #7 align 16 !dbg !6568 {
entry:
  %bio.addr = alloca ptr, align 8
  %bdev.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6572, metadata !DIExpression()), !dbg !6574
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !6573, metadata !DIExpression()), !dbg !6575
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !6576
  call void @bio_clear_flag(ptr noundef %0, i32 noundef 11) #17, !dbg !6577
  %1 = load ptr, ptr %bio.addr, align 8, !dbg !6578
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1, !dbg !6580
  %2 = load ptr, ptr %bi_bdev, align 8, !dbg !6580
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !6581
  %cmp = icmp ne ptr %2, %3, !dbg !6582
  br i1 %cmp, label %if.then, label %if.end, !dbg !6583

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bio.addr, align 8, !dbg !6584
  call void @bio_clear_flag(ptr noundef %4, i32 noundef 6) #17, !dbg !6585
  br label %if.end, !dbg !6585

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %bdev.addr, align 8, !dbg !6586
  %6 = load ptr, ptr %bio.addr, align 8, !dbg !6587
  %bi_bdev1 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 1, !dbg !6588
  store ptr %5, ptr %bi_bdev1, align 8, !dbg !6589
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !6590
  call void @bio_associate_blkg(ptr noundef %7) #17, !dbg !6591
  ret void, !dbg !6592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bio_op(ptr noundef %bio) #7 align 16 !dbg !6593 {
entry:
  %bio.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6597, metadata !DIExpression()), !dbg !6598
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !6599
  %bi_opf = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2, !dbg !6600
  %1 = load i32, ptr %bi_opf, align 8, !dbg !6600
  %and = and i32 %1, 255, !dbg !6601
  ret i32 %and, !dbg !6602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stripe_map_range(ptr noundef %sc, ptr noundef %bio, i32 noundef %target_stripe) #5 align 16 !dbg !6603 {
entry:
  %retval = alloca i32, align 4
  %sc.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  %target_stripe.addr = alloca i32, align 4
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6607, metadata !DIExpression()), !dbg !6612
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6608, metadata !DIExpression()), !dbg !6613
  store i32 %target_stripe, ptr %target_stripe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_stripe.addr, metadata !6609, metadata !DIExpression()), !dbg !6614
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #16, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !6610, metadata !DIExpression()), !dbg !6616
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6611, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %sc.addr, align 8, !dbg !6618
  %1 = load ptr, ptr %bio.addr, align 8, !dbg !6619
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 7, !dbg !6620
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !6621
  %2 = load i64, ptr %bi_sector, align 8, !dbg !6621
  %3 = load i32, ptr %target_stripe.addr, align 4, !dbg !6622
  call void @stripe_map_range_sector(ptr noundef %0, i64 noundef %2, i32 noundef %3, ptr noundef %begin) #17, !dbg !6623
  %4 = load ptr, ptr %sc.addr, align 8, !dbg !6624
  %5 = load ptr, ptr %bio.addr, align 8, !dbg !6625
  %bi_iter1 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 7, !dbg !6625
  %bi_sector2 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter1, i32 0, i32 0, !dbg !6625
  %6 = load i64, ptr %bi_sector2, align 8, !dbg !6625
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !6625
  %bi_iter3 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 7, !dbg !6625
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter3, i32 0, i32 1, !dbg !6625
  %8 = load i32, ptr %bi_size, align 8, !dbg !6625
  %shr = lshr i32 %8, 9, !dbg !6625
  %conv = zext i32 %shr to i64, !dbg !6625
  %add = add i64 %6, %conv, !dbg !6625
  %9 = load i32, ptr %target_stripe.addr, align 4, !dbg !6626
  call void @stripe_map_range_sector(ptr noundef %4, i64 noundef %add, i32 noundef %9, ptr noundef %end) #17, !dbg !6627
  %10 = load i64, ptr %begin, align 8, !dbg !6628
  %11 = load i64, ptr %end, align 8, !dbg !6630
  %cmp = icmp ult i64 %10, %11, !dbg !6631
  br i1 %cmp, label %if.then, label %if.end, !dbg !6632

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %bio.addr, align 8, !dbg !6633
  %13 = load ptr, ptr %sc.addr, align 8, !dbg !6635
  %stripe = getelementptr inbounds %struct.stripe_c, ptr %13, i32 0, i32 7, !dbg !6636
  %14 = load i32, ptr %target_stripe.addr, align 4, !dbg !6637
  %idxprom = zext i32 %14 to i64, !dbg !6635
  %arrayidx = getelementptr [0 x %struct.stripe], ptr %stripe, i64 0, i64 %idxprom, !dbg !6635
  %dev = getelementptr inbounds %struct.stripe, ptr %arrayidx, i32 0, i32 0, !dbg !6638
  %15 = load ptr, ptr %dev, align 8, !dbg !6638
  %bdev = getelementptr inbounds %struct.dm_dev, ptr %15, i32 0, i32 0, !dbg !6639
  %16 = load ptr, ptr %bdev, align 8, !dbg !6639
  call void @bio_set_dev(ptr noundef %12, ptr noundef %16) #17, !dbg !6640
  %17 = load i64, ptr %begin, align 8, !dbg !6641
  %18 = load ptr, ptr %sc.addr, align 8, !dbg !6642
  %stripe5 = getelementptr inbounds %struct.stripe_c, ptr %18, i32 0, i32 7, !dbg !6643
  %19 = load i32, ptr %target_stripe.addr, align 4, !dbg !6644
  %idxprom6 = zext i32 %19 to i64, !dbg !6642
  %arrayidx7 = getelementptr [0 x %struct.stripe], ptr %stripe5, i64 0, i64 %idxprom6, !dbg !6642
  %physical_start = getelementptr inbounds %struct.stripe, ptr %arrayidx7, i32 0, i32 1, !dbg !6645
  %20 = load i64, ptr %physical_start, align 8, !dbg !6645
  %add8 = add i64 %17, %20, !dbg !6646
  %21 = load ptr, ptr %bio.addr, align 8, !dbg !6647
  %bi_iter9 = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 7, !dbg !6648
  %bi_sector10 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter9, i32 0, i32 0, !dbg !6649
  store i64 %add8, ptr %bi_sector10, align 8, !dbg !6650
  %22 = load i64, ptr %end, align 8, !dbg !6651
  %23 = load i64, ptr %begin, align 8, !dbg !6652
  %sub = sub i64 %22, %23, !dbg !6653
  %call = call i64 @to_bytes(i64 noundef %sub) #17, !dbg !6654
  %conv11 = trunc i64 %call to i32, !dbg !6654
  %24 = load ptr, ptr %bio.addr, align 8, !dbg !6655
  %bi_iter12 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 7, !dbg !6656
  %bi_size13 = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter12, i32 0, i32 1, !dbg !6657
  store i32 %conv11, ptr %bi_size13, align 8, !dbg !6658
  store i32 1, ptr %retval, align 4, !dbg !6659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6659

if.end:                                           ; preds = %entry
  %25 = load ptr, ptr %bio.addr, align 8, !dbg !6660
  call void @bio_endio(ptr noundef %25) #17, !dbg !6661
  store i32 0, ptr %retval, align 4, !dbg !6662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6662

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !6663
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #16, !dbg !6663
  %26 = load i32, ptr %retval, align 4, !dbg !6663
  ret i32 %26, !dbg !6663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stripe_map_sector(ptr noundef %sc, i64 noundef %sector, ptr noundef %stripe, ptr noundef %result) #5 align 16 !dbg !6664 {
entry:
  %sc.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %stripe.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %chunk = alloca i64, align 8
  %chunk_offset = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base11 = alloca i32, align 4
  %__rem12 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6669, metadata !DIExpression()), !dbg !6683
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !6670, metadata !DIExpression()), !dbg !6684
  store ptr %stripe, ptr %stripe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stripe.addr, metadata !6671, metadata !DIExpression()), !dbg !6685
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !6672, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !6673, metadata !DIExpression()), !dbg !6688
  %0 = load i64, ptr %sector.addr, align 8, !dbg !6689
  %1 = load ptr, ptr %sc.addr, align 8, !dbg !6689
  %ti = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 5, !dbg !6689
  %2 = load ptr, ptr %ti, align 8, !dbg !6689
  %begin = getelementptr inbounds %struct.dm_target, ptr %2, i32 0, i32 2, !dbg !6689
  %3 = load i64, ptr %begin, align 8, !dbg !6689
  %sub = sub i64 %0, %3, !dbg !6689
  store i64 %sub, ptr %chunk, align 8, !dbg !6688
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_offset) #16, !dbg !6690
  call void @llvm.dbg.declare(metadata ptr %chunk_offset, metadata !6674, metadata !DIExpression()), !dbg !6691
  %4 = load ptr, ptr %sc.addr, align 8, !dbg !6692
  %chunk_size_shift = getelementptr inbounds %struct.stripe_c, ptr %4, i32 0, i32 4, !dbg !6693
  %5 = load i32, ptr %chunk_size_shift, align 4, !dbg !6693
  %cmp = icmp slt i32 %5, 0, !dbg !6694
  br i1 %cmp, label %if.then, label %if.else, !dbg !6695

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !6675, metadata !DIExpression()), !dbg !6696
  %6 = load ptr, ptr %sc.addr, align 8, !dbg !6696
  %chunk_size = getelementptr inbounds %struct.stripe_c, ptr %6, i32 0, i32 3, !dbg !6696
  %7 = load i32, ptr %chunk_size, align 8, !dbg !6696
  store i32 %7, ptr %__base, align 4, !dbg !6696
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !6678, metadata !DIExpression()), !dbg !6696
  %8 = load i64, ptr %chunk, align 8, !dbg !6696
  %9 = load i32, ptr %__base, align 4, !dbg !6696
  %conv = zext i32 %9 to i64, !dbg !6696
  %rem = urem i64 %8, %conv, !dbg !6696
  %conv1 = trunc i64 %rem to i32, !dbg !6696
  store i32 %conv1, ptr %__rem, align 4, !dbg !6696
  %10 = load i64, ptr %chunk, align 8, !dbg !6696
  %11 = load i32, ptr %__base, align 4, !dbg !6696
  %conv2 = zext i32 %11 to i64, !dbg !6696
  %div = udiv i64 %10, %conv2, !dbg !6696
  store i64 %div, ptr %chunk, align 8, !dbg !6696
  %12 = load i32, ptr %__rem, align 4, !dbg !6696
  store i32 %12, ptr %tmp, align 4, !dbg !6696
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !6697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !6697
  %13 = load i32, ptr %tmp, align 4, !dbg !6696
  %conv3 = zext i32 %13 to i64, !dbg !6697
  store i64 %conv3, ptr %chunk_offset, align 8, !dbg !6698
  br label %if.end, !dbg !6699

if.else:                                          ; preds = %entry
  %14 = load i64, ptr %chunk, align 8, !dbg !6700
  %15 = load ptr, ptr %sc.addr, align 8, !dbg !6702
  %chunk_size4 = getelementptr inbounds %struct.stripe_c, ptr %15, i32 0, i32 3, !dbg !6703
  %16 = load i32, ptr %chunk_size4, align 8, !dbg !6703
  %sub5 = sub i32 %16, 1, !dbg !6704
  %conv6 = zext i32 %sub5 to i64, !dbg !6705
  %and = and i64 %14, %conv6, !dbg !6706
  store i64 %and, ptr %chunk_offset, align 8, !dbg !6707
  %17 = load ptr, ptr %sc.addr, align 8, !dbg !6708
  %chunk_size_shift7 = getelementptr inbounds %struct.stripe_c, ptr %17, i32 0, i32 4, !dbg !6709
  %18 = load i32, ptr %chunk_size_shift7, align 4, !dbg !6709
  %19 = load i64, ptr %chunk, align 8, !dbg !6710
  %sh_prom = zext i32 %18 to i64, !dbg !6710
  %shr = lshr i64 %19, %sh_prom, !dbg !6710
  store i64 %shr, ptr %chunk, align 8, !dbg !6710
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %sc.addr, align 8, !dbg !6711
  %stripes_shift = getelementptr inbounds %struct.stripe_c, ptr %20, i32 0, i32 1, !dbg !6712
  %21 = load i32, ptr %stripes_shift, align 4, !dbg !6712
  %cmp8 = icmp slt i32 %21, 0, !dbg !6713
  br i1 %cmp8, label %if.then10, label %if.else19, !dbg !6714

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base11) #16, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %__base11, metadata !6679, metadata !DIExpression()), !dbg !6715
  %22 = load ptr, ptr %sc.addr, align 8, !dbg !6715
  %stripes = getelementptr inbounds %struct.stripe_c, ptr %22, i32 0, i32 0, !dbg !6715
  %23 = load i32, ptr %stripes, align 8, !dbg !6715
  store i32 %23, ptr %__base11, align 4, !dbg !6715
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem12) #16, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %__rem12, metadata !6682, metadata !DIExpression()), !dbg !6715
  %24 = load i64, ptr %chunk, align 8, !dbg !6715
  %25 = load i32, ptr %__base11, align 4, !dbg !6715
  %conv13 = zext i32 %25 to i64, !dbg !6715
  %rem14 = urem i64 %24, %conv13, !dbg !6715
  %conv15 = trunc i64 %rem14 to i32, !dbg !6715
  store i32 %conv15, ptr %__rem12, align 4, !dbg !6715
  %26 = load i64, ptr %chunk, align 8, !dbg !6715
  %27 = load i32, ptr %__base11, align 4, !dbg !6715
  %conv16 = zext i32 %27 to i64, !dbg !6715
  %div17 = udiv i64 %26, %conv16, !dbg !6715
  store i64 %div17, ptr %chunk, align 8, !dbg !6715
  %28 = load i32, ptr %__rem12, align 4, !dbg !6715
  store i32 %28, ptr %tmp18, align 4, !dbg !6715
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem12) #16, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base11) #16, !dbg !6716
  %29 = load i32, ptr %tmp18, align 4, !dbg !6715
  %30 = load ptr, ptr %stripe.addr, align 8, !dbg !6717
  store i32 %29, ptr %30, align 4, !dbg !6718
  br label %if.end28, !dbg !6719

if.else19:                                        ; preds = %if.end
  %31 = load i64, ptr %chunk, align 8, !dbg !6720
  %32 = load ptr, ptr %sc.addr, align 8, !dbg !6722
  %stripes20 = getelementptr inbounds %struct.stripe_c, ptr %32, i32 0, i32 0, !dbg !6723
  %33 = load i32, ptr %stripes20, align 8, !dbg !6723
  %sub21 = sub i32 %33, 1, !dbg !6724
  %conv22 = zext i32 %sub21 to i64, !dbg !6725
  %and23 = and i64 %31, %conv22, !dbg !6726
  %conv24 = trunc i64 %and23 to i32, !dbg !6720
  %34 = load ptr, ptr %stripe.addr, align 8, !dbg !6727
  store i32 %conv24, ptr %34, align 4, !dbg !6728
  %35 = load ptr, ptr %sc.addr, align 8, !dbg !6729
  %stripes_shift25 = getelementptr inbounds %struct.stripe_c, ptr %35, i32 0, i32 1, !dbg !6730
  %36 = load i32, ptr %stripes_shift25, align 4, !dbg !6730
  %37 = load i64, ptr %chunk, align 8, !dbg !6731
  %sh_prom26 = zext i32 %36 to i64, !dbg !6731
  %shr27 = lshr i64 %37, %sh_prom26, !dbg !6731
  store i64 %shr27, ptr %chunk, align 8, !dbg !6731
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then10
  %38 = load ptr, ptr %sc.addr, align 8, !dbg !6732
  %chunk_size_shift29 = getelementptr inbounds %struct.stripe_c, ptr %38, i32 0, i32 4, !dbg !6734
  %39 = load i32, ptr %chunk_size_shift29, align 4, !dbg !6734
  %cmp30 = icmp slt i32 %39, 0, !dbg !6735
  br i1 %cmp30, label %if.then32, label %if.else35, !dbg !6736

if.then32:                                        ; preds = %if.end28
  %40 = load ptr, ptr %sc.addr, align 8, !dbg !6737
  %chunk_size33 = getelementptr inbounds %struct.stripe_c, ptr %40, i32 0, i32 3, !dbg !6738
  %41 = load i32, ptr %chunk_size33, align 8, !dbg !6738
  %conv34 = zext i32 %41 to i64, !dbg !6737
  %42 = load i64, ptr %chunk, align 8, !dbg !6739
  %mul = mul i64 %42, %conv34, !dbg !6739
  store i64 %mul, ptr %chunk, align 8, !dbg !6739
  br label %if.end38, !dbg !6740

if.else35:                                        ; preds = %if.end28
  %43 = load ptr, ptr %sc.addr, align 8, !dbg !6741
  %chunk_size_shift36 = getelementptr inbounds %struct.stripe_c, ptr %43, i32 0, i32 4, !dbg !6742
  %44 = load i32, ptr %chunk_size_shift36, align 4, !dbg !6742
  %45 = load i64, ptr %chunk, align 8, !dbg !6743
  %sh_prom37 = zext i32 %44 to i64, !dbg !6743
  %shl = shl i64 %45, %sh_prom37, !dbg !6743
  store i64 %shl, ptr %chunk, align 8, !dbg !6743
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then32
  %46 = load i64, ptr %chunk, align 8, !dbg !6744
  %47 = load i64, ptr %chunk_offset, align 8, !dbg !6745
  %add = add i64 %46, %47, !dbg !6746
  %48 = load ptr, ptr %result.addr, align 8, !dbg !6747
  store i64 %add, ptr %48, align 8, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_offset) #16, !dbg !6749
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !6749
  ret void, !dbg !6749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_clear_flag(ptr noundef %bio, i32 noundef %bit) #7 align 16 !dbg !6750 {
entry:
  %bio.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  %0 = load i32, ptr %bit.addr, align 4, !dbg !6758
  %shl = shl i32 1, %0, !dbg !6759
  %not = xor i32 %shl, -1, !dbg !6760
  %1 = load ptr, ptr %bio.addr, align 8, !dbg !6761
  %bi_flags = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3, !dbg !6762
  %2 = load i16, ptr %bi_flags, align 4, !dbg !6763
  %conv = zext i16 %2 to i32, !dbg !6763
  %and = and i32 %conv, %not, !dbg !6763
  %conv1 = trunc i32 %and to i16, !dbg !6763
  store i16 %conv1, ptr %bi_flags, align 4, !dbg !6763
  ret void, !dbg !6764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6765 dso_local void @bio_associate_blkg(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stripe_map_range_sector(ptr noundef %sc, i64 noundef %sector, i32 noundef %target_stripe, ptr noundef %result) #5 align 16 !dbg !6766 {
entry:
  %sc.addr = alloca ptr, align 8
  %sector.addr = alloca i64, align 8
  %target_stripe.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %stripe = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6770, metadata !DIExpression()), !dbg !6779
  store i64 %sector, ptr %sector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sector.addr, metadata !6771, metadata !DIExpression()), !dbg !6780
  store i32 %target_stripe, ptr %target_stripe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_stripe.addr, metadata !6772, metadata !DIExpression()), !dbg !6781
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !6773, metadata !DIExpression()), !dbg !6782
  call void @llvm.lifetime.start.p0(i64 4, ptr %stripe) #16, !dbg !6783
  call void @llvm.dbg.declare(metadata ptr %stripe, metadata !6774, metadata !DIExpression()), !dbg !6784
  %0 = load ptr, ptr %sc.addr, align 8, !dbg !6785
  %1 = load i64, ptr %sector.addr, align 8, !dbg !6786
  %2 = load ptr, ptr %result.addr, align 8, !dbg !6787
  call void @stripe_map_sector(ptr noundef %0, i64 noundef %1, ptr noundef %stripe, ptr noundef %2) #17, !dbg !6788
  %3 = load i32, ptr %stripe, align 4, !dbg !6789
  %4 = load i32, ptr %target_stripe.addr, align 4, !dbg !6791
  %cmp = icmp eq i32 %3, %4, !dbg !6792
  br i1 %cmp, label %if.then, label %if.end, !dbg !6793

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6794

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %result.addr, align 8, !dbg !6795
  %6 = load i64, ptr %5, align 8, !dbg !6796
  store i64 %6, ptr %sector.addr, align 8, !dbg !6797
  %7 = load ptr, ptr %sc.addr, align 8, !dbg !6798
  %chunk_size_shift = getelementptr inbounds %struct.stripe_c, ptr %7, i32 0, i32 4, !dbg !6799
  %8 = load i32, ptr %chunk_size_shift, align 4, !dbg !6799
  %cmp1 = icmp slt i32 %8, 0, !dbg !6800
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !6801

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !6775, metadata !DIExpression()), !dbg !6802
  %9 = load ptr, ptr %sc.addr, align 8, !dbg !6802
  %chunk_size = getelementptr inbounds %struct.stripe_c, ptr %9, i32 0, i32 3, !dbg !6802
  %10 = load i32, ptr %chunk_size, align 8, !dbg !6802
  store i32 %10, ptr %__base, align 4, !dbg !6802
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !6778, metadata !DIExpression()), !dbg !6802
  %11 = load i64, ptr %sector.addr, align 8, !dbg !6802
  %12 = load i32, ptr %__base, align 4, !dbg !6802
  %conv = zext i32 %12 to i64, !dbg !6802
  %rem = urem i64 %11, %conv, !dbg !6802
  %conv3 = trunc i64 %rem to i32, !dbg !6802
  store i32 %conv3, ptr %__rem, align 4, !dbg !6802
  %13 = load i64, ptr %sector.addr, align 8, !dbg !6802
  %14 = load i32, ptr %__base, align 4, !dbg !6802
  %conv4 = zext i32 %14 to i64, !dbg !6802
  %div = udiv i64 %13, %conv4, !dbg !6802
  store i64 %div, ptr %sector.addr, align 8, !dbg !6802
  %15 = load i32, ptr %__rem, align 4, !dbg !6802
  store i32 %15, ptr %tmp, align 4, !dbg !6802
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !6803
  %16 = load i32, ptr %tmp, align 4, !dbg !6802
  %conv5 = zext i32 %16 to i64, !dbg !6803
  %17 = load ptr, ptr %result.addr, align 8, !dbg !6804
  %18 = load i64, ptr %17, align 8, !dbg !6805
  %sub = sub i64 %18, %conv5, !dbg !6805
  store i64 %sub, ptr %17, align 8, !dbg !6805
  br label %if.end9, !dbg !6806

if.else:                                          ; preds = %if.end
  %19 = load i64, ptr %sector.addr, align 8, !dbg !6807
  %20 = load ptr, ptr %sc.addr, align 8, !dbg !6808
  %chunk_size6 = getelementptr inbounds %struct.stripe_c, ptr %20, i32 0, i32 3, !dbg !6809
  %21 = load i32, ptr %chunk_size6, align 8, !dbg !6809
  %sub7 = sub i32 %21, 1, !dbg !6810
  %conv8 = zext i32 %sub7 to i64, !dbg !6811
  %not = xor i64 %conv8, -1, !dbg !6812
  %and = and i64 %19, %not, !dbg !6813
  %22 = load ptr, ptr %result.addr, align 8, !dbg !6814
  store i64 %and, ptr %22, align 8, !dbg !6815
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %23 = load i32, ptr %target_stripe.addr, align 4, !dbg !6816
  %24 = load i32, ptr %stripe, align 4, !dbg !6818
  %cmp10 = icmp ult i32 %23, %24, !dbg !6819
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !6820

if.then12:                                        ; preds = %if.end9
  %25 = load ptr, ptr %sc.addr, align 8, !dbg !6821
  %chunk_size13 = getelementptr inbounds %struct.stripe_c, ptr %25, i32 0, i32 3, !dbg !6822
  %26 = load i32, ptr %chunk_size13, align 8, !dbg !6822
  %conv14 = zext i32 %26 to i64, !dbg !6821
  %27 = load ptr, ptr %result.addr, align 8, !dbg !6823
  %28 = load i64, ptr %27, align 8, !dbg !6824
  %add = add i64 %28, %conv14, !dbg !6824
  store i64 %add, ptr %27, align 8, !dbg !6824
  br label %if.end15, !dbg !6825

if.end15:                                         ; preds = %if.then12, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6826
  br label %cleanup, !dbg !6826

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stripe) #16, !dbg !6826
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6826

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @to_bytes(i64 noundef %n) #7 align 16 !dbg !6827 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6831, metadata !DIExpression()), !dbg !6832
  %0 = load i64, ptr %n.addr, align 8, !dbg !6833
  %shl = shl i64 %0, 9, !dbg !6834
  ret i64 %shl, !dbg !6835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6836 dso_local void @bio_endio(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6837 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @disk_devt(ptr noundef %disk) #7 align 16 !dbg !6840 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6844, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6846
  %major = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 0, !dbg !6846
  %1 = load i32, ptr %major, align 8, !dbg !6846
  %shl = shl i32 %1, 20, !dbg !6846
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !6846
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 1, !dbg !6846
  %3 = load i32, ptr %first_minor, align 4, !dbg !6846
  %or = or i32 %shl, %3, !dbg !6846
  ret i32 %or, !dbg !6847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6848 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #10 align 16 !dbg !6852 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6856, metadata !DIExpression()), !dbg !6857
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6858
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6859
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6860
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !6861
  ret void, !dbg !6862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #10 align 16 !dbg !6863 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6869, metadata !DIExpression()), !dbg !6870
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6871
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !6872
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6873
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !6874
  ret i32 %call, !dbg !6875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #7 align 16 !dbg !6876 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6880, metadata !DIExpression()), !dbg !6882
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6881, metadata !DIExpression()), !dbg !6883
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6884
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6885
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #17, !dbg !6886
  ret i1 %call, !dbg !6887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6888 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6890, metadata !DIExpression()), !dbg !6892
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6894
  %1 = load i64, ptr %size.addr, align 8, !dbg !6895
  %conv = trunc i64 %1 to i32, !dbg !6895
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6896
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6897
  %3 = load i64, ptr %size.addr, align 8, !dbg !6897
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6897
  ret void, !dbg !6898
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #10 align 16 !dbg !6899 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6901, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6903
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !6904
  ret void, !dbg !6905
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #10 align 16 !dbg !6906 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6908, metadata !DIExpression()), !dbg !6909
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6910
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6911
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6912, !srcloc !6913
  ret void, !dbg !6914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6915 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6917, metadata !DIExpression()), !dbg !6919
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6918, metadata !DIExpression()), !dbg !6920
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6921
  %1 = load i64, ptr %size.addr, align 8, !dbg !6922
  %conv = trunc i64 %1 to i32, !dbg !6922
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6923
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6924
  %3 = load i64, ptr %size.addr, align 8, !dbg !6924
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6924
  ret void, !dbg !6925
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #10 align 16 !dbg !6926 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6928, metadata !DIExpression()), !dbg !6929
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6930
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !6931
  ret i32 %call, !dbg !6932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6933 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6935, metadata !DIExpression()), !dbg !6937
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6936, metadata !DIExpression()), !dbg !6938
  ret i1 true, !dbg !6939
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #10 align 16 !dbg !6940 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6942, metadata !DIExpression()), !dbg !6943
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6944
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6944
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6944
  ret i32 %1, !dbg !6945
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6946 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6949 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6955 dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { nounwind memory(read) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421}
!llvm.ident = !{!5422}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/md/dm-stripe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11cb913c254d4eda6d9c68b2b1f9e63c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "dm_stripe_wq", scope: !9, file: !2, line: 19, type: !2146, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/md/.dm-stripe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/md/dm-mod\22 -D KBUILD_BASENAME=\22dm_stripe\22 -D KBUILD_MODNAME=\22dm_mod\22 -D __KBUILD_MODNAME=kmod_dm_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/md/dm-stripe.ll drivers/md/dm-stripe.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !288, globals: !5294, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !29, !35, !43, !51, !67, !73, !79, !86, !91, !99, !107, !113, !122, !127, !132, !138, !142, !147, !159, !165, !172, !179, !185, !190, !216, !221, !231, !255, !272}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !20, line: 32, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!23 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !25, line: 2052, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!28 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !30, line: 54, baseType: !13, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "USRQUOTA", value: 0)
!33 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!34 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !44, line: 9, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!47 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!48 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!49 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!50 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !68, line: 1381, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!71 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!72 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !74, line: 45, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!77 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!78 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !80, line: 487, baseType: !13, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!83 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!84 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!85 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !87, line: 65, baseType: !13, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!90 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !92, line: 620, baseType: !13, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!95 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!96 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!97 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!98 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !92, line: 597, baseType: !100, size: 32, elements: !101)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !{!102, !103, !104, !105, !106}
!102 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!103 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!104 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!105 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!106 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !108, line: 26, baseType: !13, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!111 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!112 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !80, line: 547, baseType: !13, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121}
!115 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!116 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!117 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!118 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!119 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!120 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!121 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !80, line: 564, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!125 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !80, line: 577, baseType: !13, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!130 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!131 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !80, line: 503, baseType: !13, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!135 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!136 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !68, line: 295, baseType: !13, size: 32, elements: !139)
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!141 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !68, line: 285, baseType: !13, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!145 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!146 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !148, line: 44, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!151 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!152 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!153 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!154 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!155 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!156 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!157 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!158 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !160, line: 16, baseType: !13, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "TT_NONE", value: 0)
!163 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!164 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !166, line: 51, baseType: !13, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!169 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!170 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!171 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !173, line: 15, baseType: !13, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!174 = !{!175, !176, !177, !178}
!175 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!176 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!177 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!178 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 36, baseType: !13, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/device-mapper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f74e5b83b3aea50b63334d71d77693b6")
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "STATUSTYPE_INFO", value: 0)
!183 = !DIEnumerator(name: "STATUSTYPE_TABLE", value: 1)
!184 = !DIEnumerator(name: "STATUSTYPE_IMA", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dax_access_mode", file: !186, line: 17, baseType: !13, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/dax.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42a466fe530b5a2910fb5ab027e85baf")
!187 = !{!188, !189}
!188 = !DIEnumerator(name: "DAX_ACCESS", value: 0)
!189 = !DIEnumerator(name: "DAX_RECOVERY_WRITE", value: 1)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !191, line: 30, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!193 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!194 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!195 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!196 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!197 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!198 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!199 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!200 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!201 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!202 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!203 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!204 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!205 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!206 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!207 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!208 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!209 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!210 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!211 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!212 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!213 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!214 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!215 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 10, baseType: !13, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!218 = !{!219, !220}
!219 = !DIEnumerator(name: "false", value: 0)
!220 = !DIEnumerator(name: "true", value: 1)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !222, line: 364, baseType: !13, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!223 = !{!224, !225, !226, !227, !228, !229, !230}
!224 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!225 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!226 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!227 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!228 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!229 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!230 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !232, line: 404, baseType: !13, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!234 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!235 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!236 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!237 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!238 = !DIEnumerator(name: "__REQ_META", value: 12)
!239 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!240 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!241 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!242 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!243 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!244 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!245 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!246 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!247 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!248 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!249 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!250 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!251 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!252 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!253 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!254 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !232, line: 371, baseType: !13, size: 32, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!257 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!258 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!259 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!260 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!261 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!262 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!263 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!264 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!265 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!266 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!267 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!268 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!269 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!270 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!271 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !232, line: 333, baseType: !13, size: 32, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!274 = !DIEnumerator(name: "BIO_PAGE_PINNED", value: 0)
!275 = !DIEnumerator(name: "BIO_CLONED", value: 1)
!276 = !DIEnumerator(name: "BIO_BOUNCED", value: 2)
!277 = !DIEnumerator(name: "BIO_QUIET", value: 3)
!278 = !DIEnumerator(name: "BIO_CHAIN", value: 4)
!279 = !DIEnumerator(name: "BIO_REFFED", value: 5)
!280 = !DIEnumerator(name: "BIO_BPS_THROTTLED", value: 6)
!281 = !DIEnumerator(name: "BIO_TRACE_COMPLETION", value: 7)
!282 = !DIEnumerator(name: "BIO_CGROUP_ACCT", value: 8)
!283 = !DIEnumerator(name: "BIO_QOS_THROTTLED", value: 9)
!284 = !DIEnumerator(name: "BIO_QOS_MERGED", value: 10)
!285 = !DIEnumerator(name: "BIO_REMAPPED", value: 11)
!286 = !DIEnumerator(name: "BIO_ZONE_WRITE_LOCKED", value: 12)
!287 = !DIEnumerator(name: "BIO_FLAG_LAST", value: 13)
!288 = !{!289, !465, !5114, !100, !856, !443, !440, !5115, !5117, !5290, !1066, !1030, !1070, !13, !5292, !549}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !291)
!291 = !{!292, !293, !300, !304, !4797, !4823, !4824, !4825, !4826, !4830, !4833, !4834, !4835, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4902, !4906, !4924, !4941, !4942, !4943, !4944, !4953, !4976, !4977, !4980, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4994, !4995, !5074, !5082, !5083, !5084, !5086, !5090, !5091, !5095, !5096, !5097, !5098, !5100, !5101, !5102, !5109, !5110, !5111, !5113}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !12, line: 403, baseType: !11, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !290, file: !12, line: 406, baseType: !294, size: 128, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !295, line: 190, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !295, line: 191, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !294, file: !295, line: 191, baseType: !298, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !12, line: 409, baseType: !301, size: 448, offset: 192)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 56)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !290, file: !12, line: 417, baseType: !305, size: 768, offset: 640)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !306)
!306 = !{!307, !4791, !4792, !4793, !4796}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !305, file: !12, line: 46, baseType: !308, size: 512)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !309, line: 64, size: 512, elements: !310)
!309 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!310 = !{!311, !314, !315, !317, !406, !4681, !4785, !4786, !4787, !4788, !4789, !4790}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 65, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !308, file: !309, line: 66, baseType: !294, size: 128, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !308, file: !309, line: 67, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !308, file: !309, line: 68, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !309, line: 168, size: 768, elements: !320)
!320 = !{!321, !322, !365, !366}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !319, file: !309, line: 169, baseType: !294, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !319, file: !309, line: 170, baseType: !323, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !324, line: 29, baseType: !325)
!324 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !324, line: 17, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !324, line: 18, baseType: !328, size: 32)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !324, line: 18, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !328, file: !324, line: 19, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !332, line: 14, size: 32, elements: !333)
!332 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !331, file: !332, line: 15, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !336, line: 44, baseType: !337)
!336 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !336, line: 14, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !336, line: 15, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !336, line: 15, size: 32, elements: !341)
!341 = !{!342, !347, !357}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !336, line: 16, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !295, line: 174, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 172, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !344, file: !295, line: 173, baseType: !100, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 24, baseType: !348, size: 16)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 24, size: 16, elements: !349)
!349 = !{!350, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !348, file: !336, line: 25, baseType: !351, size: 8)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !352, line: 17, baseType: !353)
!352 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !354, line: 21, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!355 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !348, file: !336, line: 26, baseType: !351, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !336, line: 28, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !336, line: 28, size: 32, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !358, file: !336, line: 29, baseType: !361, size: 16)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !352, line: 19, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !354, line: 24, baseType: !363)
!363 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !358, file: !336, line: 30, baseType: !361, size: 16, offset: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !319, file: !309, line: 171, baseType: !308, size: 512, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !319, file: !309, line: 172, baseType: !367, size: 64, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !309, line: 133, size: 192, elements: !370)
!370 = !{!371, !378, !383}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !369, file: !309, line: 134, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!100, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !309, line: 135, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!312, !376}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !369, file: !309, line: 136, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!100, !376, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !309, line: 125, size: 20736, elements: !390)
!390 = !{!391, !396, !400, !401, !405}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !389, file: !309, line: 126, baseType: !392, size: 192)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 192, elements: !394)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!394 = !{!395}
!395 = !DISubrange(count: 3)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !389, file: !309, line: 127, baseType: !397, size: 4096, offset: 192)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 4096, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !389, file: !309, line: 128, baseType: !100, size: 32, offset: 4288)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !389, file: !309, line: 129, baseType: !402, size: 16384, offset: 4320)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2048)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !389, file: !309, line: 130, baseType: !100, size: 32, offset: 20704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !308, file: !309, line: 69, baseType: !407, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !309, line: 116, size: 384, elements: !410)
!410 = !{!411, !415, !444, !4669, !4673, !4677}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !409, file: !309, line: 117, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !316}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !409, file: !309, line: 118, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !419, line: 254, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!420 = !{!421, !436}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !418, file: !419, line: 255, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!425, !316, !430, !393}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !295, line: 66, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !427, line: 73, baseType: !428)
!427 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !427, line: 15, baseType: !429)
!429 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !419, line: 30, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !419, line: 31, baseType: !312, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !431, file: !419, line: 32, baseType: !435, size: 16, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !295, line: 24, baseType: !363)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !418, file: !419, line: 256, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!425, !316, !430, !312, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !295, line: 61, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !427, line: 72, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !427, line: 16, baseType: !443)
!443 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !409, file: !309, line: 119, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !419, line: 84, size: 320, elements: !449)
!449 = !{!450, !451, !455, !4665, !4667}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !419, line: 85, baseType: !312, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !448, file: !419, line: 86, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!435, !316, !430, !100}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !448, file: !419, line: 88, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!435, !316, !459, !100}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !419, line: 175, size: 512, elements: !461)
!461 = !{!462, !463, !464, !466, !4656, !4660, !4661}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !460, file: !419, line: 176, baseType: !431, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !419, line: 177, baseType: !440, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !460, file: !419, line: 178, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !460, file: !419, line: 179, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !25, line: 472, size: 1536, align: 64, elements: !472)
!472 = !{!473, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4650, !4651, !4652, !4653, !4654, !4655}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !471, file: !25, line: 473, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !25, line: 641, size: 4800, elements: !476)
!476 = !{!477, !478, !479, !487, !488, !495, !496, !499, !500, !4430, !4431, !4432, !4433, !4434, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4474, !4477, !4478, !4479, !4488, !4489, !4490, !4491}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !475, file: !25, line: 642, baseType: !435, size: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !475, file: !25, line: 643, baseType: !363, size: 16, offset: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !475, file: !25, line: 644, baseType: !480, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !481, line: 23, baseType: !482)
!481 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 21, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !481, line: 22, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !295, line: 37, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !427, line: 49, baseType: !13)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !475, file: !25, line: 645, baseType: !294, size: 128, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !475, file: !25, line: 646, baseType: !489, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !481, line: 28, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 26, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !490, file: !481, line: 27, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !295, line: 38, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !427, line: 50, baseType: !13)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !475, file: !25, line: 647, baseType: !13, size: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !475, file: !25, line: 650, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !25, line: 607, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !475, file: !25, line: 651, baseType: !497, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !475, file: !25, line: 654, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !25, line: 1966, size: 2048, align: 512, elements: !504)
!504 = !{!505, !4264, !4274, !4278, !4282, !4286, !4290, !4294, !4298, !4302, !4306, !4307, !4311, !4315, !4352, !4381, !4385, !4391, !4395, !4399, !4403, !4407, !4411, !4417, !4421}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !503, file: !25, line: 1967, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !474, !509, !13}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !511, line: 82, size: 1536, elements: !512)
!511 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!512 = !{!513, !514, !524, !532, !533, !553, !554, !558, !571, !4247, !4248, !4249, !4250, !4256, !4257, !4258}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !510, file: !511, line: 84, baseType: !13, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !510, file: !511, line: 85, baseType: !515, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !516, line: 275, baseType: !517)
!516 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !516, line: 275, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !517, file: !516, line: 275, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !516, line: 69, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !516, line: 64, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !521, file: !516, line: 65, baseType: !13, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !510, file: !511, line: 86, baseType: !525, size: 128, offset: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !526, line: 38, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !526, line: 39, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !525, file: !526, line: 39, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !510, file: !511, line: 87, baseType: !509, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !510, file: !511, line: 88, baseType: !534, size: 128, offset: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !511, line: 49, size: 128, elements: !535)
!535 = !{!536, !550}
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !511, line: 50, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !511, line: 50, size: 64, elements: !538)
!538 = !{!539, !546}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !511, line: 51, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !537, file: !511, line: 51, size: 64, elements: !541)
!541 = !{!542, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !540, file: !511, line: 52, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !352, line: 21, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !354, line: 27, baseType: !13)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !540, file: !511, line: 52, baseType: !543, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !537, file: !511, line: 54, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !352, line: 23, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !354, line: 31, baseType: !549)
!549 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !534, file: !511, line: 56, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !510, file: !511, line: 89, baseType: !474, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !510, file: !511, line: 91, baseType: !555, size: 256, offset: 448)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !510, file: !511, line: 94, baseType: !559, size: 64, offset: 704)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !560, line: 25, size: 64, elements: !561)
!560 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !560, line: 26, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 26, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !563, file: !560, line: 28, baseType: !548, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !560, line: 30, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !563, file: !560, line: 30, size: 64, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !567, file: !560, line: 31, baseType: !323, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !567, file: !560, line: 32, baseType: !100, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !510, file: !511, line: 95, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !511, line: 128, size: 1024, align: 512, elements: !575)
!575 = !{!576, !580, !581, !588, !594, !598, !602, !606, !607, !611, !615, !4237, !4241}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !574, file: !511, line: 129, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!100, !509, !13}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !574, file: !511, line: 130, baseType: !577, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !574, file: !511, line: 131, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!100, !585, !587}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !574, file: !511, line: 132, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!100, !585, !13, !312, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !574, file: !511, line: 134, baseType: !595, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!100, !585}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !574, file: !511, line: 135, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!100, !509}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !574, file: !511, line: 136, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !509}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !574, file: !511, line: 137, baseType: !603, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !574, file: !511, line: 138, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !509, !474}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !574, file: !511, line: 139, baseType: !612, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!393, !509, !393, !100}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !574, file: !511, line: 140, baseType: !616, size: 64, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !4236}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !621, line: 70, size: 256, elements: !622)
!621 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!622 = !{!623, !624, !4232, !4233}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !620, file: !621, line: 71, baseType: !509, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !620, file: !621, line: 72, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !25, line: 1190, size: 10752, elements: !627)
!627 = !{!628, !629, !632, !633, !634, !638, !686, !865, !905, !995, !999, !1000, !1001, !1002, !1003, !1012, !1013, !1014, !1015, !1020, !1024, !1025, !2975, !2981, !2982, !2985, !2986, !2987, !3028, !4166, !4167, !4168, !4169, !4170, !4171, !4174, !4175, !4182, !4183, !4184, !4185, !4186, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !626, file: !25, line: 1191, baseType: !294, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !626, file: !25, line: 1192, baseType: !630, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !295, line: 21, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !295, line: 18, baseType: !543)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !626, file: !25, line: 1193, baseType: !355, size: 8, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !626, file: !25, line: 1194, baseType: !443, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !626, file: !25, line: 1195, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !295, line: 52, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !427, line: 88, baseType: !637)
!637 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !626, file: !25, line: 1196, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !25, line: 2366, size: 576, elements: !641)
!641 = !{!642, !643, !644, !650, !654, !658, !662, !663, !664, !674, !678, !679, !680, !682, !683, !684, !685}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !25, line: 2367, baseType: !312, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !640, file: !25, line: 2368, baseType: !100, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !640, file: !25, line: 2376, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!100, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !621, line: 21, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !640, file: !25, line: 2377, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !25, line: 75, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !640, file: !25, line: 2378, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!509, !639, !100, !312, !465}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !640, file: !25, line: 2380, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !625}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !25, line: 2381, baseType: !289, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !25, line: 2382, baseType: !639, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !640, file: !25, line: 2383, baseType: !665, size: 64, offset: 512)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !295, line: 194, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !665, file: !295, line: 195, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !295, line: 198, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !295, line: 199, baseType: !668, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !669, file: !295, line: 199, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !640, file: !25, line: 2385, baseType: !675, offset: 576)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !676, line: 206, elements: !677)
!676 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!677 = !{}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !640, file: !25, line: 2386, baseType: !675, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !640, file: !25, line: 2387, baseType: !675, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !640, file: !25, line: 2388, baseType: !681, offset: 576)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, elements: !394)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !640, file: !25, line: 2390, baseType: !675, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !640, file: !25, line: 2391, baseType: !675, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !640, file: !25, line: 2392, baseType: !675, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !640, file: !25, line: 2393, baseType: !675, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !626, file: !25, line: 1197, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !25, line: 2057, size: 1664, elements: !690)
!690 = !{!691, !695, !699, !700, !704, !728, !732, !733, !734, !738, !742, !746, !747, !748, !754, !759, !760, !767, !768, !769, !770, !774, !778, !847, !863, !864}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !689, file: !25, line: 2058, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!474, !625}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !689, file: !25, line: 2059, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !474}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !689, file: !25, line: 2060, baseType: !696, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !689, file: !25, line: 2062, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !474, !100}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !689, file: !25, line: 2063, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!100, !474, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 42, size: 384, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !709, file: !20, line: 43, baseType: !429, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !709, file: !20, line: 45, baseType: !429, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !709, file: !20, line: 52, baseType: !635, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !709, file: !20, line: 53, baseType: !635, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !709, file: !20, line: 55, baseType: !19, size: 32, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !709, file: !20, line: 57, baseType: !13, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !709, file: !20, line: 58, baseType: !13, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !709, file: !20, line: 59, baseType: !13, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !709, file: !20, line: 60, baseType: !13, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !709, file: !20, line: 61, baseType: !13, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !709, file: !20, line: 62, baseType: !13, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !709, file: !20, line: 63, baseType: !13, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !709, file: !20, line: 71, baseType: !13, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !709, file: !20, line: 78, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !20, line: 78, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !689, file: !25, line: 2064, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!100, !474}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !689, file: !25, line: 2065, baseType: !696, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !689, file: !25, line: 2066, baseType: !659, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !689, file: !25, line: 2067, baseType: !735, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!100, !625, !100}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !689, file: !25, line: 2068, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!100, !625, !24}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !689, file: !25, line: 2069, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!100, !625}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !689, file: !25, line: 2070, baseType: !739, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !689, file: !25, line: 2071, baseType: !743, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !689, file: !25, line: 2072, baseType: !749, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!100, !509, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !25, line: 62, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !689, file: !25, line: 2073, baseType: !755, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!100, !625, !758, !393}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !689, file: !25, line: 2074, baseType: !659, size: 64, offset: 960)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !689, file: !25, line: 2076, baseType: !761, size: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!100, !764, !509}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !766, line: 66, flags: DIFlagFwdDecl)
!766 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !689, file: !25, line: 2077, baseType: !761, size: 64, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !689, file: !25, line: 2078, baseType: !761, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !689, file: !25, line: 2079, baseType: !761, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !689, file: !25, line: 2081, baseType: !771, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!425, !625, !100, !393, !440, !635}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !689, file: !25, line: 2082, baseType: !775, size: 64, offset: 1344)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!425, !625, !100, !312, !440, !635}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !689, file: !25, line: 2083, baseType: !779, size: 64, offset: 1408)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !474}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !30, line: 296, size: 1664, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !811, !812, !813, !814, !830, !831, !832}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !784, file: !30, line: 297, baseType: !669, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !784, file: !30, line: 298, baseType: !294, size: 128, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !784, file: !30, line: 299, baseType: !294, size: 128, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !784, file: !30, line: 300, baseType: !294, size: 128, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !784, file: !30, line: 301, baseType: !791, size: 256, offset: 512)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !792, line: 66, size: 256, elements: !793)
!792 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!793 = !{!794, !803, !805, !810}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !791, file: !792, line: 67, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !796, line: 13, baseType: !797)
!796 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !295, line: 181, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 179, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !798, file: !295, line: 180, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !352, line: 22, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !354, line: 30, baseType: !637)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !791, file: !792, line: 68, baseType: !804, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !332, line: 23, baseType: !331)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !791, file: !792, line: 70, baseType: !806, size: 32, offset: 96)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !807, line: 15, size: 32, elements: !808)
!807 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !806, file: !807, line: 20, baseType: !343, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !791, file: !792, line: 72, baseType: !294, size: 128, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !784, file: !30, line: 302, baseType: !323, size: 32, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !784, file: !30, line: 303, baseType: !343, size: 32, offset: 800)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !784, file: !30, line: 304, baseType: !625, size: 64, offset: 832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !784, file: !30, line: 305, baseType: !815, size: 64, offset: 896)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !30, line: 68, size: 64, elements: !816)
!816 = !{!817, !829}
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !30, line: 69, baseType: !818, size: 32)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !30, line: 69, size: 32, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !818, file: !30, line: 70, baseType: !480, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !818, file: !30, line: 71, baseType: !489, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !818, file: !30, line: 72, baseType: !823, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !824, line: 24, baseType: !825)
!824 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !824, line: 22, size: 32, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !825, file: !824, line: 23, baseType: !828, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !824, line: 20, baseType: !486)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !30, line: 74, baseType: !29, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !784, file: !30, line: 306, baseType: !635, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !784, file: !30, line: 307, baseType: !443, size: 64, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !784, file: !30, line: 308, baseType: !833, size: 576, offset: 1088)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !30, line: 205, size: 576, elements: !834)
!834 = !{!835, !837, !838, !839, !840, !841, !842, !843, !846}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !833, file: !30, line: 206, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !30, line: 66, baseType: !637)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !833, file: !30, line: 207, baseType: !836, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !833, file: !30, line: 208, baseType: !836, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !833, file: !30, line: 209, baseType: !836, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !833, file: !30, line: 210, baseType: !836, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !833, file: !30, line: 211, baseType: !836, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !833, file: !30, line: 212, baseType: !836, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !833, file: !30, line: 213, baseType: !844, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !845, line: 8, baseType: !802)
!845 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !833, file: !30, line: 214, baseType: !844, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !689, file: !25, line: 2085, baseType: !848, size: 64, offset: 1472)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!429, !625, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !853, line: 15, size: 256, elements: !854)
!853 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!854 = !{!855, !857, !858, !859, !860}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !852, file: !853, line: 16, baseType: !856, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !295, line: 154, baseType: !13)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !852, file: !853, line: 19, baseType: !100, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !852, file: !853, line: 26, baseType: !443, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !852, file: !853, line: 33, baseType: !443, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !852, file: !853, line: 36, baseType: !861, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !853, line: 36, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !689, file: !25, line: 2087, baseType: !848, size: 64, offset: 1536)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !689, file: !25, line: 2089, baseType: !659, size: 64, offset: 1600)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !626, file: !25, line: 1198, baseType: !866, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !30, line: 324, size: 704, elements: !869)
!869 = !{!870, !874, !878, !882, !883, !884, !885, !886, !891, !896, !900}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !868, file: !30, line: 325, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!100, !783}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !868, file: !30, line: 326, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!783, !625, !100}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !868, file: !30, line: 327, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !783}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !868, file: !30, line: 328, baseType: !871, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !868, file: !30, line: 329, baseType: !871, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !868, file: !30, line: 330, baseType: !871, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !868, file: !30, line: 331, baseType: !735, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !868, file: !30, line: 334, baseType: !887, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!890, !474}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !868, file: !30, line: 335, baseType: !892, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!100, !474, !895}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !868, file: !30, line: 337, baseType: !897, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!100, !474, !890}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !868, file: !30, line: 339, baseType: !901, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!100, !625, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !626, file: !25, line: 1199, baseType: !906, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !30, line: 430, size: 704, elements: !909)
!909 = !{!910, !921, !922, !926, !927, !928, !943, !966, !970, !971, !994}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !908, file: !30, line: 431, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!100, !625, !100, !100, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !917, line: 8, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !916, file: !917, line: 9, baseType: !619, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !916, file: !917, line: 10, baseType: !509, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !908, file: !30, line: 432, baseType: !735, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !908, file: !30, line: 433, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!100, !625, !13}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !908, file: !30, line: 434, baseType: !923, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !908, file: !30, line: 435, baseType: !735, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !908, file: !30, line: 436, baseType: !929, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!100, !625, !100, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !30, line: 417, size: 256, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !933, file: !30, line: 418, baseType: !100, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !933, file: !30, line: 419, baseType: !13, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !933, file: !30, line: 420, baseType: !13, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !933, file: !30, line: 422, baseType: !13, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !933, file: !30, line: 423, baseType: !13, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !933, file: !30, line: 424, baseType: !13, size: 32, offset: 160)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !933, file: !30, line: 425, baseType: !13, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !933, file: !30, line: 426, baseType: !13, size: 32, offset: 224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !908, file: !30, line: 437, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!100, !625, !815, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !30, line: 345, size: 960, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !948, file: !30, line: 346, baseType: !100, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !948, file: !30, line: 347, baseType: !547, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !948, file: !30, line: 348, baseType: !547, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !948, file: !30, line: 349, baseType: !547, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !948, file: !30, line: 350, baseType: !547, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !948, file: !30, line: 351, baseType: !547, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !948, file: !30, line: 352, baseType: !547, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !948, file: !30, line: 353, baseType: !801, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !948, file: !30, line: 355, baseType: !801, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !948, file: !30, line: 356, baseType: !100, size: 32, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !948, file: !30, line: 357, baseType: !100, size: 32, offset: 608)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !948, file: !30, line: 358, baseType: !547, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !948, file: !30, line: 359, baseType: !547, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !948, file: !30, line: 360, baseType: !547, size: 64, offset: 768)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !948, file: !30, line: 361, baseType: !801, size: 64, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !948, file: !30, line: 362, baseType: !100, size: 32, offset: 896)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !908, file: !30, line: 438, baseType: !967, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!100, !625, !904, !947}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !908, file: !30, line: 440, baseType: !944, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !908, file: !30, line: 441, baseType: !972, size: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!100, !625, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !30, line: 411, size: 1408, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !976, file: !30, line: 412, baseType: !13, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !976, file: !30, line: 413, baseType: !980, size: 1344, offset: 64)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 1344, elements: !394)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !30, line: 397, size: 448, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !993}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !30, line: 398, baseType: !13, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !981, file: !30, line: 399, baseType: !13, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !981, file: !30, line: 401, baseType: !13, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !981, file: !30, line: 402, baseType: !13, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !981, file: !30, line: 403, baseType: !13, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !981, file: !30, line: 404, baseType: !13, size: 32, offset: 160)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !981, file: !30, line: 405, baseType: !13, size: 32, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !981, file: !30, line: 406, baseType: !549, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !981, file: !30, line: 407, baseType: !992, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !295, line: 132, baseType: !547)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !981, file: !30, line: 408, baseType: !992, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !908, file: !30, line: 442, baseType: !923, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !626, file: !25, line: 1200, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !25, line: 54, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !626, file: !25, line: 1201, baseType: !443, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !626, file: !25, line: 1202, baseType: !443, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !626, file: !25, line: 1203, baseType: !443, size: 64, offset: 768)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !626, file: !25, line: 1204, baseType: !509, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !626, file: !25, line: 1205, baseType: !1004, size: 320, offset: 896)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1005, line: 48, size: 320, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1006 = !{!1007, !1008, !1009, !1010, !1011}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1004, file: !1005, line: 49, baseType: !795, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1004, file: !1005, line: 55, baseType: !795, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1004, file: !1005, line: 57, baseType: !806, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1004, file: !1005, line: 59, baseType: !804, size: 32, offset: 160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1004, file: !1005, line: 60, baseType: !294, size: 128, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !626, file: !25, line: 1206, baseType: !100, size: 32, offset: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !626, file: !25, line: 1207, baseType: !343, size: 32, offset: 1248)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !626, file: !25, line: 1209, baseType: !465, size: 64, offset: 1280)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !626, file: !25, line: 1211, baseType: !1016, size: 64, offset: 1344)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !25, line: 1211, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !626, file: !25, line: 1223, baseType: !1021, size: 64, offset: 1408)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !526, line: 34, size: 64, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1021, file: !526, line: 35, baseType: !529, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !626, file: !25, line: 1224, baseType: !294, size: 128, offset: 1472)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !626, file: !25, line: 1225, baseType: !1026, size: 64, offset: 1600)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !232, line: 40, size: 7424, elements: !1028)
!1028 = !{!1029, !1031, !1032, !2929, !2930, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2973, !2974}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1027, file: !232, line: 41, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !295, line: 131, baseType: !547)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1027, file: !232, line: 42, baseType: !1030, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1027, file: !232, line: 43, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !68, line: 128, size: 4544, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1039, !1041, !1042, !1043, !1050, !1051, !2241, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2894, !2895, !2896, !2897, !2900, !2901, !2904, !2907, !2908, !2911, !2913, !2914, !2915}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1034, file: !68, line: 133, baseType: !100, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1034, file: !68, line: 134, baseType: !100, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1034, file: !68, line: 135, baseType: !100, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1034, file: !68, line: 137, baseType: !1040, size: 256, offset: 96)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !556)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1034, file: !68, line: 139, baseType: !363, size: 16, offset: 352)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1034, file: !68, line: 140, baseType: !363, size: 16, offset: 368)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1034, file: !68, line: 142, baseType: !1044, size: 128, offset: 384)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1045, line: 296, size: 128, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1044, file: !1045, line: 297, baseType: !323, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1044, file: !1045, line: 299, baseType: !856, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1044, file: !1045, line: 300, baseType: !465, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1034, file: !68, line: 143, baseType: !1026, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1034, file: !68, line: 145, baseType: !1052, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !68, line: 1388, size: 1152, elements: !1055)
!1055 = !{!1056, !2151, !2155, !2160, !2164, !2168, !2169, !2173, !2174, !2186, !2190, !2191, !2195, !2221, !2226, !2231, !2232, !2236}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1054, file: !68, line: 1389, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !232, line: 265, size: 960, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1067, !1068, !1069, !1071, !1072, !1080, !1082, !1085, !1086, !1089, !1093, !1094, !1096, !1097, !1098, !1099, !2102, !2149}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1061, file: !232, line: 266, baseType: !1060, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1061, file: !232, line: 267, baseType: !1026, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1061, file: !232, line: 268, baseType: !1066, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !232, line: 256, baseType: !544)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1061, file: !232, line: 271, baseType: !363, size: 16, offset: 160)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1061, file: !232, line: 272, baseType: !363, size: 16, offset: 176)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1061, file: !232, line: 273, baseType: !1070, size: 8, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !232, line: 97, baseType: !351)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1061, file: !232, line: 274, baseType: !343, size: 32, offset: 224)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1061, file: !232, line: 276, baseType: !1073, size: 160, align: 32, offset: 256)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1074, line: 77, size: 160, align: 32, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1073, file: !1074, line: 78, baseType: !1030, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1073, file: !1074, line: 80, baseType: !13, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1073, file: !1074, line: 82, baseType: !13, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1073, file: !1074, line: 84, baseType: !13, size: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1061, file: !232, line: 278, baseType: !1081, size: 32, offset: 416)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !232, line: 258, baseType: !13)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1061, file: !232, line: 279, baseType: !1083, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !232, line: 20, baseType: !1058)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1061, file: !232, line: 280, baseType: !465, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1061, file: !232, line: 288, baseType: !1087, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !232, line: 288, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1061, file: !232, line: 289, baseType: !1090, size: 64, offset: 640)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !232, line: 228, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1090, file: !232, line: 229, baseType: !547, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1061, file: !232, line: 291, baseType: !547, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !232, line: 299, baseType: !1095, offset: 768)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !232, line: 299, elements: !677)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1061, file: !232, line: 305, baseType: !363, size: 16, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1061, file: !232, line: 311, baseType: !363, size: 16, offset: 784)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1061, file: !232, line: 313, baseType: !343, size: 32, offset: 800)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1061, file: !232, line: 315, baseType: !1100, size: 64, offset: 832)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1074, line: 31, size: 128, elements: !1102)
!1102 = !{!1103, !2100, !2101}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1101, file: !1074, line: 32, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !1106)
!1106 = !{!1107, !1108, !2094, !2099}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !52, line: 75, baseType: !443, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !52, line: 83, baseType: !1109, size: 320, offset: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !52, line: 83, size: 320, elements: !1110)
!1110 = !{!1111, !1132, !1146, !1150, !2093}
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !52, line: 84, baseType: !1112, size: 320)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !52, line: 84, size: 320, elements: !1113)
!1113 = !{!1114, !1125, !1126, !1131}
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !52, line: 90, baseType: !1115, size: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1112, file: !52, line: 90, size: 128, elements: !1116)
!1116 = !{!1117, !1118, !1123, !1124}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1115, file: !52, line: 91, baseType: !294, size: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !52, line: 94, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !52, line: 94, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1119, file: !52, line: 96, baseType: !465, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1119, file: !52, line: 98, baseType: !13, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1115, file: !52, line: 102, baseType: !294, size: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1115, file: !52, line: 103, baseType: !294, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1112, file: !52, line: 106, baseType: !470, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !52, line: 107, baseType: !1127, size: 64, offset: 192)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1112, file: !52, line: 107, size: 64, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1127, file: !52, line: 108, baseType: !443, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1127, file: !52, line: 109, baseType: !443, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1112, file: !52, line: 117, baseType: !443, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !52, line: 119, baseType: !1133, size: 320)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !52, line: 119, size: 320, elements: !1134)
!1134 = !{!1135, !1136, !1139, !1140, !1141}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1133, file: !52, line: 124, baseType: !443, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1133, file: !52, line: 125, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1133, file: !52, line: 126, baseType: !443, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1133, file: !52, line: 127, baseType: !443, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !52, line: 128, baseType: !1142, size: 64, offset: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !52, line: 128, size: 64, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1142, file: !52, line: 133, baseType: !443, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1142, file: !52, line: 138, baseType: !795, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !52, line: 141, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !52, line: 141, size: 64, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1147, file: !52, line: 142, baseType: !443, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !52, line: 144, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !52, line: 144, size: 128, elements: !1152)
!1152 = !{!1153, !2092}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1151, file: !52, line: 146, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !1156)
!1156 = !{!1157, !1167, !1198, !1209, !1210, !1211, !1212, !2074, !2075, !2076}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1155, file: !36, line: 127, baseType: !1158, size: 384)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !1159)
!1159 = !{!1160, !1161, !1163, !1164, !1165, !1166}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1158, file: !36, line: 22, baseType: !443, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1158, file: !36, line: 23, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1158, file: !36, line: 24, baseType: !1162, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1158, file: !36, line: 25, baseType: !443, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1158, file: !36, line: 26, baseType: !443, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1158, file: !36, line: 27, baseType: !443, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1155, file: !36, line: 128, baseType: !1168, size: 128, offset: 384)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1169, line: 105, size: 128, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1168, file: !1169, line: 110, baseType: !443, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1168, file: !1169, line: 118, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1169, line: 95, size: 448, elements: !1175)
!1175 = !{!1176, !1177, !1183, !1184, !1187, !1188, !1197}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1174, file: !1169, line: 96, baseType: !795, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1174, file: !1169, line: 97, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1169, line: 60, baseType: !1180)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1174, file: !1169, line: 98, baseType: !1178, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1174, file: !1169, line: 99, baseType: !1185, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !295, line: 35, baseType: !1186)
!1186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1174, file: !1169, line: 100, baseType: !1185, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !1169, line: 101, baseType: !1189, size: 128, align: 64, offset: 256)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !295, line: 232, size: 128, align: 64, elements: !1190)
!1190 = !{!1191, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !295, line: 233, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1189, file: !295, line: 234, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1192}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1174, file: !1169, line: 102, baseType: !1182, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1155, file: !36, line: 129, baseType: !1199, size: 256, offset: 512)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1200, line: 26, size: 256, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1199, file: !1200, line: 27, baseType: !13, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1199, file: !1200, line: 28, baseType: !1204, size: 192, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1205, line: 43, size: 192, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !1205, line: 44, baseType: !804, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1204, file: !1205, line: 45, baseType: !294, size: 128, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1155, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !36, line: 131, baseType: !13, size: 32, offset: 800)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1155, file: !36, line: 132, baseType: !443, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1155, file: !36, line: 133, baseType: !1213, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !1216)
!1216 = !{!1217, !1221, !2070}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1215, file: !36, line: 83, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1104}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1215, file: !36, line: 89, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !13)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1228, line: 512, size: 896, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1229 = !{!1230, !2037, !2038, !2045, !2052, !2062, !2063, !2064, !2066, !2068}
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !1228, line: 513, baseType: !1231, size: 320)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1227, file: !1228, line: 513, size: 320, elements: !1232)
!1232 = !{!1233, !2033, !2034, !2035, !2036}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1231, file: !1228, line: 514, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !1236)
!1236 = !{!1237, !1246, !1938, !1944, !1951, !1952, !1957, !1958, !1963, !1964, !1967, !2026, !2027, !2028, !2029, !2030, !2031}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !52, line: 628, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !52, line: 628, size: 128, elements: !1239)
!1239 = !{!1240, !1245}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !52, line: 629, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !52, line: 629, size: 128, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1241, file: !52, line: 631, baseType: !443, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1241, file: !52, line: 632, baseType: !443, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1238, file: !52, line: 635, baseType: !1189, size: 128, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1235, file: !52, line: 639, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1249)
!1249 = !{!1250, !1936}
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !52, line: 734, baseType: !1251, size: 10240)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !52, line: 734, size: 10240, elements: !1252)
!1252 = !{!1253, !1257, !1270, !1799, !1800, !1801, !1802, !1803, !1804, !1813, !1814, !1815, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1854, !1856, !1859, !1906, !1907, !1908, !1911, !1912, !1913, !1916, !1917, !1918, !1924, !1925}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !52, line: 739, baseType: !1254, size: 512, align: 512)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !52, line: 739, size: 512, align: 512, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1254, file: !52, line: 747, baseType: !343, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1251, file: !52, line: 750, baseType: !1258, size: 128, offset: 512)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1259, line: 218, size: 128, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1260 = !{!1261, !1268, !1269}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 219, baseType: !1262, size: 32)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 219, size: 32, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1262, file: !1259, line: 220, baseType: !323, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1262, file: !1259, line: 221, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1259, line: 197, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1259, line: 197, elements: !677)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1258, file: !1259, line: 223, baseType: !13, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1258, file: !1259, line: 224, baseType: !465, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1251, file: !52, line: 752, baseType: !1271, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!443, !1274, !443, !443, !443, !443}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !25, line: 994, size: 1856, align: 64, elements: !1276)
!1276 = !{!1277, !1288, !1289, !1291, !1292, !1293, !1294, !1295, !1358, !1558, !1567, !1568, !1569, !1789, !1790, !1791, !1792, !1794, !1795, !1798}
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !25, line: 995, baseType: !1278, size: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !25, line: 995, size: 128, elements: !1279)
!1279 = !{!1280, !1286, !1287}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1278, file: !25, line: 996, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1282, line: 60, size: 64, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1281, file: !1282, line: 61, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1278, file: !25, line: 997, baseType: !1189, size: 128, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1278, file: !25, line: 998, baseType: !13, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1275, file: !25, line: 1005, baseType: !323, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1275, file: !25, line: 1006, baseType: !1290, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !295, line: 156, baseType: !13)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1275, file: !25, line: 1007, baseType: !795, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1275, file: !25, line: 1008, baseType: !791, size: 256, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1275, file: !25, line: 1009, baseType: !635, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1275, file: !25, line: 1010, baseType: !13, size: 32, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1275, file: !25, line: 1011, baseType: !1296, size: 256, offset: 640)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !25, line: 948, size: 256, elements: !1297)
!1297 = !{!1298, !1319, !1354, !1355, !1356, !1357}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1296, file: !25, line: 949, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1300, line: 34, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1300, line: 25, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1301, file: !1300, line: 26, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1305, line: 27, baseType: !1306)
!1305 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1305, line: 13, size: 64, elements: !1307)
!1307 = !{!1308, !1318}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !1305, line: 14, baseType: !1309, size: 32)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !1305, line: 14, size: 32, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1309, file: !1305, line: 15, baseType: !343, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !1305, line: 16, baseType: !1313, size: 32)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !1305, line: 16, size: 32, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1313, file: !1305, line: 18, baseType: !351, size: 8)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1313, file: !1305, line: 19, baseType: !1317, size: 24, offset: 8)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 24, elements: !394)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1306, file: !1305, line: 26, baseType: !335, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1296, file: !25, line: 950, baseType: !1320, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !44, line: 59, size: 768, elements: !1322)
!1322 = !{!1323, !1329, !1330, !1331, !1335, !1336, !1343, !1344}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1321, file: !44, line: 61, baseType: !1324, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1325, line: 113, baseType: !1326)
!1325 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1325, line: 111, size: 32, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1326, file: !1325, line: 112, baseType: !343, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1321, file: !44, line: 62, baseType: !13, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1321, file: !44, line: 63, baseType: !323, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1321, file: !44, line: 65, baseType: !1332, size: 256, offset: 128)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 256, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 4)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1321, file: !44, line: 66, baseType: !665, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1321, file: !44, line: 68, baseType: !1337, size: 192, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1338, line: 41, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1338, line: 37, size: 192, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1339, file: !1338, line: 38, baseType: !323, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1339, file: !1338, line: 39, baseType: !294, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1321, file: !44, line: 69, baseType: !1189, size: 128, align: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1321, file: !44, line: 70, baseType: !1345, offset: 768)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, elements: !1352)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !44, line: 54, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1346, file: !44, line: 55, baseType: !100, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1346, file: !44, line: 56, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !44, line: 56, flags: DIFlagFwdDecl)
!1352 = !{!1353}
!1353 = !DISubrange(count: -1)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1296, file: !25, line: 951, baseType: !43, size: 32, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1296, file: !25, line: 952, baseType: !480, size: 32, offset: 160)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1296, file: !25, line: 952, baseType: !480, size: 32, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1296, file: !25, line: 953, baseType: !100, size: 32, offset: 224)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1275, file: !25, line: 1012, baseType: !1359, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1362, line: 110, size: 1472, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1503, !1504, !1505, !1506, !1507, !1538, !1541, !1545, !1553}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1361, file: !1362, line: 111, baseType: !795, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1361, file: !1362, line: 112, baseType: !480, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1361, file: !1362, line: 113, baseType: !489, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1361, file: !1362, line: 114, baseType: !480, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1361, file: !1362, line: 115, baseType: !489, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1361, file: !1362, line: 116, baseType: !480, size: 32, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1361, file: !1362, line: 117, baseType: !489, size: 32, offset: 224)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1361, file: !1362, line: 118, baseType: !480, size: 32, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1361, file: !1362, line: 119, baseType: !489, size: 32, offset: 288)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1361, file: !1362, line: 120, baseType: !13, size: 32, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1361, file: !1362, line: 121, baseType: !1375, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1376, line: 24, baseType: !1377)
!1376 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 24, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1377, file: !1376, line: 24, baseType: !547, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1361, file: !1362, line: 122, baseType: !1375, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1361, file: !1362, line: 123, baseType: !1375, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1361, file: !1362, line: 124, baseType: !1375, size: 64, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1361, file: !1362, line: 125, baseType: !1375, size: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1361, file: !1362, line: 127, baseType: !355, size: 8, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1361, file: !1362, line: 129, baseType: !1386, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1388, line: 195, size: 1728, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1389 = !{!1390, !1391, !1396, !1408, !1409, !1412, !1413, !1418, !1419, !1420, !1421, !1424, !1425, !1426, !1428, !1429, !1467, !1488}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1387, file: !1388, line: 196, baseType: !1324, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1387, file: !1388, line: 197, baseType: !1392, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1388, line: 28, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !295, line: 104, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !352, line: 20, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !354, line: 26, baseType: !100)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !1388, line: 198, baseType: !1397, size: 192, offset: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !1388, line: 198, size: 192, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1397, file: !1388, line: 199, baseType: !294, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1397, file: !1388, line: 200, baseType: !1401, size: 192, align: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1402, line: 5, size: 192, align: 64, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1403 = !{!1404, !1405, !1407}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1401, file: !1402, line: 6, baseType: !443, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1401, file: !1402, line: 7, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1401, file: !1402, line: 8, baseType: !1406, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1387, file: !1388, line: 205, baseType: !1004, size: 320, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1387, file: !1388, line: 206, baseType: !1410, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1388, line: 206, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1387, file: !1388, line: 207, baseType: !465, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !1388, line: 208, baseType: !1414, size: 64, offset: 704)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !1388, line: 208, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1414, file: !1388, line: 209, baseType: !844, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1414, file: !1388, line: 210, baseType: !844, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1387, file: !1388, line: 212, baseType: !844, size: 64, offset: 768)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1387, file: !1388, line: 213, baseType: !480, size: 32, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1387, file: !1388, line: 214, baseType: !489, size: 32, offset: 864)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1387, file: !1388, line: 215, baseType: !1422, size: 32, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1388, line: 31, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !295, line: 110, baseType: !543)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1387, file: !1388, line: 216, baseType: !363, size: 16, offset: 928)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1387, file: !1388, line: 217, baseType: !363, size: 16, offset: 944)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1387, file: !1388, line: 221, baseType: !1427, size: 16, offset: 960)
!1427 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !1388, line: 228, baseType: !443, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !1388, line: 245, baseType: !1430, size: 320, offset: 1088)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !1388, line: 245, size: 320, elements: !1431)
!1431 = !{!1432, !1459}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1430, file: !1388, line: 246, baseType: !1433, size: 320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1388, line: 114, size: 320, elements: !1434)
!1434 = !{!1435, !1436, !1448, !1451, !1458}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1433, file: !1388, line: 116, baseType: !443, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1388, line: 117, baseType: !1437, size: 64, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1388, line: 117, size: 64, elements: !1438)
!1438 = !{!1439, !1447}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1388, line: 118, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1388, line: 118, size: 64, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1440, file: !1388, line: 120, baseType: !361, size: 16)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1440, file: !1388, line: 121, baseType: !1444, size: 48, offset: 16)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 6)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1437, file: !1388, line: 127, baseType: !443, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !1388, line: 129, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1388, line: 102, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1433, file: !1388, line: 130, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1388, line: 108, size: 192, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1453, file: !1388, line: 109, baseType: !1189, size: 128, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1388, line: 110, baseType: !1324, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1453, file: !1388, line: 111, baseType: !1185, size: 8, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1433, file: !1388, line: 131, baseType: !312, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1388, line: 247, baseType: !1460, size: 320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !1388, line: 247, size: 320, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1460, file: !1388, line: 248, baseType: !443, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1460, file: !1388, line: 249, baseType: !443, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1460, file: !1388, line: 250, baseType: !1449, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1460, file: !1388, line: 251, baseType: !1452, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1460, file: !1388, line: 252, baseType: !393, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !1388, line: 260, baseType: !1468, size: 256, offset: 1408)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !1388, line: 260, size: 256, elements: !1469)
!1469 = !{!1470, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1468, file: !1388, line: 261, baseType: !1471, size: 256)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1388, line: 134, size: 256, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1471, file: !1388, line: 135, baseType: !465, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1388, line: 136, baseType: !1475, size: 256)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !1333)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1388, line: 262, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1468, file: !1388, line: 262, size: 256, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1477, file: !1388, line: 264, baseType: !294, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1477, file: !1388, line: 265, baseType: !1481, size: 128, offset: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1482, line: 22, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1483 = !{!1484, !1487}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1481, file: !1482, line: 23, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1482, line: 23, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1481, file: !1482, line: 24, baseType: !443, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1387, file: !1388, line: 280, baseType: !1489, size: 64, offset: 1664)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1388, line: 176, size: 192, elements: !1491)
!1491 = !{!1492, !1501, !1502}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1490, file: !1388, line: 177, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1388, line: 171, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!100, !1386, !1497, !1499, !1386}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1490, file: !1388, line: 178, baseType: !1386, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1490, file: !1388, line: 179, baseType: !1449, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1361, file: !1362, line: 130, baseType: !1386, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1361, file: !1362, line: 131, baseType: !1386, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1361, file: !1362, line: 132, baseType: !1386, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1361, file: !1362, line: 135, baseType: !465, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1361, file: !1362, line: 137, baseType: !1508, size: 64, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1510, line: 14, size: 1088, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1511 = !{!1512, !1513, !1522, !1523, !1524, !1525, !1526, !1527}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1509, file: !1510, line: 15, baseType: !1324, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1509, file: !1510, line: 17, baseType: !1514, size: 320, offset: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1515, line: 22, size: 320, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1516 = !{!1517, !1518, !1519, !1520}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1515, line: 23, baseType: !804, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !1515, line: 24, baseType: !801, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1514, file: !1515, line: 26, baseType: !294, size: 128, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1514, file: !1515, line: 28, baseType: !1521, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1509, file: !1510, line: 19, baseType: !443, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1509, file: !1510, line: 20, baseType: !795, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1509, file: !1510, line: 23, baseType: !669, size: 128, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1509, file: !1510, line: 24, baseType: !480, size: 32, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1509, file: !1510, line: 29, baseType: !795, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1509, file: !1510, line: 36, baseType: !1528, size: 320, offset: 768)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1529, line: 15, size: 320, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1529, line: 16, baseType: !804, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1528, file: !1529, line: 18, baseType: !100, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1528, file: !1529, line: 19, baseType: !100, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1528, file: !1529, line: 20, baseType: !100, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1528, file: !1529, line: 21, baseType: !100, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1528, file: !1529, line: 22, baseType: !443, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !1529, line: 23, baseType: !443, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1361, file: !1362, line: 138, baseType: !1539, size: 64, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !481, line: 18, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1361, file: !1362, line: 139, baseType: !1542, size: 64, offset: 1216)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1544, line: 16, flags: DIFlagFwdDecl)
!1544 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1361, file: !1362, line: 140, baseType: !1546, size: 64, offset: 1280)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1362, line: 25, size: 64, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1547, file: !1362, line: 26, baseType: !343, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1547, file: !1362, line: 27, baseType: !100, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1547, file: !1362, line: 28, baseType: !1552, offset: 64)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, elements: !1352)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 142, baseType: !1554, size: 128, offset: 1344)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 142, size: 128, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1554, file: !1362, line: 143, baseType: !100, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1554, file: !1362, line: 144, baseType: !1189, size: 128, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1275, file: !25, line: 1013, baseType: !1559, size: 256, offset: 960)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !25, line: 970, size: 256, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1559, file: !25, line: 971, baseType: !443, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1559, file: !25, line: 972, baseType: !13, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1559, file: !25, line: 973, baseType: !13, size: 32, offset: 96)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1559, file: !25, line: 974, baseType: !13, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1559, file: !25, line: 975, baseType: !13, size: 32, offset: 160)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1559, file: !25, line: 976, baseType: !635, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1275, file: !25, line: 1014, baseType: !916, size: 128, offset: 1216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1275, file: !25, line: 1015, baseType: !474, size: 64, offset: 1344)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1275, file: !25, line: 1016, baseType: !1570, size: 64, offset: 1408)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !25, line: 1914, size: 2112, elements: !1573)
!1573 = !{!1574, !1575, !1579, !1584, !1588, !1665, !1666, !1681, !1694, !1702, !1706, !1707, !1711, !1712, !1716, !1721, !1722, !1726, !1730, !1736, !1737, !1741, !1742, !1748, !1752, !1756, !1762, !1766, !1770, !1774, !1778, !1779, !1785}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1572, file: !25, line: 1915, baseType: !289, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1572, file: !25, line: 1916, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!635, !1274, !635, !100}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1572, file: !25, line: 1917, baseType: !1580, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!425, !1274, !393, !440, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1572, file: !25, line: 1918, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!425, !1274, !312, !440, !1583}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1572, file: !25, line: 1919, baseType: !1589, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!425, !1592, !1614}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !25, line: 373, size: 384, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1601, !1602, !1603, !1604}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1593, file: !25, line: 374, baseType: !1274, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1593, file: !25, line: 375, baseType: !635, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1593, file: !25, line: 376, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1592, !429}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1593, file: !25, line: 377, baseType: !465, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1593, file: !25, line: 378, baseType: !100, size: 32, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1593, file: !25, line: 379, baseType: !361, size: 16, offset: 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !25, line: 380, baseType: !1605, size: 64, offset: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !25, line: 380, size: 64, elements: !1606)
!1606 = !{!1607, !1610}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1605, file: !25, line: 386, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !25, line: 386, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1605, file: !25, line: 395, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!425, !465}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1616, line: 41, size: 320, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1628, !1660}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1615, file: !1616, line: 42, baseType: !351, size: 8)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1615, file: !1616, line: 43, baseType: !1185, size: 8, offset: 8)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1615, file: !1616, line: 44, baseType: !1185, size: 8, offset: 16)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1615, file: !1616, line: 45, baseType: !1185, size: 8, offset: 24)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1615, file: !1616, line: 46, baseType: !1185, size: 8, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 47, baseType: !1624, size: 64, offset: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 47, size: 64, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1624, file: !1616, line: 48, baseType: !440, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1624, file: !1616, line: 49, baseType: !100, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 61, baseType: !1629, size: 128, offset: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 61, size: 128, elements: !1630)
!1630 = !{!1631, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1629, file: !1616, line: 67, baseType: !1632, size: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1633, line: 17, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1632, file: !1633, line: 19, baseType: !465, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1632, file: !1633, line: 20, baseType: !441, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1616, line: 68, baseType: !1638, size: 128)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1616, line: 68, size: 128, elements: !1639)
!1639 = !{!1640, !1659}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1616, line: 69, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1616, line: 69, size: 64, elements: !1642)
!1642 = !{!1643, !1646, !1653, !1656, !1658}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1641, file: !1616, line: 71, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1641, file: !1616, line: 72, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1616, line: 17, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1649, file: !1616, line: 18, baseType: !465, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1649, file: !1616, line: 19, baseType: !440, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1641, file: !1616, line: 73, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1641, file: !1616, line: 74, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1641, file: !1616, line: 75, baseType: !465, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1638, file: !1616, line: 77, baseType: !440, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 80, baseType: !1661, size: 64, offset: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 80, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1661, file: !1616, line: 81, baseType: !443, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1661, file: !1616, line: 82, baseType: !635, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1572, file: !25, line: 1920, baseType: !1589, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1572, file: !25, line: 1921, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!100, !1592, !1670, !13}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !68, line: 1559, size: 192, elements: !1672)
!1672 = !{!1673, !1676, !1677}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1671, file: !68, line: 1560, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !68, line: 32, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1671, file: !68, line: 1561, baseType: !1185, size: 8, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1671, file: !68, line: 1562, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1670}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1572, file: !25, line: 1923, baseType: !1682, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!100, !1274, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !25, line: 1858, size: 128, elements: !1687)
!1687 = !{!1688, !1693}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1686, file: !25, line: 1859, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !25, line: 1855, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1185, !1685, !312, !100, !635, !547, !13}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1686, file: !25, line: 1860, baseType: !635, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1572, file: !25, line: 1924, baseType: !1695, size: 64, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1698, !1274, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1699, line: 59, baseType: !13)
!1699 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !25, line: 61, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1572, file: !25, line: 1925, baseType: !1703, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!429, !1274, !13, !443}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1572, file: !25, line: 1926, baseType: !1703, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1572, file: !25, line: 1927, baseType: !1708, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!100, !1274, !1234}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1572, file: !25, line: 1928, baseType: !443, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1572, file: !25, line: 1929, baseType: !1713, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!100, !474, !1274}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1572, file: !25, line: 1930, baseType: !1717, size: 64, offset: 896)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!100, !1274, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !25, line: 1061, baseType: !465)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1572, file: !25, line: 1931, baseType: !1713, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1572, file: !25, line: 1932, baseType: !1723, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!100, !1274, !635, !635, !100}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1572, file: !25, line: 1933, baseType: !1727, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!100, !100, !1274, !100}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !25, line: 1934, baseType: !1731, size: 64, offset: 1152)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!100, !1274, !100, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !25, line: 1063, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1572, file: !25, line: 1935, baseType: !1271, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1572, file: !25, line: 1936, baseType: !1738, size: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!100, !100}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1572, file: !25, line: 1937, baseType: !1731, size: 64, offset: 1344)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1572, file: !25, line: 1938, baseType: !1743, size: 64, offset: 1408)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!425, !1746, !1274, !1583, !440, !13}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !766, line: 59, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1572, file: !25, line: 1939, baseType: !1749, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!425, !1274, !1583, !1746, !440, !13}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1572, file: !25, line: 1940, baseType: !1753, size: 64, offset: 1536)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1274}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1572, file: !25, line: 1941, baseType: !1757, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!100, !1274, !100, !1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1572, file: !25, line: 1942, baseType: !1763, size: 64, offset: 1664)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!429, !1274, !100, !635, !635}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1572, file: !25, line: 1944, baseType: !1767, size: 64, offset: 1728)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !764, !1274}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1572, file: !25, line: 1948, baseType: !1771, size: 64, offset: 1792)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!425, !1274, !635, !1274, !635, !440, !13}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1572, file: !25, line: 1950, baseType: !1775, size: 64, offset: 1856)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!635, !1274, !635, !1274, !635, !635, !13}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1572, file: !25, line: 1953, baseType: !1723, size: 64, offset: 1920)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1572, file: !25, line: 1954, baseType: !1780, size: 64, offset: 1984)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!100, !1783, !13}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !25, line: 1911, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1572, file: !25, line: 1955, baseType: !1786, size: 64, offset: 2048)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!100, !1783, !1670, !13}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1275, file: !25, line: 1018, baseType: !547, size: 64, offset: 1472)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1275, file: !25, line: 1020, baseType: !465, size: 64, offset: 1536)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1275, file: !25, line: 1023, baseType: !465, size: 64, offset: 1600)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1275, file: !25, line: 1027, baseType: !1793, size: 64, offset: 1664)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1275, file: !25, line: 1029, baseType: !470, size: 64, offset: 1728)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1275, file: !25, line: 1030, baseType: !1796, size: 32, offset: 1792)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1797, line: 8, baseType: !543)
!1797 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1275, file: !25, line: 1031, baseType: !1796, size: 32, offset: 1824)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1251, file: !52, line: 756, baseType: !443, size: 64, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1251, file: !52, line: 757, baseType: !443, size: 64, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1251, file: !52, line: 760, baseType: !443, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1251, file: !52, line: 761, baseType: !443, size: 64, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1251, file: !52, line: 763, baseType: !443, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1251, file: !52, line: 764, baseType: !1805, size: 64, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1807, line: 299, baseType: !1808)
!1807 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 299, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1808, file: !1807, line: 299, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1812, line: 18, baseType: !443)
!1812 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1251, file: !52, line: 773, baseType: !343, size: 32, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1251, file: !52, line: 785, baseType: !343, size: 32, offset: 1120)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1251, file: !52, line: 795, baseType: !1816, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1817, file: !52, line: 727, baseType: !547, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1817, file: !52, line: 728, baseType: !100, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1251, file: !52, line: 801, baseType: !443, size: 64, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1251, file: !52, line: 804, baseType: !795, size: 64, offset: 1280)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1251, file: !52, line: 806, baseType: !100, size: 32, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1251, file: !52, line: 808, baseType: !323, size: 32, offset: 1376)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1251, file: !52, line: 823, baseType: !1004, size: 320, offset: 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1251, file: !52, line: 825, baseType: !294, size: 128, offset: 1728)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1251, file: !52, line: 845, baseType: !100, size: 32, offset: 1856)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1251, file: !52, line: 849, baseType: !443, size: 64, offset: 1920)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1251, file: !52, line: 850, baseType: !443, size: 64, offset: 1984)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1251, file: !52, line: 852, baseType: !443, size: 64, offset: 2048)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1251, file: !52, line: 853, baseType: !443, size: 64, offset: 2112)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1251, file: !52, line: 854, baseType: !797, size: 64, offset: 2176)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1251, file: !52, line: 855, baseType: !443, size: 64, offset: 2240)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1251, file: !52, line: 856, baseType: !443, size: 64, offset: 2304)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1251, file: !52, line: 857, baseType: !443, size: 64, offset: 2368)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1251, file: !52, line: 858, baseType: !443, size: 64, offset: 2432)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1251, file: !52, line: 865, baseType: !520, size: 32, offset: 2496)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1251, file: !52, line: 867, baseType: !323, size: 32, offset: 2528)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1251, file: !52, line: 869, baseType: !443, size: 64, offset: 2560)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1251, file: !52, line: 869, baseType: !443, size: 64, offset: 2624)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1251, file: !52, line: 869, baseType: !443, size: 64, offset: 2688)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1251, file: !52, line: 869, baseType: !443, size: 64, offset: 2752)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1251, file: !52, line: 870, baseType: !443, size: 64, offset: 2816)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1251, file: !52, line: 870, baseType: !443, size: 64, offset: 2880)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1251, file: !52, line: 870, baseType: !443, size: 64, offset: 2944)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1251, file: !52, line: 871, baseType: !443, size: 64, offset: 3008)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1251, file: !52, line: 871, baseType: !443, size: 64, offset: 3072)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1251, file: !52, line: 871, baseType: !443, size: 64, offset: 3136)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1251, file: !52, line: 871, baseType: !443, size: 64, offset: 3200)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1251, file: !52, line: 873, baseType: !1851, size: 3328, offset: 3264)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 3328, elements: !1852)
!1852 = !{!1853}
!1853 = !DISubrange(count: 52)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1251, file: !52, line: 875, baseType: !1855, size: 1280, offset: 6592)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 1280, elements: !1333)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1251, file: !52, line: 877, baseType: !1857, size: 64, offset: 7872)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1251, file: !52, line: 880, baseType: !1860, size: 1088, offset: 7936)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1861, line: 72, baseType: !1862)
!1861 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1861, line: 23, size: 1088, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1871, !1872, !1873, !1874, !1901, !1902, !1903}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1862, file: !1861, line: 28, baseType: !547, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1862, file: !1861, line: 38, baseType: !797, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1862, file: !1861, line: 40, baseType: !443, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1862, file: !1861, line: 43, baseType: !1004, size: 320, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1862, file: !1861, line: 44, baseType: !1869, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1861, line: 44, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1861, line: 48, baseType: !443, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1862, file: !1861, line: 59, baseType: !791, size: 256, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1862, file: !1861, line: 60, baseType: !465, size: 64, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1862, file: !1861, line: 61, baseType: !1875, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1878, line: 13, size: 1216, elements: !1879)
!1878 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1877, file: !1878, line: 14, baseType: !465, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1877, file: !1878, line: 15, baseType: !443, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1877, file: !1878, line: 17, baseType: !443, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1877, file: !1878, line: 17, baseType: !443, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1877, file: !1878, line: 18, baseType: !443, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1877, file: !1878, line: 18, baseType: !443, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1877, file: !1878, line: 19, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1877, file: !1878, line: 21, baseType: !429, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1877, file: !1878, line: 23, baseType: !429, size: 64, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1877, file: !1878, line: 24, baseType: !429, size: 64, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1877, file: !1878, line: 25, baseType: !429, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1877, file: !1878, line: 26, baseType: !429, size: 64, offset: 704)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1877, file: !1878, line: 27, baseType: !429, size: 64, offset: 768)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1877, file: !1878, line: 28, baseType: !429, size: 64, offset: 832)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1877, file: !1878, line: 29, baseType: !429, size: 64, offset: 896)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1877, file: !1878, line: 30, baseType: !429, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1877, file: !1878, line: 31, baseType: !429, size: 64, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1877, file: !1878, line: 32, baseType: !429, size: 64, offset: 1088)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1877, file: !1878, line: 33, baseType: !429, size: 64, offset: 1152)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1862, file: !1861, line: 63, baseType: !343, size: 32, offset: 1024)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1862, file: !1861, line: 69, baseType: !361, size: 16, offset: 1056)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1862, file: !1861, line: 70, baseType: !1904, size: 16, offset: 1072)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !352, line: 18, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !354, line: 23, baseType: !1427)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !52, line: 882, baseType: !443, size: 64, offset: 9024)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1251, file: !52, line: 885, baseType: !323, size: 32, offset: 9088)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1251, file: !52, line: 886, baseType: !1909, size: 64, offset: 9152)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1251, file: !52, line: 901, baseType: !1539, size: 64, offset: 9216)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1251, file: !52, line: 904, baseType: !1274, size: 64, offset: 9280)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1251, file: !52, line: 906, baseType: !1914, size: 64, offset: 9344)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1251, file: !52, line: 930, baseType: !343, size: 32, offset: 9408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1251, file: !52, line: 933, baseType: !343, size: 32, offset: 9440)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1251, file: !52, line: 935, baseType: !1919, size: 64, offset: 9472)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !166, line: 103, size: 64, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1919, file: !166, line: 104, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !166, line: 101, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1251, file: !52, line: 940, baseType: !795, size: 64, offset: 9536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1251, file: !52, line: 942, baseType: !1926, size: 256, offset: 9600)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !191, line: 98, size: 256, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1926, file: !191, line: 99, baseType: !795, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1926, file: !191, line: 100, baseType: !294, size: 128, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1926, file: !191, line: 101, baseType: !1931, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !191, line: 21, baseType: !1932)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1248, file: !52, line: 986, baseType: !1937, offset: 10240)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, elements: !1352)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1235, file: !52, line: 640, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1807, line: 297, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1807, line: 297, size: 64, elements: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1940, file: !1807, line: 297, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1812, line: 19, baseType: !443)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !52, line: 646, baseType: !1945, size: 64, offset: 256)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !52, line: 646, size: 64, elements: !1946)
!1946 = !{!1947, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1945, file: !52, line: 647, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !443)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1945, file: !52, line: 648, baseType: !1949, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1235, file: !52, line: 666, baseType: !100, size: 32, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1235, file: !52, line: 667, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !1955)
!1955 = !{!1956}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !52, line: 580, baseType: !1004, size: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1235, file: !52, line: 670, baseType: !1185, size: 8, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1235, file: !52, line: 681, baseType: !1959, size: 256, offset: 512)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !52, line: 678, size: 256, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1959, file: !52, line: 679, baseType: !1401, size: 192, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1959, file: !52, line: 680, baseType: !443, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1235, file: !52, line: 689, baseType: !294, size: 128, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1235, file: !52, line: 691, baseType: !1965, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1235, file: !52, line: 694, baseType: !1968, size: 64, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1228, line: 563, size: 1024, elements: !1971)
!1971 = !{!1972, !1976, !1977, !1981, !1985, !1989, !1990, !1994, !1998, !2002, !2003, !2004, !2008, !2012, !2018, !2022}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1970, file: !1228, line: 564, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1234}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1970, file: !1228, line: 569, baseType: !1973, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1970, file: !1228, line: 571, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!100, !1234, !443}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1970, file: !1228, line: 572, baseType: !1982, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!100, !1234}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1970, file: !1228, line: 578, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!100, !1234, !443, !443, !443}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1970, file: !1228, line: 580, baseType: !1222, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1970, file: !1228, line: 581, baseType: !1991, size: 64, offset: 384)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1225, !1226, !13}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1970, file: !1228, line: 582, baseType: !1995, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1225, !1226, !443, !443}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1970, file: !1228, line: 584, baseType: !1999, size: 64, offset: 512)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!443, !1234}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1970, file: !1228, line: 588, baseType: !1222, size: 64, offset: 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1970, file: !1228, line: 591, baseType: !1222, size: 64, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1970, file: !1228, line: 597, baseType: !2005, size: 64, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!100, !1234, !443, !465, !100, !100}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !1228, line: 603, baseType: !2009, size: 64, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!312, !1234}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1970, file: !1228, line: 613, baseType: !2013, size: 64, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!100, !1234, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1970, file: !1228, line: 625, baseType: !2019, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!2016, !1234, !443}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1970, file: !1228, line: 633, baseType: !2023, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1104, !1234, !443}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1235, file: !52, line: 697, baseType: !443, size: 64, offset: 1024)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1235, file: !52, line: 699, baseType: !1274, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1235, file: !52, line: 700, baseType: !465, size: 64, offset: 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1235, file: !52, line: 711, baseType: !795, size: 64, offset: 1216)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1235, file: !52, line: 717, baseType: !2016, size: 64, offset: 1280)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1235, file: !52, line: 722, baseType: !2032, offset: 1344)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !677)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1231, file: !1228, line: 515, baseType: !856, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1231, file: !1228, line: 516, baseType: !443, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1231, file: !1228, line: 517, baseType: !443, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1231, file: !1228, line: 518, baseType: !443, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1227, file: !1228, line: 520, baseType: !51, size: 32, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1227, file: !1228, line: 522, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1812, line: 22, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 22, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2041, file: !1812, line: 22, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1812, line: 15, baseType: !443)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1227, file: !1228, line: 524, baseType: !2046, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1807, line: 372, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 372, size: 64, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2048, file: !1807, line: 372, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1812, line: 16, baseType: !443)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !1228, line: 527, baseType: !2053, size: 64, offset: 512)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1227, file: !1228, line: 527, size: 64, elements: !2054)
!2054 = !{!2055, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2053, file: !1228, line: 528, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1812, line: 21, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 21, size: 64, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2057, file: !1812, line: 21, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1812, line: 14, baseType: !443)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2053, file: !1228, line: 529, baseType: !2040, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1227, file: !1228, line: 534, baseType: !1104, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1227, file: !1228, line: 535, baseType: !1104, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1227, file: !1228, line: 541, baseType: !2065, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1227, file: !1228, line: 545, baseType: !2067, size: 64, offset: 768)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1227, file: !1228, line: 549, baseType: !2069, size: 64, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1807, line: 520, baseType: !1104)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1215, file: !36, line: 100, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!100, !1154, !443, !443, !100}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1155, file: !36, line: 134, baseType: !465, size: 64, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1155, file: !36, line: 135, baseType: !100, size: 32, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !36, line: 136, baseType: !2077, size: 128, offset: 1088)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !36, line: 136, size: 128, elements: !2078)
!2078 = !{!2079, !2085}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2077, file: !36, line: 137, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2081, line: 6, size: 128, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2080, file: !2081, line: 7, baseType: !547, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2080, file: !2081, line: 8, baseType: !547, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !36, line: 138, baseType: !2086)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !36, line: 138, elements: !2087)
!2087 = !{!2088, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2086, file: !36, line: 138, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !36, line: 138, elements: !677)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2086, file: !36, line: 138, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2080, elements: !1352)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1151, file: !52, line: 147, baseType: !465, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1109, file: !52, line: 161, baseType: !1189, size: 128, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !52, line: 164, baseType: !2095, size: 32, offset: 384)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !52, line: 164, size: 32, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2095, file: !52, line: 169, baseType: !343, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2095, file: !52, line: 177, baseType: !13, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1105, file: !52, line: 181, baseType: !343, size: 32, offset: 416)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1101, file: !1074, line: 33, baseType: !13, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1101, file: !1074, line: 34, baseType: !13, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1061, file: !232, line: 317, baseType: !2103, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2105, line: 678, size: 1984, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2106 = !{!2107, !2111, !2112, !2115, !2136, !2137, !2138, !2139, !2144, !2145, !2148}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2104, file: !2105, line: 679, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2110, line: 325, flags: DIFlagFwdDecl)
!2110 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2104, file: !2105, line: 680, baseType: !13, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2104, file: !2105, line: 685, baseType: !2113, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2105, line: 685, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2104, file: !2105, line: 687, baseType: !2116, size: 576, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2117, line: 26, baseType: !2118)
!2117 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2117, line: 16, size: 576, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2130, !2135}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2118, file: !2117, line: 17, baseType: !323, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2118, file: !2117, line: 18, baseType: !100, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2118, file: !2117, line: 19, baseType: !100, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2118, file: !2117, line: 20, baseType: !1761, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2118, file: !2117, line: 22, baseType: !465, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2118, file: !2117, line: 23, baseType: !2126, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2117, line: 13, baseType: !2128)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!465, !856, !465}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2118, file: !2117, line: 24, baseType: !2131, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2117, line: 14, baseType: !2133)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !465, !465}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2118, file: !2117, line: 25, baseType: !1337, size: 192, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2104, file: !2105, line: 688, baseType: !2116, size: 576, offset: 768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2104, file: !2105, line: 694, baseType: !13, size: 32, offset: 1344)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2104, file: !2105, line: 699, baseType: !323, size: 32, offset: 1376)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2104, file: !2105, line: 700, baseType: !2140, size: 128, offset: 1408)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2105, line: 550, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2140, file: !2105, line: 551, baseType: !1060, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2140, file: !2105, line: 552, baseType: !1060, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2104, file: !2105, line: 701, baseType: !1926, size: 256, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2104, file: !2105, line: 702, baseType: !2146, size: 64, offset: 1792)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !191, line: 18, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2104, file: !2105, line: 707, baseType: !669, size: 128, offset: 1856)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1061, file: !232, line: 324, baseType: !2150, offset: 960)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, elements: !1352)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1054, file: !68, line: 1390, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!100, !1060, !1670, !13}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1054, file: !68, line: 1392, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!100, !1033, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !68, line: 115, baseType: !13)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1054, file: !68, line: 1393, baseType: !2161, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !1033}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1054, file: !68, line: 1394, baseType: !2165, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!100, !1026, !2159, !13, !443}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1054, file: !68, line: 1396, baseType: !2165, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1054, file: !68, line: 1398, baseType: !2170, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!13, !1033, !13}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1054, file: !68, line: 1400, baseType: !2161, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1054, file: !68, line: 1401, baseType: !2175, size: 64, offset: 512)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!100, !1026, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !2180, line: 324, size: 128, elements: !2181)
!2180 = !DIFile(filename: "./include/uapi/linux/hdreg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "adf93574a29e06a14be36853316fb289")
!2181 = !{!2182, !2183, !2184, !2185}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !2179, file: !2180, line: 325, baseType: !355, size: 8)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2179, file: !2180, line: 326, baseType: !355, size: 8, offset: 8)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cylinders", scope: !2179, file: !2180, line: 327, baseType: !363, size: 16, offset: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2179, file: !2180, line: 328, baseType: !443, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1054, file: !68, line: 1402, baseType: !2187, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!100, !1026, !1185}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1054, file: !68, line: 1403, baseType: !2161, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1054, file: !68, line: 1405, baseType: !2192, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !1026, !443}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1054, file: !68, line: 1406, baseType: !2196, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!100, !1033, !1030, !13, !2199, !465}
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !68, line: 342, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!100, !2203, !13, !465}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2205, line: 106, size: 512, elements: !2206)
!2205 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2216, !2217}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2204, file: !2205, line: 107, baseType: !548, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2204, file: !2205, line: 108, baseType: !548, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2204, file: !2205, line: 109, baseType: !548, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2204, file: !2205, line: 110, baseType: !353, size: 8, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2204, file: !2205, line: 111, baseType: !353, size: 8, offset: 200)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2204, file: !2205, line: 112, baseType: !353, size: 8, offset: 208)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2204, file: !2205, line: 113, baseType: !353, size: 8, offset: 216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2204, file: !2205, line: 114, baseType: !2215, size: 32, offset: 224)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 32, elements: !1333)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2204, file: !2205, line: 115, baseType: !548, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2204, file: !2205, line: 116, baseType: !2218, size: 192, offset: 320)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !2219)
!2219 = !{!2220}
!2220 = !DISubrange(count: 24)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1054, file: !68, line: 1408, baseType: !2222, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!393, !1033, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1054, file: !68, line: 1410, baseType: !2227, size: 64, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!100, !1033, !2230, !67}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1054, file: !68, line: 1412, baseType: !289, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1054, file: !68, line: 1413, baseType: !2233, size: 64, offset: 1024)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !68, line: 37, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1054, file: !68, line: 1420, baseType: !2237, size: 64, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!100, !1033, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1034, file: !68, line: 146, baseType: !2242, size: 64, offset: 640)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !68, line: 391, size: 7296, elements: !2244)
!2244 = !{!2245, !2246, !2249, !2250, !2253, !2256, !2257, !2261, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2750, !2754, !2755, !2756, !2757, !2790, !2791, !2792, !2795, !2798, !2799, !2800, !2801, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2820, !2821, !2822, !2823, !2824, !2825}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2243, file: !68, line: 392, baseType: !1674, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2243, file: !68, line: 393, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !68, line: 30, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2243, file: !68, line: 395, baseType: !1168, size: 128, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2243, file: !68, line: 397, baseType: !2251, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !68, line: 39, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2243, file: !68, line: 398, baseType: !2254, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !68, line: 38, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2243, file: !68, line: 399, baseType: !791, size: 256, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2243, file: !68, line: 401, baseType: !2258, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !68, line: 401, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2243, file: !68, line: 404, baseType: !2262, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !68, line: 404, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2243, file: !68, line: 406, baseType: !13, size: 32, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2243, file: !68, line: 409, baseType: !1044, size: 128, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2243, file: !68, line: 410, baseType: !13, size: 32, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2243, file: !68, line: 416, baseType: !465, size: 64, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2243, file: !68, line: 421, baseType: !443, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2243, file: !68, line: 426, baseType: !343, size: 32, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2243, file: !68, line: 432, baseType: !100, size: 32, offset: 1184)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2243, file: !68, line: 434, baseType: !323, size: 32, offset: 1216)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2243, file: !68, line: 436, baseType: !1033, size: 64, offset: 1280)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2243, file: !68, line: 438, baseType: !1324, size: 32, offset: 1344)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2243, file: !68, line: 443, baseType: !316, size: 64, offset: 1408)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2243, file: !68, line: 450, baseType: !2276, size: 64, offset: 1472)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 705, size: 5824, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2284, !2285, !2339, !2409, !2410, !2411, !2412, !2413, !2420, !2598, !2611, !2621, !2625, !2627, !2628, !2629, !2633, !2640, !2641, !2644, !2647, !2651, !2654, !2655, !2656, !2657, !2658, !2659, !2716, !2717, !2718, !2721, !2724, !2733, !2734, !2735, !2736, !2737, !2738}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2277, file: !80, line: 706, baseType: !308, size: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2277, file: !80, line: 707, baseType: !2276, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2277, file: !80, line: 709, baseType: !2282, size: 64, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 37, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2277, file: !80, line: 711, baseType: !312, size: 64, offset: 640)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2277, file: !80, line: 712, baseType: !2286, size: 64, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2288)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 89, size: 384, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2298, !2304, !2308}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2288, file: !80, line: 90, baseType: !312, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2288, file: !80, line: 91, baseType: !445, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2288, file: !80, line: 92, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!100, !2296, !388}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2288, file: !80, line: 93, baseType: !2299, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!393, !2296, !2225, !2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2288, file: !80, line: 95, baseType: !2305, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2276}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2288, file: !80, line: 97, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 286, size: 1472, elements: !2312)
!2312 = !{!2313, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2311, file: !92, line: 287, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!100, !2276}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2311, file: !92, line: 288, baseType: !2305, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2311, file: !92, line: 289, baseType: !2314, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2311, file: !92, line: 290, baseType: !2314, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2311, file: !92, line: 291, baseType: !2314, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2311, file: !92, line: 292, baseType: !2314, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2311, file: !92, line: 293, baseType: !2314, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2311, file: !92, line: 294, baseType: !2314, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2311, file: !92, line: 295, baseType: !2314, size: 64, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2311, file: !92, line: 296, baseType: !2314, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2311, file: !92, line: 297, baseType: !2314, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2311, file: !92, line: 298, baseType: !2314, size: 64, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2311, file: !92, line: 299, baseType: !2314, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2311, file: !92, line: 300, baseType: !2314, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2311, file: !92, line: 301, baseType: !2314, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2311, file: !92, line: 302, baseType: !2314, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2311, file: !92, line: 303, baseType: !2314, size: 64, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2311, file: !92, line: 304, baseType: !2314, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2311, file: !92, line: 305, baseType: !2314, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2311, file: !92, line: 306, baseType: !2314, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2311, file: !92, line: 307, baseType: !2314, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2311, file: !92, line: 308, baseType: !2314, size: 64, offset: 1344)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2311, file: !92, line: 309, baseType: !2314, size: 64, offset: 1408)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2277, file: !80, line: 714, baseType: !2340, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2343, line: 80, size: 1344, elements: !2344)
!2343 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2408}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2342, file: !2343, line: 81, baseType: !312, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2342, file: !2343, line: 82, baseType: !312, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2342, file: !2343, line: 83, baseType: !445, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2342, file: !2343, line: 84, baseType: !445, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2342, file: !2343, line: 85, baseType: !445, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2342, file: !2343, line: 87, baseType: !2351, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!100, !2276, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 96, size: 1152, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363, !2367, !2371, !2372, !2373, !2374, !2375, !2383, !2384, !2385, !2386, !2387, !2388}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2355, file: !74, line: 97, baseType: !312, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2355, file: !74, line: 98, baseType: !2340, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2355, file: !74, line: 100, baseType: !289, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2355, file: !74, line: 101, baseType: !312, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2355, file: !74, line: 103, baseType: !1185, size: 8, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2355, file: !74, line: 104, baseType: !73, size: 32, offset: 288)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2355, file: !74, line: 106, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !74, line: 106, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2355, file: !74, line: 107, baseType: !2368, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !74, line: 107, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2355, file: !74, line: 109, baseType: !2314, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2355, file: !74, line: 110, baseType: !2305, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2355, file: !74, line: 111, baseType: !2314, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2355, file: !74, line: 112, baseType: !2305, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2355, file: !74, line: 113, baseType: !2376, size: 64, offset: 704)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!100, !2276, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 60, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 58, size: 32, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2380, file: !92, line: 59, baseType: !100, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2355, file: !74, line: 114, baseType: !2314, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2355, file: !74, line: 115, baseType: !445, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2355, file: !74, line: 116, baseType: !445, size: 64, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2355, file: !74, line: 118, baseType: !2309, size: 64, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2355, file: !74, line: 119, baseType: !2305, size: 64, offset: 1024)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2355, file: !74, line: 121, baseType: !2389, size: 64, offset: 1088)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 121, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2342, file: !2343, line: 88, baseType: !2293, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2342, file: !2343, line: 89, baseType: !2314, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2342, file: !2343, line: 90, baseType: !2305, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2342, file: !2343, line: 91, baseType: !2305, size: 64, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2342, file: !2343, line: 92, baseType: !2305, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2342, file: !2343, line: 94, baseType: !2314, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2342, file: !2343, line: 95, baseType: !2314, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2342, file: !2343, line: 97, baseType: !2376, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2342, file: !2343, line: 98, baseType: !2314, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2342, file: !2343, line: 100, baseType: !2314, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2342, file: !2343, line: 102, baseType: !2314, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2342, file: !2343, line: 103, baseType: !2305, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2342, file: !2343, line: 105, baseType: !2309, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2342, file: !2343, line: 107, baseType: !2405, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2343, line: 107, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2342, file: !2343, line: 109, baseType: !1185, size: 8, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2277, file: !80, line: 715, baseType: !2354, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2277, file: !80, line: 717, baseType: !465, size: 64, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2277, file: !80, line: 719, baseType: !465, size: 64, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2277, file: !80, line: 721, baseType: !791, size: 256, offset: 1024)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2277, file: !80, line: 725, baseType: !2414, size: 448, offset: 1280)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 517, size: 448, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2414, file: !80, line: 518, baseType: !294, size: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2414, file: !80, line: 519, baseType: !294, size: 128, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2414, file: !80, line: 520, baseType: !294, size: 128, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2414, file: !80, line: 521, baseType: !79, size: 32, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2277, file: !80, line: 726, baseType: !2421, size: 2496, offset: 1728)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 663, size: 2496, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2478, !2479, !2480, !2481, !2482, !2483, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2591, !2595}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2421, file: !92, line: 664, baseType: !2379, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2421, file: !92, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2421, file: !92, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2421, file: !92, line: 667, baseType: !1185, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2421, file: !92, line: 668, baseType: !1185, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2421, file: !92, line: 669, baseType: !1185, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2421, file: !92, line: 670, baseType: !1185, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2421, file: !92, line: 671, baseType: !1185, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2421, file: !92, line: 672, baseType: !1185, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2421, file: !92, line: 673, baseType: !1185, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2421, file: !92, line: 674, baseType: !1185, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2421, file: !92, line: 675, baseType: !543, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2421, file: !92, line: 676, baseType: !323, size: 32, offset: 96)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2421, file: !92, line: 678, baseType: !294, size: 128, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2421, file: !92, line: 679, baseType: !1199, size: 256, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2421, file: !92, line: 680, baseType: !2439, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2441, line: 43, size: 1536, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2450, !2462, !2463, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2440, file: !2441, line: 44, baseType: !312, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2440, file: !2441, line: 45, baseType: !100, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2440, file: !2441, line: 46, baseType: !294, size: 128, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2440, file: !2441, line: 47, baseType: !323, size: 32, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2440, file: !2441, line: 48, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 629, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2440, file: !2441, line: 49, baseType: !2451, size: 320, offset: 384)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2452, line: 11, size: 320, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2453 = !{!2454, !2455, !2456, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2451, file: !2452, line: 16, baseType: !669, size: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2451, file: !2452, line: 17, baseType: !443, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2451, file: !2452, line: 18, baseType: !2457, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2452, line: 19, baseType: !543, size: 32, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2440, file: !2441, line: 50, baseType: !443, size: 64, offset: 704)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2440, file: !2441, line: 51, baseType: !2464, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2465, line: 29, baseType: !801)
!2465 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2440, file: !2441, line: 52, baseType: !2464, size: 64, offset: 832)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2440, file: !2441, line: 53, baseType: !2464, size: 64, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2440, file: !2441, line: 54, baseType: !2464, size: 64, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2440, file: !2441, line: 55, baseType: !2464, size: 64, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2440, file: !2441, line: 56, baseType: !443, size: 64, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2440, file: !2441, line: 57, baseType: !443, size: 64, offset: 1152)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2440, file: !2441, line: 58, baseType: !443, size: 64, offset: 1216)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2440, file: !2441, line: 59, baseType: !443, size: 64, offset: 1280)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2440, file: !2441, line: 60, baseType: !443, size: 64, offset: 1344)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2440, file: !2441, line: 61, baseType: !2276, size: 64, offset: 1408)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2440, file: !2441, line: 62, baseType: !1185, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2440, file: !2441, line: 63, baseType: !1185, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2421, file: !92, line: 681, baseType: !1185, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2421, file: !92, line: 682, baseType: !1185, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2421, file: !92, line: 683, baseType: !1185, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2421, file: !92, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2421, file: !92, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2421, file: !92, line: 690, baseType: !2484, size: 512, offset: 640)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !87, line: 118, size: 512, elements: !2485)
!2485 = !{!2486, !2492, !2493, !2498, !2553, !2554, !2555, !2556}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2484, file: !87, line: 119, baseType: !2487, size: 256)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2488, line: 9, size: 256, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2487, file: !2488, line: 10, baseType: !1401, size: 192, align: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2487, file: !2488, line: 11, baseType: !2464, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2484, file: !87, line: 120, baseType: !2464, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2484, file: !87, line: 121, baseType: !2494, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!86, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2484, file: !87, line: 122, baseType: !2499, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !87, line: 159, size: 512, align: 512, elements: !2501)
!2501 = !{!2502, !2527, !2528, !2531, !2536, !2537, !2548, !2552}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2500, file: !87, line: 160, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !87, line: 215, size: 4608, align: 512, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2504, file: !87, line: 216, baseType: !804, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2504, file: !87, line: 217, baseType: !13, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2504, file: !87, line: 218, baseType: !13, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2504, file: !87, line: 219, baseType: !13, size: 32, offset: 96)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2504, file: !87, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2504, file: !87, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2504, file: !87, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2504, file: !87, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2504, file: !87, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2504, file: !87, line: 226, baseType: !13, size: 32, offset: 160)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2504, file: !87, line: 227, baseType: !363, size: 16, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2504, file: !87, line: 228, baseType: !363, size: 16, offset: 208)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2504, file: !87, line: 229, baseType: !13, size: 32, offset: 224)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2504, file: !87, line: 235, baseType: !2464, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2504, file: !87, line: 236, baseType: !2497, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2504, file: !87, line: 237, baseType: !2464, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2504, file: !87, line: 238, baseType: !2497, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2504, file: !87, line: 239, baseType: !2524, size: 4096, align: 512, offset: 512)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, size: 4096, align: 512, elements: !2525)
!2525 = !{!2526}
!2526 = !DISubrange(count: 8)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2500, file: !87, line: 161, baseType: !13, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2500, file: !87, line: 162, baseType: !2529, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !295, line: 32, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !427, line: 96, baseType: !100)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2500, file: !87, line: 163, baseType: !2532, size: 32, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !516, line: 274, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !516, line: 274, size: 32, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2533, file: !516, line: 274, baseType: !520, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2500, file: !87, line: 164, baseType: !2497, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2500, file: !87, line: 165, baseType: !2538, size: 128, offset: 256)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2488, line: 14, size: 128, elements: !2539)
!2539 = !{!2540}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2538, file: !2488, line: 15, baseType: !2541, size: 128)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1402, line: 26, size: 128, elements: !2542)
!2542 = !{!2543, !2547}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2541, file: !1402, line: 27, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1402, line: 12, size: 64, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2544, file: !1402, line: 13, baseType: !1406, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2541, file: !1402, line: 28, baseType: !1406, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2500, file: !87, line: 166, baseType: !2549, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!2464}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2500, file: !87, line: 167, baseType: !2464, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2484, file: !87, line: 123, baseType: !351, size: 8, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2484, file: !87, line: 124, baseType: !351, size: 8, offset: 456)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2484, file: !87, line: 125, baseType: !351, size: 8, offset: 464)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2484, file: !87, line: 126, baseType: !351, size: 8, offset: 472)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2421, file: !92, line: 691, baseType: !547, size: 64, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2421, file: !92, line: 692, baseType: !1926, size: 256, offset: 1216)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2421, file: !92, line: 693, baseType: !1337, size: 192, offset: 1472)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2421, file: !92, line: 694, baseType: !2448, size: 64, offset: 1664)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2421, file: !92, line: 695, baseType: !343, size: 32, offset: 1728)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2421, file: !92, line: 696, baseType: !343, size: 32, offset: 1760)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2421, file: !92, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2421, file: !92, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2421, file: !92, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2421, file: !92, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2421, file: !92, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2421, file: !92, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2421, file: !92, line: 703, baseType: !1185, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2421, file: !92, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2421, file: !92, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2421, file: !92, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2421, file: !92, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2421, file: !92, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2421, file: !92, line: 709, baseType: !13, size: 32, offset: 1824)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2421, file: !92, line: 710, baseType: !91, size: 32, offset: 1856)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2421, file: !92, line: 711, baseType: !99, size: 32, offset: 1888)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2421, file: !92, line: 712, baseType: !99, size: 32, offset: 1920)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2421, file: !92, line: 713, baseType: !100, size: 32, offset: 1952)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2421, file: !92, line: 714, baseType: !100, size: 32, offset: 1984)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2421, file: !92, line: 715, baseType: !547, size: 64, offset: 2048)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2421, file: !92, line: 716, baseType: !547, size: 64, offset: 2112)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2421, file: !92, line: 717, baseType: !547, size: 64, offset: 2176)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2421, file: !92, line: 718, baseType: !547, size: 64, offset: 2240)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2421, file: !92, line: 720, baseType: !2586, size: 64, offset: 2304)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 632, size: 64, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !92, line: 633, baseType: !323, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2587, file: !92, line: 634, baseType: !13, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2421, file: !92, line: 721, baseType: !2592, size: 64, offset: 2368)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2276, !1394}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2421, file: !92, line: 722, baseType: !2596, size: 64, offset: 2432)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 722, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2277, file: !80, line: 727, baseType: !2599, size: 64, offset: 4224)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 742, size: 1792, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2608, !2609, !2610}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2600, file: !92, line: 743, baseType: !2311, size: 1472)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2600, file: !92, line: 744, baseType: !2314, size: 64, offset: 1472)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2600, file: !92, line: 745, baseType: !2605, size: 64, offset: 1536)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2276, !1185}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2600, file: !92, line: 746, baseType: !2314, size: 64, offset: 1600)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2600, file: !92, line: 747, baseType: !2305, size: 64, offset: 1664)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2600, file: !92, line: 748, baseType: !2305, size: 64, offset: 1728)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2277, file: !80, line: 736, baseType: !2612, size: 128, offset: 4288)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !80, line: 529, size: 128, elements: !2613)
!2613 = !{!2614, !2618}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2612, file: !80, line: 531, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2617, line: 13, flags: DIFlagFwdDecl)
!2617 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2612, file: !80, line: 532, baseType: !2619, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !80, line: 49, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2277, file: !80, line: 738, baseType: !2622, size: 64, offset: 4416)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 738, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2277, file: !80, line: 740, baseType: !2626, size: 64, offset: 4480)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2277, file: !80, line: 741, baseType: !547, size: 64, offset: 4544)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2277, file: !80, line: 746, baseType: !547, size: 64, offset: 4608)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2277, file: !80, line: 747, baseType: !2630, size: 64, offset: 4672)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 747, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2277, file: !80, line: 749, baseType: !2634, size: 64, offset: 4736)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 428, size: 128, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2635, file: !80, line: 433, baseType: !13, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2635, file: !80, line: 434, baseType: !13, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2635, file: !80, line: 435, baseType: !443, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2277, file: !80, line: 751, baseType: !294, size: 128, offset: 4800)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2277, file: !80, line: 762, baseType: !2642, size: 64, offset: 4928)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !80, line: 762, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2277, file: !80, line: 770, baseType: !2645, offset: 4992)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2646, line: 5, elements: !677)
!2646 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2277, file: !80, line: 772, baseType: !2648, size: 64, offset: 4992)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2650, line: 18, flags: DIFlagFwdDecl)
!2650 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2277, file: !80, line: 773, baseType: !2652, size: 64, offset: 5056)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2343, line: 22, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2277, file: !80, line: 776, baseType: !100, size: 32, offset: 5120)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2277, file: !80, line: 778, baseType: !630, size: 32, offset: 5152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2277, file: !80, line: 779, baseType: !543, size: 32, offset: 5184)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2277, file: !80, line: 781, baseType: !323, size: 32, offset: 5216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2277, file: !80, line: 782, baseType: !294, size: 128, offset: 5248)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2277, file: !80, line: 784, baseType: !2660, size: 64, offset: 5376)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2663, line: 52, size: 768, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2673, !2677, !2678, !2679, !2707, !2711, !2715}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2662, file: !2663, line: 53, baseType: !312, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2662, file: !2663, line: 55, baseType: !445, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2662, file: !2663, line: 56, baseType: !445, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2662, file: !2663, line: 58, baseType: !2293, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2662, file: !2663, line: 59, baseType: !2670, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!393, !2296, !2225}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2662, file: !2663, line: 61, baseType: !2674, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !2660}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2662, file: !2663, line: 62, baseType: !2305, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2662, file: !2663, line: 64, baseType: !2314, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2662, file: !2663, line: 66, baseType: !2680, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !108, line: 39, size: 384, elements: !2683)
!2683 = !{!2684, !2685, !2689, !2693, !2699, !2703}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !108, line: 40, baseType: !107, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2682, file: !108, line: 41, baseType: !2686, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!1185}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2682, file: !108, line: 42, baseType: !2690, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!465}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2682, file: !108, line: 43, baseType: !2694, size: 64, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!1887, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !108, line: 19, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2682, file: !108, line: 44, baseType: !2700, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!1887}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2682, file: !108, line: 45, baseType: !2704, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !465}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2662, file: !2663, line: 67, baseType: !2708, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!1887, !2296}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2662, file: !2663, line: 69, baseType: !2712, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2296, !2302, !2303}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2662, file: !2663, line: 71, baseType: !2309, size: 64, offset: 704)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2277, file: !80, line: 785, baseType: !445, size: 64, offset: 5440)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2277, file: !80, line: 787, baseType: !2305, size: 64, offset: 5504)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2277, file: !80, line: 788, baseType: !2719, size: 64, offset: 5568)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 46, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2277, file: !80, line: 789, baseType: !2722, size: 64, offset: 5632)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 48, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2277, file: !80, line: 791, baseType: !2725, size: 64, offset: 5696)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !80, line: 597, size: 128, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2726, file: !80, line: 598, baseType: !113, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2726, file: !80, line: 599, baseType: !122, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2726, file: !80, line: 600, baseType: !127, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2726, file: !80, line: 601, baseType: !1185, size: 8, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2726, file: !80, line: 602, baseType: !1185, size: 8, offset: 104)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2277, file: !80, line: 793, baseType: !132, size: 32, offset: 5760)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2277, file: !80, line: 795, baseType: !1185, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2277, file: !80, line: 796, baseType: !1185, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2277, file: !80, line: 797, baseType: !1185, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2277, file: !80, line: 798, baseType: !1185, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2277, file: !80, line: 799, baseType: !1185, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2243, file: !68, line: 451, baseType: !99, size: 32, offset: 1536)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2243, file: !68, line: 457, baseType: !443, size: 64, offset: 1600)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2243, file: !68, line: 459, baseType: !13, size: 32, offset: 1664)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2243, file: !68, line: 466, baseType: !13, size: 32, offset: 1696)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2243, file: !68, line: 468, baseType: !2451, size: 320, offset: 1728)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2243, file: !68, line: 469, baseType: !1926, size: 256, offset: 2048)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2243, file: !68, line: 471, baseType: !343, size: 32, offset: 2304)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2243, file: !68, line: 473, baseType: !2747, size: 64, offset: 2368)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !68, line: 473, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2243, file: !68, line: 475, baseType: !294, size: 128, offset: 2432)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2243, file: !68, line: 477, baseType: !2751, size: 64, offset: 2560)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !2752)
!2752 = !{!2753}
!2753 = !DISubrange(count: 1)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2243, file: !68, line: 478, baseType: !1087, size: 64, offset: 2624)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2243, file: !68, line: 479, baseType: !294, size: 128, offset: 2688)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2243, file: !68, line: 480, baseType: !791, size: 256, offset: 2816)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2243, file: !68, line: 483, baseType: !2758, size: 960, offset: 3072)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !68, line: 300, size: 960, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2758, file: !68, line: 301, baseType: !138, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2758, file: !68, line: 302, baseType: !443, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2758, file: !68, line: 303, baseType: !443, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2758, file: !68, line: 305, baseType: !13, size: 32, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2758, file: !68, line: 306, baseType: !13, size: 32, offset: 224)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2758, file: !68, line: 307, baseType: !13, size: 32, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2758, file: !68, line: 308, baseType: !13, size: 32, offset: 288)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2758, file: !68, line: 309, baseType: !13, size: 32, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2758, file: !68, line: 310, baseType: !13, size: 32, offset: 352)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2758, file: !68, line: 311, baseType: !13, size: 32, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2758, file: !68, line: 312, baseType: !13, size: 32, offset: 416)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2758, file: !68, line: 313, baseType: !13, size: 32, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2758, file: !68, line: 314, baseType: !13, size: 32, offset: 480)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2758, file: !68, line: 315, baseType: !13, size: 32, offset: 512)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2758, file: !68, line: 316, baseType: !13, size: 32, offset: 544)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2758, file: !68, line: 317, baseType: !13, size: 32, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2758, file: !68, line: 318, baseType: !13, size: 32, offset: 608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2758, file: !68, line: 319, baseType: !13, size: 32, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2758, file: !68, line: 320, baseType: !13, size: 32, offset: 672)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2758, file: !68, line: 321, baseType: !13, size: 32, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2758, file: !68, line: 322, baseType: !13, size: 32, offset: 736)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2758, file: !68, line: 323, baseType: !13, size: 32, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2758, file: !68, line: 325, baseType: !363, size: 16, offset: 800)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2758, file: !68, line: 326, baseType: !363, size: 16, offset: 816)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2758, file: !68, line: 327, baseType: !363, size: 16, offset: 832)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2758, file: !68, line: 329, baseType: !355, size: 8, offset: 848)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2758, file: !68, line: 330, baseType: !355, size: 8, offset: 856)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2758, file: !68, line: 331, baseType: !355, size: 8, offset: 864)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2758, file: !68, line: 332, baseType: !142, size: 32, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2758, file: !68, line: 339, baseType: !13, size: 32, offset: 928)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2243, file: !68, line: 485, baseType: !13, size: 32, offset: 4032)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2243, file: !68, line: 487, baseType: !100, size: 32, offset: 4064)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2243, file: !68, line: 489, baseType: !2793, size: 64, offset: 4096)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !68, line: 31, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2243, file: !68, line: 494, baseType: !2796, size: 64, offset: 4160)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !68, line: 35, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2243, file: !68, line: 495, baseType: !294, size: 128, offset: 4224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2243, file: !68, line: 497, baseType: !294, size: 128, offset: 4352)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2243, file: !68, line: 498, baseType: !323, size: 32, offset: 4480)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2243, file: !68, line: 499, baseType: !2802, size: 704, offset: 4544)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !191, line: 111, size: 704, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2802, file: !191, line: 112, baseType: !1926, size: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2802, file: !191, line: 113, baseType: !2451, size: 320, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2802, file: !191, line: 116, baseType: !2146, size: 64, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2802, file: !191, line: 117, baseType: !100, size: 32, offset: 640)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2243, file: !68, line: 501, baseType: !791, size: 256, offset: 5248)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2243, file: !68, line: 502, baseType: !791, size: 256, offset: 5504)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2243, file: !68, line: 508, baseType: !294, size: 128, offset: 5760)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2243, file: !68, line: 509, baseType: !323, size: 32, offset: 5888)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2243, file: !68, line: 511, baseType: !100, size: 32, offset: 5920)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2243, file: !68, line: 517, baseType: !1189, size: 128, align: 64, offset: 5952)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2243, file: !68, line: 518, baseType: !1337, size: 192, offset: 6080)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2243, file: !68, line: 523, baseType: !791, size: 256, offset: 6272)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2243, file: !68, line: 525, baseType: !100, size: 32, offset: 6528)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2243, file: !68, line: 527, baseType: !2818, size: 64, offset: 6592)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !68, line: 527, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2243, file: !68, line: 528, baseType: !294, size: 128, offset: 6656)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2243, file: !68, line: 530, baseType: !509, size: 64, offset: 6784)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2243, file: !68, line: 531, baseType: !509, size: 64, offset: 6848)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2243, file: !68, line: 532, baseType: !509, size: 64, offset: 6912)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2243, file: !68, line: 536, baseType: !791, size: 256, offset: 6976)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2243, file: !68, line: 538, baseType: !1185, size: 8, offset: 7232)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1034, file: !68, line: 147, baseType: !465, size: 64, offset: 704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1034, file: !68, line: 149, baseType: !2104, size: 1984, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1034, file: !68, line: 151, baseType: !100, size: 32, offset: 2752)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1034, file: !68, line: 152, baseType: !443, size: 64, offset: 2816)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1034, file: !68, line: 161, baseType: !791, size: 256, offset: 2880)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1034, file: !68, line: 162, baseType: !13, size: 32, offset: 3136)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1034, file: !68, line: 164, baseType: !2833, size: 64, offset: 3200)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !148, line: 163, size: 6848, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2886, !2887, !2888, !2889, !2891, !2892, !2893}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2834, file: !148, line: 164, baseType: !547, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2834, file: !148, line: 165, baseType: !1401, size: 192, align: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2834, file: !148, line: 166, baseType: !294, size: 128, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2834, file: !148, line: 167, baseType: !443, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2834, file: !148, line: 168, baseType: !443, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2834, file: !148, line: 170, baseType: !2842, size: 32, offset: 512)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2843, line: 19, size: 32, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2842, file: !2843, line: 20, baseType: !1324, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2834, file: !148, line: 171, baseType: !13, size: 32, offset: 544)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2834, file: !148, line: 172, baseType: !13, size: 32, offset: 576)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2834, file: !148, line: 173, baseType: !13, size: 32, offset: 608)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2834, file: !148, line: 173, baseType: !13, size: 32, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2834, file: !148, line: 179, baseType: !795, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2834, file: !148, line: 184, baseType: !443, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2834, file: !148, line: 186, baseType: !2853, size: 4672, offset: 832)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !148, line: 105, size: 4672, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2853, file: !148, line: 106, baseType: !2833, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2853, file: !148, line: 108, baseType: !443, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2853, file: !148, line: 109, baseType: !443, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2853, file: !148, line: 111, baseType: !294, size: 128, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2853, file: !148, line: 112, baseType: !294, size: 128, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2853, file: !148, line: 113, baseType: !294, size: 128, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2853, file: !148, line: 114, baseType: !294, size: 128, offset: 576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2853, file: !148, line: 115, baseType: !323, size: 32, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2853, file: !148, line: 117, baseType: !343, size: 32, offset: 736)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2853, file: !148, line: 118, baseType: !1855, size: 1280, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2853, file: !148, line: 120, baseType: !443, size: 64, offset: 2048)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2853, file: !148, line: 121, baseType: !443, size: 64, offset: 2112)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2853, file: !148, line: 122, baseType: !443, size: 64, offset: 2176)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2853, file: !148, line: 123, baseType: !443, size: 64, offset: 2240)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2853, file: !148, line: 124, baseType: !443, size: 64, offset: 2304)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2853, file: !148, line: 132, baseType: !443, size: 64, offset: 2368)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2853, file: !148, line: 133, baseType: !443, size: 64, offset: 2432)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2853, file: !148, line: 135, baseType: !2873, size: 384, offset: 2496)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2874, line: 76, size: 384, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2873, file: !2874, line: 78, baseType: !1514, size: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2873, file: !2874, line: 80, baseType: !13, size: 32, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2873, file: !2874, line: 81, baseType: !804, size: 32, offset: 352)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2853, file: !148, line: 136, baseType: !100, size: 32, offset: 2880)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2853, file: !148, line: 137, baseType: !147, size: 32, offset: 2912)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2853, file: !148, line: 139, baseType: !323, size: 32, offset: 2944)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2853, file: !148, line: 140, baseType: !294, size: 128, offset: 3008)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2853, file: !148, line: 141, baseType: !2802, size: 704, offset: 3136)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2853, file: !148, line: 142, baseType: !2802, size: 704, offset: 3840)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2853, file: !148, line: 144, baseType: !294, size: 128, offset: 4544)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2834, file: !148, line: 187, baseType: !294, size: 128, offset: 5504)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2834, file: !148, line: 193, baseType: !1337, size: 192, offset: 5632)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2834, file: !148, line: 195, baseType: !2276, size: 64, offset: 5824)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2834, file: !148, line: 196, baseType: !2890, size: 512, offset: 5888)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !398)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2834, file: !148, line: 197, baseType: !2276, size: 64, offset: 6400)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2834, file: !148, line: 199, baseType: !2451, size: 320, offset: 6464)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2834, file: !148, line: 202, baseType: !509, size: 64, offset: 6784)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1034, file: !68, line: 165, baseType: !308, size: 512, offset: 3264)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1034, file: !68, line: 166, baseType: !316, size: 64, offset: 3776)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1034, file: !68, line: 168, baseType: !294, size: 128, offset: 3840)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1034, file: !68, line: 170, baseType: !2898, size: 64, offset: 3968)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !68, line: 170, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1034, file: !68, line: 171, baseType: !343, size: 32, offset: 4032)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1034, file: !68, line: 172, baseType: !2902, size: 64, offset: 4096)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !68, line: 104, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1034, file: !68, line: 197, baseType: !2905, size: 64, offset: 4160)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !68, line: 197, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1034, file: !68, line: 199, baseType: !100, size: 32, offset: 4224)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1034, file: !68, line: 200, baseType: !2909, size: 64, offset: 4288)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !68, line: 105, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1034, file: !68, line: 201, baseType: !2912, offset: 4352)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !676, line: 211, elements: !677)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1034, file: !68, line: 202, baseType: !547, size: 64, offset: 4352)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1034, file: !68, line: 203, baseType: !2159, size: 32, offset: 4416)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1034, file: !68, line: 209, baseType: !2916, size: 64, offset: 4480)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !68, line: 384, size: 576, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2917, file: !68, line: 385, baseType: !308, size: 512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2917, file: !68, line: 386, baseType: !1185, size: 8, offset: 512)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2917, file: !68, line: 387, baseType: !13, size: 32, offset: 544)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2917, file: !68, line: 388, baseType: !2923, offset: 576)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2924, elements: !1352)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !68, line: 378, size: 640, elements: !2925)
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2924, file: !68, line: 379, baseType: !308, size: 512)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2924, file: !68, line: 380, baseType: !1030, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2924, file: !68, line: 381, baseType: !1030, size: 64, offset: 576)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1027, file: !232, line: 44, baseType: !2242, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1027, file: !232, line: 45, baseType: !2931, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !232, line: 45, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1027, file: !232, line: 46, baseType: !443, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1027, file: !232, line: 47, baseType: !1185, size: 8, offset: 384)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1027, file: !232, line: 48, baseType: !351, size: 8, offset: 392)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1027, file: !232, line: 49, baseType: !1185, size: 8, offset: 400)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1027, file: !232, line: 50, baseType: !1185, size: 8, offset: 408)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1027, file: !232, line: 51, baseType: !630, size: 32, offset: 416)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1027, file: !232, line: 52, baseType: !343, size: 32, offset: 448)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1027, file: !232, line: 53, baseType: !323, size: 32, offset: 480)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1027, file: !232, line: 54, baseType: !474, size: 64, offset: 512)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1027, file: !232, line: 55, baseType: !465, size: 64, offset: 576)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1027, file: !232, line: 56, baseType: !465, size: 64, offset: 640)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1027, file: !232, line: 57, baseType: !2945, size: 64, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2947)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !68, line: 1477, size: 128, elements: !2948)
!2948 = !{!2949, !2953}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2947, file: !68, line: 1478, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !1026, !1185}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2947, file: !68, line: 1483, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !1026}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1027, file: !232, line: 58, baseType: !791, size: 256, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1027, file: !232, line: 60, baseType: !100, size: 32, offset: 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1027, file: !232, line: 61, baseType: !100, size: 32, offset: 1056)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1027, file: !232, line: 62, baseType: !316, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1027, file: !232, line: 65, baseType: !791, size: 256, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1027, file: !232, line: 66, baseType: !625, size: 64, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1027, file: !232, line: 68, baseType: !2964, size: 64, offset: 1472)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !68, line: 63, size: 808, elements: !2966)
!2966 = !{!2967, !2971}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2965, file: !68, line: 64, baseType: !2968, size: 296)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !2969)
!2969 = !{!2970}
!2970 = !DISubrange(count: 37)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2965, file: !68, line: 65, baseType: !2972, size: 512, offset: 296)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !398)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1027, file: !232, line: 72, baseType: !1185, size: 8, offset: 1536)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1027, file: !232, line: 77, baseType: !2277, size: 5824, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !626, file: !25, line: 1226, baseType: !2976, size: 64, offset: 1664)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !68, line: 1495, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2977, file: !68, line: 1496, baseType: !1026, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !2977, file: !68, line: 1497, baseType: !465, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !626, file: !25, line: 1227, baseType: !2833, size: 64, offset: 1728)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !626, file: !25, line: 1228, baseType: !2983, size: 64, offset: 1792)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !25, line: 1228, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !626, file: !25, line: 1229, baseType: !669, size: 128, offset: 1856)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !626, file: !25, line: 1230, baseType: !13, size: 32, offset: 1984)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !626, file: !25, line: 1231, baseType: !2988, size: 2496, offset: 2048)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !30, line: 521, size: 2496, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2994, !3026}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2988, file: !30, line: 522, baseType: !13, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2988, file: !30, line: 523, baseType: !1004, size: 320, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2988, file: !30, line: 524, baseType: !2993, size: 192, offset: 384)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 192, elements: !394)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2988, file: !30, line: 525, baseType: !2995, size: 1728, offset: 576)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2996, size: 1728, elements: !394)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !30, line: 222, size: 576, elements: !2997)
!2997 = !{!2998, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2996, file: !30, line: 223, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !30, line: 445, size: 256, elements: !3001)
!3001 = !{!3002, !3003, !3016, !3017}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3000, file: !30, line: 446, baseType: !100, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3000, file: !30, line: 447, baseType: !3004, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3006)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !30, line: 312, size: 512, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3006, file: !30, line: 313, baseType: !735, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3006, file: !30, line: 314, baseType: !735, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3006, file: !30, line: 315, baseType: !735, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3006, file: !30, line: 316, baseType: !735, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3006, file: !30, line: 317, baseType: !871, size: 64, offset: 256)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3006, file: !30, line: 318, baseType: !871, size: 64, offset: 320)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3006, file: !30, line: 319, baseType: !871, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3006, file: !30, line: 320, baseType: !901, size: 64, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3000, file: !30, line: 448, baseType: !289, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3000, file: !30, line: 449, baseType: !2999, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2996, file: !30, line: 224, baseType: !100, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2996, file: !30, line: 226, baseType: !294, size: 128, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2996, file: !30, line: 227, baseType: !443, size: 64, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2996, file: !30, line: 228, baseType: !13, size: 32, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2996, file: !30, line: 229, baseType: !13, size: 32, offset: 352)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2996, file: !30, line: 230, baseType: !836, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2996, file: !30, line: 231, baseType: !836, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2996, file: !30, line: 232, baseType: !465, size: 64, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2988, file: !30, line: 526, baseType: !3027, size: 192, offset: 2304)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3004, size: 192, elements: !394)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !626, file: !25, line: 1233, baseType: !3029, size: 2368, offset: 4544)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !25, line: 1184, size: 2368, elements: !3030)
!3030 = !{!3031, !3032, !3033}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3029, file: !25, line: 1185, baseType: !363, size: 16)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3029, file: !25, line: 1186, baseType: !363, size: 16, offset: 16)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3029, file: !25, line: 1187, baseType: !3034, size: 2304, offset: 64)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 2304, elements: !394)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3036, line: 12, size: 768, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3037 = !{!3038, !3046, !3048, !4164, !4165}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3035, file: !3036, line: 13, baseType: !3039, size: 384)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3040, line: 17, size: 384, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3041 = !{!3042, !3043, !3044, !3045}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3039, file: !3040, line: 18, baseType: !100, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3039, file: !3040, line: 19, baseType: !100, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3039, file: !3040, line: 20, baseType: !1337, size: 192, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3039, file: !3040, line: 22, baseType: !1189, size: 128, align: 64, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3035, file: !3036, line: 14, baseType: !3047, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3035, file: !3036, line: 15, baseType: !3049, size: 64, offset: 448)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3050, line: 16, size: 64, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3051 = !{!3052}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3049, file: !3050, line: 17, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !766, line: 746, size: 58368, elements: !3055)
!3055 = !{!3056, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3136, !3147, !3167, !3171, !3174, !3205, !3206, !3207, !3208, !3216, !3218, !3219, !3220, !3221, !3222, !3223, !3234, !3235, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3252, !3253, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3341, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3356, !3357, !3358, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3390, !3396, !3397, !3398, !3399, !3400, !3404, !3407, !3414, !3419, !3422, !3425, !3428, !3431, !3571, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3611, !3612, !3613, !3622, !3630, !3631, !3632, !3633, !3634, !3639, !3640, !3641, !3644, !3645, !3647, !3658, !3661, !3669, !3672, !3673, !3759, !3760, !3761, !3762, !3763, !3769, !3770, !3771, !3772, !3775, !3776, !3779, !3782, !3783, !3786, !3787, !3788, !3791, !3792, !3793, !3794, !3795, !3796, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3828, !3829, !3835, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3917, !3919, !3920, !3921, !3922, !3923, !3924, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3941, !3942, !3943}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3054, file: !766, line: 752, baseType: !3057, size: 192)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3058, line: 56, size: 192, elements: !3059)
!3058 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !3058, line: 57, baseType: !443, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3057, file: !3058, line: 58, baseType: !443, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3057, file: !3058, line: 59, baseType: !543, size: 32, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3057, file: !3058, line: 61, baseType: !543, size: 32, offset: 160)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3054, file: !766, line: 754, baseType: !13, size: 32, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3054, file: !766, line: 767, baseType: !465, size: 64, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3054, file: !766, line: 768, baseType: !1324, size: 32, offset: 320)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !766, line: 770, baseType: !13, size: 32, offset: 352)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3054, file: !766, line: 771, baseType: !13, size: 32, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3054, file: !766, line: 774, baseType: !100, size: 32, offset: 416)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3054, file: !766, line: 775, baseType: !3071, size: 128, offset: 448)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3072, line: 58, size: 128, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3073 = !{!3074, !3075, !3080, !3081}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3071, file: !3072, line: 59, baseType: !1281, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !3072, line: 60, baseType: !3076, size: 32, offset: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !3072, line: 60, size: 32, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3076, file: !3072, line: 61, baseType: !13, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3076, file: !3072, line: 62, baseType: !343, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3071, file: !3072, line: 65, baseType: !361, size: 16, offset: 96)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3071, file: !3072, line: 65, baseType: !361, size: 16, offset: 112)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3054, file: !766, line: 776, baseType: !13, size: 32, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3054, file: !766, line: 777, baseType: !443, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3054, file: !766, line: 778, baseType: !3053, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3054, file: !766, line: 787, baseType: !100, size: 32, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3054, file: !766, line: 788, baseType: !100, size: 32, offset: 800)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3054, file: !766, line: 790, baseType: !100, size: 32, offset: 832)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3054, file: !766, line: 792, baseType: !100, size: 32, offset: 864)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3054, file: !766, line: 793, baseType: !100, size: 32, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3054, file: !766, line: 794, baseType: !100, size: 32, offset: 928)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3054, file: !766, line: 795, baseType: !13, size: 32, offset: 960)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3054, file: !766, line: 797, baseType: !3093, size: 2048, offset: 1024)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !766, line: 551, size: 2048, elements: !3094)
!3094 = !{!3095, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3115, !3118, !3119, !3120}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3093, file: !766, line: 553, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !766, line: 411, size: 128, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3096, file: !766, line: 412, baseType: !443, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3096, file: !766, line: 413, baseType: !543, size: 32, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3093, file: !766, line: 554, baseType: !1401, size: 192, align: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3093, file: !766, line: 555, baseType: !547, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3093, file: !766, line: 556, baseType: !547, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3093, file: !766, line: 558, baseType: !294, size: 128, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3093, file: !766, line: 559, baseType: !13, size: 32, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3093, file: !766, line: 561, baseType: !547, size: 64, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3093, file: !766, line: 562, baseType: !547, size: 64, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3093, file: !766, line: 563, baseType: !547, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3093, file: !766, line: 564, baseType: !547, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3093, file: !766, line: 565, baseType: !801, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3093, file: !766, line: 566, baseType: !547, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3093, file: !766, line: 568, baseType: !547, size: 64, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3093, file: !766, line: 571, baseType: !100, size: 32, offset: 1088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3093, file: !766, line: 572, baseType: !3114, size: 64, offset: 1152)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3093, file: !766, line: 574, baseType: !3116, size: 64, offset: 1216)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !766, line: 49, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3093, file: !766, line: 576, baseType: !3116, size: 64, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3093, file: !766, line: 578, baseType: !443, size: 64, offset: 1344)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3093, file: !766, line: 588, baseType: !3121, size: 512, align: 512, offset: 1536)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !766, line: 497, size: 512, align: 512, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3121, file: !766, line: 498, baseType: !547, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3121, file: !766, line: 499, baseType: !547, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3121, file: !766, line: 500, baseType: !547, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3121, file: !766, line: 501, baseType: !543, size: 32, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3121, file: !766, line: 502, baseType: !543, size: 32, offset: 224)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3121, file: !766, line: 503, baseType: !443, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3121, file: !766, line: 504, baseType: !443, size: 64, offset: 320)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3121, file: !766, line: 505, baseType: !443, size: 64, offset: 384)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3121, file: !766, line: 506, baseType: !3132, size: 64, align: 64, offset: 448)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !766, line: 445, size: 64, align: 64, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3132, file: !766, line: 446, baseType: !13, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3132, file: !766, line: 447, baseType: !13, size: 32, offset: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3054, file: !766, line: 798, baseType: !3137, size: 384, offset: 3072)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !766, line: 592, size: 384, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3137, file: !766, line: 593, baseType: !294, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3137, file: !766, line: 594, baseType: !443, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3137, file: !766, line: 595, baseType: !443, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3137, file: !766, line: 596, baseType: !13, size: 32, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3137, file: !766, line: 597, baseType: !363, size: 16, offset: 288)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3137, file: !766, line: 598, baseType: !363, size: 16, offset: 304)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3137, file: !766, line: 600, baseType: !3146, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3054, file: !766, line: 799, baseType: !3148, size: 1792, offset: 3456)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !766, line: 610, size: 1792, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3148, file: !766, line: 611, baseType: !1401, size: 192, align: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3148, file: !766, line: 618, baseType: !547, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3148, file: !766, line: 619, baseType: !547, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3148, file: !766, line: 620, baseType: !547, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3148, file: !766, line: 621, baseType: !547, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3148, file: !766, line: 622, baseType: !547, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3148, file: !766, line: 629, baseType: !801, size: 64, offset: 512)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3148, file: !766, line: 630, baseType: !547, size: 64, offset: 576)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3148, file: !766, line: 631, baseType: !13, size: 32, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3148, file: !766, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3148, file: !766, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3148, file: !766, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3148, file: !766, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3148, file: !766, line: 662, baseType: !2484, size: 512, offset: 704)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3148, file: !766, line: 671, baseType: !2484, size: 512, offset: 1216)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3148, file: !766, line: 679, baseType: !3166, size: 64, offset: 1728)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3054, file: !766, line: 800, baseType: !3168, size: 64, offset: 5248)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3170)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !766, line: 800, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3054, file: !766, line: 809, baseType: !3172, size: 64, offset: 5312)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !766, line: 70, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3054, file: !766, line: 825, baseType: !3175, size: 2048, align: 512, offset: 5632)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !766, line: 509, size: 2048, align: 512, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3175, file: !766, line: 511, baseType: !547, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3175, file: !766, line: 512, baseType: !547, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3175, file: !766, line: 513, baseType: !547, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3175, file: !766, line: 514, baseType: !547, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3175, file: !766, line: 515, baseType: !547, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3175, file: !766, line: 516, baseType: !547, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3175, file: !766, line: 518, baseType: !547, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3175, file: !766, line: 519, baseType: !547, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3175, file: !766, line: 520, baseType: !801, size: 64, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3175, file: !766, line: 522, baseType: !547, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3175, file: !766, line: 523, baseType: !547, size: 64, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3175, file: !766, line: 524, baseType: !801, size: 64, offset: 704)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3175, file: !766, line: 526, baseType: !801, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3175, file: !766, line: 527, baseType: !547, size: 64, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3175, file: !766, line: 529, baseType: !547, size: 64, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3175, file: !766, line: 530, baseType: !547, size: 64, offset: 960)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3175, file: !766, line: 531, baseType: !547, size: 64, offset: 1024)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3175, file: !766, line: 532, baseType: !547, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3175, file: !766, line: 533, baseType: !547, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3175, file: !766, line: 535, baseType: !547, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3175, file: !766, line: 536, baseType: !547, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3175, file: !766, line: 537, baseType: !547, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3175, file: !766, line: 538, baseType: !547, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3175, file: !766, line: 539, baseType: !547, size: 64, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3175, file: !766, line: 540, baseType: !547, size: 64, offset: 1536)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3175, file: !766, line: 541, baseType: !547, size: 64, offset: 1600)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3175, file: !766, line: 542, baseType: !547, size: 64, offset: 1664)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3175, file: !766, line: 543, baseType: !547, size: 64, offset: 1728)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3054, file: !766, line: 833, baseType: !13, size: 32, offset: 7680)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3054, file: !766, line: 836, baseType: !13, size: 32, offset: 7712)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3054, file: !766, line: 837, baseType: !100, size: 32, offset: 7744)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3054, file: !766, line: 838, baseType: !3209, size: 64, offset: 7808)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3211)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3212, line: 19, baseType: !3213)
!3212 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3212, line: 19, size: 64, elements: !3214)
!3214 = !{!3215}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3213, file: !3212, line: 19, baseType: !2751, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3054, file: !766, line: 839, baseType: !3217, size: 64, offset: 7872)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3054, file: !766, line: 840, baseType: !3211, size: 64, offset: 7936)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3054, file: !766, line: 841, baseType: !465, size: 64, offset: 8000)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3054, file: !766, line: 843, baseType: !363, size: 16, offset: 8064)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3054, file: !766, line: 845, baseType: !363, size: 16, offset: 8080)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3054, file: !766, line: 848, baseType: !100, size: 32, offset: 8096)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3054, file: !766, line: 849, baseType: !3224, size: 32, offset: 8128)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !766, line: 718, size: 32, elements: !3225)
!3225 = !{!3226, !3233}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3224, file: !766, line: 724, baseType: !3227, size: 32)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !766, line: 719, size: 32, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3227, file: !766, line: 720, baseType: !351, size: 8)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3227, file: !766, line: 721, baseType: !351, size: 8, offset: 8)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3227, file: !766, line: 722, baseType: !351, size: 8, offset: 16)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3227, file: !766, line: 723, baseType: !351, size: 8, offset: 24)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3224, file: !766, line: 725, baseType: !543, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3054, file: !766, line: 850, baseType: !294, size: 128, offset: 8192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3054, file: !766, line: 851, baseType: !3236, size: 64, offset: 8320)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !766, line: 60, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3054, file: !766, line: 855, baseType: !443, size: 64, offset: 8384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3054, file: !766, line: 856, baseType: !351, size: 8, offset: 8448)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3054, file: !766, line: 857, baseType: !351, size: 8, offset: 8456)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3054, file: !766, line: 858, baseType: !100, size: 32, offset: 8480)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3054, file: !766, line: 859, baseType: !294, size: 128, offset: 8512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3054, file: !766, line: 860, baseType: !100, size: 32, offset: 8640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3054, file: !766, line: 861, baseType: !294, size: 128, offset: 8704)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3054, file: !766, line: 873, baseType: !3246, size: 256, offset: 8832)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !766, line: 376, size: 256, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3246, file: !766, line: 381, baseType: !443, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3246, file: !766, line: 384, baseType: !549, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3246, file: !766, line: 389, baseType: !549, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3246, file: !766, line: 392, baseType: !549, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3054, file: !766, line: 875, baseType: !294, size: 128, offset: 9088)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3054, file: !766, line: 877, baseType: !3254, size: 320, offset: 9216)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3255, line: 86, size: 320, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3254, file: !3255, line: 87, baseType: !100, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3254, file: !3255, line: 88, baseType: !294, size: 128, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3254, file: !3255, line: 89, baseType: !294, size: 128, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3054, file: !766, line: 878, baseType: !1401, size: 192, align: 64, offset: 9536)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3054, file: !766, line: 881, baseType: !1247, size: 64, offset: 9728)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3054, file: !766, line: 882, baseType: !1247, size: 64, offset: 9792)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3054, file: !766, line: 884, baseType: !100, size: 32, offset: 9856)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3054, file: !766, line: 885, baseType: !100, size: 32, offset: 9888)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3054, file: !766, line: 886, baseType: !100, size: 32, offset: 9920)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3054, file: !766, line: 888, baseType: !100, size: 32, offset: 9952)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3054, file: !766, line: 890, baseType: !443, size: 64, offset: 9984)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3054, file: !766, line: 893, baseType: !13, size: 32, offset: 10048)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3054, file: !766, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3054, file: !766, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3054, file: !766, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3054, file: !766, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3054, file: !766, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3054, file: !766, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3054, file: !766, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3054, file: !766, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3054, file: !766, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3054, file: !766, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3054, file: !766, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3054, file: !766, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3054, file: !766, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3054, file: !766, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3054, file: !766, line: 969, baseType: !443, size: 64, offset: 10176)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3054, file: !766, line: 971, baseType: !3285, size: 448, offset: 10240)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !160, line: 25, size: 448, elements: !3286)
!3286 = !{!3287, !3288, !3293}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3285, file: !160, line: 26, baseType: !443, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3285, file: !160, line: 27, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!429, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !160, line: 28, baseType: !3294, size: 320, offset: 128)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !160, line: 28, size: 320, elements: !3295)
!3295 = !{!3296, !3306, !3331}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3294, file: !160, line: 37, baseType: !3297, size: 320)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3294, file: !160, line: 30, size: 320, elements: !3298)
!3298 = !{!3299, !3301, !3302, !3303, !3304, !3305}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3297, file: !160, line: 31, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3297, file: !160, line: 32, baseType: !543, size: 32, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3297, file: !160, line: 33, baseType: !543, size: 32, offset: 96)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3297, file: !160, line: 34, baseType: !543, size: 32, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3297, file: !160, line: 35, baseType: !547, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3297, file: !160, line: 36, baseType: !3300, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3294, file: !160, line: 47, baseType: !3307, size: 192)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3294, file: !160, line: 39, size: 192, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3330}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3307, file: !160, line: 40, baseType: !2529, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3307, file: !160, line: 41, baseType: !159, size: 32, offset: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !160, line: 42, baseType: !3312, size: 64, offset: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !160, line: 42, size: 64, elements: !3313)
!3313 = !{!3314, !3322}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3312, file: !160, line: 43, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3317, line: 7, size: 128, elements: !3318)
!3317 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3318 = !{!3319, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3316, file: !3317, line: 8, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !427, line: 93, baseType: !637)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3316, file: !3317, line: 9, baseType: !637, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3312, file: !160, line: 44, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3325, line: 7, size: 64, elements: !3326)
!3325 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3326 = !{!3327, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3324, file: !3325, line: 8, baseType: !3328, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3325, line: 5, baseType: !1394)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3324, file: !3325, line: 9, baseType: !1394, size: 32, offset: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3307, file: !160, line: 46, baseType: !547, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3294, file: !160, line: 55, baseType: !3332, size: 256)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3294, file: !160, line: 49, size: 256, elements: !3333)
!3333 = !{!3334, !3337, !3338, !3339, !3340}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3332, file: !160, line: 50, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !160, line: 14, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3332, file: !160, line: 51, baseType: !100, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3332, file: !160, line: 52, baseType: !100, size: 32, offset: 96)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3332, file: !160, line: 53, baseType: !443, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3332, file: !160, line: 54, baseType: !443, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3054, file: !766, line: 973, baseType: !3342, size: 32, offset: 10688)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !295, line: 27, baseType: !3343)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !427, line: 28, baseType: !100)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3054, file: !766, line: 974, baseType: !3342, size: 32, offset: 10720)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3054, file: !766, line: 978, baseType: !443, size: 64, offset: 10752)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3054, file: !766, line: 987, baseType: !3053, size: 64, offset: 10816)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3054, file: !766, line: 990, baseType: !3053, size: 64, offset: 10880)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3054, file: !766, line: 995, baseType: !294, size: 128, offset: 10944)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3054, file: !766, line: 996, baseType: !294, size: 128, offset: 11072)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3054, file: !766, line: 997, baseType: !3053, size: 64, offset: 11200)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3054, file: !766, line: 1005, baseType: !294, size: 128, offset: 11264)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3054, file: !766, line: 1006, baseType: !294, size: 128, offset: 11392)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3054, file: !766, line: 1009, baseType: !1320, size: 64, offset: 11520)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3054, file: !766, line: 1010, baseType: !3355, size: 512, offset: 11584)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 512, elements: !1333)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3054, file: !766, line: 1011, baseType: !294, size: 128, offset: 12096)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3054, file: !766, line: 1012, baseType: !294, size: 128, offset: 12224)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3054, file: !766, line: 1014, baseType: !3359, size: 64, offset: 12352)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3054, file: !766, line: 1017, baseType: !758, size: 64, offset: 12416)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3054, file: !766, line: 1020, baseType: !758, size: 64, offset: 12480)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3054, file: !766, line: 1023, baseType: !465, size: 64, offset: 12544)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3054, file: !766, line: 1025, baseType: !547, size: 64, offset: 12608)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3054, file: !766, line: 1026, baseType: !547, size: 64, offset: 12672)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3054, file: !766, line: 1031, baseType: !547, size: 64, offset: 12736)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3054, file: !766, line: 1032, baseType: !3367, size: 192, offset: 12800)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !766, line: 324, size: 192, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3367, file: !766, line: 326, baseType: !547, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3367, file: !766, line: 327, baseType: !547, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3367, file: !766, line: 328, baseType: !804, size: 32, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3054, file: !766, line: 1041, baseType: !443, size: 64, offset: 12992)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3054, file: !766, line: 1042, baseType: !443, size: 64, offset: 13056)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3054, file: !766, line: 1045, baseType: !547, size: 64, offset: 13120)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3054, file: !766, line: 1048, baseType: !547, size: 64, offset: 13184)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3054, file: !766, line: 1051, baseType: !443, size: 64, offset: 13248)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3054, file: !766, line: 1052, baseType: !443, size: 64, offset: 13312)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3054, file: !766, line: 1055, baseType: !3379, size: 640, offset: 13376)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3380, line: 132, size: 640, elements: !3381)
!3380 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3381 = !{!3382, !3388, !3389}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3379, file: !3380, line: 133, baseType: !3383, size: 576)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3384, size: 576, elements: !394)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3380, line: 117, size: 192, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3384, file: !3380, line: 118, baseType: !547, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3384, file: !3380, line: 119, baseType: !2538, size: 128, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3379, file: !3380, line: 134, baseType: !13, size: 32, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3379, file: !3380, line: 135, baseType: !13, size: 32, offset: 608)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3054, file: !766, line: 1058, baseType: !3391, size: 448, offset: 14016)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3380, line: 144, size: 448, elements: !3392)
!3392 = !{!3393, !3394, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3391, file: !3380, line: 145, baseType: !1189, size: 128, align: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3391, file: !3380, line: 146, baseType: !791, size: 256, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3391, file: !3380, line: 147, baseType: !13, size: 32, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3054, file: !766, line: 1064, baseType: !1359, size: 64, offset: 14464)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3054, file: !766, line: 1067, baseType: !1359, size: 64, offset: 14528)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3054, file: !766, line: 1070, baseType: !1359, size: 64, offset: 14592)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3054, file: !766, line: 1074, baseType: !1386, size: 64, offset: 14656)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3054, file: !766, line: 1084, baseType: !3401, size: 128, offset: 14720)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3402)
!3402 = !{!3403}
!3403 = !DISubrange(count: 16)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3054, file: !766, line: 1086, baseType: !3405, size: 64, offset: 14848)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !766, line: 55, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3054, file: !766, line: 1089, baseType: !3408, size: 64, offset: 14912)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3409, line: 12, size: 64, elements: !3410)
!3409 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3410 = !{!3411}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3408, file: !3409, line: 13, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3409, line: 8, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3054, file: !766, line: 1090, baseType: !3415, size: 128, offset: 14976)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3416, line: 13, size: 128, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3415, file: !3416, line: 14, baseType: !294, size: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3054, file: !766, line: 1097, baseType: !3420, size: 64, offset: 15104)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !766, line: 50, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3054, file: !766, line: 1100, baseType: !3423, size: 64, offset: 15168)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !766, line: 1100, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3054, file: !766, line: 1103, baseType: !3426, size: 64, offset: 15232)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !766, line: 53, flags: DIFlagFwdDecl)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3054, file: !766, line: 1107, baseType: !3429, size: 64, offset: 15296)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !766, line: 56, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3054, file: !766, line: 1110, baseType: !3432, size: 64, offset: 15360)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3434, line: 93, size: 8768, elements: !3435)
!3434 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3485, !3494, !3495, !3497, !3498, !3499, !3502, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3540, !3541, !3548, !3558, !3561, !3562, !3565, !3566, !3567, !3568, !3569, !3570}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3433, file: !3434, line: 94, baseType: !1324, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3433, file: !3434, line: 95, baseType: !343, size: 32, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3433, file: !3434, line: 96, baseType: !100, size: 32, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3433, file: !3434, line: 97, baseType: !100, size: 32, offset: 96)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3433, file: !3434, line: 98, baseType: !294, size: 128, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3433, file: !3434, line: 100, baseType: !1337, size: 192, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3433, file: !3434, line: 103, baseType: !3053, size: 64, offset: 448)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3433, file: !3434, line: 106, baseType: !3444, size: 192, offset: 512)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1544, line: 32, size: 192, elements: !3445)
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3444, file: !1544, line: 33, baseType: !294, size: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3444, file: !1544, line: 34, baseType: !3448, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3449, line: 25, baseType: !3450)
!3449 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3449, line: 23, size: 64, elements: !3451)
!3451 = !{!3452}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3450, file: !3449, line: 24, baseType: !2751, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3433, file: !3434, line: 109, baseType: !665, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3433, file: !3434, line: 112, baseType: !100, size: 32, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3433, file: !3434, line: 114, baseType: !100, size: 32, offset: 800)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3433, file: !3434, line: 115, baseType: !3053, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3433, file: !3434, line: 118, baseType: !100, size: 32, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3433, file: !3434, line: 119, baseType: !13, size: 32, offset: 928)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3433, file: !3434, line: 121, baseType: !3460, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3434, line: 80, size: 448, elements: !3462)
!3462 = !{!3463, !3464, !3470}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3461, file: !3434, line: 81, baseType: !343, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3461, file: !3434, line: 82, baseType: !3465, size: 128, offset: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3434, line: 75, size: 128, elements: !3466)
!3466 = !{!3467, !3468}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3465, file: !3434, line: 76, baseType: !3053, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3465, file: !3434, line: 77, baseType: !3469, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3461, file: !3434, line: 83, baseType: !1199, size: 256, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3433, file: !3434, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3433, file: !3434, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3433, file: !3434, line: 138, baseType: !13, size: 32, offset: 1056)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3433, file: !3434, line: 139, baseType: !294, size: 128, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3433, file: !3434, line: 142, baseType: !2484, size: 512, offset: 1216)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3433, file: !3434, line: 143, baseType: !2464, size: 64, offset: 1728)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3433, file: !3434, line: 150, baseType: !3478, size: 256, offset: 1792)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 256, elements: !3483)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3434, line: 38, size: 128, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3479, file: !3434, line: 39, baseType: !547, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3479, file: !3434, line: 40, baseType: !547, size: 64, offset: 64)
!3483 = !{!3484}
!3484 = !DISubrange(count: 2)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3433, file: !3434, line: 156, baseType: !3486, size: 192, offset: 2048)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3434, line: 66, size: 192, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3486, file: !3434, line: 67, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3434, line: 47, size: 192, elements: !3490)
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3489, file: !3434, line: 48, baseType: !797, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3489, file: !3434, line: 49, baseType: !797, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3489, file: !3434, line: 50, baseType: !797, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3433, file: !3434, line: 160, baseType: !3379, size: 640, offset: 2240)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3433, file: !3434, line: 163, baseType: !3496, size: 256, offset: 2880)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 256, elements: !1333)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3433, file: !3434, line: 169, baseType: !1320, size: 64, offset: 3136)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3433, file: !3434, line: 172, baseType: !100, size: 32, offset: 3200)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3433, file: !3434, line: 174, baseType: !3500, size: 64, offset: 3264)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3434, line: 174, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3433, file: !3434, line: 185, baseType: !3503, size: 64, offset: 3328)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !516, line: 860, baseType: !3504)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 853, size: 64, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3504, file: !516, line: 858, baseType: !515, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3504, file: !516, line: 859, baseType: !323, size: 32, offset: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3433, file: !3434, line: 186, baseType: !547, size: 64, offset: 3392)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3433, file: !3434, line: 186, baseType: !547, size: 64, offset: 3456)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3433, file: !3434, line: 186, baseType: !547, size: 64, offset: 3520)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3433, file: !3434, line: 186, baseType: !547, size: 64, offset: 3584)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3433, file: !3434, line: 187, baseType: !547, size: 64, offset: 3648)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3433, file: !3434, line: 188, baseType: !547, size: 64, offset: 3712)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3433, file: !3434, line: 189, baseType: !3367, size: 192, offset: 3776)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3433, file: !3434, line: 190, baseType: !443, size: 64, offset: 3968)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3433, file: !3434, line: 190, baseType: !443, size: 64, offset: 4032)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3433, file: !3434, line: 190, baseType: !443, size: 64, offset: 4096)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3433, file: !3434, line: 190, baseType: !443, size: 64, offset: 4160)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3433, file: !3434, line: 191, baseType: !443, size: 64, offset: 4224)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3433, file: !3434, line: 191, baseType: !443, size: 64, offset: 4288)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3433, file: !3434, line: 191, baseType: !443, size: 64, offset: 4352)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3433, file: !3434, line: 191, baseType: !443, size: 64, offset: 4416)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3433, file: !3434, line: 192, baseType: !443, size: 64, offset: 4480)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3433, file: !3434, line: 192, baseType: !443, size: 64, offset: 4544)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3433, file: !3434, line: 192, baseType: !443, size: 64, offset: 4608)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3433, file: !3434, line: 192, baseType: !443, size: 64, offset: 4672)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3433, file: !3434, line: 193, baseType: !443, size: 64, offset: 4736)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3433, file: !3434, line: 193, baseType: !443, size: 64, offset: 4800)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3433, file: !3434, line: 194, baseType: !3530, size: 448, offset: 4864)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3531, line: 12, size: 448, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3530, file: !3531, line: 15, baseType: !547, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3530, file: !3531, line: 17, baseType: !547, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3530, file: !3531, line: 19, baseType: !547, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3530, file: !3531, line: 21, baseType: !547, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3530, file: !3531, line: 29, baseType: !547, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3530, file: !3531, line: 35, baseType: !547, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3530, file: !3531, line: 44, baseType: !547, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3433, file: !3434, line: 202, baseType: !549, size: 64, offset: 5312)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3433, file: !3434, line: 213, baseType: !3542, size: 2048, offset: 5376)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3543, size: 2048, elements: !3402)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3544, line: 43, size: 128, elements: !3545)
!3544 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3543, file: !3544, line: 44, baseType: !442, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3543, file: !3544, line: 45, baseType: !442, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3433, file: !3434, line: 216, baseType: !3549, size: 448, offset: 7424)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3434, line: 30, size: 448, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3549, file: !3434, line: 31, baseType: !100, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3549, file: !3434, line: 32, baseType: !429, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3549, file: !3434, line: 33, baseType: !443, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3549, file: !3434, line: 34, baseType: !547, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3549, file: !3434, line: 34, baseType: !547, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3549, file: !3434, line: 35, baseType: !443, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3549, file: !3434, line: 35, baseType: !443, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3433, file: !3434, line: 219, baseType: !3559, size: 64, offset: 7872)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3434, line: 219, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3433, file: !3434, line: 222, baseType: !13, size: 32, offset: 7936)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3433, file: !3434, line: 223, baseType: !3563, size: 64, offset: 8000)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3434, line: 223, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3433, file: !3434, line: 230, baseType: !1185, size: 8, offset: 8064)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3433, file: !3434, line: 231, baseType: !1427, size: 16, offset: 8080)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3433, file: !3434, line: 232, baseType: !1427, size: 16, offset: 8096)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3433, file: !3434, line: 234, baseType: !1247, size: 64, offset: 8128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3433, file: !3434, line: 237, baseType: !791, size: 256, offset: 8192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3433, file: !3434, line: 243, baseType: !1004, size: 320, offset: 8448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3054, file: !766, line: 1111, baseType: !3572, size: 64, offset: 15424)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3434, line: 20, size: 16640, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3573, file: !3434, line: 21, baseType: !323, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3573, file: !3434, line: 22, baseType: !1324, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3573, file: !3434, line: 23, baseType: !1337, size: 192, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3573, file: !3434, line: 24, baseType: !3579, size: 16384, offset: 256)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3580, size: 16384, elements: !398)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1544, line: 51, size: 256, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3580, file: !1544, line: 52, baseType: !3583, size: 256)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1544, line: 37, size: 256, elements: !3584)
!3584 = !{!3585, !3592, !3593, !3599}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3583, file: !1544, line: 39, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3587, line: 83, baseType: !3588)
!3587 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3587, line: 82, baseType: !3590)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !100}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3583, file: !1544, line: 40, baseType: !443, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3583, file: !1544, line: 46, baseType: !3594, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3587, line: 86, baseType: !3595)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3587, line: 85, baseType: !3597)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3583, file: !1544, line: 48, baseType: !3448, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3054, file: !766, line: 1112, baseType: !3448, size: 64, offset: 15488)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3054, file: !766, line: 1113, baseType: !3448, size: 64, offset: 15552)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3054, file: !766, line: 1115, baseType: !3448, size: 64, offset: 15616)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3054, file: !766, line: 1116, baseType: !3444, size: 192, offset: 15680)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3054, file: !766, line: 1117, baseType: !443, size: 64, offset: 15872)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3054, file: !766, line: 1118, baseType: !440, size: 64, offset: 15936)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3054, file: !766, line: 1119, baseType: !13, size: 32, offset: 16000)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3054, file: !766, line: 1121, baseType: !1192, size: 64, offset: 16064)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3054, file: !766, line: 1125, baseType: !3609, size: 64, offset: 16128)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !766, line: 43, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3054, file: !766, line: 1127, baseType: !480, size: 32, offset: 16192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3054, file: !766, line: 1128, baseType: !13, size: 32, offset: 16224)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3054, file: !766, line: 1130, baseType: !3614, size: 128, offset: 16256)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3615, line: 37, size: 128, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3616 = !{!3617, !3618, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3614, file: !3615, line: 38, baseType: !100, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3614, file: !3615, line: 39, baseType: !343, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3614, file: !3615, line: 40, baseType: !3620, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3615, line: 24, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3054, file: !766, line: 1131, baseType: !3623, size: 256, offset: 16384)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3624, line: 12, size: 256, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3623, file: !3624, line: 13, baseType: !393, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3623, file: !3624, line: 14, baseType: !443, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3623, file: !3624, line: 15, baseType: !443, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3623, file: !3624, line: 16, baseType: !1185, size: 8, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3054, file: !766, line: 1134, baseType: !547, size: 64, offset: 16640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3054, file: !766, line: 1135, baseType: !547, size: 64, offset: 16704)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3054, file: !766, line: 1138, baseType: !323, size: 32, offset: 16768)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3054, file: !766, line: 1141, baseType: !804, size: 32, offset: 16800)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3054, file: !766, line: 1143, baseType: !3635, size: 64, offset: 16832)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !766, line: 735, size: 64, elements: !3636)
!3636 = !{!3637}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3635, file: !766, line: 736, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3054, file: !766, line: 1147, baseType: !2541, size: 128, offset: 16896)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3054, file: !766, line: 1149, baseType: !3053, size: 64, offset: 17024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3054, file: !766, line: 1151, baseType: !3642, size: 64, offset: 17088)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !766, line: 1151, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3054, file: !766, line: 1188, baseType: !465, size: 64, offset: 17152)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3054, file: !766, line: 1191, baseType: !3646, size: 64, offset: 17216)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3054, file: !766, line: 1194, baseType: !3648, size: 64, offset: 17280)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !68, line: 976, size: 320, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3649, file: !68, line: 977, baseType: !1674, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3649, file: !68, line: 980, baseType: !1674, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3649, file: !68, line: 981, baseType: !363, size: 16, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3649, file: !68, line: 983, baseType: !363, size: 16, offset: 144)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3649, file: !68, line: 985, baseType: !1185, size: 8, offset: 160)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3649, file: !68, line: 986, baseType: !1185, size: 8, offset: 168)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3649, file: !68, line: 988, baseType: !294, size: 128, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3054, file: !766, line: 1197, baseType: !3659, size: 64, offset: 17344)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !766, line: 61, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3054, file: !766, line: 1199, baseType: !3662, size: 64, offset: 17408)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3664, line: 99, size: 128, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3663, file: !3664, line: 100, baseType: !795, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3663, file: !3664, line: 101, baseType: !343, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3663, file: !3664, line: 103, baseType: !363, size: 16, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3054, file: !766, line: 1202, baseType: !3670, size: 64, offset: 17472)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !766, line: 48, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3054, file: !766, line: 1205, baseType: !443, size: 64, offset: 17536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3054, file: !766, line: 1206, baseType: !3674, size: 64, offset: 17600)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1544, line: 14, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1544, line: 12, size: 384, elements: !3677)
!3677 = !{!3678}
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3676, file: !1544, line: 13, baseType: !3679, size: 384)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3676, file: !1544, line: 13, size: 384, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3679, file: !1544, line: 13, baseType: !100, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3679, file: !1544, line: 13, baseType: !100, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3679, file: !1544, line: 13, baseType: !100, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3679, file: !1544, line: 13, baseType: !3685, size: 256, offset: 128)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3686, line: 37, size: 256, elements: !3687)
!3686 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3687 = !{!3688, !3693, !3706, !3712, !3721, !3748, !3753}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3685, file: !3686, line: 42, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 39, size: 64, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3689, file: !3686, line: 40, baseType: !3343, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3689, file: !3686, line: 41, baseType: !486, size: 32, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3685, file: !3686, line: 50, baseType: !3694, size: 192)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 45, size: 192, elements: !3695)
!3695 = !{!3696, !3698, !3699, !3705}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3694, file: !3686, line: 46, baseType: !3697, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !427, line: 95, baseType: !100)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3694, file: !3686, line: 47, baseType: !100, size: 32, offset: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3694, file: !3686, line: 48, baseType: !3700, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3686, line: 11, baseType: !3701)
!3701 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3686, line: 8, size: 64, elements: !3702)
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3701, file: !3686, line: 9, baseType: !100, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3701, file: !3686, line: 10, baseType: !465, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3694, file: !3686, line: 49, baseType: !100, size: 32, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3685, file: !3686, line: 57, baseType: !3707, size: 128)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 53, size: 128, elements: !3708)
!3708 = !{!3709, !3710, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3707, file: !3686, line: 54, baseType: !3343, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3707, file: !3686, line: 55, baseType: !486, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3707, file: !3686, line: 56, baseType: !3700, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3685, file: !3686, line: 66, baseType: !3713, size: 256)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 60, size: 256, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718, !3720}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3713, file: !3686, line: 61, baseType: !3343, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3713, file: !3686, line: 62, baseType: !486, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3713, file: !3686, line: 63, baseType: !100, size: 32, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3713, file: !3686, line: 64, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !427, line: 94, baseType: !428)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3713, file: !3686, line: 65, baseType: !3719, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3685, file: !3686, line: 105, baseType: !3722, size: 256)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 69, size: 256, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3722, file: !3686, line: 70, baseType: !465, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !3686, line: 79, baseType: !3726, size: 192, offset: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !3686, line: 79, size: 192, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3737, !3742}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3726, file: !3686, line: 81, baseType: !100, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3726, file: !3686, line: 86, baseType: !1427, size: 16)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3726, file: !3686, line: 92, baseType: !3731, size: 192)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !3686, line: 88, size: 192, elements: !3732)
!3732 = !{!3733, !3735, !3736}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3731, file: !3686, line: 89, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2525)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3731, file: !3686, line: 90, baseType: !465, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3731, file: !3686, line: 91, baseType: !465, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3726, file: !3686, line: 97, baseType: !3738, size: 96)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !3686, line: 94, size: 96, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3738, file: !3686, line: 95, baseType: !3734, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3738, file: !3686, line: 96, baseType: !544, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3726, file: !3686, line: 103, baseType: !3743, size: 128)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !3686, line: 99, size: 128, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3743, file: !3686, line: 100, baseType: !443, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3743, file: !3686, line: 101, baseType: !544, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3743, file: !3686, line: 102, baseType: !544, size: 32, offset: 96)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3685, file: !3686, line: 111, baseType: !3749, size: 128)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 108, size: 128, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3749, file: !3686, line: 109, baseType: !429, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3749, file: !3686, line: 110, baseType: !100, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3685, file: !3686, line: 118, baseType: !3754, size: 128)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3685, file: !3686, line: 114, size: 128, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3754, file: !3686, line: 115, baseType: !465, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3754, file: !3686, line: 116, baseType: !100, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3754, file: !3686, line: 117, baseType: !13, size: 32, offset: 96)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3054, file: !766, line: 1208, baseType: !3530, size: 448, offset: 17664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3054, file: !766, line: 1215, baseType: !547, size: 64, offset: 18112)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3054, file: !766, line: 1217, baseType: !547, size: 64, offset: 18176)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3054, file: !766, line: 1219, baseType: !547, size: 64, offset: 18240)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3054, file: !766, line: 1223, baseType: !3764, size: 64, offset: 18304)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3765, line: 99, baseType: !3766)
!3765 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3765, line: 99, size: 64, elements: !3767)
!3767 = !{!3768}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3766, file: !3765, line: 99, baseType: !2751, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3054, file: !766, line: 1225, baseType: !515, size: 32, offset: 18368)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3054, file: !766, line: 1226, baseType: !100, size: 32, offset: 18400)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3054, file: !766, line: 1227, baseType: !100, size: 32, offset: 18432)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3054, file: !766, line: 1231, baseType: !3773, size: 64, offset: 18496)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !766, line: 1231, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3054, file: !766, line: 1233, baseType: !294, size: 128, offset: 18560)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3054, file: !766, line: 1240, baseType: !3777, size: 64, offset: 18688)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !766, line: 62, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3054, file: !766, line: 1242, baseType: !3780, size: 64, offset: 18752)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !766, line: 1242, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3054, file: !766, line: 1244, baseType: !294, size: 128, offset: 18816)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3054, file: !766, line: 1245, baseType: !3784, size: 64, offset: 18944)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !766, line: 51, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3054, file: !766, line: 1246, baseType: !791, size: 256, offset: 19008)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3054, file: !766, line: 1247, baseType: !13, size: 32, offset: 19264)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3054, file: !766, line: 1250, baseType: !3789, size: 64, offset: 19328)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !766, line: 57, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3054, file: !766, line: 1251, baseType: !791, size: 256, offset: 19392)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3054, file: !766, line: 1252, baseType: !294, size: 128, offset: 19648)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3054, file: !766, line: 1259, baseType: !2016, size: 64, offset: 19776)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3054, file: !766, line: 1260, baseType: !1427, size: 16, offset: 19840)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3054, file: !766, line: 1261, baseType: !1427, size: 16, offset: 19856)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3054, file: !766, line: 1314, baseType: !3797, size: 64, offset: 19904)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3799, line: 62, size: 256, align: 256, elements: !3800)
!3799 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3798, file: !3799, line: 75, baseType: !544, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3798, file: !3799, line: 90, baseType: !544, size: 32, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3798, file: !3799, line: 112, baseType: !548, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3798, file: !3799, line: 132, baseType: !544, size: 32, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3798, file: !3799, line: 140, baseType: !544, size: 32, offset: 160)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3798, file: !3799, line: 149, baseType: !544, size: 32, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3798, file: !3799, line: 154, baseType: !3808, offset: 224)
!3808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1352)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3054, file: !766, line: 1315, baseType: !543, size: 32, offset: 19968)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3054, file: !766, line: 1316, baseType: !543, size: 32, offset: 20000)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3054, file: !766, line: 1321, baseType: !443, size: 64, offset: 20032)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3054, file: !766, line: 1325, baseType: !100, size: 32, offset: 20096)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3054, file: !766, line: 1326, baseType: !100, size: 32, offset: 20128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3054, file: !766, line: 1327, baseType: !100, size: 32, offset: 20160)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3054, file: !766, line: 1328, baseType: !100, size: 32, offset: 20192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3054, file: !766, line: 1329, baseType: !1189, size: 128, align: 64, offset: 20224)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3054, file: !766, line: 1332, baseType: !3818, size: 128, offset: 20352)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3819, line: 51, size: 128, elements: !3820)
!3819 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3820 = !{!3821, !3826, !3827}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3818, file: !3819, line: 60, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3823, line: 7, size: 64, elements: !3824)
!3823 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3824 = !{!3825}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3822, file: !3823, line: 12, baseType: !3213, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3818, file: !3819, line: 63, baseType: !1185, size: 8, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3818, file: !3819, line: 70, baseType: !1185, size: 8, offset: 72)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3054, file: !766, line: 1335, baseType: !1746, size: 64, offset: 20480)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3054, file: !766, line: 1337, baseType: !3830, size: 128, offset: 20544)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3819, line: 39, size: 128, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3830, file: !3819, line: 40, baseType: !1104, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3830, file: !3819, line: 42, baseType: !544, size: 32, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3830, file: !3819, line: 43, baseType: !544, size: 32, offset: 96)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3054, file: !766, line: 1340, baseType: !3836, size: 64, offset: 20672)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !766, line: 69, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3054, file: !766, line: 1351, baseType: !100, size: 32, offset: 20736)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3054, file: !766, line: 1352, baseType: !100, size: 32, offset: 20768)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3054, file: !766, line: 1354, baseType: !443, size: 64, offset: 20800)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3054, file: !766, line: 1364, baseType: !547, size: 64, offset: 20864)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3054, file: !766, line: 1365, baseType: !547, size: 64, offset: 20928)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3054, file: !766, line: 1412, baseType: !443, size: 64, offset: 20992)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3054, file: !766, line: 1453, baseType: !1033, size: 64, offset: 21056)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3054, file: !766, line: 1457, baseType: !3846, size: 64, offset: 21120)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !166, line: 61, size: 576, elements: !3848)
!3848 = !{!3849, !3850, !3869, !3872, !3873, !3906, !3916}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3847, file: !166, line: 62, baseType: !165, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3847, file: !166, line: 64, baseType: !3851, size: 192, offset: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3847, file: !166, line: 64, size: 192, elements: !3852)
!3852 = !{!3853, !3864}
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !166, line: 65, baseType: !3854, size: 192)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3851, file: !166, line: 65, size: 192, elements: !3855)
!3855 = !{!3856, !3863}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3854, file: !166, line: 66, baseType: !3857, size: 128)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3858, line: 50, size: 128, elements: !3859)
!3858 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3859 = !{!3860, !3861, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3857, file: !3858, line: 52, baseType: !443, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3857, file: !3858, line: 54, baseType: !13, size: 32, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3857, file: !3858, line: 55, baseType: !13, size: 32, offset: 96)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3854, file: !166, line: 67, baseType: !443, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !166, line: 70, baseType: !3865, size: 192)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3851, file: !166, line: 70, size: 192, elements: !3866)
!3866 = !{!3867, !3868}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3865, file: !166, line: 71, baseType: !1189, size: 128, align: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3865, file: !166, line: 72, baseType: !443, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3847, file: !166, line: 76, baseType: !3870, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !166, line: 76, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3847, file: !166, line: 77, baseType: !443, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3847, file: !166, line: 79, baseType: !3874, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3858, line: 25, size: 256, elements: !3876)
!3876 = !{!3877, !3883, !3887}
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3858, line: 26, baseType: !3878, size: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3875, file: !3858, line: 26, size: 128, elements: !3879)
!3879 = !{!3880, !3882}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3878, file: !3858, line: 27, baseType: !3881, size: 128)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !3402)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3878, file: !3858, line: 28, baseType: !3881, size: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3875, file: !3858, line: 31, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3858, line: 23, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3858, line: 33, baseType: !3888, size: 64, offset: 192)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3875, file: !3858, line: 33, size: 64, elements: !3889)
!3889 = !{!3890, !3896, !3901}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3888, file: !3858, line: 38, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3858, line: 34, size: 64, elements: !3892)
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3891, file: !3858, line: 35, baseType: !1394, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3891, file: !3858, line: 36, baseType: !351, size: 8, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3891, file: !3858, line: 37, baseType: !351, size: 8, offset: 40)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3888, file: !3858, line: 42, baseType: !3897, size: 16)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3858, line: 39, size: 16, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3897, file: !3858, line: 40, baseType: !351, size: 8)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3897, file: !3858, line: 41, baseType: !351, size: 8, offset: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3888, file: !3858, line: 46, baseType: !3902, size: 16)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3858, line: 43, size: 16, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3902, file: !3858, line: 44, baseType: !351, size: 8)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3902, file: !3858, line: 45, baseType: !351, size: 8, offset: 8)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3847, file: !166, line: 81, baseType: !3907, size: 64, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !166, line: 85, size: 384, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3908, file: !166, line: 86, baseType: !3870, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3908, file: !166, line: 87, baseType: !443, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3908, file: !166, line: 88, baseType: !443, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3908, file: !166, line: 89, baseType: !443, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3908, file: !166, line: 90, baseType: !1185, size: 8, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3908, file: !166, line: 92, baseType: !3907, size: 64, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3847, file: !166, line: 82, baseType: !13, size: 32, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3054, file: !766, line: 1463, baseType: !3918, offset: 21184)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !766, line: 739, elements: !677)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3054, file: !766, line: 1470, baseType: !1189, size: 128, align: 64, offset: 21184)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3054, file: !766, line: 1471, baseType: !1324, size: 32, offset: 21312)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3054, file: !766, line: 1472, baseType: !100, size: 32, offset: 21344)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3054, file: !766, line: 1474, baseType: !3053, size: 64, offset: 21376)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3054, file: !766, line: 1475, baseType: !2451, size: 320, offset: 21440)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3054, file: !766, line: 1478, baseType: !3925, size: 64, offset: 21760)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !766, line: 1478, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3054, file: !766, line: 1482, baseType: !1324, size: 32, offset: 21824)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3054, file: !766, line: 1489, baseType: !465, size: 64, offset: 21888)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3054, file: !766, line: 1504, baseType: !465, size: 64, offset: 21952)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3054, file: !766, line: 1505, baseType: !548, size: 64, offset: 22016)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3054, file: !766, line: 1506, baseType: !547, size: 64, offset: 22080)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3054, file: !766, line: 1507, baseType: !548, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3054, file: !766, line: 1508, baseType: !548, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3054, file: !766, line: 1509, baseType: !548, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3054, file: !766, line: 1510, baseType: !1189, size: 128, align: 64, offset: 22208)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3054, file: !766, line: 1511, baseType: !100, size: 32, offset: 22336)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3054, file: !766, line: 1515, baseType: !3938, size: 64, offset: 22400)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1282, line: 56, size: 64, elements: !3939)
!3939 = !{!3940}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3938, file: !1282, line: 57, baseType: !1285, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3054, file: !766, line: 1518, baseType: !3938, size: 64, offset: 22464)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3054, file: !766, line: 1528, baseType: !1189, size: 128, align: 64, offset: 22528)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3054, file: !766, line: 1552, baseType: !3944, size: 35328, offset: 23040)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3945, line: 430, size: 35328, elements: !3946)
!3945 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3946 = !{!3947, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3976, !3977, !3978, !3979, !3980, !3981, !3984, !3985, !3986, !3987}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3944, file: !3945, line: 432, baseType: !3948, size: 192)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3949, size: 192, elements: !394)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3950, line: 16, size: 64, elements: !3951)
!3950 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3949, file: !3950, line: 17, baseType: !361, size: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3949, file: !3950, line: 18, baseType: !361, size: 16, offset: 16)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3949, file: !3950, line: 19, baseType: !361, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3949, file: !3950, line: 19, baseType: !361, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3949, file: !3950, line: 19, baseType: !361, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3949, file: !3950, line: 19, baseType: !361, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3949, file: !3950, line: 19, baseType: !361, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3949, file: !3950, line: 20, baseType: !361, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3949, file: !3950, line: 20, baseType: !361, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3949, file: !3950, line: 20, baseType: !361, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3949, file: !3950, line: 20, baseType: !361, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3949, file: !3950, line: 20, baseType: !361, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3949, file: !3950, line: 20, baseType: !361, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3944, file: !3945, line: 436, baseType: !443, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3944, file: !3945, line: 440, baseType: !363, size: 16, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3944, file: !3945, line: 441, baseType: !363, size: 16, offset: 272)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3944, file: !3945, line: 442, baseType: !363, size: 16, offset: 288)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3944, file: !3945, line: 443, baseType: !363, size: 16, offset: 304)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3944, file: !3945, line: 447, baseType: !443, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3944, file: !3945, line: 448, baseType: !443, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3944, file: !3945, line: 459, baseType: !3973, size: 256, offset: 448)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3974, size: 256, elements: !1333)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3945, line: 428, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3944, file: !3945, line: 461, baseType: !443, size: 64, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3944, file: !3945, line: 463, baseType: !443, size: 64, offset: 768)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3944, file: !3945, line: 465, baseType: !443, size: 64, offset: 832)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3944, file: !3945, line: 466, baseType: !443, size: 64, offset: 896)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3944, file: !3945, line: 467, baseType: !443, size: 64, offset: 960)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3944, file: !3945, line: 473, baseType: !3982, size: 64, offset: 1024)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3945, line: 10, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3944, file: !3945, line: 480, baseType: !443, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3944, file: !3945, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3944, file: !3945, line: 491, baseType: !543, size: 32, offset: 1184)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3944, file: !3945, line: 501, baseType: !3988, size: 33792, offset: 1536)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3989, line: 448, size: 33792, elements: !3990)
!3989 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3990 = !{!3991, !3992, !3993, !4155, !4156, !4162, !4163}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3988, file: !3989, line: 461, baseType: !13, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3988, file: !3989, line: 468, baseType: !443, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3988, file: !3989, line: 476, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3989, line: 356, size: 33280, align: 512, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3995, file: !3989, line: 358, baseType: !13, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3995, file: !3989, line: 361, baseType: !13, size: 32, offset: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3995, file: !3989, line: 364, baseType: !547, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3995, file: !3989, line: 367, baseType: !547, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3995, file: !3989, line: 370, baseType: !547, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3995, file: !3989, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3995, file: !3989, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3995, file: !3989, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3995, file: !3989, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3995, file: !3989, line: 397, baseType: !4007, size: 32768, offset: 512)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3989, line: 348, size: 32768, elements: !4008)
!4008 = !{!4009, !4024, !4061, !4138, !4151}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4007, file: !3989, line: 349, baseType: !4010, size: 896)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3989, line: 12, size: 896, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4023}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4010, file: !3989, line: 13, baseType: !543, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4010, file: !3989, line: 14, baseType: !543, size: 32, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4010, file: !3989, line: 15, baseType: !543, size: 32, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4010, file: !3989, line: 16, baseType: !543, size: 32, offset: 96)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4010, file: !3989, line: 17, baseType: !543, size: 32, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4010, file: !3989, line: 18, baseType: !543, size: 32, offset: 160)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4010, file: !3989, line: 19, baseType: !543, size: 32, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4010, file: !3989, line: 22, baseType: !4020, size: 640, offset: 224)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 640, elements: !4021)
!4021 = !{!4022}
!4022 = !DISubrange(count: 20)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4010, file: !3989, line: 25, baseType: !543, size: 32, offset: 864)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4007, file: !3989, line: 350, baseType: !4025, size: 4096, align: 128)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3989, line: 34, size: 4096, align: 128, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4046, !4047, !4048, !4050, !4052, !4056}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4025, file: !3989, line: 35, baseType: !361, size: 16)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4025, file: !3989, line: 36, baseType: !361, size: 16, offset: 16)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4025, file: !3989, line: 37, baseType: !361, size: 16, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4025, file: !3989, line: 38, baseType: !361, size: 16, offset: 48)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4025, file: !3989, line: 39, baseType: !4032, size: 128, offset: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4025, file: !3989, line: 39, size: 128, elements: !4033)
!4033 = !{!4034, !4039}
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !3989, line: 40, baseType: !4035, size: 128)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4032, file: !3989, line: 40, size: 128, elements: !4036)
!4036 = !{!4037, !4038}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4035, file: !3989, line: 41, baseType: !547, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4035, file: !3989, line: 42, baseType: !547, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !3989, line: 44, baseType: !4040, size: 128)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4032, file: !3989, line: 44, size: 128, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4040, file: !3989, line: 45, baseType: !543, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4040, file: !3989, line: 46, baseType: !543, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4040, file: !3989, line: 47, baseType: !543, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4040, file: !3989, line: 48, baseType: !543, size: 32, offset: 96)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4025, file: !3989, line: 51, baseType: !543, size: 32, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4025, file: !3989, line: 52, baseType: !543, size: 32, offset: 224)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4025, file: !3989, line: 55, baseType: !4049, size: 1024, offset: 256)
!4049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 1024, elements: !556)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4025, file: !3989, line: 58, baseType: !4051, size: 2048, offset: 1280)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 2048, elements: !398)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4025, file: !3989, line: 60, baseType: !4053, size: 384, offset: 3328)
!4053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 384, elements: !4054)
!4054 = !{!4055}
!4055 = !DISubrange(count: 12)
!4056 = !DIDerivedType(tag: DW_TAG_member, scope: !4025, file: !3989, line: 62, baseType: !4057, size: 384, offset: 3712)
!4057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4025, file: !3989, line: 62, size: 384, elements: !4058)
!4058 = !{!4059, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4057, file: !3989, line: 63, baseType: !4053, size: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4057, file: !3989, line: 64, baseType: !4053, size: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4007, file: !3989, line: 351, baseType: !4062, size: 1088)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3989, line: 79, size: 1088, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4137}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4062, file: !3989, line: 80, baseType: !543, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4062, file: !3989, line: 81, baseType: !543, size: 32, offset: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4062, file: !3989, line: 82, baseType: !543, size: 32, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4062, file: !3989, line: 83, baseType: !543, size: 32, offset: 96)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4062, file: !3989, line: 84, baseType: !543, size: 32, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4062, file: !3989, line: 85, baseType: !543, size: 32, offset: 160)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4062, file: !3989, line: 86, baseType: !543, size: 32, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4062, file: !3989, line: 88, baseType: !4020, size: 640, offset: 224)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4062, file: !3989, line: 89, baseType: !351, size: 8, offset: 864)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4062, file: !3989, line: 90, baseType: !351, size: 8, offset: 872)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4062, file: !3989, line: 91, baseType: !351, size: 8, offset: 880)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4062, file: !3989, line: 92, baseType: !351, size: 8, offset: 888)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4062, file: !3989, line: 93, baseType: !351, size: 8, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4062, file: !3989, line: 94, baseType: !351, size: 8, offset: 904)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4062, file: !3989, line: 95, baseType: !4079, size: 64, offset: 960)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4081, line: 11, size: 128, elements: !4082)
!4081 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4080, file: !4081, line: 12, baseType: !429, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4080, file: !4081, line: 13, baseType: !4085, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4087, line: 103, size: 1344, elements: !4088)
!4087 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4117, !4118, !4119}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4086, file: !4087, line: 109, baseType: !443, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4086, file: !4087, line: 110, baseType: !443, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4086, file: !4087, line: 111, baseType: !443, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4086, file: !4087, line: 112, baseType: !443, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4086, file: !4087, line: 113, baseType: !443, size: 64, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4086, file: !4087, line: 114, baseType: !443, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4086, file: !4087, line: 117, baseType: !443, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4086, file: !4087, line: 118, baseType: !443, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4086, file: !4087, line: 119, baseType: !443, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4086, file: !4087, line: 120, baseType: !443, size: 64, offset: 576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4086, file: !4087, line: 121, baseType: !443, size: 64, offset: 640)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4086, file: !4087, line: 122, baseType: !443, size: 64, offset: 704)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4086, file: !4087, line: 123, baseType: !443, size: 64, offset: 768)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4086, file: !4087, line: 124, baseType: !443, size: 64, offset: 832)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4086, file: !4087, line: 125, baseType: !443, size: 64, offset: 896)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4086, file: !4087, line: 139, baseType: !443, size: 64, offset: 960)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4086, file: !4087, line: 142, baseType: !443, size: 64, offset: 1024)
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !4087, line: 144, baseType: !4107, size: 64, offset: 1088)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4086, file: !4087, line: 144, size: 64, elements: !4108)
!4108 = !{!4109, !4110, !4111}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4107, file: !4087, line: 146, baseType: !361, size: 16)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4107, file: !4087, line: 148, baseType: !547, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4107, file: !4087, line: 150, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4087, line: 59, size: 64, elements: !4113)
!4113 = !{!4114, !4115, !4116}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4112, file: !4087, line: 61, baseType: !547, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4112, file: !4087, line: 63, baseType: !547, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4112, file: !4087, line: 65, baseType: !547, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4086, file: !4087, line: 153, baseType: !443, size: 64, offset: 1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4086, file: !4087, line: 154, baseType: !443, size: 64, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !4087, line: 156, baseType: !4120, size: 64, offset: 1280)
!4120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4086, file: !4087, line: 156, size: 64, elements: !4121)
!4121 = !{!4122, !4123, !4124}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4120, file: !4087, line: 158, baseType: !361, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4120, file: !4087, line: 160, baseType: !547, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4120, file: !4087, line: 162, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4087, line: 69, size: 64, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4125, file: !4087, line: 71, baseType: !547, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4125, file: !4087, line: 73, baseType: !547, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4125, file: !4087, line: 75, baseType: !547, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4125, file: !4087, line: 77, baseType: !547, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4125, file: !4087, line: 80, baseType: !547, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4125, file: !4087, line: 83, baseType: !547, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4125, file: !4087, line: 86, baseType: !547, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4125, file: !4087, line: 88, baseType: !547, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4125, file: !4087, line: 93, baseType: !547, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4125, file: !4087, line: 100, baseType: !547, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4062, file: !3989, line: 96, baseType: !543, size: 32, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4007, file: !3989, line: 352, baseType: !4139, size: 4608, align: 512)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3989, line: 333, size: 4608, align: 512, elements: !4140)
!4140 = !{!4141, !4142, !4149}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4139, file: !3989, line: 334, baseType: !4025, size: 4096, align: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4139, file: !3989, line: 335, baseType: !4143, size: 512, offset: 4096)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3989, line: 312, size: 512, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4143, file: !3989, line: 313, baseType: !547, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4143, file: !3989, line: 314, baseType: !547, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4143, file: !3989, line: 315, baseType: !4148, size: 384, offset: 128)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 384, elements: !1445)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4139, file: !3989, line: 336, baseType: !4150, offset: 4608)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !1352)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4007, file: !3989, line: 353, baseType: !4152, size: 32768)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 32768, elements: !4153)
!4153 = !{!4154}
!4154 = !DISubrange(count: 4096)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3988, file: !3989, line: 484, baseType: !3994, size: 64, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3988, file: !3989, line: 491, baseType: !4157, size: 128, offset: 256)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3989, line: 404, size: 128, elements: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4157, file: !3989, line: 424, baseType: !547, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4157, file: !3989, line: 432, baseType: !13, size: 32, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4157, file: !3989, line: 440, baseType: !13, size: 32, offset: 96)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3988, file: !3989, line: 498, baseType: !4157, size: 128, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3988, file: !3989, line: 508, baseType: !3995, size: 33280, align: 512, offset: 512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3035, file: !3036, line: 16, baseType: !1337, size: 192, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3035, file: !3036, line: 17, baseType: !343, size: 32, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !626, file: !25, line: 1240, baseType: !465, size: 64, offset: 6912)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !626, file: !25, line: 1243, baseType: !543, size: 32, offset: 6976)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !626, file: !25, line: 1245, baseType: !844, size: 64, offset: 7040)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !626, file: !25, line: 1246, baseType: !844, size: 64, offset: 7104)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !626, file: !25, line: 1248, baseType: !544, size: 32, offset: 7168)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !626, file: !25, line: 1249, baseType: !4172, size: 64, offset: 7232)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !25, line: 634, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !626, file: !25, line: 1252, baseType: !1040, size: 256, offset: 7296)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !626, file: !25, line: 1253, baseType: !4176, size: 128, offset: 7552)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4177, line: 21, baseType: !4178)
!4177 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4177, line: 19, size: 128, elements: !4179)
!4179 = !{!4180}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4178, file: !4177, line: 20, baseType: !4181, size: 128)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !3402)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !626, file: !25, line: 1255, baseType: !13, size: 32, offset: 7680)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !626, file: !25, line: 1261, baseType: !791, size: 256, offset: 7744)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !626, file: !25, line: 1267, baseType: !312, size: 64, offset: 8000)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !626, file: !25, line: 1269, baseType: !572, size: 64, offset: 8064)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !626, file: !25, line: 1271, baseType: !4187, size: 448, offset: 8128)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !853, line: 63, size: 448, elements: !4188)
!4188 = !{!4189, !4194, !4195, !4196, !4197, !4198, !4199}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4187, file: !853, line: 64, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!443, !4193, !851}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4187, file: !853, line: 66, baseType: !4190, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4187, file: !853, line: 69, baseType: !429, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4187, file: !853, line: 70, baseType: !100, size: 32, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4187, file: !853, line: 71, baseType: !13, size: 32, offset: 224)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4187, file: !853, line: 74, baseType: !294, size: 128, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4187, file: !853, line: 85, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !626, file: !25, line: 1274, baseType: !795, size: 64, offset: 8576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !626, file: !25, line: 1280, baseType: !795, size: 64, offset: 8640)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !626, file: !25, line: 1283, baseType: !100, size: 32, offset: 8704)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !626, file: !25, line: 1286, baseType: !1796, size: 32, offset: 8736)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !626, file: !25, line: 1289, baseType: !2146, size: 64, offset: 8768)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !626, file: !25, line: 1290, baseType: !665, size: 64, offset: 8832)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !626, file: !25, line: 1297, baseType: !1539, size: 64, offset: 8896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !626, file: !25, line: 1304, baseType: !4209, size: 64, offset: 8960)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4210, line: 49, size: 64, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4211 = !{!4212}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4209, file: !4210, line: 50, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4210, line: 41, size: 512, align: 512, elements: !4215)
!4215 = !{!4216, !4217, !4222}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4214, file: !4210, line: 43, baseType: !323, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4214, file: !4210, line: 45, baseType: !4218, size: 192, offset: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4210, line: 29, size: 192, elements: !4219)
!4219 = !{!4220, !4221}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4218, file: !4210, line: 30, baseType: !294, size: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4218, file: !4210, line: 32, baseType: !429, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4214, file: !4210, line: 46, baseType: !429, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !626, file: !25, line: 1305, baseType: !4209, size: 64, offset: 9024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !626, file: !25, line: 1306, baseType: !1189, size: 128, align: 64, offset: 9088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !626, file: !25, line: 1307, baseType: !1926, size: 256, offset: 9216)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !626, file: !25, line: 1309, baseType: !791, size: 256, offset: 9472)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !626, file: !25, line: 1314, baseType: !100, size: 32, offset: 9728)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !626, file: !25, line: 1317, baseType: !323, size: 32, align: 512, offset: 10240)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !626, file: !25, line: 1318, baseType: !294, size: 128, offset: 10304)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !626, file: !25, line: 1320, baseType: !323, size: 32, offset: 10432)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !626, file: !25, line: 1321, baseType: !294, size: 128, offset: 10496)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !620, file: !621, line: 73, baseType: !100, size: 32, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !620, file: !621, line: 74, baseType: !4234, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1376, line: 42, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !574, file: !511, line: 141, baseType: !4238, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!100, !914, !1185}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !574, file: !511, line: 142, baseType: !4242, size: 64, offset: 768)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!509, !509, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !510, file: !511, line: 96, baseType: !625, size: 64, offset: 832)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !510, file: !511, line: 97, baseType: !443, size: 64, offset: 896)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !510, file: !511, line: 98, baseType: !465, size: 64, offset: 960)
!4250 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !511, line: 100, baseType: !4251, size: 128, offset: 1024)
!4251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !511, line: 100, size: 128, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4251, file: !511, line: 101, baseType: !294, size: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4251, file: !511, line: 102, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !510, file: !511, line: 104, baseType: !294, size: 128, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !510, file: !511, line: 105, baseType: !294, size: 128, offset: 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !510, file: !511, line: 113, baseType: !4259, size: 128, offset: 1408)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !511, line: 109, size: 128, elements: !4260)
!4260 = !{!4261, !4262, !4263}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4259, file: !511, line: 110, baseType: !669, size: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4259, file: !511, line: 111, baseType: !525, size: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4259, file: !511, line: 112, baseType: !1189, size: 128, align: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !503, file: !25, line: 1968, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!312, !509, !474, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4270, line: 10, size: 128, elements: !4271)
!4270 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4269, file: !4270, line: 11, baseType: !2704, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4269, file: !4270, line: 12, baseType: !465, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !503, file: !25, line: 1969, baseType: !4275, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!100, !4234, !474, !100}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !503, file: !25, line: 1970, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!497, !474, !100, !1185}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !503, file: !25, line: 1972, baseType: !4283, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!100, !509, !393, !100}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !503, file: !25, line: 1974, baseType: !4287, size: 64, offset: 320)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!100, !4234, !474, !509, !435, !1185}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !503, file: !25, line: 1976, baseType: !4291, size: 64, offset: 384)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!100, !509, !474, !509}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !503, file: !25, line: 1977, baseType: !4295, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!100, !474, !509}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !503, file: !25, line: 1978, baseType: !4299, size: 64, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!100, !4234, !474, !509, !312}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !503, file: !25, line: 1980, baseType: !4303, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!100, !4234, !474, !509, !435}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !503, file: !25, line: 1982, baseType: !4295, size: 64, offset: 640)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !503, file: !25, line: 1983, baseType: !4308, size: 64, offset: 704)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!100, !4234, !474, !509, !435, !630}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !503, file: !25, line: 1985, baseType: !4312, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!100, !4234, !474, !509, !474, !509, !13}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !503, file: !25, line: 1987, baseType: !4316, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!100, !4234, !509, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !25, line: 226, size: 640, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4334, !4343, !4344, !4349, !4350, !4351}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4320, file: !25, line: 227, baseType: !13, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4320, file: !25, line: 228, baseType: !435, size: 16, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !25, line: 241, baseType: !4325, size: 32, offset: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !25, line: 241, size: 32, elements: !4326)
!4326 = !{!4327, !4328}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4325, file: !25, line: 242, baseType: !480, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4325, file: !25, line: 243, baseType: !4329, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4330, line: 16, baseType: !4331)
!4330 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4330, line: 14, size: 32, elements: !4332)
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4331, file: !4330, line: 15, baseType: !485, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !25, line: 245, baseType: !4335, size: 32, offset: 96)
!4335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !25, line: 245, size: 32, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4335, file: !25, line: 246, baseType: !489, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4335, file: !25, line: 247, baseType: !4339, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4330, line: 20, baseType: !4340)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4330, line: 18, size: 32, elements: !4341)
!4341 = !{!4342}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4340, file: !4330, line: 19, baseType: !493, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4320, file: !25, line: 249, baseType: !635, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4320, file: !25, line: 250, baseType: !4345, size: 128, offset: 192)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !845, line: 13, size: 128, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4345, file: !845, line: 14, baseType: !844, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4345, file: !845, line: 15, baseType: !429, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4320, file: !25, line: 251, baseType: !4345, size: 128, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4320, file: !25, line: 252, baseType: !4345, size: 128, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4320, file: !25, line: 259, baseType: !1274, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !503, file: !25, line: 1988, baseType: !4353, size: 64, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!100, !4234, !914, !4356, !543, !13}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4358, line: 22, size: 1280, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4357, file: !4358, line: 23, baseType: !543, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4357, file: !4358, line: 24, baseType: !435, size: 16, offset: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4357, file: !4358, line: 25, baseType: !13, size: 32, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4357, file: !4358, line: 26, baseType: !1423, size: 32, offset: 96)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4357, file: !4358, line: 27, baseType: !547, size: 64, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4357, file: !4358, line: 28, baseType: !547, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4357, file: !4358, line: 41, baseType: !547, size: 64, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4357, file: !4358, line: 42, baseType: !630, size: 32, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4357, file: !4358, line: 43, baseType: !630, size: 32, offset: 352)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4357, file: !4358, line: 44, baseType: !480, size: 32, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4357, file: !4358, line: 45, baseType: !489, size: 32, offset: 416)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4357, file: !4358, line: 46, baseType: !635, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4357, file: !4358, line: 47, baseType: !4345, size: 128, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4357, file: !4358, line: 48, baseType: !4345, size: 128, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4357, file: !4358, line: 49, baseType: !4345, size: 128, offset: 768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4357, file: !4358, line: 50, baseType: !4345, size: 128, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4357, file: !4358, line: 51, baseType: !547, size: 64, offset: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4357, file: !4358, line: 52, baseType: !547, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4357, file: !4358, line: 53, baseType: !543, size: 32, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4357, file: !4358, line: 54, baseType: !543, size: 32, offset: 1184)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4357, file: !4358, line: 55, baseType: !547, size: 64, offset: 1216)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !503, file: !25, line: 1990, baseType: !4382, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!425, !509, !393, !440}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !503, file: !25, line: 1991, baseType: !4386, size: 64, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!100, !474, !4389, !547, !547}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !25, line: 55, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !503, file: !25, line: 1993, baseType: !4392, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!100, !474, !100}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !503, file: !25, line: 1994, baseType: !4396, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!100, !474, !509, !1274, !13, !435}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !503, file: !25, line: 1997, baseType: !4400, size: 64, offset: 1216)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!100, !4234, !474, !1274, !435}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !503, file: !25, line: 1999, baseType: !4404, size: 64, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!497, !4234, !509, !100}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !503, file: !25, line: 2001, baseType: !4408, size: 64, offset: 1344)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!100, !4234, !509, !497, !100}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !503, file: !25, line: 2003, baseType: !4412, size: 64, offset: 1408)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!100, !4234, !509, !4415}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !25, line: 76, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !503, file: !25, line: 2005, baseType: !4418, size: 64, offset: 1472)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!100, !509, !4415}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !503, file: !25, line: 2006, baseType: !4422, size: 64, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4425, !474}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !25, line: 3192, size: 192, elements: !4427)
!4427 = !{!4428, !4429}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4426, file: !25, line: 3193, baseType: !1044, size: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4426, file: !25, line: 3194, baseType: !543, size: 32, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !475, file: !25, line: 655, baseType: !625, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !475, file: !25, line: 656, baseType: !470, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !475, file: !25, line: 659, baseType: !465, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !475, file: !25, line: 663, baseType: !443, size: 64, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !25, line: 671, baseType: !4435, size: 32, offset: 704)
!4435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !25, line: 671, size: 32, elements: !4436)
!4436 = !{!4437, !4439}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4435, file: !25, line: 672, baseType: !4438, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4435, file: !25, line: 673, baseType: !13, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !475, file: !25, line: 675, baseType: !630, size: 32, offset: 736)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !475, file: !25, line: 676, baseType: !635, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !475, file: !25, line: 677, baseType: !4345, size: 128, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !475, file: !25, line: 678, baseType: !4345, size: 128, offset: 960)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !475, file: !25, line: 679, baseType: !4345, size: 128, offset: 1088)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !475, file: !25, line: 680, baseType: !323, size: 32, offset: 1216)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !475, file: !25, line: 681, baseType: !363, size: 16, offset: 1248)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !475, file: !25, line: 682, baseType: !351, size: 8, offset: 1264)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !475, file: !25, line: 683, baseType: !351, size: 8, offset: 1272)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !475, file: !25, line: 684, baseType: !992, size: 64, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !475, file: !25, line: 691, baseType: !443, size: 64, offset: 1344)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !475, file: !25, line: 692, baseType: !1004, size: 320, offset: 1408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !475, file: !25, line: 694, baseType: !443, size: 64, offset: 1728)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !475, file: !25, line: 695, baseType: !443, size: 64, offset: 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !475, file: !25, line: 697, baseType: !669, size: 128, offset: 1856)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !475, file: !25, line: 698, baseType: !294, size: 128, offset: 1984)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !475, file: !25, line: 707, baseType: !294, size: 128, offset: 2112)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !475, file: !25, line: 708, baseType: !294, size: 128, offset: 2240)
!4458 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !25, line: 709, baseType: !4459, size: 128, offset: 2368)
!4459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !25, line: 709, size: 128, elements: !4460)
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4459, file: !25, line: 710, baseType: !665, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4459, file: !25, line: 711, baseType: !1189, size: 128, align: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !475, file: !25, line: 713, baseType: !797, size: 64, offset: 2496)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !475, file: !25, line: 714, baseType: !797, size: 64, offset: 2560)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !475, file: !25, line: 715, baseType: !343, size: 32, offset: 2624)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !475, file: !25, line: 716, baseType: !343, size: 32, offset: 2656)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !475, file: !25, line: 717, baseType: !343, size: 32, offset: 2688)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !475, file: !25, line: 719, baseType: !343, size: 32, offset: 2720)
!4469 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !25, line: 721, baseType: !4470, size: 64, offset: 2752)
!4470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !25, line: 721, size: 64, elements: !4471)
!4471 = !{!4472, !4473}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4470, file: !25, line: 722, baseType: !1570, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4470, file: !25, line: 723, baseType: !696, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !475, file: !25, line: 725, baseType: !4475, size: 64, offset: 2816)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !25, line: 725, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !475, file: !25, line: 726, baseType: !471, size: 1536, align: 64, offset: 2880)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !475, file: !25, line: 727, baseType: !294, size: 128, offset: 4416)
!4479 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !25, line: 728, baseType: !4480, size: 64, offset: 4544)
!4480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !25, line: 728, size: 64, elements: !4481)
!4481 = !{!4482, !4483, !4486, !4487}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4480, file: !25, line: 729, baseType: !1746, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4480, file: !25, line: 730, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !25, line: 730, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4480, file: !25, line: 731, baseType: !393, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4480, file: !25, line: 732, baseType: !13, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !475, file: !25, line: 735, baseType: !544, size: 32, offset: 4608)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !475, file: !25, line: 738, baseType: !544, size: 32, offset: 4640)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !475, file: !25, line: 739, baseType: !4172, size: 64, offset: 4672)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !475, file: !25, line: 750, baseType: !465, size: 64, offset: 4736)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !471, file: !25, line: 474, baseType: !1044, size: 128, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !471, file: !25, line: 475, baseType: !1004, size: 320, offset: 192)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !471, file: !25, line: 476, baseType: !856, size: 32, offset: 512)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !471, file: !25, line: 477, baseType: !343, size: 32, offset: 544)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !471, file: !25, line: 482, baseType: !2541, size: 128, offset: 576)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !471, file: !25, line: 483, baseType: !443, size: 64, offset: 704)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !471, file: !25, line: 484, baseType: !443, size: 64, offset: 768)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !471, file: !25, line: 485, baseType: !4500, size: 64, offset: 832)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4502)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !25, line: 404, size: 1280, elements: !4503)
!4503 = !{!4504, !4508, !4578, !4582, !4586, !4592, !4597, !4601, !4605, !4609, !4613, !4617, !4618, !4622, !4626, !4630, !4635, !4639, !4645, !4646}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4502, file: !25, line: 405, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!100, !1104, !708}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4502, file: !25, line: 406, baseType: !4509, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!100, !1274, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !4514)
!4514 = !{!4515, !4545, !4559}
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !4513, file: !52, line: 295, baseType: !4516, size: 512)
!4516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4513, file: !52, line: 295, size: 512, elements: !4517)
!4517 = !{!4518, !4544}
!4518 = !DIDerivedType(tag: DW_TAG_member, scope: !4516, file: !52, line: 296, baseType: !4519, size: 448)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4516, file: !52, line: 296, size: 448, elements: !4520)
!4520 = !{!4521, !4522, !4531, !4532, !4533, !4542, !4543}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4519, file: !52, line: 298, baseType: !443, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, scope: !4519, file: !52, line: 299, baseType: !4523, size: 128, offset: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4519, file: !52, line: 299, size: 128, elements: !4524)
!4524 = !{!4525, !4526}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4523, file: !52, line: 300, baseType: !294, size: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, scope: !4523, file: !52, line: 302, baseType: !4527, size: 128)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4523, file: !52, line: 302, size: 128, elements: !4528)
!4528 = !{!4529, !4530}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4527, file: !52, line: 303, baseType: !465, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4527, file: !52, line: 305, baseType: !13, size: 32, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4519, file: !52, line: 310, baseType: !470, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4519, file: !52, line: 311, baseType: !443, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, scope: !4519, file: !52, line: 312, baseType: !4534, size: 64, offset: 320)
!4534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4519, file: !52, line: 312, size: 64, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4534, file: !52, line: 313, baseType: !465, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4534, file: !52, line: 314, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !4539)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !4540)
!4540 = !{!4541}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4539, file: !52, line: 256, baseType: !443, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4519, file: !52, line: 316, baseType: !343, size: 32, offset: 384)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4519, file: !52, line: 317, baseType: !343, size: 32, offset: 416)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4516, file: !52, line: 323, baseType: !1105, size: 512, align: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, scope: !4513, file: !52, line: 325, baseType: !4546, size: 512, offset: 512)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4513, file: !52, line: 325, size: 512, elements: !4547)
!4547 = !{!4548, !4558}
!4548 = !DIDerivedType(tag: DW_TAG_member, scope: !4546, file: !52, line: 326, baseType: !4549, size: 320)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4546, file: !52, line: 326, size: 320, elements: !4550)
!4550 = !{!4551, !4552, !4553, !4554, !4555, !4556, !4557}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4549, file: !52, line: 327, baseType: !443, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4549, file: !52, line: 328, baseType: !443, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4549, file: !52, line: 329, baseType: !443, size: 64, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4549, file: !52, line: 331, baseType: !343, size: 32, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4549, file: !52, line: 332, baseType: !343, size: 32, offset: 224)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4549, file: !52, line: 333, baseType: !343, size: 32, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4549, file: !52, line: 335, baseType: !13, size: 32, offset: 288)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4546, file: !52, line: 339, baseType: !1105, size: 512, align: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, scope: !4513, file: !52, line: 341, baseType: !4560, size: 512, offset: 1024)
!4560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4513, file: !52, line: 341, size: 512, elements: !4561)
!4561 = !{!4562, !4571, !4577}
!4562 = !DIDerivedType(tag: DW_TAG_member, scope: !4560, file: !52, line: 342, baseType: !4563, size: 384)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4560, file: !52, line: 342, size: 384, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4563, file: !52, line: 343, baseType: !443, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4563, file: !52, line: 344, baseType: !443, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4563, file: !52, line: 346, baseType: !465, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4563, file: !52, line: 347, baseType: !465, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4563, file: !52, line: 348, baseType: !465, size: 64, offset: 256)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4563, file: !52, line: 349, baseType: !465, size: 64, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, scope: !4560, file: !52, line: 352, baseType: !4572, size: 256)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4560, file: !52, line: 352, size: 256, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4572, file: !52, line: 353, baseType: !443, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4572, file: !52, line: 354, baseType: !443, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4572, file: !52, line: 356, baseType: !294, size: 128, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4560, file: !52, line: 359, baseType: !1105, size: 512, align: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4502, file: !25, line: 409, baseType: !4579, size: 64, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!100, !470, !708}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4502, file: !25, line: 412, baseType: !4583, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!1185, !470, !4512}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4502, file: !25, line: 414, baseType: !4587, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !25, line: 310, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4502, file: !25, line: 416, baseType: !4593, size: 64, offset: 320)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!100, !1274, !470, !635, !13, !4596, !1761}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4502, file: !25, line: 419, baseType: !4598, size: 64, offset: 384)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!100, !1274, !470, !635, !13, !13, !1104, !465}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4502, file: !25, line: 424, baseType: !4602, size: 64, offset: 448)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!1030, !470, !1030}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4502, file: !25, line: 425, baseType: !4606, size: 64, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4512, !440, !440}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4502, file: !25, line: 426, baseType: !4610, size: 64, offset: 576)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!1185, !4512, !856}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4502, file: !25, line: 427, baseType: !4614, size: 64, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{null, !4512}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4502, file: !25, line: 428, baseType: !1589, size: 64, offset: 704)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4502, file: !25, line: 433, baseType: !4619, size: 64, offset: 768)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!100, !470, !4512, !4512, !172}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4502, file: !25, line: 435, baseType: !4623, size: 64, offset: 832)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!100, !4512}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4502, file: !25, line: 436, baseType: !4627, size: 64, offset: 896)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!1185, !4512, !440, !440}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4502, file: !25, line: 438, baseType: !4631, size: 64, offset: 960)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !4512, !4634, !4634}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4502, file: !25, line: 439, baseType: !4636, size: 64, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!100, !470, !1104}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4502, file: !25, line: 442, baseType: !4640, size: 64, offset: 1088)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!100, !4643, !1274, !2240}
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !25, line: 66, flags: DIFlagFwdDecl)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4502, file: !25, line: 444, baseType: !1753, size: 64, offset: 1152)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4502, file: !25, line: 445, baseType: !4647, size: 64, offset: 1216)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!100, !1592, !1614}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !25, line: 486, baseType: !443, size: 64, offset: 896)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !471, file: !25, line: 487, baseType: !1004, size: 320, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !471, file: !25, line: 488, baseType: !1796, size: 32, offset: 1280)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !471, file: !25, line: 489, baseType: !323, size: 32, offset: 1312)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !471, file: !25, line: 490, baseType: !294, size: 128, offset: 1344)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !471, file: !25, line: 491, baseType: !465, size: 64, offset: 1472)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !460, file: !419, line: 180, baseType: !4657, size: 64, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!425, !1274, !316, !459, !393, !635, !440}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !460, file: !419, line: 182, baseType: !4657, size: 64, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !460, file: !419, line: 184, baseType: !4662, size: 64, offset: 448)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!100, !1274, !316, !459, !1234}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !448, file: !419, line: 90, baseType: !4666, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !448, file: !419, line: 91, baseType: !4668, size: 64, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !409, file: !309, line: 120, baseType: !4670, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!2680, !376}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !409, file: !309, line: 121, baseType: !4674, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!1887, !376}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !409, file: !309, line: 122, baseType: !4678, size: 64, offset: 320)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !376, !2302, !2303}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !308, file: !309, line: 70, baseType: !4682, size: 64, offset: 384)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4684, line: 190, size: 1152, elements: !4685)
!4684 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4685 = !{!4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4777, !4778, !4779, !4780, !4781, !4784}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4683, file: !4684, line: 191, baseType: !343, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4683, file: !4684, line: 192, baseType: !343, size: 32, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4683, file: !4684, line: 202, baseType: !4682, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4683, file: !4684, line: 203, baseType: !312, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4683, file: !4684, line: 205, baseType: !1401, size: 192, align: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4683, file: !4684, line: 207, baseType: !1887, size: 64, offset: 384)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4683, file: !4684, line: 208, baseType: !13, size: 32, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4683, file: !4684, line: 209, baseType: !4694, size: 256, offset: 512)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4683, file: !4684, line: 209, size: 256, elements: !4695)
!4695 = !{!4696, !4705, !4709}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4694, file: !4684, line: 210, baseType: !4697, size: 256)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4684, line: 153, size: 256, elements: !4698)
!4698 = !{!4699, !4700, !4701, !4704}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4697, file: !4684, line: 154, baseType: !443, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4697, file: !4684, line: 156, baseType: !2544, size: 64, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4697, file: !4684, line: 162, baseType: !4702, size: 64, offset: 128)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4684, line: 162, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4697, file: !4684, line: 167, baseType: !443, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4694, file: !4684, line: 211, baseType: !4706, size: 64)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4684, line: 170, size: 64, elements: !4707)
!4707 = !{!4708}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4706, file: !4684, line: 171, baseType: !4682, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4694, file: !4684, line: 212, baseType: !4710, size: 256)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4684, line: 174, size: 256, elements: !4711)
!4711 = !{!4712, !4772, !4775, !4776}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4710, file: !4684, line: 175, baseType: !4713, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4715)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4684, line: 271, size: 768, elements: !4716)
!4716 = !{!4717, !4737, !4741, !4745, !4749, !4753, !4757, !4761, !4762, !4763, !4764, !4768}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4715, file: !4684, line: 276, baseType: !4718, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!100, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4684, line: 251, size: 1216, elements: !4723)
!4723 = !{!4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4722, file: !4684, line: 253, baseType: !4682, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4722, file: !4684, line: 254, baseType: !1274, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4722, file: !4684, line: 255, baseType: !764, size: 64, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4722, file: !4684, line: 256, baseType: !465, size: 64, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4722, file: !4684, line: 259, baseType: !791, size: 256, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4722, file: !4684, line: 260, baseType: !791, size: 256, offset: 512)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4722, file: !4684, line: 261, baseType: !100, size: 32, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4722, file: !4684, line: 262, baseType: !294, size: 128, offset: 832)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4722, file: !4684, line: 263, baseType: !393, size: 64, offset: 960)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4722, file: !4684, line: 265, baseType: !440, size: 64, offset: 1024)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4722, file: !4684, line: 266, baseType: !1185, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4722, file: !4684, line: 267, baseType: !1185, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4722, file: !4684, line: 268, baseType: !1968, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4715, file: !4684, line: 277, baseType: !4738, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4721}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4715, file: !4684, line: 290, baseType: !4742, size: 64, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!100, !764, !465}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4715, file: !4684, line: 292, baseType: !4746, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!465, !764, !1583}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4715, file: !4684, line: 293, baseType: !4750, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!465, !764, !465, !1583}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4715, file: !4684, line: 294, baseType: !4754, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{null, !764, !465}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4715, file: !4684, line: 296, baseType: !4758, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!425, !4721, !393, !440, !635}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4715, file: !4684, line: 306, baseType: !440, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4715, file: !4684, line: 313, baseType: !1185, size: 8, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4715, file: !4684, line: 314, baseType: !4758, size: 64, offset: 576)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4715, file: !4684, line: 317, baseType: !4765, size: 64, offset: 640)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!1698, !4721, !1700}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4715, file: !4684, line: 320, baseType: !4769, size: 64, offset: 704)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!100, !4721, !1234}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4710, file: !4684, line: 176, baseType: !4773, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4684, line: 35, flags: DIFlagFwdDecl)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4710, file: !4684, line: 177, baseType: !635, size: 64, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4710, file: !4684, line: 178, baseType: !4682, size: 64, offset: 192)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4683, file: !4684, line: 215, baseType: !465, size: 64, offset: 768)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4683, file: !4684, line: 221, baseType: !547, size: 64, offset: 832)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4683, file: !4684, line: 223, baseType: !363, size: 16, offset: 896)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4683, file: !4684, line: 224, baseType: !435, size: 16, offset: 912)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4683, file: !4684, line: 225, baseType: !4782, size: 64, offset: 960)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4684, line: 36, flags: DIFlagFwdDecl)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4683, file: !4684, line: 227, baseType: !1189, size: 128, align: 64, offset: 1024)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !308, file: !309, line: 71, baseType: !2842, size: 32, offset: 448)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !308, file: !309, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !308, file: !309, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !308, file: !309, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !308, file: !309, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !308, file: !309, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !305, file: !12, line: 47, baseType: !289, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !305, file: !12, line: 48, baseType: !316, size: 64, offset: 576)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !305, file: !12, line: 49, baseType: !4794, size: 64, offset: 640)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !305, file: !12, line: 50, baseType: !3359, size: 64, offset: 704)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !290, file: !12, line: 418, baseType: !4798, size: 64, offset: 1408)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !4800)
!4800 = !{!4801, !4802, !4807, !4811, !4815, !4819}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4799, file: !12, line: 54, baseType: !431, size: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4799, file: !12, line: 55, baseType: !4803, size: 64, offset: 128)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!425, !4798, !4806, !393}
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4799, file: !12, line: 57, baseType: !4808, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!425, !4798, !4806, !312, !440}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4799, file: !12, line: 59, baseType: !4812, size: 64, offset: 256)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !289, !312}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4799, file: !12, line: 60, baseType: !4816, size: 64, offset: 320)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!100, !289}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4799, file: !12, line: 61, baseType: !4820, size: 64, offset: 384)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !289}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !290, file: !12, line: 419, baseType: !312, size: 64, offset: 1472)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !290, file: !12, line: 420, baseType: !312, size: 64, offset: 1536)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !290, file: !12, line: 421, baseType: !316, size: 64, offset: 1600)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !290, file: !12, line: 424, baseType: !4827, size: 64, offset: 1664)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4829)
!4829 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !290, file: !12, line: 425, baseType: !4831, size: 64, offset: 1728)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !290, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !290, file: !12, line: 435, baseType: !791, size: 256, offset: 1856)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !290, file: !12, line: 437, baseType: !4836, size: 64, offset: 2112)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4838, line: 69, size: 320, elements: !4839)
!4838 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4839 = !{!4840, !4841, !4842, !4859, !4861, !4865, !4866}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4837, file: !4838, line: 70, baseType: !312, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4837, file: !4838, line: 71, baseType: !289, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4837, file: !4838, line: 72, baseType: !4843, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4845)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4838, line: 47, size: 256, elements: !4846)
!4846 = !{!4847, !4848, !4854, !4858}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4845, file: !4838, line: 49, baseType: !13, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4845, file: !4838, line: 51, baseType: !4849, size: 64, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!100, !312, !4852}
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4837)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4845, file: !4838, line: 53, baseType: !4855, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!100, !393, !4852}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4845, file: !4838, line: 55, baseType: !2704, size: 64, offset: 192)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4837, file: !4838, line: 73, baseType: !4860, size: 16, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4837, file: !4838, line: 74, baseType: !4862, size: 8, offset: 208)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !352, line: 16, baseType: !4863)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !354, line: 20, baseType: !4864)
!4864 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4837, file: !4838, line: 75, baseType: !351, size: 8, offset: 216)
!4866 = !DIDerivedType(tag: DW_TAG_member, scope: !4837, file: !4838, line: 76, baseType: !4867, size: 64, offset: 256)
!4867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4837, file: !4838, line: 76, size: 64, elements: !4868)
!4868 = !{!4869, !4870, !4877}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4867, file: !4838, line: 77, baseType: !465, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4867, file: !4838, line: 78, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4873)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4838, line: 86, size: 128, elements: !4874)
!4874 = !{!4875, !4876}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4873, file: !4838, line: 87, baseType: !13, size: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4873, file: !4838, line: 88, baseType: !393, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4867, file: !4838, line: 79, baseType: !4878, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4838, line: 92, size: 256, elements: !4881)
!4881 = !{!4882, !4883, !4884, !4885, !4886}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4880, file: !4838, line: 94, baseType: !13, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4880, file: !4838, line: 95, baseType: !13, size: 32, offset: 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4880, file: !4838, line: 96, baseType: !3047, size: 64, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4880, file: !4838, line: 97, baseType: !4843, size: 64, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4880, file: !4838, line: 98, baseType: !465, size: 64, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !290, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !290, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !290, file: !12, line: 442, baseType: !4827, size: 64, offset: 2240)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !290, file: !12, line: 443, baseType: !4831, size: 64, offset: 2304)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !290, file: !12, line: 444, baseType: !1185, size: 8, offset: 2368)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !290, file: !12, line: 451, baseType: !1185, size: 8, offset: 2376)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !290, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !290, file: !12, line: 455, baseType: !4895, size: 64, offset: 2432)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4897, line: 23, size: 96, elements: !4898)
!4897 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4898 = !{!4899, !4900, !4901}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4896, file: !4897, line: 24, baseType: !100, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4896, file: !4897, line: 24, baseType: !100, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4896, file: !4897, line: 24, baseType: !100, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !290, file: !12, line: 458, baseType: !4903, size: 64, offset: 2496)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!100}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !290, file: !12, line: 460, baseType: !4907, size: 4032, align: 512, offset: 2560)
!4907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4908, size: 4032, elements: !4922)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !4909)
!4909 = !{!4910, !4911, !4912}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4908, file: !12, line: 363, baseType: !465, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4908, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4908, file: !12, line: 367, baseType: !4913, size: 448, offset: 128)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !4914)
!4914 = !{!4915, !4916}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4913, file: !12, line: 320, baseType: !289, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4913, file: !12, line: 321, baseType: !4917, size: 384, offset: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4918, line: 40, size: 384, elements: !4919)
!4918 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4919 = !{!4920}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4917, file: !4918, line: 41, baseType: !4921, size: 384, align: 64)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 384, align: 64, elements: !3483)
!4922 = !{!4923}
!4923 = !DISubrange(count: 7)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !290, file: !12, line: 463, baseType: !4925, size: 192, offset: 6592)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4926, line: 8, size: 192, elements: !4927)
!4926 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4927 = !{!4928, !4929, !4930}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4925, file: !4926, line: 10, baseType: !13, size: 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4925, file: !4926, line: 11, baseType: !758, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4925, file: !4926, line: 12, baseType: !4931, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4933, line: 59, size: 48, elements: !4934)
!4933 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4934 = !{!4935, !4936, !4937, !4938, !4939, !4940}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4932, file: !4933, line: 60, baseType: !1904, size: 16)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4932, file: !4933, line: 61, baseType: !1904, size: 16, offset: 16)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4932, file: !4933, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4932, file: !4933, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4932, file: !4933, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4932, file: !4933, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !290, file: !12, line: 465, baseType: !443, size: 64, offset: 6784)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !290, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !290, file: !12, line: 470, baseType: !294, size: 128, offset: 6912)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !290, file: !12, line: 471, baseType: !4945, size: 64, offset: 7040)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4947, line: 33, size: 96, elements: !4948)
!4947 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4948 = !{!4949, !4950, !4951, !4952}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4946, file: !4947, line: 37, baseType: !100, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4946, file: !4947, line: 43, baseType: !100, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4946, file: !4947, line: 45, baseType: !363, size: 16, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4946, file: !4947, line: 47, baseType: !363, size: 16, offset: 80)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !290, file: !12, line: 476, baseType: !4954, size: 64, offset: 7104)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !4956)
!4956 = !{!4957, !4973, !4974, !4975}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4955, file: !12, line: 379, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4960, line: 204, baseType: !4961)
!4960 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4960, line: 197, size: 192, elements: !4962)
!4962 = !{!4963, !4965, !4966, !4967, !4969, !4971}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4961, file: !4960, line: 198, baseType: !4964, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4960, line: 21, baseType: !544)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4961, file: !4960, line: 199, baseType: !355, size: 8, offset: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4961, file: !4960, line: 200, baseType: !355, size: 8, offset: 40)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4961, file: !4960, line: 201, baseType: !4968, size: 16, offset: 48)
!4968 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4960, line: 17, baseType: !362)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4961, file: !4960, line: 202, baseType: !4970, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4960, line: 16, baseType: !548)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4961, file: !4960, line: 203, baseType: !4972, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4960, line: 22, baseType: !548)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4955, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4955, file: !12, line: 381, baseType: !393, size: 64, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4955, file: !12, line: 382, baseType: !393, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !290, file: !12, line: 477, baseType: !4955, size: 256, offset: 7168)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !290, file: !12, line: 480, baseType: !4978, size: 64, offset: 7424)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !290, file: !12, line: 483, baseType: !4981, size: 64, offset: 7488)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !290, file: !12, line: 488, baseType: !393, size: 64, offset: 7552)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !290, file: !12, line: 492, baseType: !465, size: 64, offset: 7616)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !290, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !290, file: !12, line: 495, baseType: !465, size: 64, offset: 7744)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !290, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !290, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !290, file: !12, line: 500, baseType: !4990, size: 64, offset: 7872)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4992, line: 45, baseType: !4993)
!4992 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !290, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !290, file: !12, line: 504, baseType: !4996, size: 64, offset: 8000)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4999, line: 96, size: 192, elements: !5000)
!4999 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5000 = !{!5001, !5002, !5045, !5046}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4998, file: !4999, line: 97, baseType: !13, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4998, file: !4999, line: 98, baseType: !5003, size: 64, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4999, line: 24, size: 3072, elements: !5005)
!5005 = !{!5006, !5008, !5009, !5010, !5011, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5042, !5043, !5044}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5004, file: !4999, line: 26, baseType: !5007, size: 128)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 128, elements: !3483)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5004, file: !4999, line: 27, baseType: !5007, size: 128, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5004, file: !4999, line: 28, baseType: !100, size: 32, offset: 256)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5004, file: !4999, line: 31, baseType: !323, size: 32, align: 512, offset: 512)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5004, file: !4999, line: 32, baseType: !5012, size: 960, offset: 576)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5013, line: 206, size: 960, elements: !5014)
!5013 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5014 = !{!5015, !5016, !5019, !5021, !5022, !5024}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5012, file: !5013, line: 207, baseType: !1192, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5012, file: !5013, line: 208, baseType: !5017, size: 256, offset: 64)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5018, size: 256, elements: !1333)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5012, file: !5013, line: 209, baseType: !5020, size: 256, offset: 320)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !1333)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5012, file: !5013, line: 213, baseType: !429, size: 64, offset: 576)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5012, file: !5013, line: 215, baseType: !5023, size: 256, offset: 640)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 256, elements: !1333)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5012, file: !5013, line: 216, baseType: !351, size: 8, offset: 896)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5004, file: !4999, line: 33, baseType: !443, size: 64, offset: 1536)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5004, file: !4999, line: 34, baseType: !443, size: 64, offset: 1600)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5004, file: !4999, line: 35, baseType: !1185, size: 8, offset: 1664)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5004, file: !4999, line: 36, baseType: !2451, size: 320, offset: 1728)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5004, file: !4999, line: 37, baseType: !1926, size: 256, offset: 2048)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5004, file: !4999, line: 38, baseType: !1189, size: 128, align: 64, offset: 2304)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5004, file: !4999, line: 39, baseType: !5032, size: 64, offset: 2432)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4999, line: 49, size: 768, elements: !5034)
!5034 = !{!5035, !5036, !5037, !5038, !5039, !5040, !5041}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5033, file: !4999, line: 50, baseType: !323, size: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5033, file: !4999, line: 51, baseType: !5020, size: 256, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5033, file: !4999, line: 53, baseType: !5020, size: 256, offset: 320)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5033, file: !4999, line: 54, baseType: !443, size: 64, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5033, file: !4999, line: 55, baseType: !5032, size: 64, offset: 640)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5033, file: !4999, line: 56, baseType: !100, size: 32, offset: 704)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5033, file: !4999, line: 57, baseType: !100, size: 32, offset: 736)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5004, file: !4999, line: 40, baseType: !443, size: 64, offset: 2496)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5004, file: !4999, line: 42, baseType: !100, size: 32, offset: 2560)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5004, file: !4999, line: 43, baseType: !4997, size: 64, offset: 2624)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4998, file: !4999, line: 99, baseType: !2912, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4998, file: !4999, line: 100, baseType: !5047, size: 64, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4999, line: 63, size: 3008, elements: !5049)
!5049 = !{!5050, !5051, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5048, file: !4999, line: 64, baseType: !5032, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5048, file: !4999, line: 65, baseType: !5052, size: 192, offset: 64)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5032, size: 192, elements: !394)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5048, file: !4999, line: 67, baseType: !100, size: 32, offset: 256)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5048, file: !4999, line: 68, baseType: !791, size: 256, offset: 320)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5048, file: !4999, line: 69, baseType: !323, size: 32, offset: 576)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5048, file: !4999, line: 70, baseType: !791, size: 256, offset: 640)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5048, file: !4999, line: 71, baseType: !443, size: 64, offset: 896)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5048, file: !4999, line: 72, baseType: !443, size: 64, offset: 960)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5048, file: !4999, line: 73, baseType: !443, size: 64, offset: 1024)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5048, file: !4999, line: 74, baseType: !443, size: 64, offset: 1088)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5048, file: !4999, line: 75, baseType: !443, size: 64, offset: 1152)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5048, file: !4999, line: 76, baseType: !443, size: 64, offset: 1216)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5048, file: !4999, line: 77, baseType: !443, size: 64, offset: 1280)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5048, file: !4999, line: 78, baseType: !443, size: 64, offset: 1344)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5048, file: !4999, line: 79, baseType: !1185, size: 8, offset: 1408)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5048, file: !4999, line: 80, baseType: !443, size: 64, offset: 1472)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5048, file: !4999, line: 81, baseType: !791, size: 256, offset: 1536)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5048, file: !4999, line: 82, baseType: !1199, size: 256, offset: 1792)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5048, file: !4999, line: 84, baseType: !343, size: 32, offset: 2048)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5048, file: !4999, line: 87, baseType: !443, size: 64, offset: 2112)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5048, file: !4999, line: 88, baseType: !443, size: 64, offset: 2176)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5048, file: !4999, line: 89, baseType: !2802, size: 704, offset: 2240)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5048, file: !4999, line: 90, baseType: !4997, size: 64, offset: 2944)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !290, file: !12, line: 515, baseType: !5075, size: 64, offset: 8064)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5077, line: 117, size: 128, elements: !5078)
!5077 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5078 = !{!5079, !5080, !5081}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5076, file: !5077, line: 118, baseType: !1394, size: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5076, file: !5077, line: 119, baseType: !1394, size: 32, offset: 32)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5076, file: !5077, line: 120, baseType: !429, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !290, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !290, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !290, file: !12, line: 520, baseType: !5085, size: 64, offset: 8192)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !290, file: !12, line: 523, baseType: !5087, size: 64, offset: 8256)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !290, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !290, file: !12, line: 525, baseType: !5092, size: 64, offset: 8384)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !290, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !290, file: !12, line: 533, baseType: !465, size: 64, offset: 8512)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !290, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !290, file: !12, line: 535, baseType: !5099, size: 64, offset: 8640)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !290, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !290, file: !12, line: 539, baseType: !100, size: 32, offset: 8736)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !290, file: !12, line: 540, baseType: !5103, size: 64, offset: 8768)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5105, line: 32, size: 64, elements: !5106)
!5105 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5106 = !{!5107, !5108}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5104, file: !5105, line: 33, baseType: !1394, size: 32)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5104, file: !5105, line: 34, baseType: !1394, size: 32, offset: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !290, file: !12, line: 563, baseType: !294, size: 128, offset: 8832)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !290, file: !12, line: 565, baseType: !294, size: 128, offset: 8960)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !290, file: !12, line: 568, baseType: !5112, size: 64, offset: 9088)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !290, file: !12, line: 570, baseType: !343, size: 32, offset: 9152)
!5114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !295, line: 113, baseType: !547)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !298)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stripe_c", file: !2, line: 31, size: 512, elements: !5119)
!5119 = !{!5120, !5121, !5122, !5123, !5124, !5125, !5282, !5283}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "stripes", scope: !5118, file: !2, line: 32, baseType: !1423, size: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "stripes_shift", scope: !5118, file: !2, line: 33, baseType: !100, size: 32, offset: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "stripe_width", scope: !5118, file: !2, line: 36, baseType: !1030, size: 64, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5118, file: !2, line: 38, baseType: !1423, size: 32, offset: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size_shift", scope: !5118, file: !2, line: 39, baseType: !100, size: 32, offset: 160)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !5118, file: !2, line: 42, baseType: !5126, size: 64, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_target", file: !180, line: 296, size: 640, elements: !5128)
!5128 = !{!5129, !5132, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5127, file: !180, line: 297, baseType: !5130, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DICompositeType(tag: DW_TAG_structure_type, name: "dm_table", file: !180, line: 20, flags: DIFlagFwdDecl)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5127, file: !180, line: 298, baseType: !5133, size: 64, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "target_type", file: !180, line: 185, size: 1856, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139, !5141, !5147, !5152, !5157, !5167, !5172, !5178, !5183, !5185, !5187, !5189, !5194, !5196, !5202, !5207, !5213, !5215, !5217, !5235, !5241, !5252, !5257, !5262}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !5134, file: !180, line: 186, baseType: !5114, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5134, file: !180, line: 187, baseType: !312, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !5134, file: !180, line: 188, baseType: !289, size: 64, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5134, file: !180, line: 189, baseType: !5140, size: 96, offset: 192)
!5140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !394)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !5134, file: !180, line: 190, baseType: !5142, size: 64, offset: 320)
!5142 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_ctr_fn", file: !180, line: 46, baseType: !5143)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!100, !5126, !13, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !5134, file: !180, line: 191, baseType: !5148, size: 64, offset: 384)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_dtr_fn", file: !180, line: 53, baseType: !5149)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{null, !5126}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5134, file: !180, line: 192, baseType: !5153, size: 64, offset: 448)
!5153 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_map_fn", file: !180, line: 62, baseType: !5154)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!100, !5126, !1060}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "clone_and_map_rq", scope: !5134, file: !180, line: 193, baseType: !5158, size: 64, offset: 512)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_clone_and_map_request_fn", file: !180, line: 63, baseType: !5159)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!100, !5126, !1674, !5162, !5166}
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "map_info", file: !180, line: 38, size: 64, elements: !5164)
!5164 = !{!5165}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5163, file: !180, line: 39, baseType: !465, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "release_clone_rq", scope: !5134, file: !180, line: 194, baseType: !5168, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_release_clone_request_fn", file: !180, line: 67, baseType: !5169)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !1674, !5162}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !5134, file: !180, line: 195, baseType: !5173, size: 64, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_endio_fn", file: !180, line: 78, baseType: !5174)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!100, !5126, !1060, !5177}
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "rq_end_io", scope: !5134, file: !180, line: 196, baseType: !5179, size: 64, offset: 704)
!5179 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_request_endio_fn", file: !180, line: 80, baseType: !5180)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!100, !5126, !1674, !1070, !5162}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "presuspend", scope: !5134, file: !180, line: 197, baseType: !5184, size: 64, offset: 768)
!5184 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_presuspend_fn", file: !180, line: 84, baseType: !5149)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "presuspend_undo", scope: !5134, file: !180, line: 198, baseType: !5186, size: 64, offset: 832)
!5186 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_presuspend_undo_fn", file: !180, line: 85, baseType: !5149)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "postsuspend", scope: !5134, file: !180, line: 199, baseType: !5188, size: 64, offset: 896)
!5188 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_postsuspend_fn", file: !180, line: 86, baseType: !5149)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "preresume", scope: !5134, file: !180, line: 200, baseType: !5190, size: 64, offset: 960)
!5190 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_preresume_fn", file: !180, line: 87, baseType: !5191)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!100, !5126}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5134, file: !180, line: 201, baseType: !5195, size: 64, offset: 1024)
!5195 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_resume_fn", file: !180, line: 88, baseType: !5149)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5134, file: !180, line: 202, baseType: !5197, size: 64, offset: 1088)
!5197 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_status_fn", file: !180, line: 90, baseType: !5198)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{null, !5126, !5201, !13, !393, !13}
!5201 = !DIDerivedType(tag: DW_TAG_typedef, name: "status_type_t", file: !180, line: 36, baseType: !179)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !5134, file: !180, line: 203, baseType: !5203, size: 64, offset: 1152)
!5203 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_message_fn", file: !180, line: 93, baseType: !5204)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!100, !5126, !13, !5146, !393, !13}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ioctl", scope: !5134, file: !180, line: 204, baseType: !5208, size: 64, offset: 1216)
!5208 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_prepare_ioctl_fn", file: !180, line: 96, baseType: !5209)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!100, !5126, !5212}
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !5134, file: !180, line: 205, baseType: !5214, size: 64, offset: 1280)
!5214 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_report_zones_fn", file: !180, line: 108, baseType: !5191)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5134, file: !180, line: 206, baseType: !5216, size: 64, offset: 1344)
!5216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_busy_fn", file: !180, line: 143, baseType: !5191)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_devices", scope: !5134, file: !180, line: 207, baseType: !5218, size: 64, offset: 1408)
!5218 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_iterate_devices_fn", file: !180, line: 131, baseType: !5219)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!100, !5126, !5222, !465}
!5222 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterate_devices_callout_fn", file: !180, line: 121, baseType: !5223)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!100, !5126, !5226, !1030, !1030, !465}
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_dev", file: !180, line: 166, size: 320, elements: !5228)
!5228 = !{!5229, !5230, !5233, !5234}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5227, file: !180, line: 167, baseType: !1026, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "dax_dev", scope: !5227, file: !180, line: 168, baseType: !5231, size: 64, offset: 64)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DICompositeType(tag: DW_TAG_structure_type, name: "dax_device", file: !180, line: 168, flags: DIFlagFwdDecl)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5227, file: !180, line: 169, baseType: !2159, size: 32, offset: 128)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5227, file: !180, line: 170, baseType: !3401, size: 128, offset: 160)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "io_hints", scope: !5134, file: !180, line: 208, baseType: !5236, size: 64, offset: 1472)
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_io_hints_fn", file: !180, line: 135, baseType: !5237)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{null, !5126, !5240}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "direct_access", scope: !5134, file: !180, line: 209, baseType: !5242, size: 64, offset: 1536)
!5242 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_dax_direct_access_fn", file: !180, line: 150, baseType: !5243)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!429, !5126, !443, !429, !185, !1761, !5246}
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pfn_t", file: !5248, line: 15, baseType: !5249)
!5248 = !DIFile(filename: "./include/linux/pfn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a693dd30ba9d1ee94200d6721457a015")
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5248, line: 13, size: 64, elements: !5250)
!5250 = !{!5251}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5249, file: !5248, line: 14, baseType: !547, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "dax_zero_page_range", scope: !5134, file: !180, line: 210, baseType: !5253, size: 64, offset: 1600)
!5253 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_dax_zero_page_range_fn", file: !180, line: 153, baseType: !5254)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!100, !5126, !443, !440}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dax_recovery_write", scope: !5134, file: !180, line: 211, baseType: !5258, size: 64, offset: 1664)
!5258 = !DIDerivedType(tag: DW_TAG_typedef, name: "dm_dax_recovery_write_fn", file: !180, line: 161, baseType: !5259)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!440, !5126, !443, !465, !440, !1614}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5134, file: !180, line: 214, baseType: !294, size: 128, offset: 1728)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !5127, file: !180, line: 301, baseType: !1030, size: 64, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5127, file: !180, line: 302, baseType: !1030, size: 64, offset: 192)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "max_io_len", scope: !5127, file: !180, line: 305, baseType: !1423, size: 32, offset: 256)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "num_flush_bios", scope: !5127, file: !180, line: 315, baseType: !13, size: 32, offset: 288)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "num_discard_bios", scope: !5127, file: !180, line: 321, baseType: !13, size: 32, offset: 320)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "num_secure_erase_bios", scope: !5127, file: !180, line: 327, baseType: !13, size: 32, offset: 352)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "num_write_zeroes_bios", scope: !5127, file: !180, line: 333, baseType: !13, size: 32, offset: 384)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "per_io_data_size", scope: !5127, file: !180, line: 339, baseType: !13, size: 32, offset: 416)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5127, file: !180, line: 342, baseType: !465, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5127, file: !180, line: 345, baseType: !393, size: 64, offset: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "flush_supported", scope: !5127, file: !180, line: 351, baseType: !1185, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "discards_supported", scope: !5127, file: !180, line: 357, baseType: !1185, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_granularity", scope: !5127, file: !180, line: 363, baseType: !1185, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_granularity", scope: !5127, file: !180, line: 369, baseType: !1185, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_granularity", scope: !5127, file: !180, line: 375, baseType: !1185, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "limit_swap_bios", scope: !5127, file: !180, line: 380, baseType: !1185, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_zone_append", scope: !5127, file: !180, line: 386, baseType: !1185, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "accounts_remapped_io", scope: !5127, file: !180, line: 392, baseType: !1185, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "needs_bio_set_dev", scope: !5127, file: !180, line: 398, baseType: !1185, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_event", scope: !5118, file: !2, line: 45, baseType: !1926, size: 256, offset: 256)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "stripe", scope: !5118, file: !2, line: 47, baseType: !5284, offset: 512)
!5284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5285, elements: !1352)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stripe", file: !2, line: 24, size: 192, elements: !5286)
!5286 = !{!5287, !5288, !5289}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5285, file: !2, line: 25, baseType: !5226, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "physical_start", scope: !5285, file: !2, line: 26, baseType: !1030, size: 64, offset: 64)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5285, file: !2, line: 28, baseType: !343, size: 32, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5291)
!5294 = !{!0, !5295, !7, !5300, !5302, !5304, !5309, !5311, !5316, !5321, !5326, !5331, !5336, !5358, !5360, !5362, !5365, !5370, !5372, !5375, !5377, !5380, !5382, !5384, !5389, !5394, !5399, !5404, !5409, !5411}
!5295 = !DIGlobalVariableExpression(var: !5296, expr: !DIExpression())
!5296 = distinct !DIGlobalVariable(scope: null, file: !2, line: 492, type: !5297, isLocal: true, isDefinition: true)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !5298)
!5298 = !{!5299}
!5299 = !DISubrange(count: 54)
!5300 = !DIGlobalVariableExpression(var: !5301, expr: !DIExpression())
!5301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 466, type: !3734, isLocal: true, isDefinition: true)
!5302 = !DIGlobalVariableExpression(var: !5303, expr: !DIExpression())
!5303 = distinct !DIGlobalVariable(name: "stripe_target", scope: !9, file: !2, line: 465, type: !5134, isLocal: true, isDefinition: true)
!5304 = !DIGlobalVariableExpression(var: !5305, expr: !DIExpression())
!5305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !5306, isLocal: true, isDefinition: true)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5307)
!5307 = !{!5308}
!5308 = !DISubrange(count: 21)
!5309 = !DIGlobalVariableExpression(var: !5310, expr: !DIExpression())
!5310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !5306, isLocal: true, isDefinition: true)
!5311 = !DIGlobalVariableExpression(var: !5312, expr: !DIExpression())
!5312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !5313, isLocal: true, isDefinition: true)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5314)
!5314 = !{!5315}
!5315 = !DISubrange(count: 19)
!5316 = !DIGlobalVariableExpression(var: !5317, expr: !DIExpression())
!5317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !5318, isLocal: true, isDefinition: true)
!5318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !5319)
!5319 = !{!5320}
!5320 = !DISubrange(count: 49)
!5321 = !DIGlobalVariableExpression(var: !5322, expr: !DIExpression())
!5322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !5323, isLocal: true, isDefinition: true)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5324)
!5324 = !{!5325}
!5325 = !DISubrange(count: 42)
!5326 = !DIGlobalVariableExpression(var: !5327, expr: !DIExpression())
!5327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !5328, isLocal: true, isDefinition: true)
!5328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5329)
!5329 = !{!5330}
!5330 = !DISubrange(count: 34)
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !5333, isLocal: true, isDefinition: true)
!5333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5334)
!5334 = !{!5335}
!5335 = !DISubrange(count: 45)
!5336 = !DIGlobalVariableExpression(var: !5337, expr: !DIExpression())
!5337 = distinct !DIGlobalVariable(name: "__key", scope: !5338, file: !2, line: 138, type: !675, isLocal: true, isDefinition: true)
!5338 = distinct !DISubprogram(name: "stripe_ctr", scope: !2, file: !2, line: 88, type: !5144, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5339)
!5339 = !{!5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5353, !5354, !5357}
!5340 = !DILocalVariable(name: "ti", arg: 1, scope: !5338, file: !2, line: 88, type: !5126)
!5341 = !DILocalVariable(name: "argc", arg: 2, scope: !5338, file: !2, line: 88, type: !13)
!5342 = !DILocalVariable(name: "argv", arg: 3, scope: !5338, file: !2, line: 88, type: !5146)
!5343 = !DILocalVariable(name: "sc", scope: !5338, file: !2, line: 90, type: !5117)
!5344 = !DILocalVariable(name: "width", scope: !5338, file: !2, line: 91, type: !1030)
!5345 = !DILocalVariable(name: "tmp_len", scope: !5338, file: !2, line: 91, type: !1030)
!5346 = !DILocalVariable(name: "stripes", scope: !5338, file: !2, line: 92, type: !1423)
!5347 = !DILocalVariable(name: "chunk_size", scope: !5338, file: !2, line: 93, type: !1423)
!5348 = !DILocalVariable(name: "r", scope: !5338, file: !2, line: 94, type: !100)
!5349 = !DILocalVariable(name: "i", scope: !5338, file: !2, line: 95, type: !13)
!5350 = !DILocalVariable(name: "__base", scope: !5351, file: !2, line: 113, type: !1423)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !2, line: 113, column: 6)
!5352 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 113, column: 6)
!5353 = !DILocalVariable(name: "__rem", scope: !5351, file: !2, line: 113, type: !1423)
!5354 = !DILocalVariable(name: "__base", scope: !5355, file: !2, line: 119, type: !1423)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 119, column: 6)
!5356 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 119, column: 6)
!5357 = !DILocalVariable(name: "__rem", scope: !5355, file: !2, line: 119, type: !1423)
!5358 = !DIGlobalVariableExpression(var: !5359, expr: !DIExpression())
!5359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !5328, isLocal: true, isDefinition: true)
!5360 = !DIGlobalVariableExpression(var: !5361, expr: !DIExpression())
!5361 = distinct !DIGlobalVariable(scope: null, file: !222, line: 480, type: !5306, isLocal: true, isDefinition: true)
!5362 = !DIGlobalVariableExpression(var: !5363, expr: !DIExpression())
!5363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !5364, isLocal: true, isDefinition: true)
!5364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !4922)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !5367, isLocal: true, isDefinition: true)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5368)
!5368 = !{!5369}
!5369 = !DISubrange(count: 23)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !1444, isLocal: true, isDefinition: true)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !5374, isLocal: true, isDefinition: true)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1333)
!5375 = !DIGlobalVariableExpression(var: !5376, expr: !DIExpression())
!5376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !5374, isLocal: true, isDefinition: true)
!5377 = !DIGlobalVariableExpression(var: !5378, expr: !DIExpression())
!5378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !5379, isLocal: true, isDefinition: true)
!5379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !394)
!5380 = !DIGlobalVariableExpression(var: !5381, expr: !DIExpression())
!5381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !5379, isLocal: true, isDefinition: true)
!5382 = !DIGlobalVariableExpression(var: !5383, expr: !DIExpression())
!5383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !3734, isLocal: true, isDefinition: true)
!5384 = !DIGlobalVariableExpression(var: !5385, expr: !DIExpression())
!5385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !5386, isLocal: true, isDefinition: true)
!5386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5387)
!5387 = !{!5388}
!5388 = !DISubrange(count: 9)
!5389 = !DIGlobalVariableExpression(var: !5390, expr: !DIExpression())
!5390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !5391, isLocal: true, isDefinition: true)
!5391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5392)
!5392 = !{!5393}
!5393 = !DISubrange(count: 39)
!5394 = !DIGlobalVariableExpression(var: !5395, expr: !DIExpression())
!5395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !5396, isLocal: true, isDefinition: true)
!5396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5397)
!5397 = !{!5398}
!5398 = !DISubrange(count: 28)
!5399 = !DIGlobalVariableExpression(var: !5400, expr: !DIExpression())
!5400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !5401, isLocal: true, isDefinition: true)
!5401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5402)
!5402 = !{!5403}
!5403 = !DISubrange(count: 26)
!5404 = !DIGlobalVariableExpression(var: !5405, expr: !DIExpression())
!5405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !5406, isLocal: true, isDefinition: true)
!5406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5407)
!5407 = !{!5408}
!5408 = !DISubrange(count: 31)
!5409 = !DIGlobalVariableExpression(var: !5410, expr: !DIExpression())
!5410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !5306, isLocal: true, isDefinition: true)
!5411 = !DIGlobalVariableExpression(var: !5412, expr: !DIExpression())
!5412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !5413, isLocal: true, isDefinition: true)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !3483)
!5414 = !{i32 7, !"Dwarf Version", i32 5}
!5415 = !{i32 2, !"Debug Info Version", i32 3}
!5416 = !{i32 1, !"wchar_size", i32 2}
!5417 = !{i32 8, !"cf-protection-branch", i32 1}
!5418 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5419 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5420 = !{i32 1, !"Code Model", i32 2}
!5421 = !{i32 1, !"override-stack-alignment", i32 8}
!5422 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5423 = distinct !DISubprogram(name: "dm_stripe_init", scope: !2, file: !2, line: 482, type: !4904, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5424)
!5424 = !{!5425}
!5425 = !DILocalVariable(name: "r", scope: !5423, file: !2, line: 484, type: !100)
!5426 = !DILocation(line: 484, column: 2, scope: !5423)
!5427 = !DILocation(line: 484, column: 6, scope: !5423)
!5428 = !DILocation(line: 486, column: 17, scope: !5423)
!5429 = !DILocation(line: 486, column: 15, scope: !5423)
!5430 = !DILocation(line: 487, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 487, column: 6)
!5432 = !DILocation(line: 487, column: 6, scope: !5423)
!5433 = !DILocation(line: 488, column: 3, scope: !5431)
!5434 = !DILocation(line: 489, column: 6, scope: !5423)
!5435 = !DILocation(line: 489, column: 4, scope: !5423)
!5436 = !DILocation(line: 490, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 490, column: 6)
!5438 = !DILocation(line: 490, column: 8, scope: !5437)
!5439 = !DILocation(line: 490, column: 6, scope: !5423)
!5440 = !DILocation(line: 491, column: 21, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !2, line: 490, column: 13)
!5442 = !DILocation(line: 491, column: 3, scope: !5441)
!5443 = !DILocation(line: 492, column: 3, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 492, column: 3)
!5445 = !DILocation(line: 492, column: 3, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5444, file: !2, line: 492, column: 3)
!5447 = !DILocation(line: 493, column: 2, scope: !5441)
!5448 = !DILocation(line: 495, column: 9, scope: !5423)
!5449 = !DILocation(line: 495, column: 2, scope: !5423)
!5450 = !DILocation(line: 496, column: 1, scope: !5423)
!5451 = !DISubprogram(name: "alloc_workqueue", scope: !191, file: !191, line: 461, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!2146, !312, !13, !100, null}
!5454 = !DISubprogram(name: "dm_register_target", scope: !180, file: !180, line: 407, type: !5455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!100, !5133}
!5457 = !DISubprogram(name: "destroy_workqueue", scope: !191, file: !191, line: 488, type: !5458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !2146}
!5460 = !DISubprogram(name: "_printk", scope: !5461, file: !5461, line: 153, type: !5462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5461 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!100, !312, null}
!5464 = distinct !DISubprogram(name: "dm_stripe_exit", scope: !2, file: !2, line: 498, type: !3597, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5465 = !DILocation(line: 500, column: 2, scope: !5464)
!5466 = !DILocation(line: 501, column: 20, scope: !5464)
!5467 = !DILocation(line: 501, column: 2, scope: !5464)
!5468 = !DILocation(line: 502, column: 1, scope: !5464)
!5469 = !DISubprogram(name: "dm_unregister_target", scope: !180, file: !180, line: 408, type: !5470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{null, !5133}
!5472 = !DILocation(line: 88, column: 41, scope: !5338)
!5473 = !DILocation(line: 88, column: 58, scope: !5338)
!5474 = !DILocation(line: 88, column: 71, scope: !5338)
!5475 = !DILocation(line: 90, column: 2, scope: !5338)
!5476 = !DILocation(line: 90, column: 19, scope: !5338)
!5477 = !DILocation(line: 91, column: 2, scope: !5338)
!5478 = !DILocation(line: 91, column: 11, scope: !5338)
!5479 = !DILocation(line: 91, column: 18, scope: !5338)
!5480 = !DILocation(line: 92, column: 2, scope: !5338)
!5481 = !DILocation(line: 92, column: 11, scope: !5338)
!5482 = !DILocation(line: 93, column: 2, scope: !5338)
!5483 = !DILocation(line: 93, column: 11, scope: !5338)
!5484 = !DILocation(line: 94, column: 2, scope: !5338)
!5485 = !DILocation(line: 94, column: 6, scope: !5338)
!5486 = !DILocation(line: 95, column: 2, scope: !5338)
!5487 = !DILocation(line: 95, column: 15, scope: !5338)
!5488 = !DILocation(line: 97, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 97, column: 6)
!5490 = !DILocation(line: 97, column: 11, scope: !5489)
!5491 = !DILocation(line: 97, column: 6, scope: !5338)
!5492 = !DILocation(line: 98, column: 3, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5489, file: !2, line: 97, column: 16)
!5494 = !DILocation(line: 98, column: 7, scope: !5493)
!5495 = !DILocation(line: 98, column: 13, scope: !5493)
!5496 = !DILocation(line: 99, column: 3, scope: !5493)
!5497 = !DILocation(line: 102, column: 17, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 102, column: 6)
!5499 = !DILocation(line: 102, column: 6, scope: !5498)
!5500 = !DILocation(line: 102, column: 40, scope: !5498)
!5501 = !DILocation(line: 102, column: 44, scope: !5498)
!5502 = !DILocation(line: 102, column: 6, scope: !5338)
!5503 = !DILocation(line: 103, column: 3, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5498, file: !2, line: 102, column: 53)
!5505 = !DILocation(line: 103, column: 7, scope: !5504)
!5506 = !DILocation(line: 103, column: 13, scope: !5504)
!5507 = !DILocation(line: 104, column: 3, scope: !5504)
!5508 = !DILocation(line: 107, column: 17, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 107, column: 6)
!5510 = !DILocation(line: 107, column: 6, scope: !5509)
!5511 = !DILocation(line: 107, column: 43, scope: !5509)
!5512 = !DILocation(line: 107, column: 47, scope: !5509)
!5513 = !DILocation(line: 107, column: 6, scope: !5338)
!5514 = !DILocation(line: 108, column: 3, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5509, file: !2, line: 107, column: 59)
!5516 = !DILocation(line: 108, column: 7, scope: !5515)
!5517 = !DILocation(line: 108, column: 13, scope: !5515)
!5518 = !DILocation(line: 109, column: 3, scope: !5515)
!5519 = !DILocation(line: 112, column: 10, scope: !5338)
!5520 = !DILocation(line: 112, column: 14, scope: !5338)
!5521 = !DILocation(line: 112, column: 8, scope: !5338)
!5522 = !DILocation(line: 113, column: 6, scope: !5351)
!5523 = !DILocation(line: 113, column: 6, scope: !5352)
!5524 = !DILocation(line: 113, column: 6, scope: !5338)
!5525 = !DILocation(line: 114, column: 3, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5352, file: !2, line: 113, column: 34)
!5527 = !DILocation(line: 114, column: 7, scope: !5526)
!5528 = !DILocation(line: 114, column: 13, scope: !5526)
!5529 = !DILocation(line: 115, column: 3, scope: !5526)
!5530 = !DILocation(line: 118, column: 12, scope: !5338)
!5531 = !DILocation(line: 118, column: 10, scope: !5338)
!5532 = !DILocation(line: 119, column: 6, scope: !5355)
!5533 = !DILocation(line: 119, column: 6, scope: !5356)
!5534 = !DILocation(line: 119, column: 6, scope: !5338)
!5535 = !DILocation(line: 120, column: 3, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 119, column: 39)
!5537 = !DILocation(line: 120, column: 7, scope: !5536)
!5538 = !DILocation(line: 120, column: 13, scope: !5536)
!5539 = !DILocation(line: 121, column: 3, scope: !5536)
!5540 = !DILocation(line: 127, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 127, column: 6)
!5542 = !DILocation(line: 127, column: 23, scope: !5541)
!5543 = !DILocation(line: 127, column: 21, scope: !5541)
!5544 = !DILocation(line: 127, column: 17, scope: !5541)
!5545 = !DILocation(line: 127, column: 11, scope: !5541)
!5546 = !DILocation(line: 127, column: 6, scope: !5338)
!5547 = !DILocation(line: 128, column: 3, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 127, column: 33)
!5549 = !DILocation(line: 128, column: 7, scope: !5548)
!5550 = !DILocation(line: 128, column: 13, scope: !5548)
!5551 = !DILocation(line: 129, column: 3, scope: !5548)
!5552 = !DILocation(line: 132, column: 15, scope: !5338)
!5553 = !DILocation(line: 132, column: 7, scope: !5338)
!5554 = !DILocation(line: 132, column: 5, scope: !5338)
!5555 = !DILocation(line: 133, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 133, column: 6)
!5557 = !DILocation(line: 133, column: 6, scope: !5338)
!5558 = !DILocation(line: 134, column: 3, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5556, file: !2, line: 133, column: 11)
!5560 = !DILocation(line: 134, column: 7, scope: !5559)
!5561 = !DILocation(line: 134, column: 13, scope: !5559)
!5562 = !DILocation(line: 135, column: 3, scope: !5559)
!5563 = !DILocation(line: 138, column: 2, scope: !5338)
!5564 = !DILocation(line: 138, column: 2, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 138, column: 2)
!5566 = !DILocation(line: 138, column: 2, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 138, column: 2)
!5568 = !DILocation(line: 141, column: 11, scope: !5338)
!5569 = !DILocation(line: 141, column: 2, scope: !5338)
!5570 = !DILocation(line: 141, column: 6, scope: !5338)
!5571 = !DILocation(line: 141, column: 9, scope: !5338)
!5572 = !DILocation(line: 142, column: 16, scope: !5338)
!5573 = !DILocation(line: 142, column: 2, scope: !5338)
!5574 = !DILocation(line: 142, column: 6, scope: !5338)
!5575 = !DILocation(line: 142, column: 14, scope: !5338)
!5576 = !DILocation(line: 143, column: 21, scope: !5338)
!5577 = !DILocation(line: 143, column: 2, scope: !5338)
!5578 = !DILocation(line: 143, column: 6, scope: !5338)
!5579 = !DILocation(line: 143, column: 19, scope: !5338)
!5580 = !DILocation(line: 145, column: 6, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 145, column: 6)
!5582 = !DILocation(line: 145, column: 17, scope: !5581)
!5583 = !DILocation(line: 145, column: 25, scope: !5581)
!5584 = !DILocation(line: 145, column: 14, scope: !5581)
!5585 = !DILocation(line: 145, column: 6, scope: !5338)
!5586 = !DILocation(line: 146, column: 3, scope: !5581)
!5587 = !DILocation(line: 146, column: 7, scope: !5581)
!5588 = !DILocation(line: 146, column: 21, scope: !5581)
!5589 = !DILocation(line: 148, column: 23, scope: !5581)
!5590 = !DILocation(line: 148, column: 3, scope: !5581)
!5591 = !DILocation(line: 148, column: 7, scope: !5581)
!5592 = !DILocation(line: 148, column: 21, scope: !5581)
!5593 = !DILocation(line: 150, column: 31, scope: !5338)
!5594 = !DILocation(line: 150, column: 35, scope: !5338)
!5595 = !DILocation(line: 150, column: 6, scope: !5338)
!5596 = !DILocation(line: 150, column: 4, scope: !5338)
!5597 = !DILocation(line: 151, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 151, column: 6)
!5599 = !DILocation(line: 151, column: 6, scope: !5338)
!5600 = !DILocation(line: 152, column: 9, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 151, column: 9)
!5602 = !DILocation(line: 152, column: 3, scope: !5601)
!5603 = !DILocation(line: 153, column: 10, scope: !5601)
!5604 = !DILocation(line: 153, column: 3, scope: !5601)
!5605 = !DILocation(line: 156, column: 23, scope: !5338)
!5606 = !DILocation(line: 156, column: 2, scope: !5338)
!5607 = !DILocation(line: 156, column: 6, scope: !5338)
!5608 = !DILocation(line: 156, column: 21, scope: !5338)
!5609 = !DILocation(line: 157, column: 25, scope: !5338)
!5610 = !DILocation(line: 157, column: 2, scope: !5338)
!5611 = !DILocation(line: 157, column: 6, scope: !5338)
!5612 = !DILocation(line: 157, column: 23, scope: !5338)
!5613 = !DILocation(line: 158, column: 30, scope: !5338)
!5614 = !DILocation(line: 158, column: 2, scope: !5338)
!5615 = !DILocation(line: 158, column: 6, scope: !5338)
!5616 = !DILocation(line: 158, column: 28, scope: !5338)
!5617 = !DILocation(line: 159, column: 30, scope: !5338)
!5618 = !DILocation(line: 159, column: 2, scope: !5338)
!5619 = !DILocation(line: 159, column: 6, scope: !5338)
!5620 = !DILocation(line: 159, column: 28, scope: !5338)
!5621 = !DILocation(line: 161, column: 19, scope: !5338)
!5622 = !DILocation(line: 161, column: 2, scope: !5338)
!5623 = !DILocation(line: 161, column: 6, scope: !5338)
!5624 = !DILocation(line: 161, column: 17, scope: !5338)
!5625 = !DILocation(line: 162, column: 6, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 162, column: 6)
!5627 = !DILocation(line: 162, column: 20, scope: !5626)
!5628 = !DILocation(line: 162, column: 31, scope: !5626)
!5629 = !DILocation(line: 162, column: 17, scope: !5626)
!5630 = !DILocation(line: 162, column: 6, scope: !5338)
!5631 = !DILocation(line: 163, column: 3, scope: !5626)
!5632 = !DILocation(line: 163, column: 7, scope: !5626)
!5633 = !DILocation(line: 163, column: 24, scope: !5626)
!5634 = !DILocation(line: 165, column: 26, scope: !5626)
!5635 = !DILocation(line: 165, column: 3, scope: !5626)
!5636 = !DILocation(line: 165, column: 7, scope: !5626)
!5637 = !DILocation(line: 165, column: 24, scope: !5626)
!5638 = !DILocation(line: 170, column: 9, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5338, file: !2, line: 170, column: 2)
!5640 = !DILocation(line: 170, column: 7, scope: !5639)
!5641 = !DILocation(line: 170, column: 14, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 170, column: 2)
!5643 = !DILocation(line: 170, column: 18, scope: !5642)
!5644 = !DILocation(line: 170, column: 16, scope: !5642)
!5645 = !DILocation(line: 170, column: 2, scope: !5639)
!5646 = !DILocation(line: 171, column: 8, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5642, file: !2, line: 170, column: 32)
!5648 = !DILocation(line: 173, column: 18, scope: !5647)
!5649 = !DILocation(line: 173, column: 22, scope: !5647)
!5650 = !DILocation(line: 173, column: 26, scope: !5647)
!5651 = !DILocation(line: 173, column: 29, scope: !5647)
!5652 = !DILocation(line: 173, column: 7, scope: !5647)
!5653 = !DILocation(line: 173, column: 5, scope: !5647)
!5654 = !DILocation(line: 174, column: 7, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5647, file: !2, line: 174, column: 7)
!5656 = !DILocation(line: 174, column: 9, scope: !5655)
!5657 = !DILocation(line: 174, column: 7, scope: !5647)
!5658 = !DILocation(line: 175, column: 4, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 174, column: 14)
!5660 = !DILocation(line: 175, column: 8, scope: !5659)
!5661 = !DILocation(line: 175, column: 14, scope: !5659)
!5662 = !DILocation(line: 176, column: 4, scope: !5659)
!5663 = !DILocation(line: 176, column: 12, scope: !5659)
!5664 = !DILocation(line: 177, column: 19, scope: !5659)
!5665 = !DILocation(line: 177, column: 23, scope: !5659)
!5666 = !DILocation(line: 177, column: 27, scope: !5659)
!5667 = !DILocation(line: 177, column: 34, scope: !5659)
!5668 = !DILocation(line: 177, column: 37, scope: !5659)
!5669 = !DILocation(line: 177, column: 5, scope: !5659)
!5670 = distinct !{!5670, !5662, !5671, !5672, !5673}
!5671 = !DILocation(line: 177, column: 40, scope: !5659)
!5672 = !{!"llvm.loop.mustprogress"}
!5673 = !{!"llvm.loop.unroll.disable"}
!5674 = !DILocation(line: 178, column: 10, scope: !5659)
!5675 = !DILocation(line: 178, column: 4, scope: !5659)
!5676 = !DILocation(line: 179, column: 11, scope: !5659)
!5677 = !DILocation(line: 179, column: 4, scope: !5659)
!5678 = !DILocation(line: 181, column: 16, scope: !5647)
!5679 = !DILocation(line: 181, column: 20, scope: !5647)
!5680 = !DILocation(line: 181, column: 27, scope: !5647)
!5681 = !DILocation(line: 181, column: 30, scope: !5647)
!5682 = !DILocation(line: 181, column: 3, scope: !5647)
!5683 = !DILocation(line: 182, column: 2, scope: !5647)
!5684 = !DILocation(line: 170, column: 28, scope: !5642)
!5685 = !DILocation(line: 170, column: 2, scope: !5642)
!5686 = distinct !{!5686, !5645, !5687, !5672, !5673}
!5687 = !DILocation(line: 182, column: 2, scope: !5639)
!5688 = !DILocation(line: 184, column: 16, scope: !5338)
!5689 = !DILocation(line: 184, column: 2, scope: !5338)
!5690 = !DILocation(line: 184, column: 6, scope: !5338)
!5691 = !DILocation(line: 184, column: 14, scope: !5338)
!5692 = !DILocation(line: 186, column: 2, scope: !5338)
!5693 = !DILocation(line: 187, column: 1, scope: !5338)
!5694 = distinct !DISubprogram(name: "stripe_dtr", scope: !2, file: !2, line: 189, type: !5150, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5695)
!5695 = !{!5696, !5697, !5698}
!5696 = !DILocalVariable(name: "ti", arg: 1, scope: !5694, file: !2, line: 189, type: !5126)
!5697 = !DILocalVariable(name: "i", scope: !5694, file: !2, line: 191, type: !13)
!5698 = !DILocalVariable(name: "sc", scope: !5694, file: !2, line: 192, type: !5117)
!5699 = !DILocation(line: 189, column: 42, scope: !5694)
!5700 = !DILocation(line: 191, column: 2, scope: !5694)
!5701 = !DILocation(line: 191, column: 15, scope: !5694)
!5702 = !DILocation(line: 192, column: 2, scope: !5694)
!5703 = !DILocation(line: 192, column: 19, scope: !5694)
!5704 = !DILocation(line: 192, column: 24, scope: !5694)
!5705 = !DILocation(line: 192, column: 28, scope: !5694)
!5706 = !DILocation(line: 194, column: 9, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5694, file: !2, line: 194, column: 2)
!5708 = !DILocation(line: 194, column: 7, scope: !5707)
!5709 = !DILocation(line: 194, column: 14, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5707, file: !2, line: 194, column: 2)
!5711 = !DILocation(line: 194, column: 18, scope: !5710)
!5712 = !DILocation(line: 194, column: 22, scope: !5710)
!5713 = !DILocation(line: 194, column: 16, scope: !5710)
!5714 = !DILocation(line: 194, column: 2, scope: !5707)
!5715 = !DILocation(line: 195, column: 17, scope: !5710)
!5716 = !DILocation(line: 195, column: 21, scope: !5710)
!5717 = !DILocation(line: 195, column: 25, scope: !5710)
!5718 = !DILocation(line: 195, column: 32, scope: !5710)
!5719 = !DILocation(line: 195, column: 35, scope: !5710)
!5720 = !DILocation(line: 195, column: 3, scope: !5710)
!5721 = !DILocation(line: 194, column: 32, scope: !5710)
!5722 = !DILocation(line: 194, column: 2, scope: !5710)
!5723 = distinct !{!5723, !5714, !5724, !5672, !5673}
!5724 = !DILocation(line: 195, column: 38, scope: !5707)
!5725 = !DILocation(line: 197, column: 14, scope: !5694)
!5726 = !DILocation(line: 197, column: 18, scope: !5694)
!5727 = !DILocation(line: 197, column: 2, scope: !5694)
!5728 = !DILocation(line: 198, column: 8, scope: !5694)
!5729 = !DILocation(line: 198, column: 2, scope: !5694)
!5730 = !DILocation(line: 199, column: 1, scope: !5694)
!5731 = distinct !DISubprogram(name: "stripe_map", scope: !2, file: !2, line: 271, type: !5155, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5732)
!5732 = !{!5733, !5734, !5735, !5736, !5737}
!5733 = !DILocalVariable(name: "ti", arg: 1, scope: !5731, file: !2, line: 271, type: !5126)
!5734 = !DILocalVariable(name: "bio", arg: 2, scope: !5731, file: !2, line: 271, type: !1060)
!5735 = !DILocalVariable(name: "sc", scope: !5731, file: !2, line: 273, type: !5117)
!5736 = !DILocalVariable(name: "stripe", scope: !5731, file: !2, line: 274, type: !1423)
!5737 = !DILocalVariable(name: "target_bio_nr", scope: !5731, file: !2, line: 275, type: !13)
!5738 = !DILocation(line: 271, column: 41, scope: !5731)
!5739 = !DILocation(line: 271, column: 57, scope: !5731)
!5740 = !DILocation(line: 273, column: 2, scope: !5731)
!5741 = !DILocation(line: 273, column: 19, scope: !5731)
!5742 = !DILocation(line: 273, column: 24, scope: !5731)
!5743 = !DILocation(line: 273, column: 28, scope: !5731)
!5744 = !DILocation(line: 274, column: 2, scope: !5731)
!5745 = !DILocation(line: 274, column: 11, scope: !5731)
!5746 = !DILocation(line: 275, column: 2, scope: !5731)
!5747 = !DILocation(line: 275, column: 15, scope: !5731)
!5748 = !DILocation(line: 277, column: 6, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5731, file: !2, line: 277, column: 6)
!5750 = !DILocation(line: 277, column: 11, scope: !5749)
!5751 = !DILocation(line: 277, column: 18, scope: !5749)
!5752 = !DILocation(line: 277, column: 6, scope: !5731)
!5753 = !DILocation(line: 278, column: 44, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5749, file: !2, line: 277, column: 34)
!5755 = !DILocation(line: 278, column: 19, scope: !5754)
!5756 = !DILocation(line: 278, column: 17, scope: !5754)
!5757 = !DILocation(line: 279, column: 3, scope: !5754)
!5758 = !DILocation(line: 279, column: 3, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 279, column: 3)
!5760 = distinct !DILexicalBlock(scope: !5754, file: !2, line: 279, column: 3)
!5761 = !DILocation(line: 279, column: 3, scope: !5760)
!5762 = !DILocation(line: 279, column: 3, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5759, file: !2, line: 279, column: 3)
!5764 = !DILocation(line: 279, column: 3, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5763, file: !2, line: 279, column: 3)
!5766 = !DILocation(line: 279, column: 3, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5763, file: !2, line: 279, column: 3)
!5768 = !{i64 2155360730, i64 2155360759, i64 2155360805, i64 2155360863, i64 2155360917, i64 2155360971, i64 2155361026, i64 2155361057}
!5769 = !DILocation(line: 280, column: 15, scope: !5754)
!5770 = !DILocation(line: 280, column: 20, scope: !5754)
!5771 = !DILocation(line: 280, column: 24, scope: !5754)
!5772 = !DILocation(line: 280, column: 31, scope: !5754)
!5773 = !DILocation(line: 280, column: 46, scope: !5754)
!5774 = !DILocation(line: 280, column: 51, scope: !5754)
!5775 = !DILocation(line: 280, column: 3, scope: !5754)
!5776 = !DILocation(line: 281, column: 3, scope: !5754)
!5777 = !DILocation(line: 283, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5731, file: !2, line: 283, column: 6)
!5779 = !DILocation(line: 283, column: 46, scope: !5778)
!5780 = !DILocation(line: 284, column: 6, scope: !5778)
!5781 = !DILocation(line: 284, column: 51, scope: !5778)
!5782 = !DILocation(line: 285, column: 6, scope: !5778)
!5783 = !DILocation(line: 283, column: 6, scope: !5731)
!5784 = !DILocation(line: 286, column: 44, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5778, file: !2, line: 285, column: 52)
!5786 = !DILocation(line: 286, column: 19, scope: !5785)
!5787 = !DILocation(line: 286, column: 17, scope: !5785)
!5788 = !DILocation(line: 287, column: 3, scope: !5785)
!5789 = !DILocation(line: 287, column: 3, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !2, line: 287, column: 3)
!5791 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 287, column: 3)
!5792 = !DILocation(line: 287, column: 3, scope: !5791)
!5793 = !DILocation(line: 287, column: 3, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5790, file: !2, line: 287, column: 3)
!5795 = !DILocation(line: 287, column: 3, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5794, file: !2, line: 287, column: 3)
!5797 = !DILocation(line: 287, column: 3, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5794, file: !2, line: 287, column: 3)
!5799 = !{i64 2155361930, i64 2155361959, i64 2155362005, i64 2155362063, i64 2155362117, i64 2155362171, i64 2155362226, i64 2155362257}
!5800 = !DILocation(line: 288, column: 27, scope: !5785)
!5801 = !DILocation(line: 288, column: 31, scope: !5785)
!5802 = !DILocation(line: 288, column: 36, scope: !5785)
!5803 = !DILocation(line: 288, column: 10, scope: !5785)
!5804 = !DILocation(line: 288, column: 3, scope: !5785)
!5805 = !DILocation(line: 291, column: 20, scope: !5731)
!5806 = !DILocation(line: 291, column: 24, scope: !5731)
!5807 = !DILocation(line: 291, column: 29, scope: !5731)
!5808 = !DILocation(line: 291, column: 37, scope: !5731)
!5809 = !DILocation(line: 292, column: 16, scope: !5731)
!5810 = !DILocation(line: 292, column: 21, scope: !5731)
!5811 = !DILocation(line: 292, column: 29, scope: !5731)
!5812 = !DILocation(line: 291, column: 2, scope: !5731)
!5813 = !DILocation(line: 294, column: 28, scope: !5731)
!5814 = !DILocation(line: 294, column: 32, scope: !5731)
!5815 = !DILocation(line: 294, column: 39, scope: !5731)
!5816 = !DILocation(line: 294, column: 47, scope: !5731)
!5817 = !DILocation(line: 294, column: 2, scope: !5731)
!5818 = !DILocation(line: 294, column: 7, scope: !5731)
!5819 = !DILocation(line: 294, column: 15, scope: !5731)
!5820 = !DILocation(line: 294, column: 25, scope: !5731)
!5821 = !DILocation(line: 295, column: 14, scope: !5731)
!5822 = !DILocation(line: 295, column: 19, scope: !5731)
!5823 = !DILocation(line: 295, column: 23, scope: !5731)
!5824 = !DILocation(line: 295, column: 30, scope: !5731)
!5825 = !DILocation(line: 295, column: 38, scope: !5731)
!5826 = !DILocation(line: 295, column: 43, scope: !5731)
!5827 = !DILocation(line: 295, column: 2, scope: !5731)
!5828 = !DILocation(line: 297, column: 2, scope: !5731)
!5829 = !DILocation(line: 298, column: 1, scope: !5731)
!5830 = distinct !DISubprogram(name: "stripe_end_io", scope: !2, file: !2, line: 403, type: !5175, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5831)
!5831 = !{!5832, !5833, !5834, !5835, !5836, !5837}
!5832 = !DILocalVariable(name: "ti", arg: 1, scope: !5830, file: !2, line: 403, type: !5126)
!5833 = !DILocalVariable(name: "bio", arg: 2, scope: !5830, file: !2, line: 403, type: !1060)
!5834 = !DILocalVariable(name: "error", arg: 3, scope: !5830, file: !2, line: 404, type: !5177)
!5835 = !DILocalVariable(name: "i", scope: !5830, file: !2, line: 406, type: !13)
!5836 = !DILocalVariable(name: "major_minor", scope: !5830, file: !2, line: 407, type: !3401)
!5837 = !DILocalVariable(name: "sc", scope: !5830, file: !2, line: 408, type: !5117)
!5838 = !DILocation(line: 403, column: 44, scope: !5830)
!5839 = !DILocation(line: 403, column: 60, scope: !5830)
!5840 = !DILocation(line: 404, column: 17, scope: !5830)
!5841 = !DILocation(line: 406, column: 2, scope: !5830)
!5842 = !DILocation(line: 406, column: 15, scope: !5830)
!5843 = !DILocation(line: 407, column: 2, scope: !5830)
!5844 = !DILocation(line: 407, column: 7, scope: !5830)
!5845 = !DILocation(line: 408, column: 2, scope: !5830)
!5846 = !DILocation(line: 408, column: 19, scope: !5830)
!5847 = !DILocation(line: 408, column: 24, scope: !5830)
!5848 = !DILocation(line: 408, column: 28, scope: !5830)
!5849 = !DILocation(line: 410, column: 8, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 410, column: 6)
!5851 = !DILocation(line: 410, column: 7, scope: !5850)
!5852 = !DILocation(line: 410, column: 6, scope: !5830)
!5853 = !DILocation(line: 411, column: 3, scope: !5850)
!5854 = !DILocation(line: 413, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 413, column: 6)
!5856 = !DILocation(line: 413, column: 11, scope: !5855)
!5857 = !DILocation(line: 413, column: 18, scope: !5855)
!5858 = !DILocation(line: 413, column: 6, scope: !5830)
!5859 = !DILocation(line: 414, column: 3, scope: !5855)
!5860 = !DILocation(line: 416, column: 7, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 416, column: 6)
!5862 = !DILocation(line: 416, column: 6, scope: !5861)
!5863 = !DILocation(line: 416, column: 13, scope: !5861)
!5864 = !DILocation(line: 416, column: 6, scope: !5830)
!5865 = !DILocation(line: 417, column: 3, scope: !5861)
!5866 = !DILocation(line: 419, column: 2, scope: !5830)
!5867 = !DILocation(line: 420, column: 10, scope: !5830)
!5868 = !DILocation(line: 420, column: 32, scope: !5830)
!5869 = !DILocation(line: 420, column: 53, scope: !5830)
!5870 = !DILocation(line: 420, column: 2, scope: !5830)
!5871 = !DILocation(line: 428, column: 9, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 428, column: 2)
!5873 = !DILocation(line: 428, column: 7, scope: !5872)
!5874 = !DILocation(line: 428, column: 14, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5872, file: !2, line: 428, column: 2)
!5876 = !DILocation(line: 428, column: 18, scope: !5875)
!5877 = !DILocation(line: 428, column: 22, scope: !5875)
!5878 = !DILocation(line: 428, column: 16, scope: !5875)
!5879 = !DILocation(line: 428, column: 2, scope: !5872)
!5880 = !DILocation(line: 429, column: 15, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5875, file: !2, line: 429, column: 7)
!5882 = !DILocation(line: 429, column: 19, scope: !5881)
!5883 = !DILocation(line: 429, column: 26, scope: !5881)
!5884 = !DILocation(line: 429, column: 29, scope: !5881)
!5885 = !DILocation(line: 429, column: 34, scope: !5881)
!5886 = !DILocation(line: 429, column: 40, scope: !5881)
!5887 = !DILocation(line: 429, column: 8, scope: !5881)
!5888 = !DILocation(line: 429, column: 7, scope: !5875)
!5889 = !DILocation(line: 430, column: 17, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5881, file: !2, line: 429, column: 54)
!5891 = !DILocation(line: 430, column: 21, scope: !5890)
!5892 = !DILocation(line: 430, column: 28, scope: !5890)
!5893 = !DILocation(line: 430, column: 31, scope: !5890)
!5894 = !DILocation(line: 430, column: 4, scope: !5890)
!5895 = !DILocation(line: 431, column: 22, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 431, column: 8)
!5897 = !DILocation(line: 431, column: 26, scope: !5896)
!5898 = !DILocation(line: 431, column: 33, scope: !5896)
!5899 = !DILocation(line: 431, column: 36, scope: !5896)
!5900 = !DILocation(line: 431, column: 8, scope: !5896)
!5901 = !DILocation(line: 431, column: 50, scope: !5896)
!5902 = !DILocation(line: 431, column: 8, scope: !5890)
!5903 = !DILocation(line: 433, column: 16, scope: !5896)
!5904 = !DILocation(line: 433, column: 31, scope: !5896)
!5905 = !DILocation(line: 433, column: 35, scope: !5896)
!5906 = !DILocation(line: 433, column: 5, scope: !5896)
!5907 = !DILocation(line: 434, column: 3, scope: !5890)
!5908 = !DILocation(line: 429, column: 51, scope: !5881)
!5909 = !DILocation(line: 428, column: 32, scope: !5875)
!5910 = !DILocation(line: 428, column: 2, scope: !5875)
!5911 = distinct !{!5911, !5879, !5912, !5672, !5673}
!5912 = !DILocation(line: 434, column: 3, scope: !5872)
!5913 = !DILocation(line: 436, column: 2, scope: !5830)
!5914 = !DILocation(line: 437, column: 1, scope: !5830)
!5915 = distinct !DISubprogram(name: "stripe_status", scope: !2, file: !2, line: 360, type: !5199, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5916)
!5916 = !{!5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924}
!5917 = !DILocalVariable(name: "ti", arg: 1, scope: !5915, file: !2, line: 360, type: !5126)
!5918 = !DILocalVariable(name: "type", arg: 2, scope: !5915, file: !2, line: 360, type: !5201)
!5919 = !DILocalVariable(name: "status_flags", arg: 3, scope: !5915, file: !2, line: 361, type: !13)
!5920 = !DILocalVariable(name: "result", arg: 4, scope: !5915, file: !2, line: 361, type: !393)
!5921 = !DILocalVariable(name: "maxlen", arg: 5, scope: !5915, file: !2, line: 361, type: !13)
!5922 = !DILocalVariable(name: "sc", scope: !5915, file: !2, line: 363, type: !5117)
!5923 = !DILocalVariable(name: "sz", scope: !5915, file: !2, line: 364, type: !13)
!5924 = !DILocalVariable(name: "i", scope: !5915, file: !2, line: 365, type: !13)
!5925 = !DILocation(line: 360, column: 45, scope: !5915)
!5926 = !DILocation(line: 360, column: 63, scope: !5915)
!5927 = !DILocation(line: 361, column: 19, scope: !5915)
!5928 = !DILocation(line: 361, column: 39, scope: !5915)
!5929 = !DILocation(line: 361, column: 60, scope: !5915)
!5930 = !DILocation(line: 363, column: 2, scope: !5915)
!5931 = !DILocation(line: 363, column: 19, scope: !5915)
!5932 = !DILocation(line: 363, column: 24, scope: !5915)
!5933 = !DILocation(line: 363, column: 28, scope: !5915)
!5934 = !DILocation(line: 364, column: 2, scope: !5915)
!5935 = !DILocation(line: 364, column: 15, scope: !5915)
!5936 = !DILocation(line: 365, column: 2, scope: !5915)
!5937 = !DILocation(line: 365, column: 15, scope: !5915)
!5938 = !DILocation(line: 367, column: 10, scope: !5915)
!5939 = !DILocation(line: 367, column: 2, scope: !5915)
!5940 = !DILocation(line: 369, column: 3, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 367, column: 16)
!5942 = !DILocation(line: 370, column: 10, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 370, column: 3)
!5944 = !DILocation(line: 370, column: 8, scope: !5943)
!5945 = !DILocation(line: 370, column: 15, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 370, column: 3)
!5947 = !DILocation(line: 370, column: 19, scope: !5946)
!5948 = !DILocation(line: 370, column: 23, scope: !5946)
!5949 = !DILocation(line: 370, column: 17, scope: !5946)
!5950 = !DILocation(line: 370, column: 3, scope: !5943)
!5951 = !DILocation(line: 371, column: 4, scope: !5946)
!5952 = !DILocation(line: 370, column: 33, scope: !5946)
!5953 = !DILocation(line: 370, column: 3, scope: !5946)
!5954 = distinct !{!5954, !5950, !5955, !5672, !5673}
!5955 = !DILocation(line: 371, column: 4, scope: !5943)
!5956 = !DILocation(line: 373, column: 3, scope: !5941)
!5957 = !DILocation(line: 374, column: 10, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 374, column: 3)
!5959 = !DILocation(line: 374, column: 8, scope: !5958)
!5960 = !DILocation(line: 374, column: 15, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5958, file: !2, line: 374, column: 3)
!5962 = !DILocation(line: 374, column: 19, scope: !5961)
!5963 = !DILocation(line: 374, column: 23, scope: !5961)
!5964 = !DILocation(line: 374, column: 17, scope: !5961)
!5965 = !DILocation(line: 374, column: 3, scope: !5958)
!5966 = !DILocation(line: 375, column: 4, scope: !5961)
!5967 = !DILocation(line: 374, column: 33, scope: !5961)
!5968 = !DILocation(line: 374, column: 3, scope: !5961)
!5969 = distinct !{!5969, !5965, !5970, !5672, !5673}
!5970 = !DILocation(line: 375, column: 4, scope: !5958)
!5971 = !DILocation(line: 376, column: 3, scope: !5941)
!5972 = !DILocation(line: 379, column: 3, scope: !5941)
!5973 = !DILocation(line: 381, column: 10, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 381, column: 3)
!5975 = !DILocation(line: 381, column: 8, scope: !5974)
!5976 = !DILocation(line: 381, column: 15, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5974, file: !2, line: 381, column: 3)
!5978 = !DILocation(line: 381, column: 19, scope: !5977)
!5979 = !DILocation(line: 381, column: 23, scope: !5977)
!5980 = !DILocation(line: 381, column: 17, scope: !5977)
!5981 = !DILocation(line: 381, column: 3, scope: !5974)
!5982 = !DILocation(line: 382, column: 4, scope: !5977)
!5983 = !DILocation(line: 381, column: 33, scope: !5977)
!5984 = !DILocation(line: 381, column: 3, scope: !5977)
!5985 = distinct !{!5985, !5981, !5986, !5672, !5673}
!5986 = !DILocation(line: 382, column: 4, scope: !5974)
!5987 = !DILocation(line: 384, column: 3, scope: !5941)
!5988 = !DILocation(line: 387, column: 3, scope: !5941)
!5989 = !DILocation(line: 388, column: 3, scope: !5941)
!5990 = !DILocation(line: 391, column: 10, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 391, column: 3)
!5992 = !DILocation(line: 391, column: 8, scope: !5991)
!5993 = !DILocation(line: 391, column: 15, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5991, file: !2, line: 391, column: 3)
!5995 = !DILocation(line: 391, column: 19, scope: !5994)
!5996 = !DILocation(line: 391, column: 23, scope: !5994)
!5997 = !DILocation(line: 391, column: 17, scope: !5994)
!5998 = !DILocation(line: 391, column: 3, scope: !5991)
!5999 = !DILocation(line: 392, column: 4, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5994, file: !2, line: 391, column: 37)
!6001 = !DILocation(line: 393, column: 4, scope: !6000)
!6002 = !DILocation(line: 395, column: 4, scope: !6000)
!6003 = !DILocation(line: 397, column: 3, scope: !6000)
!6004 = !DILocation(line: 391, column: 33, scope: !5994)
!6005 = !DILocation(line: 391, column: 3, scope: !5994)
!6006 = distinct !{!6006, !5998, !6007, !5672, !5673}
!6007 = !DILocation(line: 397, column: 3, scope: !5991)
!6008 = !DILocation(line: 398, column: 3, scope: !5941)
!6009 = !DILocation(line: 399, column: 3, scope: !5941)
!6010 = !DILocation(line: 401, column: 1, scope: !5915)
!6011 = distinct !DISubprogram(name: "stripe_iterate_devices", scope: !2, file: !2, line: 439, type: !5220, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6012)
!6012 = !{!6013, !6014, !6015, !6016, !6017, !6018}
!6013 = !DILocalVariable(name: "ti", arg: 1, scope: !6011, file: !2, line: 439, type: !5126)
!6014 = !DILocalVariable(name: "fn", arg: 2, scope: !6011, file: !2, line: 440, type: !5222)
!6015 = !DILocalVariable(name: "data", arg: 3, scope: !6011, file: !2, line: 440, type: !465)
!6016 = !DILocalVariable(name: "sc", scope: !6011, file: !2, line: 442, type: !5117)
!6017 = !DILocalVariable(name: "ret", scope: !6011, file: !2, line: 443, type: !100)
!6018 = !DILocalVariable(name: "i", scope: !6011, file: !2, line: 444, type: !13)
!6019 = !DILocation(line: 439, column: 53, scope: !6011)
!6020 = !DILocation(line: 440, column: 34, scope: !6011)
!6021 = !DILocation(line: 440, column: 44, scope: !6011)
!6022 = !DILocation(line: 442, column: 2, scope: !6011)
!6023 = !DILocation(line: 442, column: 19, scope: !6011)
!6024 = !DILocation(line: 442, column: 24, scope: !6011)
!6025 = !DILocation(line: 442, column: 28, scope: !6011)
!6026 = !DILocation(line: 443, column: 2, scope: !6011)
!6027 = !DILocation(line: 443, column: 6, scope: !6011)
!6028 = !DILocation(line: 444, column: 2, scope: !6011)
!6029 = !DILocation(line: 444, column: 15, scope: !6011)
!6030 = !DILocation(line: 446, column: 2, scope: !6011)
!6031 = !DILocation(line: 447, column: 9, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6011, file: !2, line: 446, column: 5)
!6033 = !DILocation(line: 447, column: 12, scope: !6032)
!6034 = !DILocation(line: 447, column: 16, scope: !6032)
!6035 = !DILocation(line: 447, column: 20, scope: !6032)
!6036 = !DILocation(line: 447, column: 27, scope: !6032)
!6037 = !DILocation(line: 447, column: 30, scope: !6032)
!6038 = !DILocation(line: 448, column: 5, scope: !6032)
!6039 = !DILocation(line: 448, column: 9, scope: !6032)
!6040 = !DILocation(line: 448, column: 16, scope: !6032)
!6041 = !DILocation(line: 448, column: 19, scope: !6032)
!6042 = !DILocation(line: 449, column: 5, scope: !6032)
!6043 = !DILocation(line: 449, column: 9, scope: !6032)
!6044 = !DILocation(line: 449, column: 23, scope: !6032)
!6045 = !DILocation(line: 447, column: 7, scope: !6032)
!6046 = !DILocation(line: 450, column: 2, scope: !6032)
!6047 = !DILocation(line: 450, column: 12, scope: !6011)
!6048 = !DILocation(line: 450, column: 16, scope: !6011)
!6049 = !DILocation(line: 450, column: 19, scope: !6011)
!6050 = !DILocation(line: 450, column: 25, scope: !6011)
!6051 = !DILocation(line: 450, column: 29, scope: !6011)
!6052 = !DILocation(line: 450, column: 23, scope: !6011)
!6053 = !DILocation(line: 0, scope: !6011)
!6054 = distinct !{!6054, !6030, !6055, !5672, !5673}
!6055 = !DILocation(line: 450, column: 36, scope: !6011)
!6056 = !DILocation(line: 452, column: 9, scope: !6011)
!6057 = !DILocation(line: 453, column: 1, scope: !6011)
!6058 = !DILocation(line: 452, column: 2, scope: !6011)
!6059 = distinct !DISubprogram(name: "stripe_io_hints", scope: !2, file: !2, line: 455, type: !5238, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6060)
!6060 = !{!6061, !6062, !6063, !6064}
!6061 = !DILocalVariable(name: "ti", arg: 1, scope: !6059, file: !2, line: 455, type: !5126)
!6062 = !DILocalVariable(name: "limits", arg: 2, scope: !6059, file: !2, line: 456, type: !5240)
!6063 = !DILocalVariable(name: "sc", scope: !6059, file: !2, line: 458, type: !5117)
!6064 = !DILocalVariable(name: "chunk_size", scope: !6059, file: !2, line: 459, type: !13)
!6065 = !DILocation(line: 455, column: 47, scope: !6059)
!6066 = !DILocation(line: 456, column: 29, scope: !6059)
!6067 = !DILocation(line: 458, column: 2, scope: !6059)
!6068 = !DILocation(line: 458, column: 19, scope: !6059)
!6069 = !DILocation(line: 458, column: 24, scope: !6059)
!6070 = !DILocation(line: 458, column: 28, scope: !6059)
!6071 = !DILocation(line: 459, column: 2, scope: !6059)
!6072 = !DILocation(line: 459, column: 15, scope: !6059)
!6073 = !DILocation(line: 459, column: 28, scope: !6059)
!6074 = !DILocation(line: 459, column: 32, scope: !6059)
!6075 = !DILocation(line: 459, column: 43, scope: !6059)
!6076 = !DILocation(line: 461, column: 20, scope: !6059)
!6077 = !DILocation(line: 461, column: 28, scope: !6059)
!6078 = !DILocation(line: 461, column: 2, scope: !6059)
!6079 = !DILocation(line: 462, column: 20, scope: !6059)
!6080 = !DILocation(line: 462, column: 28, scope: !6059)
!6081 = !DILocation(line: 462, column: 41, scope: !6059)
!6082 = !DILocation(line: 462, column: 45, scope: !6059)
!6083 = !DILocation(line: 462, column: 39, scope: !6059)
!6084 = !DILocation(line: 462, column: 2, scope: !6059)
!6085 = !DILocation(line: 463, column: 1, scope: !6059)
!6086 = !DISubprogram(name: "kstrtouint", scope: !6087, file: !6087, line: 71, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!100, !312, !13, !3047}
!6090 = distinct !DISubprogram(name: "kmalloc", scope: !222, file: !222, line: 591, type: !6091, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6093)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{!465, !440, !856}
!6093 = !{!6094, !6095, !6096}
!6094 = !DILocalVariable(name: "size", arg: 1, scope: !6090, file: !222, line: 591, type: !440)
!6095 = !DILocalVariable(name: "flags", arg: 2, scope: !6090, file: !222, line: 591, type: !856)
!6096 = !DILocalVariable(name: "index", scope: !6097, file: !222, line: 594, type: !13)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !222, line: 593, column: 42)
!6098 = distinct !DILexicalBlock(scope: !6090, file: !222, line: 593, column: 6)
!6099 = !DILocation(line: 591, column: 61, scope: !6090)
!6100 = !DILocation(line: 591, column: 73, scope: !6090)
!6101 = !DILocation(line: 593, column: 27, scope: !6098)
!6102 = !DILocation(line: 593, column: 6, scope: !6098)
!6103 = !DILocation(line: 593, column: 33, scope: !6098)
!6104 = !DILocation(line: 593, column: 36, scope: !6098)
!6105 = !DILocation(line: 593, column: 6, scope: !6090)
!6106 = !DILocation(line: 594, column: 3, scope: !6097)
!6107 = !DILocation(line: 594, column: 16, scope: !6097)
!6108 = !DILocation(line: 596, column: 7, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6097, file: !222, line: 596, column: 7)
!6110 = !DILocation(line: 596, column: 12, scope: !6109)
!6111 = !DILocation(line: 596, column: 7, scope: !6097)
!6112 = !DILocation(line: 597, column: 25, scope: !6109)
!6113 = !DILocation(line: 597, column: 31, scope: !6109)
!6114 = !DILocation(line: 597, column: 11, scope: !6109)
!6115 = !DILocation(line: 597, column: 4, scope: !6109)
!6116 = !DILocation(line: 599, column: 11, scope: !6097)
!6117 = !DILocation(line: 599, column: 9, scope: !6097)
!6118 = !DILocation(line: 601, column: 33, scope: !6097)
!6119 = !DILocation(line: 601, column: 40, scope: !6097)
!6120 = !DILocation(line: 601, column: 20, scope: !6097)
!6121 = !DILocation(line: 601, column: 5, scope: !6097)
!6122 = !DILocation(line: 601, column: 51, scope: !6097)
!6123 = !DILocation(line: 602, column: 5, scope: !6097)
!6124 = !DILocation(line: 602, column: 12, scope: !6097)
!6125 = !DILocation(line: 600, column: 10, scope: !6097)
!6126 = !DILocation(line: 600, column: 3, scope: !6097)
!6127 = !DILocation(line: 603, column: 2, scope: !6098)
!6128 = !DILocation(line: 604, column: 19, scope: !6090)
!6129 = !DILocation(line: 604, column: 25, scope: !6090)
!6130 = !DILocation(line: 604, column: 9, scope: !6090)
!6131 = !DILocation(line: 604, column: 2, scope: !6090)
!6132 = !DILocation(line: 605, column: 1, scope: !6090)
!6133 = distinct !DISubprogram(name: "size_add", scope: !6134, file: !6134, line: 208, type: !6135, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6137)
!6134 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!440, !440, !440}
!6137 = !{!6138, !6139, !6140}
!6138 = !DILocalVariable(name: "addend1", arg: 1, scope: !6133, file: !6134, line: 208, type: !440)
!6139 = !DILocalVariable(name: "addend2", arg: 2, scope: !6133, file: !6134, line: 208, type: !440)
!6140 = !DILocalVariable(name: "bytes", scope: !6133, file: !6134, line: 210, type: !440)
!6141 = !DILocation(line: 208, column: 51, scope: !6133)
!6142 = !DILocation(line: 208, column: 67, scope: !6133)
!6143 = !DILocation(line: 210, column: 2, scope: !6133)
!6144 = !DILocation(line: 210, column: 9, scope: !6133)
!6145 = !DILocation(line: 212, column: 6, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6133, file: !6134, line: 212, column: 6)
!6147 = !DILocation(line: 212, column: 6, scope: !6133)
!6148 = !DILocation(line: 213, column: 3, scope: !6146)
!6149 = !DILocation(line: 215, column: 9, scope: !6133)
!6150 = !DILocation(line: 215, column: 2, scope: !6133)
!6151 = !DILocation(line: 216, column: 1, scope: !6133)
!6152 = distinct !DISubprogram(name: "size_mul", scope: !6134, file: !6134, line: 189, type: !6135, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6153)
!6153 = !{!6154, !6155, !6156}
!6154 = !DILocalVariable(name: "factor1", arg: 1, scope: !6152, file: !6134, line: 189, type: !440)
!6155 = !DILocalVariable(name: "factor2", arg: 2, scope: !6152, file: !6134, line: 189, type: !440)
!6156 = !DILocalVariable(name: "bytes", scope: !6152, file: !6134, line: 191, type: !440)
!6157 = !DILocation(line: 189, column: 51, scope: !6152)
!6158 = !DILocation(line: 189, column: 67, scope: !6152)
!6159 = !DILocation(line: 191, column: 2, scope: !6152)
!6160 = !DILocation(line: 191, column: 9, scope: !6152)
!6161 = !DILocation(line: 193, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6152, file: !6134, line: 193, column: 6)
!6163 = !DILocation(line: 193, column: 6, scope: !6152)
!6164 = !DILocation(line: 194, column: 3, scope: !6162)
!6165 = !DILocation(line: 196, column: 9, scope: !6152)
!6166 = !DILocation(line: 196, column: 2, scope: !6152)
!6167 = !DILocation(line: 197, column: 1, scope: !6152)
!6168 = distinct !DISubprogram(name: "__init_work", scope: !191, file: !191, line: 263, type: !6169, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6171)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{null, !1935, !100}
!6171 = !{!6172, !6173}
!6172 = !DILocalVariable(name: "work", arg: 1, scope: !6168, file: !191, line: 263, type: !1935)
!6173 = !DILocalVariable(name: "onstack", arg: 2, scope: !6168, file: !191, line: 263, type: !100)
!6174 = !DILocation(line: 263, column: 52, scope: !6168)
!6175 = !DILocation(line: 263, column: 62, scope: !6168)
!6176 = !DILocation(line: 263, column: 73, scope: !6168)
!6177 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6178, file: !6178, line: 35, type: !6179, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6181)
!6178 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6179 = !DISubroutineType(types: !6180)
!6180 = !{null, !298}
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "list", arg: 1, scope: !6177, file: !6178, line: 35, type: !298)
!6183 = !DILocation(line: 35, column: 53, scope: !6177)
!6184 = !DILocation(line: 37, column: 2, scope: !6177)
!6185 = !DILocation(line: 37, column: 2, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6177, file: !6178, line: 37, column: 2)
!6187 = !DILocation(line: 37, column: 2, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6186, file: !6178, line: 37, column: 2)
!6189 = !DILocation(line: 37, column: 2, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6186, file: !6178, line: 37, column: 2)
!6191 = !DILocation(line: 38, column: 2, scope: !6177)
!6192 = !DILocation(line: 38, column: 2, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6177, file: !6178, line: 38, column: 2)
!6194 = !DILocation(line: 38, column: 2, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6193, file: !6178, line: 38, column: 2)
!6196 = !DILocation(line: 38, column: 2, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6193, file: !6178, line: 38, column: 2)
!6198 = !DILocation(line: 39, column: 1, scope: !6177)
!6199 = distinct !DISubprogram(name: "trigger_event", scope: !2, file: !2, line: 54, type: !1933, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6200)
!6200 = !{!6201, !6202, !6203}
!6201 = !DILocalVariable(name: "work", arg: 1, scope: !6199, file: !2, line: 54, type: !1935)
!6202 = !DILocalVariable(name: "sc", scope: !6199, file: !2, line: 56, type: !5117)
!6203 = !DILocalVariable(name: "__mptr", scope: !6204, file: !2, line: 56, type: !465)
!6204 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 56, column: 24)
!6205 = !DILocation(line: 54, column: 47, scope: !6199)
!6206 = !DILocation(line: 56, column: 2, scope: !6199)
!6207 = !DILocation(line: 56, column: 19, scope: !6199)
!6208 = !DILocation(line: 56, column: 24, scope: !6204)
!6209 = !DILocation(line: 56, column: 24, scope: !6199)
!6210 = !DILocation(line: 58, column: 17, scope: !6199)
!6211 = !DILocation(line: 58, column: 21, scope: !6199)
!6212 = !DILocation(line: 58, column: 25, scope: !6199)
!6213 = !DILocation(line: 58, column: 2, scope: !6199)
!6214 = !DILocation(line: 59, column: 1, scope: !6199)
!6215 = distinct !DISubprogram(name: "variable__ffs", scope: !6216, file: !6216, line: 250, type: !6217, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6219)
!6216 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!443, !443}
!6219 = !{!6220}
!6220 = !DILocalVariable(name: "word", arg: 1, scope: !6215, file: !6216, line: 250, type: !443)
!6221 = !DILocation(line: 250, column: 66, scope: !6215)
!6222 = !DILocation(line: 254, column: 11, scope: !6215)
!6223 = !DILocation(line: 252, column: 2, scope: !6215)
!6224 = !{i64 653737}
!6225 = !DILocation(line: 255, column: 9, scope: !6215)
!6226 = !DILocation(line: 255, column: 2, scope: !6215)
!6227 = !DISubprogram(name: "dm_set_target_max_io_len", scope: !180, file: !180, line: 576, type: !6228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!100, !5126, !1030}
!6230 = !DISubprogram(name: "kfree", scope: !222, file: !222, line: 227, type: !6231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{null, !1887}
!6233 = distinct !DISubprogram(name: "get_stripe", scope: !2, file: !2, line: 64, type: !6234, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!100, !5126, !5117, !13, !5146}
!6236 = !{!6237, !6238, !6239, !6240, !6241, !6242, !6243}
!6237 = !DILocalVariable(name: "ti", arg: 1, scope: !6233, file: !2, line: 64, type: !5126)
!6238 = !DILocalVariable(name: "sc", arg: 2, scope: !6233, file: !2, line: 64, type: !5117)
!6239 = !DILocalVariable(name: "stripe", arg: 3, scope: !6233, file: !2, line: 65, type: !13)
!6240 = !DILocalVariable(name: "argv", arg: 4, scope: !6233, file: !2, line: 65, type: !5146)
!6241 = !DILocalVariable(name: "start", scope: !6233, file: !2, line: 67, type: !549)
!6242 = !DILocalVariable(name: "dummy", scope: !6233, file: !2, line: 68, type: !4)
!6243 = !DILocalVariable(name: "ret", scope: !6233, file: !2, line: 69, type: !100)
!6244 = !DILocation(line: 64, column: 41, scope: !6233)
!6245 = !DILocation(line: 64, column: 62, scope: !6233)
!6246 = !DILocation(line: 65, column: 22, scope: !6233)
!6247 = !DILocation(line: 65, column: 37, scope: !6233)
!6248 = !DILocation(line: 67, column: 2, scope: !6233)
!6249 = !DILocation(line: 67, column: 21, scope: !6233)
!6250 = !DILocation(line: 68, column: 2, scope: !6233)
!6251 = !DILocation(line: 68, column: 7, scope: !6233)
!6252 = !DILocation(line: 69, column: 2, scope: !6233)
!6253 = !DILocation(line: 69, column: 6, scope: !6233)
!6254 = !DILocation(line: 71, column: 13, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6233, file: !2, line: 71, column: 6)
!6256 = !DILocation(line: 71, column: 6, scope: !6255)
!6257 = !DILocation(line: 71, column: 48, scope: !6255)
!6258 = !DILocation(line: 71, column: 6, scope: !6233)
!6259 = !DILocation(line: 72, column: 3, scope: !6255)
!6260 = !DILocation(line: 74, column: 22, scope: !6233)
!6261 = !DILocation(line: 74, column: 26, scope: !6233)
!6262 = !DILocation(line: 74, column: 53, scope: !6233)
!6263 = !DILocation(line: 74, column: 57, scope: !6233)
!6264 = !DILocation(line: 74, column: 35, scope: !6233)
!6265 = !DILocation(line: 75, column: 9, scope: !6233)
!6266 = !DILocation(line: 75, column: 13, scope: !6233)
!6267 = !DILocation(line: 75, column: 20, scope: !6233)
!6268 = !DILocation(line: 75, column: 28, scope: !6233)
!6269 = !DILocation(line: 74, column: 8, scope: !6233)
!6270 = !DILocation(line: 74, column: 6, scope: !6233)
!6271 = !DILocation(line: 76, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6233, file: !2, line: 76, column: 6)
!6273 = !DILocation(line: 76, column: 6, scope: !6233)
!6274 = !DILocation(line: 77, column: 10, scope: !6272)
!6275 = !DILocation(line: 77, column: 3, scope: !6272)
!6276 = !DILocation(line: 79, column: 38, scope: !6233)
!6277 = !DILocation(line: 79, column: 2, scope: !6233)
!6278 = !DILocation(line: 79, column: 6, scope: !6233)
!6279 = !DILocation(line: 79, column: 13, scope: !6233)
!6280 = !DILocation(line: 79, column: 21, scope: !6233)
!6281 = !DILocation(line: 79, column: 36, scope: !6233)
!6282 = !DILocation(line: 81, column: 2, scope: !6233)
!6283 = !DILocation(line: 82, column: 1, scope: !6233)
!6284 = !DISubprogram(name: "dm_put_device", scope: !180, file: !180, line: 179, type: !6285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{null, !5126, !5226}
!6287 = distinct !DISubprogram(name: "atomic_set", scope: !6288, file: !6288, line: 65, type: !6289, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6292)
!6288 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6289 = !DISubroutineType(types: !6290)
!6290 = !{null, !6291, !100}
!6291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!6292 = !{!6293, !6294}
!6293 = !DILocalVariable(name: "v", arg: 1, scope: !6287, file: !6288, line: 65, type: !6291)
!6294 = !DILocalVariable(name: "i", arg: 2, scope: !6287, file: !6288, line: 65, type: !100)
!6295 = !DILocation(line: 65, column: 22, scope: !6287)
!6296 = !DILocation(line: 65, column: 29, scope: !6287)
!6297 = !DILocation(line: 67, column: 26, scope: !6287)
!6298 = !DILocation(line: 67, column: 2, scope: !6287)
!6299 = !DILocation(line: 68, column: 17, scope: !6287)
!6300 = !DILocation(line: 68, column: 20, scope: !6287)
!6301 = !DILocation(line: 68, column: 2, scope: !6287)
!6302 = !DILocation(line: 69, column: 1, scope: !6287)
!6303 = !DISubprogram(name: "kmalloc_large", scope: !222, file: !222, line: 531, type: !6091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = distinct !DISubprogram(name: "__kmalloc_index", scope: !222, file: !222, line: 444, type: !6305, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6307)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!13, !440, !1185}
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "size", arg: 1, scope: !6304, file: !222, line: 444, type: !440)
!6309 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6304, file: !222, line: 445, type: !1185)
!6310 = !DILocation(line: 444, column: 60, scope: !6304)
!6311 = !DILocation(line: 445, column: 16, scope: !6304)
!6312 = !DILocation(line: 447, column: 7, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 447, column: 6)
!6314 = !DILocation(line: 447, column: 6, scope: !6304)
!6315 = !DILocation(line: 448, column: 3, scope: !6313)
!6316 = !DILocation(line: 450, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 450, column: 6)
!6318 = !DILocation(line: 450, column: 11, scope: !6317)
!6319 = !DILocation(line: 450, column: 6, scope: !6304)
!6320 = !DILocation(line: 451, column: 3, scope: !6317)
!6321 = !DILocation(line: 453, column: 32, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 453, column: 6)
!6323 = !DILocation(line: 453, column: 37, scope: !6322)
!6324 = !DILocation(line: 453, column: 42, scope: !6322)
!6325 = !DILocation(line: 453, column: 45, scope: !6322)
!6326 = !DILocation(line: 453, column: 50, scope: !6322)
!6327 = !DILocation(line: 453, column: 6, scope: !6304)
!6328 = !DILocation(line: 454, column: 3, scope: !6322)
!6329 = !DILocation(line: 455, column: 32, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 455, column: 6)
!6331 = !DILocation(line: 455, column: 37, scope: !6330)
!6332 = !DILocation(line: 455, column: 43, scope: !6330)
!6333 = !DILocation(line: 455, column: 46, scope: !6330)
!6334 = !DILocation(line: 455, column: 51, scope: !6330)
!6335 = !DILocation(line: 455, column: 6, scope: !6304)
!6336 = !DILocation(line: 456, column: 3, scope: !6330)
!6337 = !DILocation(line: 457, column: 6, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 457, column: 6)
!6339 = !DILocation(line: 457, column: 11, scope: !6338)
!6340 = !DILocation(line: 457, column: 6, scope: !6304)
!6341 = !DILocation(line: 457, column: 26, scope: !6338)
!6342 = !DILocation(line: 458, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 458, column: 6)
!6344 = !DILocation(line: 458, column: 11, scope: !6343)
!6345 = !DILocation(line: 458, column: 6, scope: !6304)
!6346 = !DILocation(line: 458, column: 26, scope: !6343)
!6347 = !DILocation(line: 459, column: 6, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 459, column: 6)
!6349 = !DILocation(line: 459, column: 11, scope: !6348)
!6350 = !DILocation(line: 459, column: 6, scope: !6304)
!6351 = !DILocation(line: 459, column: 26, scope: !6348)
!6352 = !DILocation(line: 460, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 460, column: 6)
!6354 = !DILocation(line: 460, column: 11, scope: !6353)
!6355 = !DILocation(line: 460, column: 6, scope: !6304)
!6356 = !DILocation(line: 460, column: 26, scope: !6353)
!6357 = !DILocation(line: 461, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 461, column: 6)
!6359 = !DILocation(line: 461, column: 11, scope: !6358)
!6360 = !DILocation(line: 461, column: 6, scope: !6304)
!6361 = !DILocation(line: 461, column: 26, scope: !6358)
!6362 = !DILocation(line: 462, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 462, column: 6)
!6364 = !DILocation(line: 462, column: 11, scope: !6363)
!6365 = !DILocation(line: 462, column: 6, scope: !6304)
!6366 = !DILocation(line: 462, column: 26, scope: !6363)
!6367 = !DILocation(line: 463, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 463, column: 6)
!6369 = !DILocation(line: 463, column: 11, scope: !6368)
!6370 = !DILocation(line: 463, column: 6, scope: !6304)
!6371 = !DILocation(line: 463, column: 26, scope: !6368)
!6372 = !DILocation(line: 464, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 464, column: 6)
!6374 = !DILocation(line: 464, column: 11, scope: !6373)
!6375 = !DILocation(line: 464, column: 6, scope: !6304)
!6376 = !DILocation(line: 464, column: 26, scope: !6373)
!6377 = !DILocation(line: 465, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 465, column: 6)
!6379 = !DILocation(line: 465, column: 11, scope: !6378)
!6380 = !DILocation(line: 465, column: 6, scope: !6304)
!6381 = !DILocation(line: 465, column: 26, scope: !6378)
!6382 = !DILocation(line: 466, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 466, column: 6)
!6384 = !DILocation(line: 466, column: 11, scope: !6383)
!6385 = !DILocation(line: 466, column: 6, scope: !6304)
!6386 = !DILocation(line: 466, column: 26, scope: !6383)
!6387 = !DILocation(line: 467, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 467, column: 6)
!6389 = !DILocation(line: 467, column: 11, scope: !6388)
!6390 = !DILocation(line: 467, column: 6, scope: !6304)
!6391 = !DILocation(line: 467, column: 26, scope: !6388)
!6392 = !DILocation(line: 468, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 468, column: 6)
!6394 = !DILocation(line: 468, column: 11, scope: !6393)
!6395 = !DILocation(line: 468, column: 6, scope: !6304)
!6396 = !DILocation(line: 468, column: 26, scope: !6393)
!6397 = !DILocation(line: 469, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 469, column: 6)
!6399 = !DILocation(line: 469, column: 11, scope: !6398)
!6400 = !DILocation(line: 469, column: 6, scope: !6304)
!6401 = !DILocation(line: 469, column: 26, scope: !6398)
!6402 = !DILocation(line: 470, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 470, column: 6)
!6404 = !DILocation(line: 470, column: 11, scope: !6403)
!6405 = !DILocation(line: 470, column: 6, scope: !6304)
!6406 = !DILocation(line: 470, column: 26, scope: !6403)
!6407 = !DILocation(line: 471, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 471, column: 6)
!6409 = !DILocation(line: 471, column: 11, scope: !6408)
!6410 = !DILocation(line: 471, column: 6, scope: !6304)
!6411 = !DILocation(line: 471, column: 26, scope: !6408)
!6412 = !DILocation(line: 472, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 472, column: 6)
!6414 = !DILocation(line: 472, column: 11, scope: !6413)
!6415 = !DILocation(line: 472, column: 6, scope: !6304)
!6416 = !DILocation(line: 472, column: 26, scope: !6413)
!6417 = !DILocation(line: 473, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 473, column: 6)
!6419 = !DILocation(line: 473, column: 11, scope: !6418)
!6420 = !DILocation(line: 473, column: 6, scope: !6304)
!6421 = !DILocation(line: 473, column: 26, scope: !6418)
!6422 = !DILocation(line: 474, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 474, column: 6)
!6424 = !DILocation(line: 474, column: 11, scope: !6423)
!6425 = !DILocation(line: 474, column: 6, scope: !6304)
!6426 = !DILocation(line: 474, column: 27, scope: !6423)
!6427 = !DILocation(line: 475, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 475, column: 6)
!6429 = !DILocation(line: 475, column: 11, scope: !6428)
!6430 = !DILocation(line: 475, column: 6, scope: !6304)
!6431 = !DILocation(line: 475, column: 32, scope: !6428)
!6432 = !DILocation(line: 477, column: 50, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6304, file: !222, line: 477, column: 6)
!6434 = !{i8 0, i8 2}
!6435 = !DILocation(line: 477, column: 6, scope: !6304)
!6436 = !DILocation(line: 478, column: 3, scope: !6433)
!6437 = !DILocation(line: 478, column: 3, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !222, line: 478, column: 3)
!6439 = distinct !DILexicalBlock(scope: !6433, file: !222, line: 478, column: 3)
!6440 = !{i32 -2141705752}
!6441 = !DILocation(line: 478, column: 3, scope: !6439)
!6442 = !DILocation(line: 480, column: 3, scope: !6433)
!6443 = !DILocation(line: 480, column: 3, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6433, file: !222, line: 480, column: 3)
!6445 = !DILocation(line: 480, column: 3, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6444, file: !222, line: 480, column: 3)
!6447 = !DILocation(line: 480, column: 3, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6444, file: !222, line: 480, column: 3)
!6449 = !{i64 2153261747, i64 2153261776, i64 2153261822, i64 2153261880, i64 2153261934, i64 2153261988, i64 2153262043, i64 2153262074}
!6450 = !DILocation(line: 483, column: 2, scope: !6304)
!6451 = !DILocation(line: 484, column: 1, scope: !6304)
!6452 = !DISubprogram(name: "kmalloc_trace", scope: !222, file: !222, line: 525, type: !6453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6453 = !DISubroutineType(types: !6454)
!6454 = !{!465, !2108, !856, !440}
!6455 = distinct !DISubprogram(name: "kmalloc_type", scope: !222, file: !222, line: 401, type: !6456, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6458)
!6456 = !DISubroutineType(types: !6457)
!6457 = !{!221, !856, !443}
!6458 = !{!6459, !6460}
!6459 = !DILocalVariable(name: "flags", arg: 1, scope: !6455, file: !222, line: 401, type: !856)
!6460 = !DILocalVariable(name: "caller", arg: 2, scope: !6455, file: !222, line: 401, type: !443)
!6461 = !DILocation(line: 401, column: 67, scope: !6455)
!6462 = !DILocation(line: 401, column: 88, scope: !6455)
!6463 = !DILocation(line: 407, column: 6, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6455, file: !222, line: 407, column: 6)
!6465 = !DILocation(line: 407, column: 6, scope: !6455)
!6466 = !DILocation(line: 413, column: 3, scope: !6464)
!6467 = !DILocation(line: 423, column: 38, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6455, file: !222, line: 423, column: 6)
!6469 = !DILocation(line: 423, column: 44, scope: !6468)
!6470 = !DILocation(line: 423, column: 6, scope: !6455)
!6471 = !DILocation(line: 424, column: 3, scope: !6468)
!6472 = !DILocation(line: 426, column: 3, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6455, file: !222, line: 425, column: 6)
!6474 = !DILocation(line: 429, column: 1, scope: !6455)
!6475 = !DISubprogram(name: "__kmalloc", scope: !222, file: !222, line: 488, type: !6091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6476 = !DISubprogram(name: "__compiletime_assert_245", scope: !222, file: !222, line: 478, type: !3597, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6477 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6134, file: !6134, line: 51, type: !6478, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6480)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{!1185, !1185}
!6480 = !{!6481}
!6481 = !DILocalVariable(name: "overflow", arg: 1, scope: !6477, file: !6134, line: 51, type: !1185)
!6482 = !DILocation(line: 51, column: 60, scope: !6477)
!6483 = !DILocation(line: 53, column: 9, scope: !6477)
!6484 = !DILocation(line: 53, column: 2, scope: !6477)
!6485 = !DISubprogram(name: "dm_table_event", scope: !180, file: !180, line: 596, type: !6486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6486 = !DISubroutineType(types: !6487)
!6487 = !{null, !5130}
!6488 = !DISubprogram(name: "sscanf", scope: !6489, file: !6489, line: 20, type: !6490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6489 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6490 = !DISubroutineType(types: !6491)
!6491 = !{!100, !312, !312, null}
!6492 = !DISubprogram(name: "dm_get_device", scope: !180, file: !180, line: 177, type: !6493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{!100, !5126, !312, !2159, !6495}
!6495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!6496 = !DISubprogram(name: "dm_table_get_mode", scope: !180, file: !180, line: 589, type: !6497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!2159, !5130}
!6499 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6500, file: !6500, line: 80, type: !6501, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6506)
!6500 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6501 = !DISubroutineType(types: !6502)
!6502 = !{null, !6503, !440}
!6503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6504, size: 64)
!6504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6505)
!6505 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6506 = !{!6507, !6508}
!6507 = !DILocalVariable(name: "v", arg: 1, scope: !6499, file: !6500, line: 80, type: !6503)
!6508 = !DILocalVariable(name: "size", arg: 2, scope: !6499, file: !6500, line: 80, type: !440)
!6509 = !DILocation(line: 80, column: 74, scope: !6499)
!6510 = !DILocation(line: 80, column: 84, scope: !6499)
!6511 = !DILocation(line: 82, column: 20, scope: !6499)
!6512 = !DILocation(line: 82, column: 23, scope: !6499)
!6513 = !DILocation(line: 82, column: 2, scope: !6499)
!6514 = !DILocation(line: 83, column: 2, scope: !6499)
!6515 = !DILocation(line: 84, column: 1, scope: !6499)
!6516 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6517, file: !6517, line: 488, type: !6289, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6518)
!6517 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6518 = !{!6519, !6520}
!6519 = !DILocalVariable(name: "v", arg: 1, scope: !6516, file: !6517, line: 488, type: !6291)
!6520 = !DILocalVariable(name: "i", arg: 2, scope: !6516, file: !6517, line: 488, type: !100)
!6521 = !DILocation(line: 488, column: 26, scope: !6516)
!6522 = !DILocation(line: 488, column: 33, scope: !6516)
!6523 = !DILocation(line: 490, column: 18, scope: !6516)
!6524 = !DILocation(line: 490, column: 21, scope: !6516)
!6525 = !DILocation(line: 490, column: 2, scope: !6516)
!6526 = !DILocation(line: 491, column: 1, scope: !6516)
!6527 = distinct !DISubprogram(name: "kasan_check_write", scope: !6528, file: !6528, line: 44, type: !6529, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6531)
!6528 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6529 = !DISubroutineType(types: !6530)
!6530 = !{!1185, !6503, !13}
!6531 = !{!6532, !6533}
!6532 = !DILocalVariable(name: "p", arg: 1, scope: !6527, file: !6528, line: 44, type: !6503)
!6533 = !DILocalVariable(name: "size", arg: 2, scope: !6527, file: !6528, line: 44, type: !13)
!6534 = !DILocation(line: 44, column: 59, scope: !6527)
!6535 = !DILocation(line: 44, column: 75, scope: !6527)
!6536 = !DILocation(line: 46, column: 2, scope: !6527)
!6537 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6538, file: !6538, line: 229, type: !6539, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6541)
!6538 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6539 = !DISubroutineType(types: !6540)
!6540 = !{null, !6503, !440, !100}
!6541 = !{!6542, !6543, !6544}
!6542 = !DILocalVariable(name: "ptr", arg: 1, scope: !6537, file: !6538, line: 229, type: !6503)
!6543 = !DILocalVariable(name: "size", arg: 2, scope: !6537, file: !6538, line: 229, type: !440)
!6544 = !DILocalVariable(name: "type", arg: 3, scope: !6537, file: !6538, line: 230, type: !100)
!6545 = !DILocation(line: 229, column: 60, scope: !6537)
!6546 = !DILocation(line: 229, column: 72, scope: !6537)
!6547 = !DILocation(line: 230, column: 15, scope: !6537)
!6548 = !DILocation(line: 230, column: 23, scope: !6537)
!6549 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6550, file: !6550, line: 26, type: !6289, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6551)
!6550 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6551 = !{!6552, !6553}
!6552 = !DILocalVariable(name: "v", arg: 1, scope: !6549, file: !6550, line: 26, type: !6291)
!6553 = !DILocalVariable(name: "i", arg: 2, scope: !6549, file: !6550, line: 26, type: !100)
!6554 = !DILocation(line: 26, column: 55, scope: !6549)
!6555 = !DILocation(line: 26, column: 62, scope: !6549)
!6556 = !DILocation(line: 28, column: 2, scope: !6549)
!6557 = !DILocation(line: 28, column: 2, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6549, file: !6550, line: 28, column: 2)
!6559 = !DILocation(line: 29, column: 1, scope: !6549)
!6560 = !DISubprogram(name: "flush_work", scope: !191, file: !191, line: 513, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6561 = !DISubroutineType(types: !6562)
!6562 = !{!1185, !1935}
!6563 = !DISubprogram(name: "dm_bio_get_target_bio_nr", scope: !180, file: !180, line: 403, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!13, !6566}
!6566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6567, size: 64)
!6567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!6568 = distinct !DISubprogram(name: "bio_set_dev", scope: !2105, file: !2105, line: 534, type: !6569, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6571)
!6569 = !DISubroutineType(types: !6570)
!6570 = !{null, !1060, !1026}
!6571 = !{!6572, !6573}
!6572 = !DILocalVariable(name: "bio", arg: 1, scope: !6568, file: !2105, line: 534, type: !1060)
!6573 = !DILocalVariable(name: "bdev", arg: 2, scope: !6568, file: !2105, line: 534, type: !1026)
!6574 = !DILocation(line: 534, column: 44, scope: !6568)
!6575 = !DILocation(line: 534, column: 70, scope: !6568)
!6576 = !DILocation(line: 536, column: 17, scope: !6568)
!6577 = !DILocation(line: 536, column: 2, scope: !6568)
!6578 = !DILocation(line: 537, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6568, file: !2105, line: 537, column: 6)
!6580 = !DILocation(line: 537, column: 11, scope: !6579)
!6581 = !DILocation(line: 537, column: 22, scope: !6579)
!6582 = !DILocation(line: 537, column: 19, scope: !6579)
!6583 = !DILocation(line: 537, column: 6, scope: !6568)
!6584 = !DILocation(line: 538, column: 18, scope: !6579)
!6585 = !DILocation(line: 538, column: 3, scope: !6579)
!6586 = !DILocation(line: 539, column: 17, scope: !6568)
!6587 = !DILocation(line: 539, column: 2, scope: !6568)
!6588 = !DILocation(line: 539, column: 7, scope: !6568)
!6589 = !DILocation(line: 539, column: 15, scope: !6568)
!6590 = !DILocation(line: 540, column: 21, scope: !6568)
!6591 = !DILocation(line: 540, column: 2, scope: !6568)
!6592 = !DILocation(line: 541, column: 1, scope: !6568)
!6593 = distinct !DISubprogram(name: "bio_op", scope: !232, file: !232, line: 475, type: !6594, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6596)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!255, !6566}
!6596 = !{!6597}
!6597 = !DILocalVariable(name: "bio", arg: 1, scope: !6593, file: !232, line: 475, type: !6566)
!6598 = !DILocation(line: 475, column: 52, scope: !6593)
!6599 = !DILocation(line: 477, column: 9, scope: !6593)
!6600 = !DILocation(line: 477, column: 14, scope: !6593)
!6601 = !DILocation(line: 477, column: 21, scope: !6593)
!6602 = !DILocation(line: 477, column: 2, scope: !6593)
!6603 = distinct !DISubprogram(name: "stripe_map_range", scope: !2, file: !2, line: 249, type: !6604, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6606)
!6604 = !DISubroutineType(types: !6605)
!6605 = !{!100, !5117, !1060, !1423}
!6606 = !{!6607, !6608, !6609, !6610, !6611}
!6607 = !DILocalVariable(name: "sc", arg: 1, scope: !6603, file: !2, line: 249, type: !5117)
!6608 = !DILocalVariable(name: "bio", arg: 2, scope: !6603, file: !2, line: 249, type: !1060)
!6609 = !DILocalVariable(name: "target_stripe", arg: 3, scope: !6603, file: !2, line: 250, type: !1423)
!6610 = !DILocalVariable(name: "begin", scope: !6603, file: !2, line: 252, type: !1030)
!6611 = !DILocalVariable(name: "end", scope: !6603, file: !2, line: 252, type: !1030)
!6612 = !DILocation(line: 249, column: 46, scope: !6603)
!6613 = !DILocation(line: 249, column: 62, scope: !6603)
!6614 = !DILocation(line: 250, column: 17, scope: !6603)
!6615 = !DILocation(line: 252, column: 2, scope: !6603)
!6616 = !DILocation(line: 252, column: 11, scope: !6603)
!6617 = !DILocation(line: 252, column: 18, scope: !6603)
!6618 = !DILocation(line: 254, column: 26, scope: !6603)
!6619 = !DILocation(line: 254, column: 30, scope: !6603)
!6620 = !DILocation(line: 254, column: 35, scope: !6603)
!6621 = !DILocation(line: 254, column: 43, scope: !6603)
!6622 = !DILocation(line: 255, column: 5, scope: !6603)
!6623 = !DILocation(line: 254, column: 2, scope: !6603)
!6624 = !DILocation(line: 256, column: 26, scope: !6603)
!6625 = !DILocation(line: 256, column: 30, scope: !6603)
!6626 = !DILocation(line: 257, column: 5, scope: !6603)
!6627 = !DILocation(line: 256, column: 2, scope: !6603)
!6628 = !DILocation(line: 258, column: 6, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6603, file: !2, line: 258, column: 6)
!6630 = !DILocation(line: 258, column: 14, scope: !6629)
!6631 = !DILocation(line: 258, column: 12, scope: !6629)
!6632 = !DILocation(line: 258, column: 6, scope: !6603)
!6633 = !DILocation(line: 259, column: 15, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6629, file: !2, line: 258, column: 19)
!6635 = !DILocation(line: 259, column: 20, scope: !6634)
!6636 = !DILocation(line: 259, column: 24, scope: !6634)
!6637 = !DILocation(line: 259, column: 31, scope: !6634)
!6638 = !DILocation(line: 259, column: 46, scope: !6634)
!6639 = !DILocation(line: 259, column: 51, scope: !6634)
!6640 = !DILocation(line: 259, column: 3, scope: !6634)
!6641 = !DILocation(line: 260, column: 28, scope: !6634)
!6642 = !DILocation(line: 261, column: 4, scope: !6634)
!6643 = !DILocation(line: 261, column: 8, scope: !6634)
!6644 = !DILocation(line: 261, column: 15, scope: !6634)
!6645 = !DILocation(line: 261, column: 30, scope: !6634)
!6646 = !DILocation(line: 260, column: 34, scope: !6634)
!6647 = !DILocation(line: 260, column: 3, scope: !6634)
!6648 = !DILocation(line: 260, column: 8, scope: !6634)
!6649 = !DILocation(line: 260, column: 16, scope: !6634)
!6650 = !DILocation(line: 260, column: 26, scope: !6634)
!6651 = !DILocation(line: 262, column: 35, scope: !6634)
!6652 = !DILocation(line: 262, column: 41, scope: !6634)
!6653 = !DILocation(line: 262, column: 39, scope: !6634)
!6654 = !DILocation(line: 262, column: 26, scope: !6634)
!6655 = !DILocation(line: 262, column: 3, scope: !6634)
!6656 = !DILocation(line: 262, column: 8, scope: !6634)
!6657 = !DILocation(line: 262, column: 16, scope: !6634)
!6658 = !DILocation(line: 262, column: 24, scope: !6634)
!6659 = !DILocation(line: 263, column: 3, scope: !6634)
!6660 = !DILocation(line: 267, column: 12, scope: !6603)
!6661 = !DILocation(line: 267, column: 2, scope: !6603)
!6662 = !DILocation(line: 268, column: 2, scope: !6603)
!6663 = !DILocation(line: 269, column: 1, scope: !6603)
!6664 = distinct !DISubprogram(name: "stripe_map_sector", scope: !2, file: !2, line: 201, type: !6665, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6668)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{null, !5117, !1030, !6667, !2240}
!6667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!6668 = !{!6669, !6670, !6671, !6672, !6673, !6674, !6675, !6678, !6679, !6682}
!6669 = !DILocalVariable(name: "sc", arg: 1, scope: !6664, file: !2, line: 201, type: !5117)
!6670 = !DILocalVariable(name: "sector", arg: 2, scope: !6664, file: !2, line: 201, type: !1030)
!6671 = !DILocalVariable(name: "stripe", arg: 3, scope: !6664, file: !2, line: 202, type: !6667)
!6672 = !DILocalVariable(name: "result", arg: 4, scope: !6664, file: !2, line: 202, type: !2240)
!6673 = !DILocalVariable(name: "chunk", scope: !6664, file: !2, line: 204, type: !1030)
!6674 = !DILocalVariable(name: "chunk_offset", scope: !6664, file: !2, line: 205, type: !1030)
!6675 = !DILocalVariable(name: "__base", scope: !6676, file: !2, line: 208, type: !1423)
!6676 = distinct !DILexicalBlock(scope: !6677, file: !2, line: 208, column: 18)
!6677 = distinct !DILexicalBlock(scope: !6664, file: !2, line: 207, column: 6)
!6678 = !DILocalVariable(name: "__rem", scope: !6676, file: !2, line: 208, type: !1423)
!6679 = !DILocalVariable(name: "__base", scope: !6680, file: !2, line: 215, type: !1423)
!6680 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 215, column: 13)
!6681 = distinct !DILexicalBlock(scope: !6664, file: !2, line: 214, column: 6)
!6682 = !DILocalVariable(name: "__rem", scope: !6680, file: !2, line: 215, type: !1423)
!6683 = !DILocation(line: 201, column: 48, scope: !6664)
!6684 = !DILocation(line: 201, column: 61, scope: !6664)
!6685 = !DILocation(line: 202, column: 20, scope: !6664)
!6686 = !DILocation(line: 202, column: 38, scope: !6664)
!6687 = !DILocation(line: 204, column: 2, scope: !6664)
!6688 = !DILocation(line: 204, column: 11, scope: !6664)
!6689 = !DILocation(line: 204, column: 19, scope: !6664)
!6690 = !DILocation(line: 205, column: 2, scope: !6664)
!6691 = !DILocation(line: 205, column: 11, scope: !6664)
!6692 = !DILocation(line: 207, column: 6, scope: !6677)
!6693 = !DILocation(line: 207, column: 10, scope: !6677)
!6694 = !DILocation(line: 207, column: 27, scope: !6677)
!6695 = !DILocation(line: 207, column: 6, scope: !6664)
!6696 = !DILocation(line: 208, column: 18, scope: !6676)
!6697 = !DILocation(line: 208, column: 18, scope: !6677)
!6698 = !DILocation(line: 208, column: 16, scope: !6677)
!6699 = !DILocation(line: 208, column: 3, scope: !6677)
!6700 = !DILocation(line: 210, column: 18, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6677, file: !2, line: 209, column: 7)
!6702 = !DILocation(line: 210, column: 27, scope: !6701)
!6703 = !DILocation(line: 210, column: 31, scope: !6701)
!6704 = !DILocation(line: 210, column: 42, scope: !6701)
!6705 = !DILocation(line: 210, column: 26, scope: !6701)
!6706 = !DILocation(line: 210, column: 24, scope: !6701)
!6707 = !DILocation(line: 210, column: 16, scope: !6701)
!6708 = !DILocation(line: 211, column: 13, scope: !6701)
!6709 = !DILocation(line: 211, column: 17, scope: !6701)
!6710 = !DILocation(line: 211, column: 9, scope: !6701)
!6711 = !DILocation(line: 214, column: 6, scope: !6681)
!6712 = !DILocation(line: 214, column: 10, scope: !6681)
!6713 = !DILocation(line: 214, column: 24, scope: !6681)
!6714 = !DILocation(line: 214, column: 6, scope: !6664)
!6715 = !DILocation(line: 215, column: 13, scope: !6680)
!6716 = !DILocation(line: 215, column: 13, scope: !6681)
!6717 = !DILocation(line: 215, column: 4, scope: !6681)
!6718 = !DILocation(line: 215, column: 11, scope: !6681)
!6719 = !DILocation(line: 215, column: 3, scope: !6681)
!6720 = !DILocation(line: 217, column: 13, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6681, file: !2, line: 216, column: 7)
!6722 = !DILocation(line: 217, column: 22, scope: !6721)
!6723 = !DILocation(line: 217, column: 26, scope: !6721)
!6724 = !DILocation(line: 217, column: 34, scope: !6721)
!6725 = !DILocation(line: 217, column: 21, scope: !6721)
!6726 = !DILocation(line: 217, column: 19, scope: !6721)
!6727 = !DILocation(line: 217, column: 4, scope: !6721)
!6728 = !DILocation(line: 217, column: 11, scope: !6721)
!6729 = !DILocation(line: 218, column: 13, scope: !6721)
!6730 = !DILocation(line: 218, column: 17, scope: !6721)
!6731 = !DILocation(line: 218, column: 9, scope: !6721)
!6732 = !DILocation(line: 221, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6664, file: !2, line: 221, column: 6)
!6734 = !DILocation(line: 221, column: 10, scope: !6733)
!6735 = !DILocation(line: 221, column: 27, scope: !6733)
!6736 = !DILocation(line: 221, column: 6, scope: !6664)
!6737 = !DILocation(line: 222, column: 12, scope: !6733)
!6738 = !DILocation(line: 222, column: 16, scope: !6733)
!6739 = !DILocation(line: 222, column: 9, scope: !6733)
!6740 = !DILocation(line: 222, column: 3, scope: !6733)
!6741 = !DILocation(line: 224, column: 13, scope: !6733)
!6742 = !DILocation(line: 224, column: 17, scope: !6733)
!6743 = !DILocation(line: 224, column: 9, scope: !6733)
!6744 = !DILocation(line: 226, column: 12, scope: !6664)
!6745 = !DILocation(line: 226, column: 20, scope: !6664)
!6746 = !DILocation(line: 226, column: 18, scope: !6664)
!6747 = !DILocation(line: 226, column: 3, scope: !6664)
!6748 = !DILocation(line: 226, column: 10, scope: !6664)
!6749 = !DILocation(line: 227, column: 1, scope: !6664)
!6750 = distinct !DISubprogram(name: "bio_clear_flag", scope: !2105, file: !2105, line: 240, type: !6751, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6753)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !1060, !13}
!6753 = !{!6754, !6755}
!6754 = !DILocalVariable(name: "bio", arg: 1, scope: !6750, file: !2105, line: 240, type: !1060)
!6755 = !DILocalVariable(name: "bit", arg: 2, scope: !6750, file: !2105, line: 240, type: !13)
!6756 = !DILocation(line: 240, column: 47, scope: !6750)
!6757 = !DILocation(line: 240, column: 65, scope: !6750)
!6758 = !DILocation(line: 242, column: 27, scope: !6750)
!6759 = !DILocation(line: 242, column: 24, scope: !6750)
!6760 = !DILocation(line: 242, column: 19, scope: !6750)
!6761 = !DILocation(line: 242, column: 2, scope: !6750)
!6762 = !DILocation(line: 242, column: 7, scope: !6750)
!6763 = !DILocation(line: 242, column: 16, scope: !6750)
!6764 = !DILocation(line: 243, column: 1, scope: !6750)
!6765 = !DISubprogram(name: "bio_associate_blkg", scope: !2105, file: !2105, line: 516, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6766 = distinct !DISubprogram(name: "stripe_map_range_sector", scope: !2, file: !2, line: 229, type: !6767, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6769)
!6767 = !DISubroutineType(types: !6768)
!6768 = !{null, !5117, !1030, !1423, !2240}
!6769 = !{!6770, !6771, !6772, !6773, !6774, !6775, !6778}
!6770 = !DILocalVariable(name: "sc", arg: 1, scope: !6766, file: !2, line: 229, type: !5117)
!6771 = !DILocalVariable(name: "sector", arg: 2, scope: !6766, file: !2, line: 229, type: !1030)
!6772 = !DILocalVariable(name: "target_stripe", arg: 3, scope: !6766, file: !2, line: 230, type: !1423)
!6773 = !DILocalVariable(name: "result", arg: 4, scope: !6766, file: !2, line: 230, type: !2240)
!6774 = !DILocalVariable(name: "stripe", scope: !6766, file: !2, line: 232, type: !1423)
!6775 = !DILocalVariable(name: "__base", scope: !6776, file: !2, line: 241, type: !1423)
!6776 = distinct !DILexicalBlock(scope: !6777, file: !2, line: 241, column: 14)
!6777 = distinct !DILexicalBlock(scope: !6766, file: !2, line: 240, column: 6)
!6778 = !DILocalVariable(name: "__rem", scope: !6776, file: !2, line: 241, type: !1423)
!6779 = !DILocation(line: 229, column: 54, scope: !6766)
!6780 = !DILocation(line: 229, column: 67, scope: !6766)
!6781 = !DILocation(line: 230, column: 18, scope: !6766)
!6782 = !DILocation(line: 230, column: 43, scope: !6766)
!6783 = !DILocation(line: 232, column: 2, scope: !6766)
!6784 = !DILocation(line: 232, column: 11, scope: !6766)
!6785 = !DILocation(line: 234, column: 20, scope: !6766)
!6786 = !DILocation(line: 234, column: 24, scope: !6766)
!6787 = !DILocation(line: 234, column: 41, scope: !6766)
!6788 = !DILocation(line: 234, column: 2, scope: !6766)
!6789 = !DILocation(line: 235, column: 6, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6766, file: !2, line: 235, column: 6)
!6791 = !DILocation(line: 235, column: 16, scope: !6790)
!6792 = !DILocation(line: 235, column: 13, scope: !6790)
!6793 = !DILocation(line: 235, column: 6, scope: !6766)
!6794 = !DILocation(line: 236, column: 3, scope: !6790)
!6795 = !DILocation(line: 239, column: 12, scope: !6766)
!6796 = !DILocation(line: 239, column: 11, scope: !6766)
!6797 = !DILocation(line: 239, column: 9, scope: !6766)
!6798 = !DILocation(line: 240, column: 6, scope: !6777)
!6799 = !DILocation(line: 240, column: 10, scope: !6777)
!6800 = !DILocation(line: 240, column: 27, scope: !6777)
!6801 = !DILocation(line: 240, column: 6, scope: !6766)
!6802 = !DILocation(line: 241, column: 14, scope: !6776)
!6803 = !DILocation(line: 241, column: 14, scope: !6777)
!6804 = !DILocation(line: 241, column: 4, scope: !6777)
!6805 = !DILocation(line: 241, column: 11, scope: !6777)
!6806 = !DILocation(line: 241, column: 3, scope: !6777)
!6807 = !DILocation(line: 243, column: 13, scope: !6777)
!6808 = !DILocation(line: 243, column: 34, scope: !6777)
!6809 = !DILocation(line: 243, column: 38, scope: !6777)
!6810 = !DILocation(line: 243, column: 49, scope: !6777)
!6811 = !DILocation(line: 243, column: 23, scope: !6777)
!6812 = !DILocation(line: 243, column: 22, scope: !6777)
!6813 = !DILocation(line: 243, column: 20, scope: !6777)
!6814 = !DILocation(line: 243, column: 4, scope: !6777)
!6815 = !DILocation(line: 243, column: 11, scope: !6777)
!6816 = !DILocation(line: 245, column: 6, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6766, file: !2, line: 245, column: 6)
!6818 = !DILocation(line: 245, column: 22, scope: !6817)
!6819 = !DILocation(line: 245, column: 20, scope: !6817)
!6820 = !DILocation(line: 245, column: 6, scope: !6766)
!6821 = !DILocation(line: 246, column: 14, scope: !6817)
!6822 = !DILocation(line: 246, column: 18, scope: !6817)
!6823 = !DILocation(line: 246, column: 4, scope: !6817)
!6824 = !DILocation(line: 246, column: 11, scope: !6817)
!6825 = !DILocation(line: 246, column: 3, scope: !6817)
!6826 = !DILocation(line: 247, column: 1, scope: !6766)
!6827 = distinct !DISubprogram(name: "to_bytes", scope: !180, file: !180, line: 716, type: !6828, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6830)
!6828 = !DISubroutineType(types: !6829)
!6829 = !{!443, !1030}
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "n", arg: 1, scope: !6827, file: !180, line: 716, type: !1030)
!6832 = !DILocation(line: 716, column: 47, scope: !6827)
!6833 = !DILocation(line: 718, column: 10, scope: !6827)
!6834 = !DILocation(line: 718, column: 12, scope: !6827)
!6835 = !DILocation(line: 718, column: 2, scope: !6827)
!6836 = !DISubprogram(name: "bio_endio", scope: !2105, file: !2105, line: 440, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6837 = !DISubprogram(name: "sprintf", scope: !6489, file: !6489, line: 10, type: !6838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!100, !393, !312, null}
!6840 = distinct !DISubprogram(name: "disk_devt", scope: !68, file: !68, line: 260, type: !6841, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6843)
!6841 = !DISubroutineType(types: !6842)
!6842 = !{!630, !1033}
!6843 = !{!6844}
!6844 = !DILocalVariable(name: "disk", arg: 1, scope: !6840, file: !68, line: 260, type: !1033)
!6845 = !DILocation(line: 260, column: 47, scope: !6840)
!6846 = !DILocation(line: 262, column: 9, scope: !6840)
!6847 = !DILocation(line: 262, column: 2, scope: !6840)
!6848 = !DISubprogram(name: "strcmp", scope: !6849, file: !6849, line: 88, type: !6850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6849 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6850 = !DISubroutineType(types: !6851)
!6851 = !{!100, !312, !312}
!6852 = distinct !DISubprogram(name: "atomic_inc", scope: !6288, file: !6288, line: 433, type: !6853, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6855)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{null, !6291}
!6855 = !{!6856}
!6856 = !DILocalVariable(name: "v", arg: 1, scope: !6852, file: !6288, line: 433, type: !6291)
!6857 = !DILocation(line: 433, column: 22, scope: !6852)
!6858 = !DILocation(line: 435, column: 31, scope: !6852)
!6859 = !DILocation(line: 435, column: 2, scope: !6852)
!6860 = !DILocation(line: 436, column: 17, scope: !6852)
!6861 = !DILocation(line: 436, column: 2, scope: !6852)
!6862 = !DILocation(line: 437, column: 1, scope: !6852)
!6863 = distinct !DISubprogram(name: "atomic_read", scope: !6288, file: !6288, line: 30, type: !6864, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6868)
!6864 = !DISubroutineType(types: !6865)
!6865 = !{!100, !6866}
!6866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6867, size: 64)
!6867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!6868 = !{!6869}
!6869 = !DILocalVariable(name: "v", arg: 1, scope: !6863, file: !6288, line: 30, type: !6866)
!6870 = !DILocation(line: 30, column: 29, scope: !6863)
!6871 = !DILocation(line: 32, column: 25, scope: !6863)
!6872 = !DILocation(line: 32, column: 2, scope: !6863)
!6873 = !DILocation(line: 33, column: 25, scope: !6863)
!6874 = !DILocation(line: 33, column: 9, scope: !6863)
!6875 = !DILocation(line: 33, column: 2, scope: !6863)
!6876 = distinct !DISubprogram(name: "queue_work", scope: !191, file: !191, line: 559, type: !6877, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6879)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{!1185, !2146, !1935}
!6879 = !{!6880, !6881}
!6880 = !DILocalVariable(name: "wq", arg: 1, scope: !6876, file: !191, line: 559, type: !2146)
!6881 = !DILocalVariable(name: "work", arg: 2, scope: !6876, file: !191, line: 560, type: !1935)
!6882 = !DILocation(line: 559, column: 56, scope: !6876)
!6883 = !DILocation(line: 560, column: 30, scope: !6876)
!6884 = !DILocation(line: 562, column: 41, scope: !6876)
!6885 = !DILocation(line: 562, column: 45, scope: !6876)
!6886 = !DILocation(line: 562, column: 9, scope: !6876)
!6887 = !DILocation(line: 562, column: 2, scope: !6876)
!6888 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6500, file: !6500, line: 94, type: !6501, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6889)
!6889 = !{!6890, !6891}
!6890 = !DILocalVariable(name: "v", arg: 1, scope: !6888, file: !6500, line: 94, type: !6503)
!6891 = !DILocalVariable(name: "size", arg: 2, scope: !6888, file: !6500, line: 94, type: !440)
!6892 = !DILocation(line: 94, column: 79, scope: !6888)
!6893 = !DILocation(line: 94, column: 89, scope: !6888)
!6894 = !DILocation(line: 96, column: 20, scope: !6888)
!6895 = !DILocation(line: 96, column: 23, scope: !6888)
!6896 = !DILocation(line: 96, column: 2, scope: !6888)
!6897 = !DILocation(line: 97, column: 2, scope: !6888)
!6898 = !DILocation(line: 98, column: 1, scope: !6888)
!6899 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6517, file: !6517, line: 976, type: !6853, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6900)
!6900 = !{!6901}
!6901 = !DILocalVariable(name: "v", arg: 1, scope: !6899, file: !6517, line: 976, type: !6291)
!6902 = !DILocation(line: 976, column: 26, scope: !6899)
!6903 = !DILocation(line: 979, column: 18, scope: !6899)
!6904 = !DILocation(line: 979, column: 2, scope: !6899)
!6905 = !DILocation(line: 983, column: 1, scope: !6899)
!6906 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6550, file: !6550, line: 51, type: !6853, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6907)
!6907 = !{!6908}
!6908 = !DILocalVariable(name: "v", arg: 1, scope: !6906, file: !6550, line: 51, type: !6291)
!6909 = !DILocation(line: 51, column: 55, scope: !6906)
!6910 = !DILocation(line: 54, column: 16, scope: !6906)
!6911 = !DILocation(line: 54, column: 19, scope: !6906)
!6912 = !DILocation(line: 53, column: 2, scope: !6906)
!6913 = !{i64 2148991153, i64 2148991192, i64 2148991213, i64 2148991250, i64 2148991273, i64 2148991143}
!6914 = !DILocation(line: 55, column: 1, scope: !6906)
!6915 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6500, file: !6500, line: 66, type: !6501, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6916)
!6916 = !{!6917, !6918}
!6917 = !DILocalVariable(name: "v", arg: 1, scope: !6915, file: !6500, line: 66, type: !6503)
!6918 = !DILocalVariable(name: "size", arg: 2, scope: !6915, file: !6500, line: 66, type: !440)
!6919 = !DILocation(line: 66, column: 73, scope: !6915)
!6920 = !DILocation(line: 66, column: 83, scope: !6915)
!6921 = !DILocation(line: 68, column: 19, scope: !6915)
!6922 = !DILocation(line: 68, column: 22, scope: !6915)
!6923 = !DILocation(line: 68, column: 2, scope: !6915)
!6924 = !DILocation(line: 69, column: 2, scope: !6915)
!6925 = !DILocation(line: 70, column: 1, scope: !6915)
!6926 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6517, file: !6517, line: 442, type: !6864, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6927)
!6927 = !{!6928}
!6928 = !DILocalVariable(name: "v", arg: 1, scope: !6926, file: !6517, line: 442, type: !6866)
!6929 = !DILocation(line: 442, column: 33, scope: !6926)
!6930 = !DILocation(line: 444, column: 26, scope: !6926)
!6931 = !DILocation(line: 444, column: 9, scope: !6926)
!6932 = !DILocation(line: 444, column: 2, scope: !6926)
!6933 = distinct !DISubprogram(name: "kasan_check_read", scope: !6528, file: !6528, line: 40, type: !6529, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6934)
!6934 = !{!6935, !6936}
!6935 = !DILocalVariable(name: "p", arg: 1, scope: !6933, file: !6528, line: 40, type: !6503)
!6936 = !DILocalVariable(name: "size", arg: 2, scope: !6933, file: !6528, line: 40, type: !13)
!6937 = !DILocation(line: 40, column: 58, scope: !6933)
!6938 = !DILocation(line: 40, column: 74, scope: !6933)
!6939 = !DILocation(line: 42, column: 2, scope: !6933)
!6940 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6550, file: !6550, line: 17, type: !6864, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6941)
!6941 = !{!6942}
!6942 = !DILocalVariable(name: "v", arg: 1, scope: !6940, file: !6550, line: 17, type: !6866)
!6943 = !DILocation(line: 17, column: 61, scope: !6940)
!6944 = !DILocation(line: 23, column: 9, scope: !6940)
!6945 = !DILocation(line: 23, column: 2, scope: !6940)
!6946 = !DISubprogram(name: "queue_work_on", scope: !191, file: !191, line: 496, type: !6947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!1185, !100, !2146, !1935}
!6949 = !DISubprogram(name: "scnprintf", scope: !6489, file: !6489, line: 14, type: !6950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{!100, !393, !440, !312, null}
!6952 = !DISubprogram(name: "blk_limits_io_min", scope: !68, file: !68, line: 925, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{null, !5240, !13}
!6955 = !DISubprogram(name: "blk_limits_io_opt", scope: !68, file: !68, line: 927, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
